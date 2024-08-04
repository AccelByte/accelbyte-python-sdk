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
iam-get-admin-users-by-role-id-v3 'Cv4hdOa6FdZhNMd1' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["9gMz0F2UBRmMhAbU", "WmFhdYLWzMuv3zkU", "Y0n0BAZkwbYkBLyO"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["6A0FqfhnaB3YxKNd", "OTacCcJfIfXshuLU", "k5WdpxjZx5noXPhP"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["UTKbonoucNmzwOZO", "K56sDkci5rZ8iMlO", "uksQJCiRFiZWwJ7N"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["rTb1XTB9YQzUJ9Xl", "YJ8BzP6EUmUXGM5a", "nIloyj9lhbvuQdW2"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["jwKUckc794ryY91l", "X8DD4MYXlrJ81lHv", "v9rqvEoM8YmVjAkO"], "isAdmin": false, "languageTag": "HKsEp6KlqwW4djre", "namespace": "xcbHdEtoQvpV344R", "roles": ["ctmTozCi8HeV6jba", "lHmqBBfi7sSF5BoG", "iTCVsXsygWbjE2op"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'XtdsJQeJ1too0qvx' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["phTLEEBGTtZyTjdK", "NKgYazujsmSmylT1", "YtxIq73aMb48jISd"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '97KORRhxSWLWLNfH' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "RD3V15QaGGL46Lux", "country": "JF3sbeqWBdQuWfgB", "dateOfBirth": "AKx27MSBqabUXOGk", "displayName": "koMUZn1YXj5zFZeO", "languageTag": "COR9NvBQZSJPOIKr", "skipLoginQueue": false, "uniqueDisplayName": "BrYVzi9ui3lvozTt", "userName": "9TsH7A0TuU2aL4bP"}' 'kk11sys6GdkDcos5' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'uVJ0BJfZ0jvA54CS' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "qZFDsO1skRjOU1SM", "comment": "fQVQa6blj9Rdd85b", "endDate": "dYUumPKVSZCg3XTc", "reason": "9vQe0dHJfF6KIuvn", "skipNotif": false}' 'Ca9JktyBdxkZKrEW' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'Fw9GYxjiiOQAD77c' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' 'vfWVZoRRMPi57HyK' 'Kz5nyI6ulKNKoXa0' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "dgx1JgjC56pda3Yh", "emailAddress": "tQxpCYME6x21pdX2", "languageTag": "QSPAd9sxoLnWGP1P"}' 'afIjLX8ce0KbNN7Y' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "cl2JfmQplvGjVQ4a", "ContactType": "ebjfgGu472oWJlfg", "LanguageTag": "lLM4xjfkNL4lU6ja", "validateOnly": false}' '3vLwtYEJTSiXjcY5' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'ZPkv90lyKSTWLxSF' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'Z0LpupEi5DbkVs3q' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 64, "enabled": false}' 'Ti1t530Wj1WfzIvc' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 '3VlSXrA3XUGud4tV' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "jmxEf4XvVhFJTxFH", "country": "ITBg9x4unq3eOMHI", "dateOfBirth": "KeTyBG5dCUoExnKf", "displayName": "V3869IN4V1OdhH4G", "emailAddress": "VU7Exlkmc4xYiLjL", "password": "yZrXr9Bhtzn8jAdT", "uniqueDisplayName": "n6xBhrciryLm67rk", "validateOnly": false}' '1uuokpaIjL0Vxe5n' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 '9Lx3QcFo9gxOgvDc' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 '7xMrRKvw8ISP2WKm' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "CRRXBxlalCHtWlKx", "mfaToken": "LpS8fLWoQ5nuJhat", "newPassword": "QPxR7dvBVC5zgOKL", "oldPassword": "TDmHe8c1eJ9sde7R"}' 'yt4udIv22M18uux9' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 47, "Resource": "PBYiR3UbJc1ZYapx", "SchedAction": 1, "SchedCron": "C477etqgfOJDUT0u", "SchedRange": ["KAPrARya2IMlNiXp", "F4qvsUUpHqi33TcB", "Gkc0HjUcnkpU9oVz"]}, {"Action": 23, "Resource": "xnMzSYoc4ZjiMY4H", "SchedAction": 67, "SchedCron": "B6wVd8ipcKDwQeUW", "SchedRange": ["tjCC2UH6jzMO3Afm", "OS5mQNyRPZFPNP56", "l1AT6OLKmZhCZxxP"]}, {"Action": 86, "Resource": "NdClpF7OvlBIEgjs", "SchedAction": 8, "SchedCron": "UnEEgja2mIE2kLTn", "SchedRange": ["Jwc5XmkCuL5W4tKt", "6G3j9LYdG7xVPqBq", "e9RDQMBSYAFLqp8P"]}]}' 'F5hCcoukWpnbz4ys' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 43, "Resource": "j6lxuU3u2HEG0qfK", "SchedAction": 9, "SchedCron": "OKnX51yAB8Pa3uNG", "SchedRange": ["KhaLlJzJMSnJIIgs", "AVmaGYxUX1B9oVuz", "G2CnYX2YBF2g7TVt"]}, {"Action": 52, "Resource": "h2kaZP7pnnVfxPwc", "SchedAction": 31, "SchedCron": "59HF9ejHaILQruAu", "SchedRange": ["YyJLYGqMv824ouSg", "kpK70uJmUL0uzEli", "xc023dIvDiA0tQWl"]}, {"Action": 69, "Resource": "KGBjnHmaAu4YK87D", "SchedAction": 2, "SchedCron": "AWWcbcbGWmKgE8CZ", "SchedRange": ["4AELr5lraa5v5P5C", "j8hgFsqHC9h5JPiM", "EtgKuiGTYgwWv5Xl"]}]}' 'dL6rOVGcRAn51rVA' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 88, "Resource": "BB9ZFgJbQ3Fj1umx"}, {"Action": 74, "Resource": "ItzkMJ7cudf4r916"}, {"Action": 67, "Resource": "Ipb1cIOJPS3lJ80Y"}]' 'J41U4ooQ980ywmg1' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '31' 'rmJYXsYgL7TfyIlA' 'wjTZdRZJJzWZwvTX' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '2bamSCvX1nwvSWdD' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'wD7WJHzgNZUKsI5y' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts '0mR3zMyTsftKqnsI' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'JctAdxyZVKHA9Dka' 'SOWgtg8yw8lHEbVD' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'wBAqanOlscRIWw82' 'k5K5VTkdubkOFldM' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "CQ98JH4n0JtgqzZv", "platformUserId": "5kVu4S95mj8YRvae"}' '4f4lhBPbarbWEm8b' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'VtZcfVCPdQhim9QK' 'UAFTVYelIlGJg9wd' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'c8bihhWjfZpfcFBU' 'snnDJlmD1iEokbUi' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'YzCQh2iNTwtnohdd' 'MzMTQ9P7sYLDWAJO' 'A75K4BYJ2fkqYJoF' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 '2FI3vyyqRzc20O7F' 'dsJP1G9tyBTfERXd' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'vgD1Qf7Ot2DkUt3y' 'exZBRvxYnEBhXtAV' 'xCd3meTrT7cF9oVC' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'h89wNOkKYssVejcL' '3kR3hCGNgaJmuALl' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["MQl9RLrthbfp0Vgw", "eLlT2sY3SsTnDQY7", "kKU2u06Q4veujxty"]' 'QENvJrBCqeg67d4R' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "WOqO4U0bitNQLzwR", "roleId": "oWnR0AbkCPY70Fmv"}, {"namespace": "viVIBbcujF8Vk5qb", "roleId": "8NhWWwaxyMchkt8l"}, {"namespace": "5IPSrwrJl7wYIVw1", "roleId": "3NCo9yXlbQ52FTHT"}]' 'Cj6SEAzT7TOpyiuv' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'vQUm29Iacq4XRLaA' '643nTMtXSAyejnny' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 '0Ju13b6o5uB2XM6I' 'Hy7EEvHyLmcvrZZO' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "cZsXeJOD4DMtqfIG"}' 'iGJovgWSRxZ8N4UQ' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "2fg3V1o2x0hL5DuB", "password": "DqMyIAzWze94MEdJ"}' 'FAy2JTllJkRGB8jq' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'JEd6eqqsBVyONV0J' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "RtozI0jpliCFQ6Wg"}' 'JpGPigdc5VyC4qvW' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'jVac1cQvSxgTNIUz' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "gBlIbuzm7DzJ20NF", "namespace": "RJIhFXR2dYprPmbp", "userId": "uptECGd5cdXC2Ses"}, {"displayName": "c6y68whNBYl9iCqf", "namespace": "W6rqGOQny4ij4ysY", "userId": "Ponb59gQffkNOmub"}, {"displayName": "xEJr2qEAuJbpZSrc", "namespace": "bc4LWfKaY5c1tP5T", "userId": "DuI5f6m4KC07CnsZ"}], "members": [{"displayName": "e32hqEcB1ExYMBb3", "namespace": "ckvoaJYdMqGegcg3", "userId": "eRvBZXN3cjIXmFWR"}, {"displayName": "Jnj8xN7HDPTUEDPN", "namespace": "1Kb4UTPWDXTSb55g", "userId": "8LSTs7Nf95lGlPrf"}, {"displayName": "6obIdnI6Ag7eUYcY", "namespace": "J4QzXCmqr6gmPGaH", "userId": "P5SVPvRLiDi0mNHb"}], "permissions": [{"action": 29, "resource": "Lx8eq8SGNwEQO8dY", "schedAction": 43, "schedCron": "xGhaBKoUfiHjGmCy", "schedRange": ["PsKCJTv1ic9gvagF", "2cSuztsJ5tj64gV7", "nmDk29mcjSuz9vbN"]}, {"action": 91, "resource": "Qjpzk2Tb7iYdmNZW", "schedAction": 28, "schedCron": "CftT0RWECdjWYrnu", "schedRange": ["lxcCKAru8pOaAVLD", "B4k3JwkdaxR7GJpY", "muYCPG181q9GA5Dy"]}, {"action": 7, "resource": "hc2Fh04JTsqDTynC", "schedAction": 8, "schedCron": "9ayazqXRqegIUicY", "schedRange": ["XXzxsBFrUs9BYp6T", "gCejBd5o7iTST7R3", "KbbQGERMNpqWb51y"]}], "roleName": "5RUzvMfTkPy0fGvT"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'GgfLKsg0b1Bq78cE' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 '5O5pmPnbiPJ9j4vx' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "rm3thUvV87yfkycL"}' 'SVdleSaAylsmLYe2' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'phYOgT5kDTyPl3dK' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'F7NXEjrJMki8jvc3' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'P8Gwjg3IOH0SDHgY' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'KqxJiFJdrmj5vhzg' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "sJwex7wq8ZPlXNaU", "namespace": "NgdY2vfJuje5cPnm", "userId": "GjTvYa5Pqx1K7qcA"}, {"displayName": "oijBPAp6EPb988Nz", "namespace": "xrDKVpULjjiw3NeV", "userId": "G4DJi9DaMrc0WFgK"}, {"displayName": "jE945x2CPVYYG9Wv", "namespace": "oGmAmvaVV5YfxnUN", "userId": "cwjr7gSGhnfuF4WZ"}]}' 'iQVICVpWd3UM08gM' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "Xhdf3juXW4JprIb3", "namespace": "CJCAtvSG8Cfa9dzO", "userId": "JDGCTHIOFjeXbsSg"}, {"displayName": "R43kIDzxBwqRJTzr", "namespace": "HNZWUsq5lQo2jy29", "userId": "EJigqYhyVhURx1yP"}, {"displayName": "eczRpdk0HATGylx2", "namespace": "JG2KNGfhzfCTxxrs", "userId": "RRLee3TcJ7DQIi45"}]}' 'aCDHN9mVug2zkVf6' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'KgpKOcn3tMD9UT67' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "bOwugFDa6wUQvehK", "namespace": "qwCh86XmRkCEcfHD", "userId": "Cdl59Wp9A3tXGve6"}, {"displayName": "DdK6uvg8f2cIoByk", "namespace": "9fxtvsgeAxo57nKA", "userId": "bZpsbJ4Iu5KJ0ynx"}, {"displayName": "GBlacDCdFe8ATUqV", "namespace": "xcSthrpnMUBsnUfu", "userId": "QIcSbUt5UGkInFGp"}]}' 'uUsdtq4dOwNESzCE' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "W9dUVhZjLftC3sCS", "namespace": "8CpLCqPD9CeDEdCn", "userId": "nL6Kt1Bjj3b8QM8R"}, {"displayName": "r45ULqXQgvwD3PsK", "namespace": "DJiWxQBwaS7rDBf2", "userId": "S54phbdyGDt47f9G"}, {"displayName": "WRlE9hqz6rjDNo4r", "namespace": "hjxUdMM83WekqfWv", "userId": "04vvn9bk5qr8qs2m"}]}' 'qtnGAqXUjNypF6MM' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 34, "resource": "JEhxPGbEk7s7gw07", "schedAction": 65, "schedCron": "5jlpJdre5ur6yvWJ", "schedRange": ["DdvM7T7PX2vamIRZ", "HzsIYOCUoiCXNjrd", "QL2jdx1eIba1sB0H"]}, {"action": 37, "resource": "EokxXxkWZbjf7GZx", "schedAction": 0, "schedCron": "umBeIqdQGZC5kM03", "schedRange": ["HHijsQRj7N8IAjms", "onjj0ZR50BQ1U6aF", "D3O2kXQSc58zgZVl"]}, {"action": 3, "resource": "gIF7v3qbZu9M3Oxq", "schedAction": 98, "schedCron": "nHJzvw7tnYtGfv0E", "schedRange": ["JyjBu4EzwRjD7jmQ", "JeFPghqamSc5y0X4", "8eT7Mluexk87b9Z5"]}]}' 'BTsEA3EdmW8saabP' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 8, "resource": "xRowfNojzPXI2v0p", "schedAction": 35, "schedCron": "GnbjmPDKFS6u9FHu", "schedRange": ["v1M3qfch4SqIV6LQ", "PHlaeYl4csFq65cU", "66yJaj4ovoKWE4EW"]}, {"action": 53, "resource": "sw8v5peiuxoBJATa", "schedAction": 41, "schedCron": "2mWAOYksczxBS0OB", "schedRange": ["Ca2vWadLmQtYKmEM", "zicbuL2S3RiW8dLT", "CBfGUdVEdvdQL7sV"]}, {"action": 47, "resource": "hfwkuVykH4RpfmjI", "schedAction": 48, "schedCron": "FGZ5PKdbabJIkNnt", "schedRange": ["9P1Tkm08luh4dpPR", "MDbUXBWTbpAogG2w", "lZkLhuU5FI8NijFI"]}]}' '0GKwJ3vfXlsAMy2Z' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["p2UAGxHnmSxvkG9U", "R5q9neoW6JBcGp9R", "x2RfcRhXpmeeHdvp"]' 'has9S7ivHEoLbUMM' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '58' 'f1UreUpxEkXIbE1E' 'TzRJZKMavu4Ul2Ia' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'ieEbPSE7TGkeHsYs' 'W9oGBN1pYMBwbPZT' 'lMlUvFEiGprcNSQ9' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'kEeXBZ6FVrBzyhyh' 'oS6a9oe0JaXFpff2' '8uYbe4Cf2HEHvVev' 'hISjbtBJUK5fE3Ou' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'fPSX3PdOU2V9yw94' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'oa8UJ34TIedV3Hyo' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'X4VnO2LpBU08wfnl' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'HBXFIqFUmgUSMM5a' 'u8GJT0mkVPI6zUtf' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 '3QaJPGrTNcXXTUIg' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'goH89QNmI17UDb19' 'R6H7r1ta3m7jK5px' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'e82pgFiAS6piIzmc' --login_with_auth "Bearer foo"
iam-authorize-v3 '8rKrKEPGSAcong6e' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'ZBmOau6syme06c6S' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'KLc2mEC3IXl5XCbk' 'OfHaGr5kdazlypvt' '6lSLfU7HByGXPMqx' --login_with_auth "Bearer foo"
iam-change2fa-method 'j4hBgVY3YAxZLKbc' 'Odyjqf6Q4oiwoJca' --login_with_auth "Bearer foo"
iam-verify2fa-code 'RMEb15LBlTVufc5Z' 'yODR2NVyn4PRqf3e' 'RbZqBAoKGcVCdMiS' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'V4qBrt1kcLmRv6EJ' 'tl5xWnsb8oWq94RI' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'mNWVIJnhhwFDV1Vi' 'taomvWTzdsW4N70w' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'YS4Kj7Yi2VvoQNW8' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'Yc481dYdvGxJAMDR' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'wMUSuC3Bajy3BcEM' --login_with_auth "Bearer foo"
iam-token-grant-v3 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'BCV9qJhWva2FPBuj' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'X0geYCpGJM4sqsPN' 'JMiZXXOFwmGWAvNF' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 '0Z0GkwxUNYyNwGiK' 'rknH0Y5mrQgLC6D2' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'qsFiQHglUQMZi5Wj' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'MZfOadpgegCUjTdi' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 '1Ehr8OtqpNJ9R8Tu' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'Ny4ejmVA3vMCsGyP' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'd12B8QNUz0hFFNbH' '6j2W4roZM2UKAXEE' --login_with_auth "Bearer foo"
iam-public-get-async-status 'sL5D0oiFchQnVeq3' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "g2AB2WIRUQmauIY5", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "bKVoWtoUW1P7ocuB", "policyId": "AldDSUS7Haa6unq1", "policyVersionId": "yQOSRvyiLBRVtIDi"}, {"isAccepted": false, "localizedPolicyVersionId": "piIQFVmzMidw70KS", "policyId": "ahpYZdKZRyR9AX7J", "policyVersionId": "jxvNZhM84DiZk6yS"}, {"isAccepted": true, "localizedPolicyVersionId": "eDCow2zXyFFVpM87", "policyId": "yqEwEacQMTlqN4LK", "policyVersionId": "kxJ5v3SBafnKNiMP"}], "authType": "bFkFGA85W3HJkqgS", "code": "2B37wwoPYOHiIsxm", "country": "sLBPBJuNLnWRrtW8", "dateOfBirth": "70qD88ZcduZSe7W2", "displayName": "0UZcDaiq0nEZ7Pyh", "emailAddress": "qFJkDClOsKmfsgJd", "password": "mzsDPsWh1k0cQ08N", "reachMinimumAge": false, "uniqueDisplayName": "6dX2TZkil67kRngo"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'Ua83ECh1gqPeS193' 'TNNzot3sVli3GN2X' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["TrFibRAhzzEWzWlT", "Y70qdgJRvpZrSpWX", "3KEe2BjV00ReCXFf"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "fjJJxlgjzIhpgOoI", "languageTag": "OD74V21HWDAfvXwd"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "xbyp4HAPbBbNPStV", "emailAddress": "BUpKgOssFkz0F36p"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "iDYXeHZ7FHls3nyv", "languageTag": "conqbHQqKLQKe3xm"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "j6s0GqsWncp5Lrqb", "uniqueDisplayName": "iKudv9z75SzoCV8Z", "username": "Mi2o1nR482D6gNCl"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'k9c87hosaPFC5zBW' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "3ZgVZCj9ObVGT0Sc", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OG1m7MKclr5igjNT", "policyId": "VItrH2X78hxJgaVf", "policyVersionId": "w5Vnyq8OzTE89WDN"}, {"isAccepted": false, "localizedPolicyVersionId": "GcekjMNHuPXtz8tX", "policyId": "xrmzafMUguyDoN91", "policyVersionId": "uc28HoSpGt1g0GGb"}, {"isAccepted": true, "localizedPolicyVersionId": "f2PPKOldkbgX9CWJ", "policyId": "KwXXSbv5eg9q86Ia", "policyVersionId": "DFjjx6uZerWbtwTX"}], "authType": "9gNRByjbE8lOLAfT", "code": "XKLzbrddqcKLa7Le", "country": "vxNHOSEhQRZIp693", "dateOfBirth": "lRwtc43atCuCFxbf", "displayName": "bz4aQERziPL4dHhO", "emailAddress": "qG5KDdUvk0LEi26L", "password": "s7mjRxNmvvNtjJNQ", "reachMinimumAge": false, "uniqueDisplayName": "9PfVrvMEPtpsSNcp"}' 'K1QkB2Sy8Ww79LVe' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "VskqeUB7RSayqGFg", "country": "uhh3bvadRthdbVAp", "dateOfBirth": "ebRA09rW8i8krFWJ", "displayName": "he03coRFok5d3AyG", "languageTag": "rZO8GuoXNSoVEBG7", "uniqueDisplayName": "VbBPUWipz9C05Yab", "userName": "FX4FCK5ucTFsAFza"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "O3yJpA3KMxBlrRyt", "country": "ER1qdTelFAadM9y6", "dateOfBirth": "6Drf4SSGGt3MiBKo", "displayName": "how3kKoaP1K4CDuH", "languageTag": "1mMIfOCDyVAHrHnc", "uniqueDisplayName": "R5dShqiBUI9esSsX", "userName": "egSEhrPpK2q8kxR4"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "BuEksS2A9VOA8H9V", "emailAddress": "eHv0L2Acm960EYQE", "languageTag": "uGJVl8xs1WId9Wla"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "lqshF9Rh2o7GCQGP", "contactType": "CxwEdkyuT3MgzReR", "languageTag": "q0112ISArROIodcm", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "6v2AEozWWaYvBLE4", "country": "6bpuJip8JyxJ39vr", "dateOfBirth": "tuWWrqTZbSqBSKp8", "displayName": "AmgwhYzk33J34fiT", "emailAddress": "xK63OHpnUCGBVfpc", "password": "tNFUsUQ6ZXQcb2o1", "uniqueDisplayName": "J5euLAbBgejqc0ap", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "5VByeI3ycMcYYBix", "password": "KJXCISQdwec1m8Bu"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "sV9tUh74KVo6Xqjz", "mfaToken": "2xUKLNWSmYyVvyel", "newPassword": "IJ8QgaLMqi836ULa", "oldPassword": "7cfZl4VuY6rsZyo6"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'CBRRnoOikIxXKKIR' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '6kPmswm5TCAU1cKA' 'pdJDnE73GLmSZns5' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'owBhoUg4LsGP6KLP' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'XkvUv2XiXaBzsmax' 'jTZPlLitytGka7Kv' --login_with_auth "Bearer foo"
iam-public-web-link-platform '5TacQKF4OlRGdmXx' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'ETLEQrr3KCAV9alq' '3hK1G4kKooSNNUZu' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'iynZ64IwncZPk82G' 'F3eTC0vzZUDj9dzG' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "gGVxo9OHgfHumyfu", "userIds": ["BNisecYbcOpR45VD", "lvSc0Mr7ImwCwGqO", "f0bNs97KvKyj3MqS"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "7Dcmtfh50eObbrmg", "emailAddress": "jhWK0x0ZidAJ1CU1", "languageTag": "eD1La16Bw3JbUnUD", "newPassword": "h5yGjjv4Mwrv2van"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'cmR6Z7rb21A2E9pX' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 '0BWCMqPsRk5htdM5' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'T3fDSrSHrkoqv2mM' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 '6soMaTvQq2a9YdFN' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'tRVSO0js0hG9xmSn' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'zd7zgUxAogcnGkXk' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "17QPkJHRhmLKQuQV", "platformUserId": "FSKiXl8G2uf6E8Ea"}' 'jXLSAS8MKMaxQ1Qy' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["JCpKedhuzI7G9NCK", "KXu1bqI2M5PmXfKn", "Q7BYGjCUDMOrbmoR"], "requestId": "vWnfmGFy0eUoOBd9"}' '0h9EDqSTOfoNewWj' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'wMWDKEt6JhbJ0fwT' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'Daq6b5RpMwhWPtnd' 'riXU9loOxpmEuwDV' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'c12r0DVUGgGHkapT' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'CafFMdvYiCBuzUUw' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["yI6Vtd4v9k4fv3kM", "iuQ3DhsKLxjt5srP", "FxBgpFtDBmTLH9kP"], "oneTimeLinkCode": "9U53z6joBAhAlJGI"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "2YYb6ajBjgq6eY4P"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'BNHKPx62tHxDb06Z' 'Fy3uglSp2UxvF2uL' --login_with_auth "Bearer foo"
iam-login-sso-client 'XWilRD7HD6LCgdFx' --login_with_auth "Bearer foo"
iam-logout-sso-client 'RGj00RT6LvcnGMJb' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'JIYLssMvy9gkfTMR' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'rXVRcAVRDX6gmDfN' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "fPGYYSTunMgt3C8h", "deviceId": "EguCqlMHiQN3HWJw", "deviceType": "9zIWsiP2JQ24meDr", "enabled": true, "endDate": "PlcYaqYM7YfBmhjI", "ext": {"9Y28qVceS9UX48dK": {}, "PCFUIeyYEymNXzNX": {}, "6TGh4UdEweeBsJEv": {}}, "reason": "BbAvCmlh6Z1oz9Ba"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'ixUUvmzbajE2gjoo' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'a280S5RNB5dVCsB7' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'xL4axSPgPCiwLxCF' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'LDixZwVtt3RVTl0t' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'R00oQgcHdGGK3x76' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'U1EIcklttmrpgF5s' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'zl0sMY8es36r1FgR' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 9}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "NLHkVrEFd8xArWJu", "policyId": "CAIfNBSHgpFNw9K9", "policyVersionId": "pmAIc6VSfE9nbE2P"}, {"isAccepted": false, "localizedPolicyVersionId": "v12ZSRJkujxbCu1H", "policyId": "Faj6Vxs3GuA4S1dS", "policyVersionId": "7H7yIS7b5TSDRIoM"}, {"isAccepted": false, "localizedPolicyVersionId": "1vyamjsEzwtLPxK1", "policyId": "os4qR8LaQzEb39sZ", "policyVersionId": "TdFfC8x5aHLsXHlm"}], "authType": "EMAILPASSWD", "code": "RJTTy9JrNz1K5M1q", "country": "gFddYvifGHawNx6y", "dateOfBirth": "hniEHLbEQKc0aUvr", "displayName": "KXDIjYC4df9qswSl", "emailAddress": "pCI8DhjlxUyrs3OS", "password": "esE5p0DwUj2HKUvP", "passwordMD5Sum": "YUcQBxMSdOOsn2Nd", "reachMinimumAge": true, "uniqueDisplayName": "Jpa19GJDK46Eehx7", "username": "xasqMY9aulsL6NOV"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["agpS6A5mkufBpWVx", "IK9D2bTcgaKoccaS", "wWcZmzCWGI1cIQcP"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["WAShIhieSKUf3zKb", "yQk2vQTYX1xsth28", "NZZgsXycuQNGIDeH"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "lf6IcX1K9JrK6Or2", "country": "xx7rLwrPoWiywnxu", "dateOfBirth": "DLLuIaSxoloIH1gB", "displayName": "CWVFrvls0ZwosKhD", "languageTag": "lLfTKxpVOXvGSrdk", "skipLoginQueue": true, "uniqueDisplayName": "I0i6dO3zkbDseh4t", "userName": "JdoGcwMBmegqVUaW"}' 'MJBjrV0p9A7tcHrV' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "0MbJGr4drgkDuWS0", "emailAddress": "5m0pGzazM2BUXnzU"}' 'EWTiKMJAf6AgbiED' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'MfCckWogE5gcfF8A' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'MGZ2FBS93Mg6TKwd' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["RMraDLrwh3d0ykRG", "kgqUNIbJMJ9ABbKV", "WO2YEDiqkwKbpdk7"], "roleId": "wlDngNiPPjpSAlZw"}' 'FGpea5ObBB49Km4C' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["lIQmkIdLCvNhZ6P8", "aqZ2yfrC1V7ZpJZP", "HCMqvcYmeDLYEzs2"], "roleId": "SQUdKr6vgqkjycqc"}' 'lNlBORlC8ZkjsxYt' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["gxplHTPLzynjFZgF", "3erw7UsyHq4bBb0n", "1JhPUS8BRPGV9n76"], "roleId": "9zLJdKMexeJc7Nvg"}' 'TSgKjCxZjKf8NA4c' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "y8GgVk77fd1GS5Yk"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'yhAiAItnWUmD225f' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'p1egsx3ErheNwqd5' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "iclNNqLyrlzrJ4QH"}' 'bfnAdtkujxHff7n1' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 51, "resource": "ncJJKpqmgvUTr8XA", "schedAction": 40, "schedCron": "L5FCbOn46W2B2uPQ", "schedRange": ["Lrt2t6bVpCgKvPXS", "DufmKh783cV54JsV", "BRB0rY0xfWddACyH"]}, {"action": 91, "resource": "JX0rkOHUkY5aSlqh", "schedAction": 29, "schedCron": "btmGsgXNXbpqxh76", "schedRange": ["Af5JSwjw2fE2g6jX", "V7oai2oDm9FaP0HJ", "98tE4UyoQg0b0sGO"]}, {"action": 21, "resource": "ztprSfW9OutADrNG", "schedAction": 57, "schedCron": "OuJ0ypkkt2G4eFh2", "schedRange": ["YNsdoxpLTBM9Q8t8", "29Ido1JyveSRiBq2", "3kyH9jQbHWkcVk0X"]}]}' '28GS54vl7gIKBc7O' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 36, "resource": "TylFRAJKySnC0cfP", "schedAction": 24, "schedCron": "85nmpdN26BY5YI0j", "schedRange": ["eO2zMDSy4kyqyKgr", "tEPdXXlt8geCdiXu", "3iNvn7vLZ7h6alhJ"]}, {"action": 81, "resource": "OZ2nDodm4TNs8mAj", "schedAction": 100, "schedCron": "IKSYFdJwgZsRPOzw", "schedRange": ["uDSdGl1A2vaNeDiS", "qTfmAVg50kOdJagE", "mTuaxlxgywkbdOsy"]}, {"action": 48, "resource": "BdoKH6sREmmfwUZL", "schedAction": 97, "schedCron": "ZS7snx0Q2Gd8m7Y3", "schedRange": ["wiNloJfey3HXL6Sj", "ljNPTXA3qbg55Syi", "enCODZ0mnOpPTVxE"]}]}' 'gBFzG8tlkxWKCU1X' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["N4gl7yHvEqpJSrDX", "VwCkhOQ161TFjROY", "Jm75VIuCOCkt2W1D"]' 'fI8QtgODk9K6DcMn' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'yCPn1FylWdaNV1Va' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["ZTkbbuWiiA4UTDgS", "2SVEo5M80LLbku9G", "YH4ijqOVM50tCqkZ"], "namespace": "fsSxAbDJ7sHCLup8", "userId": "pmEosOXglQwwdeLV"}' 'pmXqRwVjc3W2ANmE' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "3VVsQ1fm9EUdiaRj", "userId": "uLsKZoqnpKwhpZVd"}' 'w5UMa8ymxtEFLwEL' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["CY2vIddlxnA1Vyni", "oJcAPwVHUGcs1ACM", "voY4jWH9dFmOHW0j"], "emailAddresses": ["9suukPE4JwQONQ2v", "CbMn0Oia336uiiMT", "AductvUfVwLahtRe"], "isAdmin": false, "isNewStudio": false, "languageTag": "pbz77y88rUFum2Zc", "namespace": "A8iKcF0bkfjcTEFX", "roleId": "cTwEtnHxP5pVtN4j"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "NVIdruEA39uCJzsE", "country": "8WObt6t0w8LOBxE1", "dateOfBirth": "5JYj4IqWK09l4wkr", "displayName": "zahXR1sDEDVKDINE", "languageTag": "3HjCiVR1dQ8kuhb4", "skipLoginQueue": false, "uniqueDisplayName": "MMtPWg8217m7qNkQ", "userName": "iKp2oac8QTNEuBbe"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"mfaToken": "uQqm9wM7mgTtUdPV"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"mfaToken": "cQijMBhs0kDP6d3n"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"mfaToken": "uUZ41mSeS9SnGqhJ"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'OvykBcDpzD9zh6dt' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'PK4fVHLMvrCsH3RY' --login_with_auth "Bearer foo"
iam-admin-get-my-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'xH2Up9VthPjFrK7H' 'ip0eONFDgUPShG8w' 'wFKY9AMpcwJd4Sri' 'gIxAhbFMZfxaznlD' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'QbzTiFrQB1yUonir' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'H4URx3NkKQBYrlUa' 'MiFEWUT8cAFO5zEw' '8GENEJYPKxxOw7xN' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 '8IEbc9YITN98j4P2' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' 'qvVsakylHikKkpOj' --login_with_auth "Bearer foo"
iam-token-grant-v4 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'n6rtILNJVv2DLLUy' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"platformUserIds": ["Bt5hDs45siG30Lv9", "iGa5mkZjnRXVcg6A", "ByNpBo2JYkwLdmR9"]}' '7u9MVUii4KpYcb1A' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "sESaBOTHnbX9tC9P", "policyId": "QlFAGbMtEybfcAl0", "policyVersionId": "mnsAkRT2k0AzdgIu"}, {"isAccepted": false, "localizedPolicyVersionId": "MuqZTHwo1IAJQpb6", "policyId": "r8ZeaSHwQuiH3Ozu", "policyVersionId": "4G6bXxp0gYZyF9fJ"}, {"isAccepted": true, "localizedPolicyVersionId": "J2boQqCCyJfThvCJ", "policyId": "ieqRSGN8Mm74HlSZ", "policyVersionId": "zp4aEW4GkHG5OIVu"}], "authType": "EMAILPASSWD", "country": "uss76ezTrsDZNYUV", "dateOfBirth": "48Oh6I45X7HvUtPY", "displayName": "ONZdFk75lkjQNHrj", "emailAddress": "aboGomguUqeuZh5q", "password": "trRbNnGejdTGvZgN", "passwordMD5Sum": "5hshSe5YmZXKEQLk", "uniqueDisplayName": "M6o3eGSP4Htmr90T", "username": "qGf0OyqJ9ibJMmRg", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xNwp1lGkYoq8HP1T", "policyId": "M0tefVQPWX1NPO5W", "policyVersionId": "n7rNG8rGp7Fadvo5"}, {"isAccepted": true, "localizedPolicyVersionId": "yQB1vR1mx6K17GL1", "policyId": "CrO4ZuoGZSxTzm8o", "policyVersionId": "MSPIHPtqzIWIzg8p"}, {"isAccepted": false, "localizedPolicyVersionId": "saYrJAe5Kd5QB96n", "policyId": "dlO6iPGC9RhzMC7V", "policyVersionId": "8BEphnRXnSpCzyb8"}], "authType": "EMAILPASSWD", "code": "koxQbrPngi87K58p", "country": "QswqKLutINusOsa9", "dateOfBirth": "2F6iwkJIYOLarmpW", "displayName": "yvib9CDW21ANrlpu", "emailAddress": "XD9H1u1CvzWPcZwk", "password": "j1l6bf2F9EXOBj7v", "passwordMD5Sum": "8LHYivmD0ekycMKl", "reachMinimumAge": true, "uniqueDisplayName": "xJhk4EdTZ000rS92", "username": "594HLvWFsXHtMP0k"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "L5dREQbCqfh0gpAB", "policyId": "FBER6WNcDOsRzBkf", "policyVersionId": "9A6HjCnFRdSihcvs"}, {"isAccepted": true, "localizedPolicyVersionId": "CYxSeeJOlxa395rg", "policyId": "hZwGhdZJkkGhYvXY", "policyVersionId": "MIyaEMEqOpwetb82"}, {"isAccepted": false, "localizedPolicyVersionId": "GIzttTncVBf5g3oe", "policyId": "uHiNyLkfPQPmjUkv", "policyVersionId": "Ss5YmIejozmG5Hlr"}], "authType": "EMAILPASSWD", "code": "fMAvvpkAHRJHZyfr", "country": "XZmiJX4CjKCeIRIr", "dateOfBirth": "997KKpJXTLbYWpqe", "displayName": "Xjaf1f5fjNMZjKJ0", "emailAddress": "5puX3197WrMnJtov", "password": "SMFw8X4zxbdfXgun", "passwordMD5Sum": "t1oMNZ68eovHSH3x", "reachMinimumAge": false, "uniqueDisplayName": "VDYBd6hMB0l7sg7I", "username": "fMH5Tu1ky1ZYvyeH"}' 'mfoFkUDP864shbnQ' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "3bVvuvpsDJXPCWkX", "country": "4Kpi8CJ88aMPGFFA", "dateOfBirth": "QZbfbmVTEbiRq5Ju", "displayName": "ikmpat75rVbN9ZBt", "languageTag": "zJ33tCwv8H1f451F", "uniqueDisplayName": "VZ630HNBYZSrz7pM", "userName": "jESLLMPKDXLki6Oz"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "5Bygt8Q0RjSf1srB", "emailAddress": "7hGwGbUmQmJHNffZ"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "ENs9X0hFMdzryvhc", "country": "1YjHmmulSBIElc2C", "dateOfBirth": "dRvBb0aGnMt625bW", "displayName": "Hb5sbX6asrjV7XJU", "emailAddress": "OtHlzXNHEPpzlMlx", "password": "7b2H2THLwZGikW7T", "reachMinimumAge": false, "uniqueDisplayName": "A9gE6SrYKq6lcVOh", "username": "PJIcEHbiKHW7flVo", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "zaaeP3Wd0Wrb8s3G", "password": "W0CY0vAfbq8xoCur", "username": "q4lpHXrbVBh60NUA"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"mfaToken": "2aKQwnXrmi6ya8u4"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"mfaToken": "sQPvaf1AcweR7tJW"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"mfaToken": "3MLMob1hUnIzIpUM"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 '8KK1kGFN0NUNGKxd' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'lAUDFQuGPzAuT7M6' --login_with_auth "Bearer foo"
iam-public-get-my-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'OBrNwioKnXPVZaDc' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "XsV1TnsZioDiBgpr", "emailAddress": "zahPB0FKMa0YeyNB", "languageTag": "QWUHDBnBeePkqg6Z", "namespace": "t1Lr5BlO8K6LH4dS", "namespaceDisplayName": "aa8XYHug51ZTogG0"}' --login_with_auth "Bearer foo"
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
echo "1..404"

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
    '{"modules": [{"docLink": "N7Hvnuq1kJ1kpHcQ", "groups": [{"group": "tnIc9z70LFQMI0oZ", "groupId": "uEjY0rNBbbB9txAv", "permissions": [{"allowedActions": [40, 90, 87], "resource": "Xd0OoENg2Lw7uepm"}, {"allowedActions": [1, 1, 15], "resource": "EUkPUBnB0ZEJH3eb"}, {"allowedActions": [79, 98, 66], "resource": "Tg922xiBgHSka0Pz"}]}, {"group": "7I1WkIa0oZ1nXpW1", "groupId": "l70pcZgIn4lPghHy", "permissions": [{"allowedActions": [78, 63, 70], "resource": "HBzArbyW10NkJFQx"}, {"allowedActions": [42, 24, 79], "resource": "Ce4txY0MsPc9EMgf"}, {"allowedActions": [65, 72, 58], "resource": "CJiEvhL8ZfwCVJW9"}]}, {"group": "yspUOyHC9eKeXzrv", "groupId": "zBllwzyC1aTWEmPg", "permissions": [{"allowedActions": [29, 94, 49], "resource": "JI8GPrM24F3celFg"}, {"allowedActions": [79, 81, 49], "resource": "2HQtgzQhO3nR8j8D"}, {"allowedActions": [24, 86, 43], "resource": "6OGbn8vmfMYGLt1A"}]}], "module": "jKhh3JMX7xSrz1EH", "moduleId": "6X2SM3xzsNrJzWBc"}, {"docLink": "dFlo7oAsOlfLB1J1", "groups": [{"group": "9b5rTfiL2P3r1a8K", "groupId": "IJH33aKkPuWD59Mg", "permissions": [{"allowedActions": [94, 50, 78], "resource": "HA58Jt5NaROjSKFE"}, {"allowedActions": [42, 83, 52], "resource": "o2ElXYSS4ezBRSiO"}, {"allowedActions": [50, 6, 90], "resource": "DppvEJiUiDGXgh8B"}]}, {"group": "KcLqtRZ93LuR8OEy", "groupId": "ICvwgwBFehwtdJLd", "permissions": [{"allowedActions": [28, 99, 54], "resource": "R2wo8beVQvgeP9qO"}, {"allowedActions": [69, 59, 1], "resource": "rM7JEMRPkdTcAzkI"}, {"allowedActions": [24, 49, 27], "resource": "N0f3JA27Qz5SjzQf"}]}, {"group": "OLYu9O46OOzz9p57", "groupId": "qSpHerzO87cg7Tqt", "permissions": [{"allowedActions": [78, 18, 87], "resource": "QZZrSsuYiIPei0pX"}, {"allowedActions": [13, 23, 92], "resource": "JYnKkoCAZuolAWnx"}, {"allowedActions": [21, 71, 24], "resource": "MolIrnlkRVbcX435"}]}], "module": "TDYpkk2Gza6DrSyc", "moduleId": "ophHw3EoEEClTO9S"}, {"docLink": "DKnMlnKW9jiNMu9Q", "groups": [{"group": "VrMeD4bD8gISE34y", "groupId": "IAZQeigiA3wBrmBY", "permissions": [{"allowedActions": [72, 82, 23], "resource": "XWVj3KP1mX0iYHXB"}, {"allowedActions": [96, 50, 36], "resource": "Uk2tQm307IORTyHn"}, {"allowedActions": [76, 69, 60], "resource": "VsG6izJZruOJvSRF"}]}, {"group": "LDSdj8elbtHvDU91", "groupId": "DmHzwiqVPCJ5j18O", "permissions": [{"allowedActions": [42, 89, 1], "resource": "aD9WNKGhbLhjz1v0"}, {"allowedActions": [90, 53, 56], "resource": "QwqgJs6O0Qj0ccMk"}, {"allowedActions": [6, 88, 52], "resource": "Jd3930TGewjRyfo4"}]}, {"group": "nWVZZbKFsKOmgEhj", "groupId": "H2wFzCpxxJLfAg5c", "permissions": [{"allowedActions": [64, 11, 93], "resource": "wBiaVPmmn0T5uzlm"}, {"allowedActions": [17, 24, 42], "resource": "NY26xrkPPdg3pXjm"}, {"allowedActions": [40, 26, 31], "resource": "8PZbYVD8RiaTsdD4"}]}], "module": "d3kSbTkHPMUvOAUX", "moduleId": "kw36cr2WJQqS7Tq4"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "YIyZAFQ6lZfa2jdN", "moduleId": "vpWf32JS1av9VNpV"}' \
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
    '[{"field": "LT0LvqcfSdO1nAjY", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["gCNVZxHGxhZqNXJ6", "JXSh0Z3SWISs1dYr", "JKmx1BT6iLFQejNZ"], "preferRegex": false, "regex": "F2hm0TqBQprHn3wh"}, "blockedWord": ["PKU5abnqw8fFa30p", "Vbhr1BHh1arZAyuL", "cZoEkPpqKhP2jWnR"], "description": [{"language": "Tglw0gdWoE4esuiD", "message": ["rquccz4J6fFQezJ5", "E3iYHIknvPcJkjRe", "vVYfiExpAgoK9YDq"]}, {"language": "1x3dkbJFDEBEOOvJ", "message": ["5BKeipIldsgB4hOx", "b88WgKSLIpneDQCf", "wucHRL3o2NstrL6T"]}, {"language": "sJeRcE7GuwKn63KI", "message": ["DTkUCqbbHGJGOTvK", "KRTHDntaFiufH2YR", "6QU7fj6w17arNs12"]}], "isCustomRegex": false, "letterCase": "fMuzZh4AhZRe2hgU", "maxLength": 60, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 49, "minCharType": 0, "minLength": 39, "profanityFilter": "VogxHrOon2OW4Zw5", "regex": "QwVKWNy2tnF2MifJ", "specialCharacterLocation": "R4hr4gdJDujYnVnF", "specialCharacters": ["K6gB6ZxC6yYUVUJY", "nQ3jOGmROIqxqQ0g", "cNeTflyvUh3w5Ztf"]}}, {"field": "wmOCKpFSMF0tfGIZ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["c9fEjkZhEpAJMCxM", "p2J0hDg2kMgkvhoQ", "e9gD9tGN0nE7M36m"], "preferRegex": true, "regex": "u3EeZtLQij2JXsqd"}, "blockedWord": ["XfhZTTaCeqGv7meu", "QhJuq1C6JHkWMSUb", "qByWN2BCnRz9w2nu"], "description": [{"language": "r0B9jKaunAcylsau", "message": ["7wRQmL4i3eRyIECE", "Da1I4lwXqwPfq3Vz", "HQjtolx64w1gyvja"]}, {"language": "cKtGqxMnoAXRlcq0", "message": ["mYWKQYlqMmu2pvF6", "rP03bQaq1cT88H6R", "CW8gJmGzDlqxtLsR"]}, {"language": "2AGOiPhNt2IdH8aY", "message": ["YUT6mma833TDzk66", "ix88sAUrXr7MXxCv", "yy7caxz4MQrODLNl"]}], "isCustomRegex": true, "letterCase": "ZX5KjdNrEwfWo2Mw", "maxLength": 41, "maxRepeatingAlphaNum": 72, "maxRepeatingSpecialCharacter": 24, "minCharType": 76, "minLength": 77, "profanityFilter": "lrwXmIGamRCARuFL", "regex": "x4rV4CXVMrDYKe2e", "specialCharacterLocation": "Tf1axo16GqT2vSLL", "specialCharacters": ["iMvcu39YZJypWzpN", "XgnoKIz8O8NglJtZ", "Th280vflFMxIhlIT"]}}, {"field": "8AgyZJ16MMd2bzOr", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["i5Mf7WvbNSeeDNfU", "ESLlwHv3JgteOLyK", "p8a1VqxXnRhDd9TG"], "preferRegex": false, "regex": "ohewKkVuGv9fQXkE"}, "blockedWord": ["rF0drbYrrFQP6rW6", "2CtetBW3pvAJJieH", "hveGg97PY0txzvYw"], "description": [{"language": "v7atn9EQv2Oj8TFN", "message": ["eGtJGjKbMgCeuAYu", "zrmbWofEaKStqdKu", "4ROnONpJ849chqei"]}, {"language": "UGQMwNwDlYSli3p8", "message": ["YaAdel3hHMSLAisc", "GRWzkCl1ZKuPxjDU", "GRGcCEPjbUy7F82A"]}, {"language": "du9BYRHrVTehrqgv", "message": ["EtEs2LpE0qfbvdU8", "hlDoC9FnxqBlPBYJ", "7X6uVy7FWTSfMi2C"]}], "isCustomRegex": false, "letterCase": "GxjcdpdCqVeePMSq", "maxLength": 2, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 84, "minCharType": 34, "minLength": 50, "profanityFilter": "JTUQY40Zrpn0vAD9", "regex": "YsPeDWrAVQZSvgWu", "specialCharacterLocation": "CuLsUGrVQAbhS54Z", "specialCharacters": ["uQHKersDmJLUHAKt", "fXCKOna8DdjtZhh6", "ofsUoRh6r0e0J6vy"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'qPw7YlmV3kES0Hi8' \
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
    '{"ageRestriction": 39, "enable": false}' \
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
    '{"ageRestriction": 13}' \
    'PAEkCeV29QsQk100' \
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
    '{"ban": "eu5UcxuXXpt0YSPX", "comment": "04uEIdAwgDobopbd", "endDate": "JeVCiKs2vLyH9kcS", "reason": "Bdk7MwQzn28Le5ne", "skipNotif": false, "userIds": ["AaUXSuBQdvdhJoT0", "WK5ngNUxDKfZYofP", "GUbSaA00nKxQjYU6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "KlavIiLxU2I1GyJS", "userId": "48Hxu8Ju4XSAnlXR"}, {"banId": "YB9BgSZBvkehRn83", "userId": "B0nrW1qx3NJTugVW"}, {"banId": "Xz8dv7BiEUqnzxs2", "userId": "deMF8UAJIHEZv5zy"}]}' \
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
    '{"clientIds": ["UUyNJkvA5xF3zHtZ", "Sd3QzXhkrN4pWryt", "4XTNwpp0ni1YfIgL"], "clientUpdateRequest": {"audiences": ["Z4YIzElrLZOBLHCK", "mLBaIwlokbAFW8Rg", "BUwBL28BqM8UzvKq"], "baseUri": "eoTiNKGRUMrimGAz", "clientName": "6OhmHOpCdr3WzDm3", "clientPermissions": [{"action": 14, "resource": "FuU8iXCRz8Kgqgwi", "schedAction": 20, "schedCron": "iaIBpYC4txul6VKY", "schedRange": ["lNYYlHPwKDpJmkeo", "Akp3Z4pgyJYwclb4", "gd4QgQut2hiPuDdO"]}, {"action": 86, "resource": "YQ8HlHbHnfs4tLVO", "schedAction": 11, "schedCron": "QCWMktmiKd9vLPP0", "schedRange": ["w52JRAZxMWdoleYN", "HXeOpaRDwYLge851", "PbK2MFKvw5TWjAh4"]}, {"action": 13, "resource": "BLtGEZDRNkk4DJUo", "schedAction": 11, "schedCron": "4JmYxH2qs28hePJj", "schedRange": ["Mp0TKKUBfPNI9f2o", "LWDPSZexfKVxqdxm", "h5QWxuQuI7gdDTDb"]}], "clientPlatform": "3WdnOpzTrRzCCafA", "deletable": true, "description": "cI95GGdJvucDbs6U", "modulePermissions": [{"moduleId": "dccuM2ykRj3WnyAa", "selectedGroups": [{"groupId": "UaQBKFedL2uduXvZ", "selectedActions": [96, 12, 3]}, {"groupId": "wZwVMvshGmsg6ZJY", "selectedActions": [28, 38, 21]}, {"groupId": "UiDawAjgHFQk0VzW", "selectedActions": [89, 10, 81]}]}, {"moduleId": "esipbP027okM5E8t", "selectedGroups": [{"groupId": "AajVSvLRj306RDua", "selectedActions": [91, 91, 17]}, {"groupId": "F6xKA6yrnvXY5dDw", "selectedActions": [27, 8, 8]}, {"groupId": "ac75C6S2eHsH4Y84", "selectedActions": [14, 45, 77]}]}, {"moduleId": "m7c5nPR0Y1sffUaZ", "selectedGroups": [{"groupId": "64dFpiv8o9Gw4QtK", "selectedActions": [13, 89, 51]}, {"groupId": "nWR30MdBZezfwc3H", "selectedActions": [88, 33, 92]}, {"groupId": "AtyjTxnlmSyjEaFH", "selectedActions": [32, 60, 89]}]}], "namespace": "01ak59yFSfdZIv8o", "oauthAccessTokenExpiration": 83, "oauthAccessTokenExpirationTimeUnit": "WPUS4Zu0SbTt6M2X", "oauthRefreshTokenExpiration": 18, "oauthRefreshTokenExpirationTimeUnit": "mbjEnimeR7EFBz43", "redirectUri": "E9FkOPVu2fDtOjW1", "scopes": ["iSYQbcebBd5wb5H3", "qppoCiHMD4iBK2O7", "qYtOHV5hnpjc5CNL"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["pxFY8E6pU8eHjh0a", "TjIOaQt0snbE0yMv", "qF7TJ9uB0zypjJiu"], "baseUri": "7BIimNuwB3hBVhuS", "clientId": "MHhf5R2MkxQTAYGf", "clientName": "E6hXZ7XLoWCGf0dZ", "clientPermissions": [{"action": 63, "resource": "Vc2qHZuuedbBOd19", "schedAction": 60, "schedCron": "wNnT6A9zosmDnXon", "schedRange": ["cy7NZQ4PkAPXBCfk", "E1Fb0y94eP7yh0zs", "KhR60HZwUwk48XK7"]}, {"action": 80, "resource": "BPKmHVB7cNzHhvxc", "schedAction": 4, "schedCron": "xAPZ86WNnQOhusPn", "schedRange": ["4466u8agb5HPsBU0", "Eo6QJ9vBRJ4UP09f", "abC01Thm9f4AWpyi"]}, {"action": 74, "resource": "0ifdPyKf3SwHekWI", "schedAction": 53, "schedCron": "JaOHzpb623EciYoY", "schedRange": ["OPVg6DLEZ6DxpwBm", "2N8PdQ5mQaGXEbnm", "WR0H3EkrHqaLNdfK"]}], "clientPlatform": "szYZzOg113h6fIaH", "deletable": true, "description": "sqdIWU6ERylESgf5", "modulePermissions": [{"moduleId": "dXMrPoYSohfrLyXM", "selectedGroups": [{"groupId": "SrC62xYtDwflNGfu", "selectedActions": [10, 97, 43]}, {"groupId": "5cWeg6eSCypsceIT", "selectedActions": [94, 21, 17]}, {"groupId": "JGGCVF6LrILDLviU", "selectedActions": [59, 13, 52]}]}, {"moduleId": "f5nlMDORYuXnPNJg", "selectedGroups": [{"groupId": "ayPFcyUnKXA3mcyM", "selectedActions": [26, 17, 93]}, {"groupId": "6WF8jtNAVOYqSH53", "selectedActions": [94, 40, 23]}, {"groupId": "gycLzXz6lUMKi5mw", "selectedActions": [9, 15, 79]}]}, {"moduleId": "cH4UJrrCKvrOAi7l", "selectedGroups": [{"groupId": "MgkVWJYzSCIDxWUx", "selectedActions": [13, 84, 53]}, {"groupId": "zeRNHIqK5PT404mF", "selectedActions": [46, 11, 69]}, {"groupId": "HJv5T2kIQOecfLsY", "selectedActions": [75, 81, 92]}]}], "namespace": "lJE3uqZz574g31cA", "oauthAccessTokenExpiration": 85, "oauthAccessTokenExpirationTimeUnit": "VNPXNsmwTV8imJHN", "oauthClientType": "I0l6jJVzF1Oi2sQu", "oauthRefreshTokenExpiration": 100, "oauthRefreshTokenExpirationTimeUnit": "A2dWxBs056jkPCUu", "parentNamespace": "E1pgdHvlQKiR7SDQ", "redirectUri": "UDavOlKT5EIHNhJQ", "scopes": ["q94Re5IM1akNKz9I", "ltQUku3n32atB0QP", "QPEp5UtwUWGt6too"], "secret": "HP5kAww01zalTddh", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'OHlf6j8PZOzUiQKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'qz5NSp0B7LODN3Bo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["i2sSAO2n4MZQt753", "XQB93rOW0guPoQbY", "zc1RDVhs2lhdzxxg"], "baseUri": "ibuqUuyW3cMz9Yyd", "clientName": "uMomEHcU15St4v8r", "clientPermissions": [{"action": 49, "resource": "rNbE4bbDU4FMTbQa", "schedAction": 55, "schedCron": "3Y8Um1iqehObg3OZ", "schedRange": ["9j0HDtbqMFlgHKQI", "RtLfPngD83roOeqE", "7fcCAeExeQX43Lpm"]}, {"action": 7, "resource": "yq35BWDoc3qNcQFF", "schedAction": 51, "schedCron": "CzvaWUCA7wKru7ry", "schedRange": ["3AQ2sEHvSxjWoM1r", "NJLM0OOVG5cG6XxE", "NbWqlX7idzjpKDfw"]}, {"action": 24, "resource": "YxMID9pqZ5rryiMM", "schedAction": 39, "schedCron": "ZvUVInos5RK100yH", "schedRange": ["89i8ZDPXRL8cbTAn", "tB1STaab1UeibXg7", "RCe5BtKcwj6PqqOg"]}], "clientPlatform": "Cimr3ZQNBBkrXu9c", "deletable": true, "description": "QS4Cmgw1wRUnIVYx", "modulePermissions": [{"moduleId": "Y6OhdkrYiCinoVOz", "selectedGroups": [{"groupId": "o4Plv1IlTpEhjTFY", "selectedActions": [7, 28, 53]}, {"groupId": "XEuOzzkoBmMR9C4q", "selectedActions": [84, 99, 33]}, {"groupId": "z3zKsfjz1mFkyxoU", "selectedActions": [52, 88, 10]}]}, {"moduleId": "2S5VeW9ddxzLPV8w", "selectedGroups": [{"groupId": "DjsnyPh5yNbYXmlA", "selectedActions": [82, 44, 18]}, {"groupId": "tydbaVb0scd97A0G", "selectedActions": [85, 75, 37]}, {"groupId": "djn2Ps3IVT5hUZ3c", "selectedActions": [28, 61, 66]}]}, {"moduleId": "q0ddZG0EpfGAqHKc", "selectedGroups": [{"groupId": "SxUc2YgRpk2IFGIg", "selectedActions": [70, 54, 31]}, {"groupId": "LMresGFfsH4aXCDh", "selectedActions": [37, 15, 69]}, {"groupId": "vEF8rHd250nyihcU", "selectedActions": [99, 51, 66]}]}], "namespace": "SAg8FTLrByWOJhbo", "oauthAccessTokenExpiration": 5, "oauthAccessTokenExpirationTimeUnit": "kPs2SO9XrgXNIaU1", "oauthRefreshTokenExpiration": 32, "oauthRefreshTokenExpirationTimeUnit": "cBXLwTfopqeZtHJn", "redirectUri": "RgaGfLMFbvyI5PZG", "scopes": ["zVLcmZKKKYARape2", "tsNczam4Cdd1QYvw", "w4XDokltgq2vXtUn"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'UhDJ4pe0s0Cuhl3d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 96, "resource": "TcqLVTN5Qf4tjPGp"}, {"action": 41, "resource": "3cEX8wTi1v2abpCW"}, {"action": 50, "resource": "gdNphqe9fS1m77MA"}]}' \
    'g4KoZQPLhDSJx9jz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 48, "resource": "lNVk7qnmBS3XKDhp"}, {"action": 24, "resource": "OkMcErmeH0lX1hj0"}, {"action": 76, "resource": "gTRTjI9oNBzgQ4CR"}]}' \
    'wg0sKVeSpMny0Grv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '75' \
    'DyMDKQhuTjtQZyIi' \
    'AmCL8bNTTfqLCv9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'YBOProN4UWbQaKFr' \
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
    '{"blacklist": ["Tv4JWElmOCxqPrq9", "I3XJWBxTLcOef8Mg", "IwkrKFEtwESJCe2k"]}' \
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
    'sG3nZE13H2fILFzO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "lAZbDQAEJLbVWH2X", "AWSCognitoRegion": "LIg3MgmdSvWp3h0x", "AWSCognitoUserPool": "PsVY8qNwB2TY4v9N", "AllowedClients": ["NfQSYLFKSl3FNFFJ", "nt3rIwZdW02Su6aC", "nL816aH6gOBUIMeL"], "AppId": "0GL3aefSDME8X2Mx", "AuthorizationEndpoint": "ILI42BJMPkZmay4C", "ClientId": "sye3iJLtjsu6ZJRC", "EmptyStrFieldList": ["oDq3geuHFFaZzPIj", "ETqcKN1gaQ4Bn0cP", "PtKaJlw31pdDrXQ4"], "EnableServerLicenseValidation": true, "Environment": "WSGyDCKF0LLhO3lG", "FederationMetadataURL": "Z7eGOPj2XoFug8BU", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "GDQGv6pNNowEuVVZ", "JWKSEndpoint": "M28w4mnYvvlt1es7", "KeyID": "A4PFduN4gx0UC6eW", "LogoURL": "KCFGS97Si6XyLVPr", "NetflixCertificates": {"encryptedPrivateKey": "kUxyZ1OH5Nn4nMT8", "encryptedPrivateKeyName": "QOyTuUSD9ImtaPAo", "publicCertificate": "cOQcpBWSNrCjSNEA", "publicCertificateName": "dojkCMmYyTGO07fo", "rootCertificate": "RZ6FujpIWo0qJtqp", "rootCertificateName": "4Q6XgICLgMHcP1eE"}, "OrganizationId": "6sjWQllYsONpp6QG", "PlatformName": "W56CNiszHE69D1MM", "RedirectUri": "oaf6KlgRtwaM2Ioy", "RegisteredDomains": [{"affectedClientIDs": ["Y1wpIdjcAtTj1IMu", "uhxxlulfmya73hX0", "a8Ri85PA9wNpmrK5"], "domain": "Y5heA2ewWnFcqHxX", "namespaces": ["P3kRhtrBcBofWTGY", "x2ihgioL8VvEzHGT", "t9emdCLmzJbdkykV"], "roleId": "AnmnRfUilcKA84d9"}, {"affectedClientIDs": ["pMsl7zrNJvDiP2hN", "NEI8QrQ6H1ro5CtU", "8UjgyCUpM1JBcTzf"], "domain": "4dz1BojPoQg97640", "namespaces": ["9vFd5z9r4nJWUvLp", "1wxGF747468MXUq3", "uIffkIpPmrWVxNZU"], "roleId": "vkiU2jXSwsBBRopV"}, {"affectedClientIDs": ["l38d4NZGtk6EmWxC", "75M88TKhFYkA9aRN", "De2IoPMSQKcg0OTT"], "domain": "9JA0ll1RimBCiQwu", "namespaces": ["yrI87uSyXP6C0jXS", "8au2wcWYyj3JvHqX", "p4JR7xI59Z9tfGVs"], "roleId": "glnOxOXBfgBLuglk"}], "Secret": "d9LIoshGnFSuHmrq", "TeamID": "ej8PRppYY1vlV0M2", "TokenAuthenticationType": "g6oreqyBzWzCgMMW", "TokenClaimsMapping": {"ZuD6tmIR28xVxbtp": "SKOfiIP3S6pypZqI", "Sn3msrykQFtW8QGK": "FZLrIfqrZuu7IwKc", "T7sAsv2TKCbYMVkX": "EHmsHwIGGsusS0zZ"}, "TokenEndpoint": "RODEKPdudZsLaf8a", "UserInfoEndpoint": "ZrXW84dt0TSTmy7X", "UserInfoHTTPMethod": "F26K2U7xttUz8nWK", "scopes": ["Jjv06PuffHghAQfA", "sYXVzBenLtaAoYyR", "fiCWrm3s1Ah3TII7"]}' \
    '0MIcBMJ04508jKed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'x0CVRpd7SwZw2Ukj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "DzJ4NuMMgI13nplX", "AWSCognitoRegion": "aUQV5QEvKElLfbB7", "AWSCognitoUserPool": "gwwAR1xFrnyirw3i", "AllowedClients": ["Jt5iA3JS2xeaJ08J", "rSHPqdhKHn6ZjZMd", "r1C2TIQzRJY7UfYS"], "AppId": "rdN0JVz4U43EcV1F", "AuthorizationEndpoint": "RyeeqehMNeRYKeMb", "ClientId": "L0G4v5D6ylZguO91", "EmptyStrFieldList": ["8X7rLoexHBMBMMAY", "okSWFwajRGUyklfL", "VY6g3PO4hKAeF4GU"], "EnableServerLicenseValidation": false, "Environment": "apnZXoJ4gI4EQKO8", "FederationMetadataURL": "xC4D0FsUo3IB2kX5", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "r1y5Ihr531Kajxq7", "JWKSEndpoint": "lzuVRVEvhKIbrq1x", "KeyID": "sGpdobYun8hcO55h", "LogoURL": "VjfWyK02w5QytAmk", "NetflixCertificates": {"encryptedPrivateKey": "anukAzAMaRvIUhUw", "encryptedPrivateKeyName": "guGgbLLN3O7CEYjx", "publicCertificate": "qElP5lA2FJ0iGLRT", "publicCertificateName": "XGsC5mxxse4eeuMg", "rootCertificate": "EctVEux2MSuwsEHl", "rootCertificateName": "wdeJyhsHS6YqPudW"}, "OrganizationId": "viQsULL1txfX9tqF", "PlatformName": "SkGXoIcFN5JL9M53", "RedirectUri": "Mg0MzWS9usxxnMhj", "RegisteredDomains": [{"affectedClientIDs": ["v66DyED4prRVibTA", "Txd7Mzjv1gSj8kcN", "hoqcRZRNATojM7da"], "domain": "V0VwR3yNKDtMqMrA", "namespaces": ["GpdyF6WDHn3ePBxQ", "Nz2IUEHMzl5jhwVD", "suzwJ4v50eoaIBrT"], "roleId": "h0EKkJioUpvGnkcH"}, {"affectedClientIDs": ["gCfaWzPUvCnfqsPG", "gJZyRwigaMu07Zek", "8WObpf0FHYfViEj7"], "domain": "0KYKIfFt4GYjUt4F", "namespaces": ["1ZVy2qFfSr3psWjO", "yHLyKe2foqsVIfgB", "Tr8RcxRQR0NYdJzf"], "roleId": "3TMhSaynVs05nZC4"}, {"affectedClientIDs": ["Os7hqIH2NgARSG3Q", "QNGNH2K0UuJdeGNq", "uQnaXpDQ5rU2taDW"], "domain": "h9JV5oc5IFQsrwHq", "namespaces": ["FqwVA5mozeeOjIFQ", "fXV3YW3ug3nCXhD7", "FUz1iOe0pHa0Lmse"], "roleId": "IRXeoerZAxbDPXU5"}], "Secret": "xJBhIpJ9b0Ap7CmS", "TeamID": "iKPjcwAw5GdxpvLf", "TokenAuthenticationType": "a4b4hTaZBGdX66Dq", "TokenClaimsMapping": {"PTdurR3MYda0Y0BC": "O4qPnvxERWjKasq5", "zQ6uZNwKjnX7vDIq": "pcjmaq5KBCsHlwNr", "fKJrkzwR40tfd9GF": "XChtxB10d4Q8nlBt"}, "TokenEndpoint": "hUSu4WNfTvD5UcES", "UserInfoEndpoint": "1eLMZs9lSQVDp16q", "UserInfoHTTPMethod": "VIqXCK9dS5JTbdJE", "scopes": ["e6mnkYAfw61kyKk0", "UXUF2523OTvOmfVN", "JNDaSO3FEkk4It6V"]}' \
    '8Bu7rIjGrxUMKbv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["0ixUuUhopdqGrqRZ", "124P7PauXTrpWAjw", "atSvtPbAFn8oWQcm"], "assignedNamespaces": ["FkkRX6EqadAEIzxl", "d80Ynss7hc3VUxxZ", "IgkTLqMeJPCbs8jW"], "domain": "mTteJhwNbwHGG39Y", "roleId": "AZJ4HuLfeTfFBTOF"}' \
    'FMJ9pq511jZcTK8z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "mMfyshYk3b5cAFVo"}' \
    '85r1b8Yp2QnuhQuI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'dvZdj6AspWBfRnLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "Lbp7OmcrDJ7u1rrR", "apiKey": "PcnG89rnNW1Yjfn8", "appId": "lY4DnYRxY8ZhHeb0", "federationMetadataUrl": "CaPFDjrSotKnpJWA", "isActive": false, "redirectUri": "xHw4yYJOCViHwunQ", "secret": "wpC2eCFUAHZaYSvs", "ssoUrl": "WiNJtqXltZF6aSRm"}' \
    'HU5iR3hXIbzWPKOk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'zftOgDQAWhulbrDf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "7q4cAnpmLiEu4CNt", "apiKey": "X2lnqi7cHTSdGoLZ", "appId": "bC3UJruU4uIXBZsE", "federationMetadataUrl": "YogFWiH9z4E8zmaZ", "isActive": false, "redirectUri": "xn9YL16HQdtAneXG", "secret": "gxNg33ZIUrIkfmdX", "ssoUrl": "VvaPQzzKdFg7N7pi"}' \
    'T8VcrXLZnuMNpKEI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["s3GC9VTK7tkJWFpH", "t7MdKu9Xwn5GHJDG", "atrYOMO91CYEjX86"]}' \
    '7n9PT9fR7mMuBXPD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'KCriRKzTZ7TXAVRn' \
    'UVbxEJcKHE764Ewh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'QfxFKIOGT1WKSmLo' \
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
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["R3EYXBFpUX9y4tY7", "o5FFi1n10vDgyoHX", "IlrMl2RAukCL26ih"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["dMy9YCLNJEkvq6SU", "St8xd8EgE15XNuw6", "Y7sToQNkuZzJ1XBx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["w01iBBQukgQ94ZvP", "CWcMX0ov3U2sKjIe", "yFS97dYD7LkcTKYp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["Cfl6HPy5cJfAV5iO", "fzwt3bpxRNt6lKoM", "jCPtEKeBWTm78Fn8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["TvZVTe4L2lXrVPX6", "r5ZTcnVVOKMApTcW", "sFRUlWBp4gBs9Uuf"], "isAdmin": false, "languageTag": "IjKzylqW8auyseP9", "namespace": "wEEyYAnHPp4XzVL5", "roles": ["McglFCrjxqqxAYqX", "G2V3baMkZ9JCqBIk", "UID0EE9InZNLwwAh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'W2b5OHKtUv4lTkQN' \
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
    '{"listEmailAddressRequest": ["jxhXdj1CG0EBgst9", "Qu8Ofl2oB8VTjF0p", "D3NHU8iYUOtG5gbQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'SKW2MdgCH4bWxRF6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "fBPa6GOuV5z0p8ja", "country": "Js2duQqawPrxi6F4", "dateOfBirth": "elhy9CZ94CAUVW8F", "displayName": "oEf8tjCjWc22qqDf", "languageTag": "Nz59jHwSDQHadmAo", "skipLoginQueue": true, "uniqueDisplayName": "lzhPm7RmaOr6TLwV", "userName": "yE42ApAb7CKt79wA"}' \
    'opZL9Cw6K9h55mwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'vhdBOgumV4wAsd4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "fGd0bkWrlhtfTywR", "comment": "W4fmg6btk3mAO4Et", "endDate": "B0hn2x1oTOX5gBQl", "reason": "VDx9neFHWhDRJtyY", "skipNotif": true}' \
    'mtrxWu293551nQBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'KcqCkUXRj8gQHEe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserBanSummaryV3' test.out

#- 168 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    '370OsbzRKKPd6mjz' \
    'LxllUrFYn7cSuO7N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminUpdateUserBanV3' test.out

#- 169 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "xKHUHg0c4X7fHdIT", "emailAddress": "mN9opaF0kh3pCRB3", "languageTag": "infEVxArF7TB6A6a"}' \
    '71zAJpaPeudUtKPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminSendVerificationCodeV3' test.out

#- 170 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "UmAvxBxJNPlvvYZw", "ContactType": "4MWzWFTuNPf5JCSD", "LanguageTag": "yYy4e5qoTZxSoZbQ", "validateOnly": false}' \
    't69QROGDeJCyHvUs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminVerifyAccountV3' test.out

#- 171 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'nLvXCSgQHvs25eiQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'GetUserVerificationCode' test.out

#- 172 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'O3oWdgXdm1IxL1Ot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserDeletionStatusV3' test.out

#- 173 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 24, "enabled": true}' \
    'eUBqBO0Ze049k9W6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserDeletionStatusV3' test.out

#- 174 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'ZLVJzRpUsITfVruD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 175 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "ukun42zPZvOd4yZy", "country": "MKyED3qDO5HXp5oV", "dateOfBirth": "khESbHQ7hvTlzf7X", "displayName": "wQtVIYU87NgjDMcJ", "emailAddress": "xfMfYFlt3JvDgMiy", "password": "BGygWFTAY3Th5mOw", "uniqueDisplayName": "PCPKVPlOGfFBlu2Z", "validateOnly": true}' \
    'kiYXGk6BoBmSLi0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminUpgradeHeadlessAccountV3' test.out

#- 176 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '7zDFMoNTQmlS8lMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserInformationV3' test.out

#- 177 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'Y8UjprhCxhzW6ZM7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserLoginHistoriesV3' test.out

#- 178 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "LkTVrtVJZVhxCVdj", "mfaToken": "PutJ8dkAVOJ5imgh", "newPassword": "dfVhjnjd66A1SQmW", "oldPassword": "GSQLAVPAJ7zX5lB8"}' \
    '0k2smdkBS2MaIP7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminResetPasswordV3' test.out

#- 179 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 20, "Resource": "Rls7EC3nDnhFvDlF", "SchedAction": 7, "SchedCron": "gYfLBdGNAZEvbvxq", "SchedRange": ["a0K7VUbjUnzirnEs", "xSE4vBzG7VK8sWEs", "hmZf5fEdvjbyJPQ1"]}, {"Action": 33, "Resource": "963CbsOawlRBQJH6", "SchedAction": 11, "SchedCron": "VH8q8svV5hMOSfpy", "SchedRange": ["JkJlmJmTkFvB7wkY", "6nuUEGJ3k0HGtpK4", "3uORGREOOwTuY8dh"]}, {"Action": 81, "Resource": "TxWXSdTiKdva2URE", "SchedAction": 29, "SchedCron": "Bm5vGA3itKaF9z3W", "SchedRange": ["Wuv3j8T9g1f6P3D3", "rVcC2g6t42jE1Wad", "232YV7A2zHFGbN8A"]}]}' \
    'QaCaw9UF7cdSDd99' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserPermissionV3' test.out

#- 180 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 60, "Resource": "MiPAjnWIhFrqSn4e", "SchedAction": 35, "SchedCron": "w17ogzmbj4SLYDrZ", "SchedRange": ["JvDLGvn6qtroZcp1", "6HKXX1ft5nBA9xNI", "JVuMz04evSdE2FMc"]}, {"Action": 74, "Resource": "o2PnMSRarKg4coy3", "SchedAction": 54, "SchedCron": "cUwYHGmG5rNDBF1o", "SchedRange": ["U37vjfyX5YLaM0wm", "i0i1WABBbq8IzZsM", "FLX9ZhFXcFtfBS3Z"]}, {"Action": 71, "Resource": "lDXYxGRJM92eX42W", "SchedAction": 100, "SchedCron": "DQoDwzrKPOZZnV3z", "SchedRange": ["R7YxSu6addocg10H", "y9jx7gBHTOHHArjl", "d0LnREsrrB2pJ7V8"]}]}' \
    'BSrucjO3zvSM5KeV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserPermissionsV3' test.out

#- 181 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 82, "Resource": "5dIsMKWBxF9RAIrI"}, {"Action": 97, "Resource": "ZR2kNzh60RQNaTEh"}, {"Action": 79, "Resource": "IK2G6AUjBCdf0Rp5"}]' \
    'e5IvFuN1oUsCnBmG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionBulkV3' test.out

#- 182 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '78' \
    'iV9bQMHpPbvflI3L' \
    'kRc1NgZaoYAaCCeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserPermissionV3' test.out

#- 183 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'gtstsU3Qecxo4bQZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserPlatformAccountsV3' test.out

#- 184 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'O3P2f8TTOVf6jrr1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 185 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'OL606QpqCgxt0NgD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetListJusticePlatformAccounts' test.out

#- 186 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'Sj1T6EdeYFmrLT0H' \
    'bvS4kSSt3CyDgf6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserMapping' test.out

#- 187 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'FAiqSkHi0BR2ElF6' \
    'z6eJKuOW61akRFiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminCreateJusticeUser' test.out

#- 188 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "qxCmudSXivAL3n47", "platformUserId": "8mhb2I2yBJeCJghT"}' \
    'rk68FWFzuLBdlrKj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminLinkPlatformAccount' test.out

#- 189 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'UbgZQfw6Zys3mN8f' \
    'IcC9CkharfqaoMsG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminGetUserLinkHistoriesV3' test.out

#- 190 AdminPlatformUnlinkV3
eval_tap 0 190 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 191 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'yv1RuSNdycDssUeH' \
    'iVDXzSJ8kbFAyidb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminPlatformUnlinkAllV3' test.out

#- 192 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'nXdMSwmkBkKC1h6h' \
    '45u0wuh9pY0011jS' \
    'mHFTtfM2mGUUpq3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminPlatformLinkV3' test.out

#- 193 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 193 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 194 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'x7Am7W1fwJnV94Br' \
    'MSP31wAkVH75UcmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 195 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'XK5RqcIo9lpz9oM5' \
    '2vHPlwVV3jlPKDEY' \
    'ahnlLJaLCvjRKKX1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 196 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'brmkJDfdngbQD3pO' \
    '8U3W94Z8IW2MAL9g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetUserSinglePlatformAccount' test.out

#- 197 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["YHEV3wnTZTvYYf4Z", "FuV6L2AldoWWRN5w", "NYlFiliYmBrqrOc0"]' \
    'NIligBrOkBljwREN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRolesV3' test.out

#- 198 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "jt04ZpyTTZG1LxLd", "roleId": "ySvyVqY8nxBZbHcP"}, {"namespace": "HEFuEVP9bF07gnWD", "roleId": "ULkJPQR0UJMr8ouc"}, {"namespace": "cGH0B4LCe2h0iFCC", "roleId": "ZgFWs5s0nT89A88G"}]' \
    'DOUClGyzYgnYTdim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminSaveUserRoleV3' test.out

#- 199 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '6PkRoq5TO65KWh8z' \
    'tRJkXxUAj3jzZvEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminAddUserRoleV3' test.out

#- 200 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'Y103YUIMuSjDHz0z' \
    'PWMZQNNP2JqQqhIS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteUserRoleV3' test.out

#- 201 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "wwMDQPjUIosq1l6x"}' \
    'o0D4JRbNqO6IuP2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateUserStatusV3' test.out

#- 202 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "Y5hhX6uNah9JoHPj", "password": "7jFWxSv1lYylYAiZ"}' \
    '8c7Zd7EUoezOLw8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminTrustlyUpdateUserIdentity' test.out

#- 203 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '1c5bBB3XZ7ColKwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 204 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "sNvtFuunQsvdXGlD"}' \
    '40xxIyVwYjn6dlC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminUpdateClientSecretV3' test.out

#- 205 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'Kfh9gHuloyce0cLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 206 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminGetRolesV3' test.out

#- 207 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "ljPWlCWTuGO8MnfO", "namespace": "Qu3wdT4Aodp95o1R", "userId": "kX7iW7VpCngWAv5D"}, {"displayName": "AG8dPdkKgQqjyzUZ", "namespace": "R2rFIAuALNhNCysc", "userId": "sMBRLsWadk2OQ421"}, {"displayName": "q7Nb1vrKthVvU5on", "namespace": "065ApCkVN3QchuQ6", "userId": "pntxB648ss7rBnvQ"}], "members": [{"displayName": "HAM8gSdIybKUByHB", "namespace": "zfvgtRTPPzwJmKaL", "userId": "Cx3gcidEALWe6RG5"}, {"displayName": "wWznu5AjwR1Z4fU7", "namespace": "ICcaQtuuKUw3dUwW", "userId": "HhQW3I1y9tjRLVOX"}, {"displayName": "BMa0JiIe1AY0tUA7", "namespace": "EKASk3USNLhOBlxR", "userId": "BLgohp8ByTi2F6Ay"}], "permissions": [{"action": 96, "resource": "HL16jMwECnmwJv4r", "schedAction": 31, "schedCron": "Qf9MICxX7xKyCfgw", "schedRange": ["SPz14asyOdgn77gN", "8K1FlNkgbFE8U4me", "K5grmPBsFH71Vrhs"]}, {"action": 70, "resource": "08rrnG8y2ScXkwjp", "schedAction": 55, "schedCron": "JT1VkChD3n0c1ryA", "schedRange": ["kRvdPR8gx2rX5dck", "8NFKPgT6LMehg047", "axU5ktNywRIvO2Sg"]}, {"action": 52, "resource": "Bhh0NStWIggmhfAz", "schedAction": 97, "schedCron": "MSews1TrU4FhAfKD", "schedRange": ["cDG5bMTba1tUlFGc", "P6eL7EpWtPifmO0J", "K4dP1aZFiSkmhwVV"]}], "roleName": "MGkXNwMYwFyljy5b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateRoleV3' test.out

#- 208 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'YQdQ87hUHA0FJZwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleV3' test.out

#- 209 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '8GslMpx3m7lEXTmn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRoleV3' test.out

#- 210 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "bmf392ersoZ2KbMb"}' \
    '5jal0ruZmBXlGSp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateRoleV3' test.out

#- 211 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '5q6fuGfo5wSDHnya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleAdminStatusV3' test.out

#- 212 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'bk493I3pvHKDaWhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminUpdateAdminRoleStatusV3' test.out

#- 213 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'N1qyxpUzWIZWJTDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleAdminV3' test.out

#- 214 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'Wguhujw1EoR58uCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleManagersV3' test.out

#- 215 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ldefonHJZAiX4abm", "namespace": "qqi90KTWwZk0HGeJ", "userId": "NaBjVdMB5kMzKycY"}, {"displayName": "rhr4FnNzdT4pWwIV", "namespace": "Xp9avUr6IydpXW0M", "userId": "O0eT9okl6MlWOl9f"}, {"displayName": "eWO2bmOikTBJHTEm", "namespace": "5PSeyod5L6OooYoQ", "userId": "n9iHEqWO1cVCUIOx"}]}' \
    '90FQdwLi3GOQkLtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleManagersV3' test.out

#- 216 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "uRNeT1CULEMPaOU5", "namespace": "nukycAUlkUSZKUrs", "userId": "xNRzF3NaUuCyQyze"}, {"displayName": "6zPKu5sE89JW8UU0", "namespace": "RsB6dvrpmInhHYzV", "userId": "VlHGFSwjby6rMYkV"}, {"displayName": "QnZDUAbINRKQsxUO", "namespace": "1YMxAndOj5O6IBwX", "userId": "JjgQjgLoJyqwFVBd"}]}' \
    '1ZjaRXEdWgS12bSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleManagersV3' test.out

#- 217 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'PgOCWUogizeWOPUM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleMembersV3' test.out

#- 218 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "rqgEIsMwNbfti0Lo", "namespace": "TBcNzyoCSw1t653G", "userId": "3ydYmGzvx9bSqqyA"}, {"displayName": "Pha5b6PQTPTytHee", "namespace": "Xo7gOFVLZCBWuVIR", "userId": "OZuqdJBi8pkn98Vt"}, {"displayName": "LNkaIQJfkFDhSeSG", "namespace": "XtZU5SuIhMSaDRp1", "userId": "7dUWHcjrb6qNeKpO"}]}' \
    'xPrlG9svdqsiVTqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRoleMembersV3' test.out

#- 219 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "bzY1yxl7zeEpmSPO", "namespace": "6KwlJQlj9Ii2jARw", "userId": "zowk9OoiPdnq9KBq"}, {"displayName": "BwiNCsnK8CcO1OHb", "namespace": "pQZtwW3EwLre1bL4", "userId": "dJnkRLJbMvOGSd7u"}, {"displayName": "MrmQ2SaLd6M7TM3w", "namespace": "nJyExuo5z9RAcYgY", "userId": "Zb7cAakJpqN6eubd"}]}' \
    'p49JFwXG0EvoSHNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminRemoveRoleMembersV3' test.out

#- 220 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 52, "resource": "7eEyhnL1QH5AlYRA", "schedAction": 33, "schedCron": "G2emxKQk8cBrt5E8", "schedRange": ["k8rzDZ08j6ICP75c", "m8YDChFi3zLvfQWC", "85MxWxvW0veFl3uU"]}, {"action": 41, "resource": "aMD0mczWxc8f1s2Q", "schedAction": 85, "schedCron": "ijqEuMfuYFUS079t", "schedRange": ["OpZYM1XV0Op0damy", "cnTUOoMkOppZNOkq", "xc42HKv5wvtPJVsu"]}, {"action": 52, "resource": "tOwxjqyrjDApeN5e", "schedAction": 55, "schedCron": "HoSVxgQCbpZx5yMG", "schedRange": ["IQ1ZxVIefYlKBJyQ", "MqUEfDikX6yOlgZr", "n0I6T0hvcAFTaSWR"]}]}' \
    '4VOGIY7hM6uhonkA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateRolePermissionsV3' test.out

#- 221 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 10, "resource": "ZVTxBlw1IWeXKFT4", "schedAction": 36, "schedCron": "ww3nBTVmBFZ6TIs9", "schedRange": ["bTi2m7eNsYEqKkeu", "LWDfeFeExlOFjRh8", "mLFTJLveQSDWnMQG"]}, {"action": 1, "resource": "f2Sw78lLGKjDHuXt", "schedAction": 55, "schedCron": "58gzqRMuMPrIekxq", "schedRange": ["58fikq83hqJ7HP63", "Se6kVW5fkl60ImLB", "v6nUU0r1rfX9stpv"]}, {"action": 72, "resource": "TE4toH57yr01N33p", "schedAction": 77, "schedCron": "Gha8HwpagvERZI6C", "schedRange": ["qhcknhecNv2Tw6YK", "hVrYkMqXkQ7qlaJj", "SYEseBYCFGoKpXx6"]}]}' \
    '0GmEX9x2BYpyKEBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminAddRolePermissionsV3' test.out

#- 222 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["7TW7lZvDbwFJJhBR", "dq8BgAI81k4Gr7jV", "Vx5l3yrH9HR4reG0"]' \
    'HwUXxQTf5YpDUGYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminDeleteRolePermissionsV3' test.out

#- 223 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '72' \
    'wqdzAX28DikGk8cW' \
    'iX44azSHcwicUVq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminDeleteRolePermissionV3' test.out

#- 224 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminGetMyUserV3' test.out

#- 225 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'XPljTZj5R0yZSVQ8' \
    'SSeJ4qy4PIKleuV2' \
    '71bwZ4niLSzQnv0C' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 225 'UserAuthenticationV3' test.out

#- 226 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '00dtNGGzbGYSYo9f' \
    'Y2EBZAHQXc4Xcae7' \
    'VKl0ARzGEArlfE1N' \
    'SmtcADoZvd0La7P4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AuthenticationWithPlatformLinkV3' test.out

#- 227 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'JI4H7uDzkOHTdnUt' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 227 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 228 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'drRcs3GeOsKPNlG7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'RequestOneTimeLinkingCodeV3' test.out

#- 229 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'rEXi6LEqJERpbxEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'ValidateOneTimeLinkingCodeV3' test.out

#- 230 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '07txnvZZeAf7QBuZ' \
    'K5GJlBncg8tQnJOK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 231 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'GetCountryLocationV3' test.out

#- 232 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'Logout' test.out

#- 233 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'HC16xjJZ4kiU3N85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'RequestTokenExchangeCodeV3' test.out

#- 234 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    '56ll2LQWpdESOBV7' \
    'wZJsg7wSv9lyRyTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 235 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'YBUljvBzvYNEtfgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'RevokeUserV3' test.out

#- 236 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'Fikt18cQ677SotDE' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 236 'AuthorizeV3' test.out

#- 237 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'arkhltUxgbN5eElQ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 237 'TokenIntrospectionV3' test.out

#- 238 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'GetJWKSV3' test.out

#- 239 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'NESFLD8hCc9onSNj' \
    'bQEqFGwnDG8kz4kv' \
    'Ev6tNjGRhrmRAxRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'SendMFAAuthenticationCode' test.out

#- 240 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'eIKGlCJmDXpjyvLS' \
    'HB1y3klHuAGnidOy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'Change2faMethod' test.out

#- 241 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'GuS0OG7ohiL2943C' \
    'lrNhEdxd24ZKfvMf' \
    '1T5FzYMf1jaCgZos' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'Verify2faCode' test.out

#- 242 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'cuEtWAF763kci7lT' \
    '62BOHaso53W3U2Mu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 243 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '9ZGMWou1U0RVCf3g' \
    'MWDAodCKqfqzeexH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AuthCodeRequestV3' test.out

#- 244 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'A70NgJTxjtzgO7W3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 244 'PlatformTokenGrantV3' test.out

#- 245 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'GetRevocationListV3' test.out

#- 246 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'taRvJ6lKWJwHO65a' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 246 'TokenRevocationV3' test.out

#- 247 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    '4zvBzGh3mhIDNuMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'SimultaneousLoginV3' test.out

#- 248 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 248 'TokenGrantV3' test.out

#- 249 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'll4O8ELahcNJqRje' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 249 'VerifyTokenV3' test.out

#- 250 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'pck1l0qxRyQ2pi7x' \
    'uAufJakIPXOQznHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PlatformAuthenticationV3' test.out

#- 251 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'Tj8oYfWObyNJKVSQ' \
    'saCokoGynp6xcqNK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PlatformTokenRefreshV3' test.out

#- 252 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'PublicGetInputValidations' test.out

#- 253 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'JnAhrSt96OaARAjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'PublicGetInputValidationByField' test.out

#- 254 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'LGV3sNxS8uLBZiVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'PublicGetCountryAgeRestrictionV3' test.out

#- 255 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'YIyQLcslTEqgVNG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'PublicGetConfigValueV3' test.out

#- 256 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'PublicGetCountryListV3' test.out

#- 257 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 258 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'AqktgvjwNJAwIpEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 259 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 259 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 260 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    '2ZNpojZ24I2n25sm' \
    'srmJFHGiYnyhbqxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserByPlatformUserIDV3' test.out

#- 261 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'uTZIxgiUaiyy0aWr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetAsyncStatus' test.out

#- 262 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicSearchUserV3' test.out

#- 263 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "shpmb1C9Al7eWrbN", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "E0xyYPUZHyLGQ52I", "policyId": "jGpRJCUJpscOTkWE", "policyVersionId": "TSJ04c5MGInO4yzn"}, {"isAccepted": false, "localizedPolicyVersionId": "KZtZnxgywmr4CYNG", "policyId": "m7Tk1mMyeNRsjQuD", "policyVersionId": "EgO3MEQNL6ijLRvQ"}, {"isAccepted": false, "localizedPolicyVersionId": "goaBooTawHLMxhx9", "policyId": "nC3o6pXU5MDJLCB6", "policyVersionId": "WbXWIRpgjooaBVem"}], "authType": "sbkaXZQ6nTj9rZpk", "code": "SntuOeaPAyPeEGBe", "country": "pK1Ix4SwjCYjCHni", "dateOfBirth": "VSn1gYGal5NrBtT0", "displayName": "om9OlGzpF25qu98R", "emailAddress": "hktX6qwkXbCLbh8t", "password": "0zPkQWRUlgE0kxzF", "reachMinimumAge": false, "uniqueDisplayName": "q9ttbEHAEV7C65An"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateUserV3' test.out

#- 264 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    's9SquNSJIay5VdUd' \
    'Yy9Y9OCSmmT3WKij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'CheckUserAvailability' test.out

#- 265 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["bqhT3uyQRXvvcUYD", "eWPZ8yhwQ0gIdj1l", "TJdNLmAvEdEBVAU3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicBulkGetUsers' test.out

#- 266 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "rbkv8V98cupW0L5W", "languageTag": "siuITRMSPOUfWQwr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicSendRegistrationCode' test.out

#- 267 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "4PYf48r66MaToxBi", "emailAddress": "liy2vtRkpqL6KrVc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyRegistrationCode' test.out

#- 268 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "Nz83J57t6OcYPQ5b", "languageTag": "k5IeuAi3zWFGorCb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicForgotPasswordV3' test.out

#- 269 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "ncoj5RvEtXiKyUGd", "uniqueDisplayName": "NfMiwgSvsTRmJsOm", "username": "0wVFyHvFhRMCFJuA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserInput' test.out

#- 270 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '0DEMgykqqjoHTpIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'GetAdminInvitationV3' test.out

#- 271 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "MSRAuPI7mSZQ5UDm", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "q51PlW2HG8LAiIzu", "policyId": "o321Ll90IBFsSb3F", "policyVersionId": "sV2PnCs9R0D5jZEw"}, {"isAccepted": true, "localizedPolicyVersionId": "lVgxjOGQGlHm8VTN", "policyId": "56tJKwD8O07L9GG1", "policyVersionId": "uenDihceaLdgPZI0"}, {"isAccepted": false, "localizedPolicyVersionId": "7hWvT5bzcfzIpL2p", "policyId": "WB4XsdrxIF6kEAmK", "policyVersionId": "GNEmFPcUALNziO9B"}], "authType": "z2wx4kDAm8XIleiu", "code": "jtv2NdQTYoHZogW8", "country": "lBvniHdARadfSoct", "dateOfBirth": "A3GYO94ZOo94gS5D", "displayName": "HLB65fxQ06GwTmob", "emailAddress": "iBnfrnq9kOFBWhUT", "password": "PiKR3qcbHLGplYsS", "reachMinimumAge": true, "uniqueDisplayName": "jsRZffCd00VrgPuN"}' \
    'tOv3jbhGBuW8KcyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'CreateUserFromInvitationV3' test.out

#- 272 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "MfDWSEEpKoJlmhMQ", "country": "UCx70QjYbzemOTUR", "dateOfBirth": "zzAOIBarB7kcer5S", "displayName": "vPLeQZIpKFXgnsxx", "languageTag": "3c2bUsO7FP8RmOst", "uniqueDisplayName": "ZAGDgiVsV2OttwJa", "userName": "MxPDIJ5hFQHumFvP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'UpdateUserV3' test.out

#- 273 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "KqupHj72TlLs964i", "country": "ABOgTKtnaA7O35Ia", "dateOfBirth": "ytd9CsAMTZC37xPX", "displayName": "xnfggnZ3EZp6wSAu", "languageTag": "fwYirs9lwvPKd925", "uniqueDisplayName": "u3fFLV0YeMrVaYST", "userName": "RYGFzgLZ7gEypQf2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicPartialUpdateUserV3' test.out

#- 274 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "Pn9A4gcbDJ0LmdnO", "emailAddress": "PkIT1C6KGTpA7JZ6", "languageTag": "xullPROSfiW9zcxm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationCodeV3' test.out

#- 275 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "gNfTHu3vkZt9FgWc", "contactType": "kjNpHhM2ZXp4N0RO", "languageTag": "mUCTrS7Gi9Iigk9v", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicUserVerificationV3' test.out

#- 276 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "uix5vnPeTu9evbRo", "country": "v7Bm40CtZiAxk43D", "dateOfBirth": "GV1SCkw8U0d4FvVm", "displayName": "PMtpRMWSQ8Szi1Ir", "emailAddress": "GidRmR5BGRJhFwxm", "password": "kGfPI3j4luXQuuLt", "uniqueDisplayName": "Ya86kvL6cBZQssUU", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicUpgradeHeadlessAccountV3' test.out

#- 277 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "Rg8y4rOuj7J6ijJb", "password": "cycXmBcrJLb7laby"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyHeadlessAccountV3' test.out

#- 278 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "otifVk9KyqceGv0C", "mfaToken": "EDTVSjINYeKLowG7", "newPassword": "UQB9pXzuCK5qd2m8", "oldPassword": "A5axixm9X9TXNhN8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicUpdatePasswordV3' test.out

#- 279 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'y1PVriIyv9kjuiAG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicCreateJusticeUser' test.out

#- 280 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'iXx47etMikLFggYD' \
    'c2FMbzZoeKagnKf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicPlatformLinkV3' test.out

#- 281 PublicPlatformUnlinkV3
eval_tap 0 281 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 282 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'Yifzvr9OqTsInGzH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicPlatformUnlinkAllV3' test.out

#- 283 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'FpFXYJtHtqwoIwQB' \
    'eIALI8JNIII4jrzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicForcePlatformLinkV3' test.out

#- 284 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'PsuMziNM8AB7RRxi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicWebLinkPlatform' test.out

#- 285 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'ZH3ngnitURdMjZLY' \
    'CaeklQcFY1QIk1h5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicWebLinkPlatformEstablish' test.out

#- 286 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'EKvMGd6hQ2mHjmLu' \
    '4oFlReHy0JyZv7ho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicProcessWebLinkPlatformV3' test.out

#- 287 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "nqeiGTTqpgVsY1kP", "userIds": ["NdJiJXB3yjNUPIfv", "oXRO0CkW1ZcgUSbb", "nffBWRaJN1SjCFLD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUsersPlatformInfosV3' test.out

#- 288 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "NJfAhJGwSYEZjEb0", "emailAddress": "Pv35fEk9s11bFXkf", "languageTag": "7rQJ4Kj7Qyo9tUpt", "newPassword": "iyZzRX8Y4rxRWZPe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'ResetPasswordV3' test.out

#- 289 PublicGetUserByUserIdV3
eval_tap 0 289 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 290 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '4ZLAQWuBJwxObZqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserBanHistoryV3' test.out

#- 291 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'Gxhffy9cHrLYffta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 292 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'd99JDcnn7f2d8SOW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUserInformationV3' test.out

#- 293 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'P2dw6Uy88WpQalG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserLoginHistoriesV3' test.out

#- 294 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    '8VOo82aLD9jUjuDI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserPlatformAccountsV3' test.out

#- 295 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'TjifWRbmtK7MTxcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicListJusticePlatformAccountsV3' test.out

#- 296 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "WnMiCLsjroKHPApA", "platformUserId": "8GsGwyocvY9NePjL"}' \
    'JQJXwUApJWohXn01' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicLinkPlatformAccount' test.out

#- 297 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["RB7pu7BaONXyE5fI", "DbsMi48xOYVvEcEm", "53BYMBacQBIuDVs7"], "requestId": "U0AJtWPRteszMTd0"}' \
    'R5Fsrf9xbVfgvG61' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicForceLinkPlatformWithProgression' test.out

#- 298 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '7GmxzClkR3M6Twpw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPublisherUserV3' test.out

#- 299 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'q3nLwxnJKjOo9fvf' \
    'XF1VsikD3IphQQiR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 300 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetRolesV3' test.out

#- 301 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'cOtsthUwgQzNHUZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRoleV3' test.out

#- 302 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyUserV3' test.out

#- 303 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'l1FRfOjJUmCbi2ll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 304 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ksf6GA8vTt92kldC", "oyRdiOikUdqGocLY", "BaRC7T5qSl7WN3nc"], "oneTimeLinkCode": "PkqiTKzz72PKXjSh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'LinkHeadlessAccountToMyAccountV3' test.out

#- 305 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "M2DvesmMIbiQfaHx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicSendVerificationLinkV3' test.out

#- 306 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyUserByLinkV3' test.out

#- 307 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'l2YUNRLRjgKqSSYg' \
    'ZnVfa8govttlpFAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PlatformAuthenticateSAMLV3Handler' test.out

#- 308 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '8oebnS4Y2zkGYTr9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'LoginSSOClient' test.out

#- 309 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'yJIveX52r6Inl9VT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'LogoutSSOClient' test.out

#- 310 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'JB9Al3mn2DsHDHzS' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 310 'RequestTargetTokenResponseV3' test.out

#- 311 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminListInvitationHistoriesV4' test.out

#- 312 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminGetDevicesByUserV4' test.out

#- 313 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminGetBannedDevicesV4' test.out

#- 314 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'VJzhU5Z44zgZ1fie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminGetUserDeviceBansV4' test.out

#- 315 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "Ldl3Y82DOj5kPuNR", "deviceId": "ZZaUccuBYep9n7b1", "deviceType": "7fsblalJrwQiU3DD", "enabled": true, "endDate": "ikW3s54zffAL2DZ7", "ext": {"gBhy77iRVFfFvWen": {}, "MNV00KVuLF9WDnGO": {}, "3bpQWmnS52ZuuuI7": {}}, "reason": "F1xpVrcoXzSOEGED"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminBanDeviceV4' test.out

#- 316 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'YfiGPYo2K3dN3YBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceBanV4' test.out

#- 317 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'fvV6SuHovoQlk5wL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateDeviceBanV4' test.out

#- 318 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    '2oXDZ20Bw2H4tz6K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateReportV4' test.out

#- 319 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminGetDeviceTypesV4' test.out

#- 320 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'UC4jXGj2G0GZ3JBY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGetDeviceBansV4' test.out

#- 321 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'i9bBKBRpdbLCiwxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminDecryptDeviceV4' test.out

#- 322 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'x2XQn94xPqXhqeNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminUnbanDeviceV4' test.out

#- 323 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'DGA3O5hQAl6U2g9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminGetUsersByDeviceV4' test.out

#- 324 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 325 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 326 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 26}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminCreateTestUsersV4' test.out

#- 327 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "h3i7j095rDL6lEuB", "policyId": "1ZIMIs1dFvYokH9t", "policyVersionId": "2u8ZZnyHKkk6Gh25"}, {"isAccepted": true, "localizedPolicyVersionId": "NLBUSrFnzE6yR1wL", "policyId": "TgjsnB2LFVrZRrOn", "policyVersionId": "tm2KjbfCOuW3dBmF"}, {"isAccepted": true, "localizedPolicyVersionId": "Sk6suS90ZbDdmjU1", "policyId": "1QIZtkSn8QRbA5V4", "policyVersionId": "gjWv1W6cqnvSuKsw"}], "authType": "EMAILPASSWD", "code": "7vH8GScnP5QzRBY1", "country": "UrefgmVFBVz4KRCU", "dateOfBirth": "0p4jIt01gzH17Icf", "displayName": "JyGulmByN5rcDA3W", "emailAddress": "cv9ouALjgLZZzLU9", "password": "w8MJRIzIgJKg9y86", "passwordMD5Sum": "BgnBQtm5AilVhASF", "reachMinimumAge": false, "uniqueDisplayName": "b2UMWOgVeYkCvqq0", "username": "tO15pEVG7sNihxpu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminCreateUserV4' test.out

#- 328 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["J7Fxg5LijlQTVq8B", "h1p0NCKWNkLU5ty3", "uQa7Fl3ZhSMLtrwn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 329 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["jTJVDlh112byTYCD", "BnAvf8JpFuJSZist", "M75544PDlVK8taSc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminBulkCheckValidUserIDV4' test.out

#- 330 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "pV0NtCxDDz5rxt6L", "country": "flBJjokLAaL4oAF2", "dateOfBirth": "lqx8yneWKrOy4xcg", "displayName": "30BqC5W7g7hiwumJ", "languageTag": "TI3jlZPjoCdGiIP6", "skipLoginQueue": false, "uniqueDisplayName": "8pzl1lfIR7jnetIJ", "userName": "PGObyWCLyFPHaxkK"}' \
    'xEDvSoi2X9SygvMG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateUserV4' test.out

#- 331 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "8QAaWUhIguMvKDOr", "emailAddress": "x0wQXKEroyKz2reP"}' \
    '63EVHT72VuhoGP2I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateUserEmailAddressV4' test.out

#- 332 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'FXGU5hujEfCMt95D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableUserMFAV4' test.out

#- 333 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'EjxqhgYqmMqIdlRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminListUserRolesV4' test.out

#- 334 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["QmuILkeRUafUDP5b", "6BWfm7cYCpDIJG42", "ILhUoCh8lmKKocC5"], "roleId": "Ea29JhfFGN964J8W"}' \
    'OgsAj2Rmf1DXvAIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminUpdateUserRoleV4' test.out

#- 335 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["zTRNRVyeEGu1ICOC", "mLAmcaEFBKgy92LY", "qtQcDN7OMCehk42a"], "roleId": "cy8wsWaPyppR3ztP"}' \
    'SALA8LlV2sccbVr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminAddUserRoleV4' test.out

#- 336 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["HSiXVzrG4EdKn8ey", "pTzI497DG0ZNoJvv", "i4Ys50iE7IjZoDzM"], "roleId": "mMgoMxZZ9AutWDfV"}' \
    'OINhql9CdDX4xiHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminRemoveUserRoleV4' test.out

#- 337 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminGetRolesV4' test.out

#- 338 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "gVMhLbM6H1MnNSKd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateRoleV4' test.out

#- 339 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '0KStITvGQtzwjGtG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminGetRoleV4' test.out

#- 340 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'Tr238G8Aevk3k147' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminDeleteRoleV4' test.out

#- 341 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "yfjukWmkfkiF2GZP"}' \
    'uyWBVH66JU1IICVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateRoleV4' test.out

#- 342 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 81, "resource": "fpDT8o2iFrYtGfCZ", "schedAction": 57, "schedCron": "rKEKdeo779KG5yCz", "schedRange": ["9jVs1lYK1Mx9rEFk", "Dqb31AZzwiQBaGdS", "41VRIyAHjYxVhCbX"]}, {"action": 3, "resource": "jBJrNeQRsqkkKK2q", "schedAction": 48, "schedCron": "cCPaLXJM2B9bMohk", "schedRange": ["WsFKIdycYHQcu7Jk", "KBcLFRf50Y7ME2Qm", "YiYqap7masUcayqm"]}, {"action": 31, "resource": "YepIqtrikdAbdOT6", "schedAction": 16, "schedCron": "xdmYDj9vZNgfI1Ae", "schedRange": ["YHe8WPQGPclChxLf", "bXrH6f2GDrNbLOjG", "z34ct0ctEeH43wYu"]}]}' \
    'LnI7cTzIUERPlQI9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateRolePermissionsV4' test.out

#- 343 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 16, "resource": "og5rxUjGPKKLMoAy", "schedAction": 67, "schedCron": "stmxPFz0i1IK3Qzk", "schedRange": ["cRwFPpXGlKR9ss8b", "8udl6fLkxFnAqyvj", "By0NXg7zd6SFpkV7"]}, {"action": 4, "resource": "3qNjzlcxXsmGGcJh", "schedAction": 0, "schedCron": "68r4W1fDZL80oPQ0", "schedRange": ["s7QhC8hgSgytNEoj", "K3YgWH9l7rv6XUSI", "Nd4keCeiw7P2PtUr"]}, {"action": 85, "resource": "nlgGRgYK3SeYvULY", "schedAction": 81, "schedCron": "0PNuFyKW95dJsGoB", "schedRange": ["IjCKlD3axSivItV1", "txLINmdHTGLtX6TN", "5ctYX1sZnYF3hWmC"]}]}' \
    'CIrP0lJXexseo2e6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminAddRolePermissionsV4' test.out

#- 344 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["BCNJTTRIHDKdVfOU", "r14yZH00n8MsRjaB", "8iurBWW5jSJi0see"]' \
    'GJIqnatME8GnNWfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminDeleteRolePermissionsV4' test.out

#- 345 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Y1yY6D1Euusf0eOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminListAssignedUsersV4' test.out

#- 346 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["oSyKttYwUUlMRG8v", "O0OSsJmhOJDUyyag", "9jBDJFJGOEiWJ8cL"], "namespace": "rryS5a6A4tL8YKMr", "userId": "UBL6dDTVwPIt1hrg"}' \
    '2mhbI0NDshb7ZzQu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminAssignUserToRoleV4' test.out

#- 347 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "BPyNi1GhZHEj6p5g", "userId": "rjk5wzdksOUku8dt"}' \
    'QoIrpvmM19X4zFOv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminRevokeUserFromRoleV4' test.out

#- 348 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["dRTpGmBUjfEU9vL8", "H96tuVfQwYIqDWqb", "PmwQw8J7na1POTXh"], "emailAddresses": ["XLRU5prAdqnnPOiT", "VzAeQq6rnWJoTpYo", "e2uHaWnO98YwqHZn"], "isAdmin": true, "isNewStudio": true, "languageTag": "3UZg0UJLPMkeUwa6", "namespace": "OVKxCMxuf0P9r5f6", "roleId": "fdmyi4kQnOFbBtvB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminInviteUserNewV4' test.out

#- 349 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "w81hUgtONCIoZ2rk", "country": "omSj52mAIMo6EW9Q", "dateOfBirth": "hzU8FwQtZpfUoyoi", "displayName": "UjmqOyQ7ammFgHpr", "languageTag": "dM9viFWmezrQOWH0", "skipLoginQueue": true, "uniqueDisplayName": "g1AkRh3NmbRhMxKe", "userName": "Igwq1NZmxa0ghRG0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminUpdateMyUserV4' test.out

#- 350 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"mfaToken": "20QpWTNKsVyK8EU8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminDisableMyAuthenticatorV4' test.out

#- 351 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminEnableMyAuthenticatorV4' test.out

#- 352 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 353 AdminGetMyBackupCodesV4
eval_tap 0 353 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminGenerateMyBackupCodesV4
eval_tap 0 354 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 355 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"mfaToken": "JYc00PA2ef1jFeqQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableMyBackupCodesV4' test.out

#- 356 AdminDownloadMyBackupCodesV4
eval_tap 0 356 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 357 AdminEnableMyBackupCodesV4
eval_tap 0 357 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 358 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminGetBackupCodesV4' test.out

#- 359 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGenerateBackupCodesV4' test.out

#- 360 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminEnableBackupCodesV4' test.out

#- 361 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminChallengeMyMFAV4' test.out

#- 362 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminSendMyMFAEmailCodeV4' test.out

#- 363 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"mfaToken": "8mBpTuvLTJUzwXJF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminDisableMyEmailV4' test.out

#- 364 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'aWW3JVdYpfHOYoLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminEnableMyEmailV4' test.out

#- 365 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminGetMyEnabledFactorsV4' test.out

#- 366 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'a2c4JscEQfBFZXcS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminMakeFactorMyDefaultV4' test.out

#- 367 AdminGetMyMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminGetMyMFAStatusV4' test.out

#- 368 AdminInviteUserV4
eval_tap 0 368 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 369 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'XpU81S5H9XsZyvZO' \
    'FJ5RrFZYcwfQ1Q2B' \
    'bcjSpv6Nt1oz4tdg' \
    'fKu4bmK8kOKcEoCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AuthenticationWithPlatformLinkV4' test.out

#- 370 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'jQJlPY3p42OS9iGN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 371 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'ElTpMlvRDZSIuM0O' \
    'XOHPluvsry8AKSZx' \
    'OhUhl3Y0EshaG0uD' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'Verify2faCodeV4' test.out

#- 372 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'rJ5fNESRVGeswvkz' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 372 'PlatformTokenGrantV4' test.out

#- 373 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'NIITUJGj5FYaSgew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'SimultaneousLoginV4' test.out

#- 374 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 374 'TokenGrantV4' test.out

#- 375 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    '0RDLxWgEWwoHpV8E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'RequestTargetTokenResponseV4' test.out

#- 376 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"platformUserIds": ["1xQZLa7Kw77UpCxN", "yx1jjdxNePPAJ6Z9", "UzqIhZZiK0QEG6C9"]}' \
    'w4lVRNOF1Bg6OHZz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 377 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sYRQz97fRWI17eNP", "policyId": "3Y2nWlS9Sfjh0hty", "policyVersionId": "VaGj4y9ahS7h7XVl"}, {"isAccepted": false, "localizedPolicyVersionId": "pGYsLNEGrfy9qHKu", "policyId": "fJfk0MeG3qYJr6Pu", "policyVersionId": "CVK9WmDAdpLVTVsj"}, {"isAccepted": false, "localizedPolicyVersionId": "m7RVCUREDdoGatGQ", "policyId": "1SeOXsg4jofp9Pvl", "policyVersionId": "Q1xdmr4JDpvZgvPG"}], "authType": "EMAILPASSWD", "country": "jV7MNTpM7fSods1z", "dateOfBirth": "dVT0aWj58Othvd3j", "displayName": "zMDAf40gKSizvmxt", "emailAddress": "s5HSQvRAPG9JoVSL", "password": "rbs5niXkjpkOgRCC", "passwordMD5Sum": "7qfz5jV7NTRYld9F", "uniqueDisplayName": "JJ10goNq8uq79Du2", "username": "8SRRAMaQFEzppeti", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateTestUserV4' test.out

#- 378 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ckSUon7awfol0769", "policyId": "6uxp5ieMjjOfFSx3", "policyVersionId": "AJN97kUjwiCmWQvb"}, {"isAccepted": true, "localizedPolicyVersionId": "OzAIAqpmkDdFSs4s", "policyId": "7u1VUuLmenyxTQVk", "policyVersionId": "Eg5wouUKa35m8oH9"}, {"isAccepted": true, "localizedPolicyVersionId": "TANW1Or7TvLoL0ww", "policyId": "HoRMNexBOron8wId", "policyVersionId": "Ubp7xVMKfbAJfW4i"}], "authType": "EMAILPASSWD", "code": "IC52NUedhhkME18q", "country": "GpSsyEPDWHcqfYp2", "dateOfBirth": "EFxEaEHCGtg812NQ", "displayName": "b5Glh8srTlTj61Wd", "emailAddress": "V2XUo1BO1rE7E12F", "password": "apao5jo9nJoKEb8t", "passwordMD5Sum": "HmFwLGan2SrKckNx", "reachMinimumAge": true, "uniqueDisplayName": "WH6rjhRL9uxoV5Oe", "username": "8ktlePEo1xBuRSv6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicCreateUserV4' test.out

#- 379 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "T3oYJlC4ie3InnSA", "policyId": "22NHTb4qXYyJUAlK", "policyVersionId": "lTwdJEPoemVtmVXT"}, {"isAccepted": true, "localizedPolicyVersionId": "YWHODRb6skOj0lfY", "policyId": "FGnQCAWidWPjYgye", "policyVersionId": "bU6rHFirnUpZ9UJ4"}, {"isAccepted": false, "localizedPolicyVersionId": "8qHTGdn7gE4bwLzD", "policyId": "Ew2PYt8x9SSaOZcE", "policyVersionId": "vG6KZh954BmtuIFl"}], "authType": "EMAILPASSWD", "code": "9QWqwTF2pOJsY86x", "country": "Af5y1iy01FkEEXlK", "dateOfBirth": "iTIDgP7wuXQdfW99", "displayName": "JglScoOlkkBxiXf8", "emailAddress": "OBQRqXWXQ3JdXdFz", "password": "8pc0EEziE5yIvijq", "passwordMD5Sum": "9ix16vo60jgvwV3C", "reachMinimumAge": false, "uniqueDisplayName": "4WfGq8JCDnwGWgcc", "username": "uzuc6QDRMGdBPbUy"}' \
    'HTYPS8CGKXGon2ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'CreateUserFromInvitationV4' test.out

#- 380 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "c65YAFLweD9Z7U2l", "country": "Nkorrw9QH3rNhDep", "dateOfBirth": "Qum4Dj7pR05RTGXG", "displayName": "RkYXifTd5nAOF9VV", "languageTag": "7JgCOm4wL729Hma0", "uniqueDisplayName": "nCdCEFcf2doBrfHi", "userName": "HXXgvu496H02yOVN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicUpdateUserV4' test.out

#- 381 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "1h41jIPOMXufZPWS", "emailAddress": "e20JfNvtNcWtpUkw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicUpdateUserEmailAddressV4' test.out

#- 382 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "98x3tMM1bFFDIqKD", "country": "8HJ4X0DetCeJ4x0w", "dateOfBirth": "f5mQx6Hs7M5apPMc", "displayName": "8ZR3bPCJ5n5s6DOD", "emailAddress": "BmrqEhGlkEmGdCbw", "password": "odVRjZJWuCQpjuJz", "reachMinimumAge": false, "uniqueDisplayName": "nGCnPjiIbJifs0ar", "username": "KxCcNv8FQCyQBqKx", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 383 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "Vh4JaKYAsoMlLJGM", "password": "l5xFgLj4mCShMFlb", "username": "rRGjoBQ45Za4JR4S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicUpgradeHeadlessAccountV4' test.out

#- 384 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"mfaToken": "3iac6vLeoIULJlWX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'PublicDisableMyAuthenticatorV4' test.out

#- 385 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'PublicEnableMyAuthenticatorV4' test.out

#- 386 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 387 PublicGetMyBackupCodesV4
eval_tap 0 387 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 388 PublicGenerateMyBackupCodesV4
eval_tap 0 388 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 389 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"mfaToken": "mQFlef1tSHJf6sVp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicDisableMyBackupCodesV4' test.out

#- 390 PublicDownloadMyBackupCodesV4
eval_tap 0 390 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 391 PublicEnableMyBackupCodesV4
eval_tap 0 391 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 392 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicGetBackupCodesV4' test.out

#- 393 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicGenerateBackupCodesV4' test.out

#- 394 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicEnableBackupCodesV4' test.out

#- 395 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicChallengeMyMFAV4' test.out

#- 396 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicRemoveTrustedDeviceV4' test.out

#- 397 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicSendMyMFAEmailCodeV4' test.out

#- 398 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"mfaToken": "wAAKKqmTy0ZSyJ7I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicDisableMyEmailV4' test.out

#- 399 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'IUXlBlZMQeSnOg5g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicEnableMyEmailV4' test.out

#- 400 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetMyEnabledFactorsV4' test.out

#- 401 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'f1SwrbpmoF4DvNA1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicMakeFactorMyDefaultV4' test.out

#- 402 PublicGetMyMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetMyMFAStatusV4' test.out

#- 403 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'wo9IAxV5C71gTw8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 404 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "JPFctwUMCRdxXOBu", "emailAddress": "3TWmHDVmCGFoD7aN", "languageTag": "Fj9wORAVqRuNsXxR", "namespace": "u4EQqR3KbYWtFzpl", "namespaceDisplayName": "XVk36IpbGquPnIPw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
