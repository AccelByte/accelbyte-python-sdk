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
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "pr4U4fwQIiLXgmRa", "AWSCognitoRegion": "svjO4lj8m3XEwP2b", "AWSCognitoUserPool": "4gd3xOeii8Jnmsse", "AllowedClients": ["p2xD2NY0kABeGs9y", "xahld1pO0Gyf5PO3", "COyMvczgEpzZ3Fbt"], "AppId": "xfhcRC7IVYa6iZ5u", "AuthorizationEndpoint": "FRYNn3SHiWxF0Ybu", "ClientId": "U5ar5qTLWUCy0Afg", "EmptyStrFieldList": ["c050XIZRW491e94m", "QjVOOBnIWhunElqZ", "Uodp3IhtCSHy1ei1"], "EnableServerLicenseValidation": false, "Environment": "m5x3B4t7WQnp8jXZ", "FederationMetadataURL": "edgt5cyNe27HLtwt", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "HAyNFxcVTKuAQTGh", "JWKSEndpoint": "5BxjWOozGoDtsUuY", "KeyID": "o5p8ED5QZAufwNa8", "LogoURL": "lzfjv9oYMXMjlVHY", "NetflixCertificates": {"encryptedPrivateKey": "1AHwF3vGoav7MK0P", "encryptedPrivateKeyName": "cLnEkcokKwcQ0baD", "publicCertificate": "T9OyJ2h23GUS2amU", "publicCertificateName": "7syGlElXdEAOrVSn", "rootCertificate": "LocLVVYamQc4wcG5", "rootCertificateName": "nDBLJoJHbiQ5duE5"}, "OrganizationId": "p4cfs2E41cK8QTwi", "PlatformName": "IAvxSvNDlmM5nQFM", "RedirectUri": "Gzs7fzjgyc44mEh9", "RegisteredDomains": [{"affectedClientIDs": ["tRk8knYSV30lnroQ", "ehMDli6t9unQLYXx", "m09wpGAbpEmDY9vL"], "domain": "h3u6EDsUmrV6kH4O", "namespaces": ["otKwG3UC6XCnnZxF", "8CmQr17W65br34rB", "BN9tU6TDm5GloFSK"], "roleId": "WM1eym5ydC6p25xC"}, {"affectedClientIDs": ["WTqUOYZENJ1QHZQx", "PRXH7uxBJEECQE1l", "i3Bg7Jxc9pUnZmvh"], "domain": "idwCkZwqjYLfTiCO", "namespaces": ["1NDBvQvRPnAz4VzW", "0CpoBCbyJsF5IjF1", "c0W338HS6CBgVRyi"], "roleId": "hYNZ84CVhziXV8Hw"}, {"affectedClientIDs": ["SmvcvcDKF19yVRaf", "CjOuSYht83AdvBaa", "gTiRJ8daGTVX3Bb7"], "domain": "jlz5IfHgKjI9mwJS", "namespaces": ["rN8jkIykR2zbaI6P", "D7fEscShnGUGUtV9", "GJ279GDbLNwjm3FK"], "roleId": "0nnX2poMfZ1hDHtb"}], "Secret": "h4HtMlFgvh2Dp2So", "TeamID": "iIPp1yvfAHS0VgLu", "TokenAuthenticationType": "11A3HTovFi4tPAGf", "TokenClaimsMapping": {"leyCA6jEtcqsnzoV": "ILjkwW61duF87aUy", "rdt4XSpWBAetsanz": "qP8oxfrtbECD1CYP", "waiBAxfYL8Avt70Z": "UT2fSk3LL0calqxE"}, "TokenEndpoint": "ewuGS469k2hG0WKt", "UserInfoEndpoint": "4sUmanYxM0UHZVNY", "UserInfoHTTPMethod": "zGMNIpWoSLkUrfuf", "scopes": ["4U3WeYeA9t2ENKKW", "rFtHIi1CMgKAOG5i", "DcCR5PbCvDLil8wj"]}' '9cKM3Ar6MF35hCER' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '4nGmWGgTJfHlJl4t' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "HGa4XfZcd9CVnGqM", "AWSCognitoRegion": "X9FieeEssWEUl07b", "AWSCognitoUserPool": "hwntCVqiYOJf5KwM", "AllowedClients": ["ZQjzvjSozv6CTRDl", "0zp9CzHFwinkBNi4", "gvqgl6TZ9TGVPmv3"], "AppId": "4h6T7EsufmfxKYB4", "AuthorizationEndpoint": "LM6H6QXmpZ9X3fUS", "ClientId": "R1l9xLPBsmAUrD9L", "EmptyStrFieldList": ["1IiD6MlcEPhMDFzj", "HZ3sIhzOx2CXKlvI", "omU3pIxM9n8D2eLM"], "EnableServerLicenseValidation": false, "Environment": "wdvl0hv6g62GxBW2", "FederationMetadataURL": "tQF5tkTjgJaMYvNQ", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "KlG56HlzGr7XjdyR", "JWKSEndpoint": "JunZPkp6ccIBnWyP", "KeyID": "w8mj7gyQ7XdIszGR", "LogoURL": "j46COPipH1MWVTHG", "NetflixCertificates": {"encryptedPrivateKey": "0qHJCWEfOJpZm9yE", "encryptedPrivateKeyName": "YWNGMy2pgSGSUOK6", "publicCertificate": "8eqGJtWf1Ybgg8rd", "publicCertificateName": "wY9bmrvHmO07KNqX", "rootCertificate": "9LM2IwEsdOGBXBwn", "rootCertificateName": "zDX8v3xgC1Ge9Pdb"}, "OrganizationId": "TTAJ2Gp1r0sVZ6LJ", "PlatformName": "AOddIL2l3hPjNDKv", "RedirectUri": "2LWfXqjr8fS79En3", "RegisteredDomains": [{"affectedClientIDs": ["wYowBdkaZ3y6i38X", "QjLDRqkpiFK5BtiQ", "272Uo9UBJWodpdws"], "domain": "X1jorcyR0x3YiHF8", "namespaces": ["ITGPRQBCgIs1Q2lz", "xl0yF5m77TTh4gUo", "j8u2WRcLiEtzVlnk"], "roleId": "flfn7pHY48F1dl1q"}, {"affectedClientIDs": ["92m3iRlfnBAk0Cwi", "AsR65yQ9ssuHdGmx", "ncCEr0KcgeqzGbru"], "domain": "NB72HHMkjzyBB4UF", "namespaces": ["KiaoV0VOem2yqPsM", "FxKybPkbuS6x9cLJ", "1APnNlsa2bRBr27f"], "roleId": "VMWuAfDqLMR919IZ"}, {"affectedClientIDs": ["PKOKiAVQXXOmqFHL", "byXmgCNiXH8uenbC", "5CphgMweexsIAP5v"], "domain": "HLjBJ9iqMcBL4Bzh", "namespaces": ["DUjhKPwbwcvQU5kG", "8bXGFmPAnOkDiJq4", "xQye7HqnVK3YVeOW"], "roleId": "s9mfVQh3jLBtn9px"}], "Secret": "pE7BYtzB0B4CxyQr", "TeamID": "UpIFvORxTi79DpSj", "TokenAuthenticationType": "b39ukcR6c2E2r3vk", "TokenClaimsMapping": {"3IfAKEbqcNXSGCCv": "NowNmdpcJgF88ySN", "q4Mj7mulP4tQ6R1O": "qKVOTniBgLsNhdgQ", "0JWZjNRSzOTqcVNX": "3ahvxw9gwwhTnjN6"}, "TokenEndpoint": "wKZGW4y3f0R9s2kn", "UserInfoEndpoint": "dhhZhwAiLsZs4pmL", "UserInfoHTTPMethod": "DIQch4IjDq9aT3qZ", "scopes": ["yI0rYsWucAkXsVJb", "Xi7eRZa7WwIc895I", "mqK6tVsaUq3stUh5"]}' 'J5Z9GiBiSAylX5cS' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["0IeHpWCugmfOL0QQ", "pxsuD8PGqku59eFJ", "rOXyDYz9vMUOPG0i"], "assignedNamespaces": ["HDT8QbF7gHPTPQbv", "Lt2NRqJGIKzLyH1y", "72L13Ornyx34luLd"], "domain": "vtsTKXMjiw6gYPvf", "roleId": "n2Qt9iyq3Nyk8ncu"}' '2Z3eDHH9WaVO4iKh' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "DcJ7TCcNIsQ3Pupp"}' 'UxDSK8aOTGMudcxl' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'CV4cNbJGQ57lPdin' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "pjS2DRfGt9GlyZVQ", "apiKey": "4X67tPZSTpPq3xjr", "appId": "ElvvDgw0ag7kSWE0", "federationMetadataUrl": "Hiqm5IuLryiEXqvU", "isActive": true, "redirectUri": "n4XCFkD1AJLCwszb", "secret": "ZxuHSgDOK8bjoF7b", "ssoUrl": "L2635KbtZTGJpqgl"}' '2IzNXGTuQPIDpor7' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 't1aJLNNz6QIVC9Mf' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "uc8VOsnmnlVljdWY", "apiKey": "mELe74p38vumnxAn", "appId": "YBTxaTIz0jcgDI8P", "federationMetadataUrl": "kz96vd80msqIm5bu", "isActive": false, "redirectUri": "NUBDShHD32vvL28F", "secret": "PwTiXfLcxDC9Ynd0", "ssoUrl": "2mECIQhfIhHtADUQ"}' '9zimQTQT95pFJUAJ' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["syAfeKOufV4f15No", "hXu6opxQGRt6Pqlk", "L0diRhLC10ih2EQf"]}' 'Y3XCv4hdOa6FdZhN' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'Md1onFjGRbxtABPX' 'DmgNEJBhgGq5GIDh' --login_with_auth "Bearer foo"
iam-admin-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-admin-update-profile-update-strategy-v3 '{"config": {"minimumAllowedInterval": 81}, "type": "zkUY0n0BAZkwbYkB"}' 'username' --login_with_auth "Bearer foo"
iam-admin-get-role-override-config-v3 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-update-role-override-config-v3 '{"additions": [{"actions": [82, 92, 71], "resource": "A0FqfhnaB3YxKNdO"}, {"actions": [94, 97, 0], "resource": "uOzhxHmnrrV9ZGWr"}, {"actions": [6, 32, 47], "resource": "sxe6A6RpmKDebNky"}], "exclusions": [{"actions": [23, 29, 3], "resource": "ucNmzwOZOK56sDkc"}, {"actions": [17, 67, 35], "resource": "e6zKJdlt7rjF5RaJ"}, {"actions": [47, 45, 99], "resource": "kWVco2LTo5ijlvDF"}], "overrides": [{"actions": [72, 33, 56], "resource": "XlYJ8BzP6EUmUXGM"}, {"actions": [57, 0, 28], "resource": "H8x6HdVfZVDAiU6i"}, {"actions": [72, 45, 82], "resource": "KUckc794ryY91lX8"}], "replacements": [{"replacement": {"actions": [60, 18, 61], "resource": "Og2sVBiCoeC5weXJ"}, "target": "l7PeiMH8z8dVej8N"}, {"replacement": {"actions": [62, 49, 32], "resource": "v6VTnOK7xAvM7tuL"}, "target": "81lsR7xxSVp3Gd2T"}, {"replacement": {"actions": [75, 52, 59], "resource": "HzYviTgYmx82JVBR"}, "target": "LPZ6Iz8tne5dbguB"}]}' 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-get-role-source-v3 'USER' --login_with_auth "Bearer foo"
iam-admin-change-role-override-config-status-v3 '{"active": false}' 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-get-role-namespace-permission-v3 'WbjE2opXtdsJQeJ1' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'too0qvxphTLEEBGT' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["qTq3EVheJjoEEXBL", "IxGnNuhoJM3WWPvv", "CiCf33ViEdqQpoGk"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["UWNizk5UcPAGv6c1", "ESC6hZYTYZbzf5aA", "NNNs5kgSZZNUHbIT"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["9szApmWJO5vzzXZj", "08a6K1XRVfriSpPF", "nZBJZkDnEiyfa2Lr"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["npZxNnLRH36bqS2o", "FY76PU1AziBOHEAj", "1cT3u6Zc2FbrTFzn"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["TgDIwZIRWf6T3by2", "kYSCdnFKLc0xcTjq", "jdcEfU61OJYMnW49"], "isAdmin": true, "languageTag": "ZCg3XTc9vQe0dHJf", "namespace": "F6KIuvnRCa9JktyB", "roles": ["dxkZKrEWFw9GYxji", "iOQAD77ci0vfWVZo", "RRMPi57HyKKz5nyI"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 '6ulKNKoXa0dgx1Jg' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["jC56pda3YhtQxpCY", "ME6x21pdX2QSPAd9", "sxoLnWGP1PafIjLX"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '8ce0KbNN7Ycl2Jfm' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "QplvGjVQ4aebjfgG", "country": "u472oWJlfglLM4xj", "dateOfBirth": "fkNL4lU6jaGfsD1c", "displayName": "fswmeFpvtDtetoQV", "languageTag": "FL8LNW11vtpaTxi7", "skipLoginQueue": false, "uniqueDisplayName": "pEi5DbkVs3qFTi1t", "userName": "530Wj1WfzIvc3VlS"}' 'XrA3XUGud4tVjmxE' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'f4XvVhFJTxFHITBg' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "9x4unq3eOMHIKeTy", "comment": "BG5dCUoExnKfV386", "endDate": "9IN4V1OdhH4GVU7E", "reason": "xlkmc4xYiLjLyZrX", "skipNotif": true}' '4hXONgUwJnUpryDe' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'RcpUvlrw2MwC1uuo' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' '1SLjCPrFa05Xl5TP' 'C5GODS44bmm7jPdK' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "LddfdsUqjXVzW1Qq", "emailAddress": "xnWR5sheLgsAF4ct", "languageTag": "v5guycGiq9j2EyIk", "upgradeToken": "nfLDpgHnMOn8nc3g"}' 'UZ8ZFyyEr0KBXuJB' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "qK4QtEydPWLPBYiR", "ContactType": "3UbJc1ZYapx7C477", "LanguageTag": "etqgfOJDUT0uKAPr", "validateOnly": true}' 'z3V7YbJM3bNLWHAb' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'CZixe2cQ6O30lpzc' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'BQMAEcNcJqrKxnMz' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 90, "enabled": false}' 'XIeCEKZUTz3GvCAZ' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 '5j24acYHbrryHB6G' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "O9zP3FaepA3b3YJ9", "country": "nJM6vtT27xv85K5M", "dateOfBirth": "U2qmbeqaVemINdCl", "displayName": "pF7OvlBIEgjse5kd", "emailAddress": "6GEDo08yq5E5HleL", "password": "oog4me2NBFp62xlX", "uniqueDisplayName": "vVcJerTPW02PWsHi", "validateOnly": true}' 'BSYAFLqp8PF5hCco' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'ukWpnbz4ys7j6lxu' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'U3u2HEG0qfKegvFT' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "D1sPykS8YLmwtYgW", "mfaToken": "GcA0h4G1LZ1HaX5U", "newPassword": "BMbsF44VTsLDRzdq", "oldPassword": "22cbnyK3ggFDh2ka"}' 'ZP7pnnVfxPwc259H' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 64, "Resource": "WiZ1uqh7GAi4FEIu", "SchedAction": 66, "SchedCron": "u83ZLRxYlYqlpq03", "SchedRange": ["BGdIk4oEogFVGR71", "rJOBy6lsj1AKGBjn", "HmaAu4YK87DYAWWc"]}, {"Action": 2, "Resource": "zUOIzVcy9k3ie64V", "SchedAction": 28, "SchedCron": "5lraa5v5P5Cj8hgF", "SchedRange": ["sqHC9h5JPiMEtgKu", "iGTYgwWv5XldL6rO", "VGcRAn51rVAQSxp4"]}, {"Action": 34, "Resource": "gJbQ3Fj1umx4Itzk", "SchedAction": 79, "SchedCron": "7mLYsHooOIaxIpb1", "SchedRange": ["cIOJPS3lJ80YJ41U", "4ooQ980ywmg1pWpW", "it1QC7FKe0fnHUlm"]}]}' 'U1unGKM0tgfeWy47' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 3, "Resource": "SCvX1nwvSWdDwD7W", "SchedAction": 73, "SchedCron": "FwBNrFXt3TAuKBwB", "SchedRange": ["cD12ae6r3hHwya4N", "pdOzg3hr6ucHf7db", "h2iKNUl0qJqzoKMR"]}, {"Action": 79, "Resource": "nOlscRIWw82k5K5V", "SchedAction": 94, "SchedCron": "KNXLMUaDSwwQlnNR", "SchedRange": ["ZJHBSB4fZWEFIZs2", "8Ff1kZp1Zktx3N7W", "NMYIfcDKbLu8pnK3"]}, {"Action": 58, "Resource": "oA1keYXJvtggDdXj", "SchedAction": 3, "SchedCron": "lIlGJg9wdc8bihhW", "SchedRange": ["jfZpfcFBUsnnDJlm", "D1iEokbUiYzCQh2i", "NTwtnohddMzMTQ9P"]}]}' '7sYLDWAJOA75K4BY' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 72, "Resource": "dV4D5jftRl9rZmtQ"}, {"Action": 95, "Resource": "Rzc20O7FdsJP1G9t"}, {"Action": 50, "Resource": "MKEohKzuMYDUTLBe"}]' 'CidXjuGgx8ncXejm' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '9' 'EBhXtAVxCd3meTrT' '7cF9oVCh89wNOkKY' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'ssVejcL3kR3hCGNg' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'aJmuALlMQl9RLrth' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'bfp0VgweLlT2sY3S' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'sTnDQY7kKU2u06Q4' 'veujxtyQENvJrBCq' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'eg67d4RWOqO4U0bi' 'tNQLzwRoWnR0AbkC' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "PY70FmvviVIBbcuj", "platformUserId": "F8Vk5qb8NhWWwaxy"}' 'Mchkt8l5IPSrwrJl' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 '7wYIVw13NCo9yXlb' 'Q52FTHTCj6SEAzT7' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'TOpyiuvvQUm29Iac' 'q4XRLaA643nTMtXS' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'Ayejnny0Ju13b6o5' 'uB2XM6IHy7EEvHyL' 'mcvrZZOdwe1x8RjU' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 '6Bi8JXE52sUBBq2S' 'imQQoLbe5YOJvxGR' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'xUzrTwagH7BMT1IZ' 'KTdNFVBQ1crBXAup' 'ATO8uXsqVpdiWo8S' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'jDAM0Riw8wLYW3n4' 'F3LD1EDwBXw5uBYe' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["QZOzATNSV9E9yyNb", "7yaLXzAVYymOuhCk", "Zu4htrsf8eIFSovT"]' 'GXaMsq8ePN1oco2j' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "x8Upe8SjMvpqM8pu", "roleId": "ggOEdG47gD5i2Ni6"}, {"namespace": "AnWn3NdEPhNHSH7e", "roleId": "KDfRcngEpTnRUQr3"}, {"namespace": "RLOM1vEx4gqDY6jw", "roleId": "yKRxhkLe5zohg9s9"}]' 'utRQt28b6o3K0COF' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '74tz6aeXZOYwbwjM' 'NdxKWlBfnRyFS0Ed' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 '7gTM5AVrtBQiDTcN' 'nZa6Zuxk6u6HXXdi' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "WDXTSb55g8LSTs7N"}' 'f95lGlPrf6obIdnI' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "6Ag7eUYcYJ4QzXCm", "password": "qr6gmPGaHP5SVPvR"}' 'LiDi0mNHb6Lx8eq8' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'SGNwEQO8dYXvBSYv' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "JBwb6CjZUMRf2VJe"}' 'tWsokvx3BHuTEczr' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 '9KjQ3ttz8MTBt1xk' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": false, "managers": [{"displayName": "ssSA8nP5PQjpzk2T", "namespace": "b7iYdmNZWosrsVBP", "userId": "Z64j0HUONscofwYL"}, {"displayName": "QcDvkaEIIPoJT83z", "namespace": "EGXmVBZLyrH9J7Bo", "userId": "ysmaORLkP5hc2Fh0"}, {"displayName": "4JTsqDTynCewqJli", "namespace": "gLlRxOelKykICRxF", "userId": "6HtlER2txs4qrNAR"}], "members": [{"displayName": "ATn6KXOutlYBbLhL", "namespace": "8KXx25FZfQIodVBq", "userId": "QsBpCJBIXLGYcwWV"}, {"displayName": "RK6UKk5ozrXA4HZH", "namespace": "Nyq9odanhR1Zrm3t", "userId": "hUvV87yfkycLSVdl"}, {"displayName": "eSaAylsmLYe2phYO", "namespace": "gT5kDTyPl3dKF7NX", "userId": "EjrJMki8jvc3P8Gw"}], "permissions": [{"action": 20, "resource": "mh0lciRhVZ2DeoOD", "schedAction": 65, "schedCron": "MzLSrzoiBnYi5UWs", "schedRange": ["3tYlYeMoCimJySoc", "RvUWDOrFZKPNoN9A", "WtLK9TFgi9j2XMh9"]}, {"action": 32, "resource": "pifqjNjLOtNQts2y", "schedAction": 49, "schedCron": "Ljjiw3NeVG4DJi9D", "schedRange": ["aMrc0WFgKjE945x2", "CPVYYG9WvoGmAmva", "VV5YfxnUNcwjr7gS"]}, {"action": 67, "resource": "hB4Eoes9a6XaJeRb", "schedAction": 52, "schedCron": "d3UM08gMXhdf3juX", "schedRange": ["W4JprIb3CJCAtvSG", "8Cfa9dzOJDGCTHIO", "FjeXbsSgR43kIDzx"]}], "roleName": "BwqRJTzrHNZWUsq5"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'lQo2jy29EJigqYhy' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'VhURx1yPeczRpdk0' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "TGylx2JG2KNGfhzf"}' 'CTxxrsRRLee3TcJ7' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'DQIi45aCDHN9mVug' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '2zkVf6KgpKOcn3tM' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'D9UT67bOwugFDa6w' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'UQvehKqwCh86XmRk' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "CEcfHDCdl59Wp9A3", "namespace": "tXGve6DdK6uvg8f2", "userId": "cIoByk9fxtvsgeAx"}, {"displayName": "o57nKAbZpsbJ4Iu5", "namespace": "KJ0ynxGBlacDCdFe", "userId": "8ATUqVxcSthrpnMU"}, {"displayName": "BsnUfuQIcSbUt5UG", "namespace": "kInFGpuUsdtq4dOw", "userId": "NESzCEW9dUVhZjLf"}]}' 'tC3sCS8CpLCqPD9C' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "eDEdCnnL6Kt1Bjj3", "namespace": "b8QM8Rr45ULqXQgv", "userId": "wD3PsKDJiWxQBwaS"}, {"displayName": "7rDBf2S54phbdyGD", "namespace": "t47f9GWRlE9hqz6r", "userId": "jDNo4rhjxUdMM83W"}, {"displayName": "ekqfWv04vvn9bk5q", "namespace": "r8qs2mqtnGAqXUjN", "userId": "ypF6MMqWpdEJsPoa"}]}' 'IbYz8cK5jlpJdre5' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'ur6yvWJDdvM7T7PX' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "2vamIRZHzsIYOCUo", "namespace": "iCXNjrdQL2jdx1eI", "userId": "ba1sB0HsJ06Dzfbz"}, {"displayName": "RYt4OVUyumBeIqdQ", "namespace": "GZC5kM03HHijsQRj", "userId": "7N8IAjmsonjj0ZR5"}, {"displayName": "0BQ1U6aFD3O2kXQS", "namespace": "c58zgZVl4gIF7v3q", "userId": "bZu9M3OxqVAT4H1l"}]}' 'RZ9Z1JBrHRzEOtIx' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 53, "resource": "zwRjD7jmQJeFPghq", "schedAction": 1, "schedCron": "d9rsKgzCsMulpB8H", "schedRange": ["ZUtVVaJCiLgKOwrS", "fWhT5B4WedopzwSl", "uBtRFPKThyGnbjmP"]}, {"action": 61, "resource": "0MkZwS6TYwNN3UYh", "schedAction": 18, "schedCron": "h4SqIV6LQPHlaeYl", "schedRange": ["4csFq65cU66yJaj4", "ovoKWE4EW0sw8v5p", "eiuxoBJATauyD3XC"]}, {"action": 20, "resource": "VMiyEvMf9yilUEuj", "schedAction": 22, "schedCron": "LmQtYKmEMzicbuL2", "schedRange": ["S3RiW8dLTCBfGUdV", "EdvdQL7sVwcZ2Pof", "aJoSqtrEOqxH46fR"]}]}' 'TSZoDdT0fefo74eg' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 81, "resource": "8luh4dpPRMDbUXBW", "schedAction": 94, "schedCron": "uNZ9LzNeJnBurh54", "schedRange": ["CWbYb0Pebyt8b4DG", "scjwrizsFUgYwbaL", "vqvQ2NbmDITuymTB"]}, {"action": 18, "resource": "6JBcGp9Rx2RfcRhX", "schedAction": 32, "schedCron": "7Ax6115Kg9U8vrQJ", "schedRange": ["XQxoIbVi2CLEk277", "Ivjj1A647XQ3koaA", "fZIim0sFPm1YN27b"]}, {"action": 28, "resource": "7TGkeHsYsW9oGBN1", "schedAction": 31, "schedCron": "KrKUMhJrASBh61hm", "schedRange": ["WKSSrF35anDGvur1", "9V18oIrUKXttgAI2", "QdWJFLmoPEgd8EMs"]}]}' 'pOs8nkic9gj5vyUM' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["AAmIHYbsxG5N066F", "Xb88SbLOa21DiSFs", "m0XXQJWszvTQEuAL"]' 'zDNp1SZ58aDllwzT' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '89' 'mgUSMM5au8GJT0mk' 'VPI6zUtf3QaJPGrT' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'NcXXTUIggoH89QNm' 'I17UDb19R6H7r1ta' '3m7jK5pxe82pgFiA' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'S6piIzmc8rKrKEPG' 'SAcong6eNERUf8kj' 'ci1Ctccv9Gv4tOcb' 'nuCqf0lm6WBkIzjo' --login_with_auth "Bearer foo"
iam-authenticate-and-link-forward-v3 'SV31tvmMB6jzrpRG' 'ESmooHiCV4GUOnXp' 'apXQGRakUbcG7PcR' '4eiU3Idi55jNrGNT' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 '2VHTKuIT5FwwHj0U' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'r5F2PWGTTD81xhNP' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 '4t6kYBUjyXAn3bWQ' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'F6QcAiJpXIrgroix' 'ptZhckUTGkcBOE4q' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'McH1Kyi8ZFvGcV8D' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'Y0XOkDstxZcY1HgA' 'nZV4IOglVLqb9lGA' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'JUg21Lt7JwgwMUSu' --login_with_auth "Bearer foo"
iam-authorize-v3 'C3Bajy3BcEMCtQs2' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'hWva2FPBujX0geYC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'pGJM4sqsPNJMiZXX' 'OFwmGWAvNF0Z0Gkw' 'xUNYyNwGiKrknH0Y' --login_with_auth "Bearer foo"
iam-change2fa-method '5mrQgLC6D2qsFiQH' 'glUQMZi5WjMZfOad' --login_with_auth "Bearer foo"
iam-verify2fa-code 'pgegCUjTdi1Ehr8O' 'tqpNJ9R8TuNy4ejm' 'VA3vMCsGyPd12B8Q' 'false' --login_with_auth "Bearer foo"
iam-verify2fa-code-forward 'z0hFFNbH6j2W4roZ' 'M2UKAXEEsL5D0oiF' 'chQnVeq3g2AB2WIR' 'UQmauIY5HXCZ0W4X' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'mWP0HzSdiylLhVYs' 'zm8xY33OQbumu2QH' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'LyZNuysyM4OfCzdQ' 'CXMAWnf87YPNOe9E' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'evf1fhMg1E2k7QLF' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'rVgtX7y0fPOieDCo' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'FctW7YS0OkL78XeE' --login_with_auth "Bearer foo"
iam-token-grant-v3 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'acQMTlqN4LKkxJ5v' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 '3SBafnKNiMPbFkFG' 'A85W3HJkqgS2B37w' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'woPYOHiIsxmsLBPB' 'JuNLnWRrtW870qD8' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field '8ZcduZSe7W20UZcD' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'aiq0nEZ7PyhqFJkD' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'ClOsKmfsgJdmzsDP' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'sWh1k0cQ08NG6dX2' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'TZkil67kRngoUa83' 'ECh1gqPeS193TNNz' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'ot3sVli3GN2XTrFi' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "bRAhzzEWzWlTY70q", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mQafUs2bxYztOEyV", "policyId": "bKIf1ZbzgUwd8DHo", "policyVersionId": "CQykmXHYmkRlg7gY"}, {"isAccepted": true, "localizedPolicyVersionId": "21HWDAfvXwdxbyp4", "policyId": "HAPbBbNPStVBUpKg", "policyVersionId": "OssFkz0F36piDYXe"}, {"isAccepted": false, "localizedPolicyVersionId": "D6vl5eFdFfgK46Gj", "policyId": "CWaP8huTmnq3FGQn", "policyVersionId": "3Ahu5wxq6oJq4mCh"}], "authType": "mQHQhO9IKBXDFQfX", "code": "FD58sG6uDhFYlrzJ", "country": "BYSeMuJfQecutjS0", "dateOfBirth": "29BiJWOG1m7MKclr", "displayName": "5igjNTVItrH2X78h", "emailAddress": "xJgaVfw5Vnyq8OzT", "password": "E89WDNoMcOmbfJrC", "reachMinimumAge": true, "uniqueDisplayName": "Ij1haAosKglqaCXE"}' --login_with_auth "Bearer foo"
iam-check-user-availability '9ytpIO8btO3OwNEG' 'SW5TaW4to7QCY2NG' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["Gvi9kg3rMIzNmhJT", "NQjKlwjfJ3TJ2xVp", "ge70WsLfgbZieRvJ"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "I5sT9DH3DfLCv8q4", "languageTag": "Thmq09bBgPAYxrBE"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "9jlnTgtgW33wDwD9", "emailAddress": "RKvQX4yFQFdrRoM6"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "FoqCYw7AlxO6qdFp", "languageTag": "c71sSck3ggZWJlSl"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "CQMDji329PfVrvME", "password": "PtpsSNcpK1QkB2Sy", "uniqueDisplayName": "8Ww79LVeVskqeUB7", "username": "RSayqGFguhh3bvad"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'RthdbVApebRA09rW' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "8i8krFWJhe03coRF", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "x6iCJTu60IifzMhk", "policyId": "k5PxsjqbCKpMv2Yk", "policyVersionId": "y9DYkD2sIllFtBtX"}, {"isAccepted": true, "localizedPolicyVersionId": "3rqBmILhtWm8RQvR", "policyId": "UbUDSiefGEdLucrt", "policyVersionId": "O2gCQD057DrDlgC2"}, {"isAccepted": false, "localizedPolicyVersionId": "iBKohow3kKoaP1K4", "policyId": "CDuH1mMIfOCDyVAH", "policyVersionId": "rHncR5dShqiBUI9e"}], "authType": "sSsXegSEhrPpK2q8", "code": "kxR4BuEksS2A9VOA", "country": "8H9VeHv0L2Acm960", "dateOfBirth": "EYQEuGJVl8xs1WId", "displayName": "9WlalqshF9Rh2o7G", "emailAddress": "CQGPCxwEdkyuT3Mg", "password": "zReRq0112ISArROI", "reachMinimumAge": false, "uniqueDisplayName": "njnxD1OXkxShFVQT"}' 'RekLfjmy8zosRCRg' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "VwbrQKmb01yA7U7d", "country": "GMjupZkZQY8CNyT4", "dateOfBirth": "k3DIbfT22G5NpE13", "displayName": "0YWSgxpKWtdtdtVW", "languageTag": "9anENmxb9e7vXZV3", "uniqueDisplayName": "ig8Jg5VByeI3ycMc", "userName": "YYBixKJXCISQdwec"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "1m8BusV9tUh74KVo", "country": "6Xqjz2xUKLNWSmYy", "dateOfBirth": "VvyelIJ8QgaLMqi8", "displayName": "36ULa7cfZl4VuY6r", "languageTag": "sZyo6CBRRnoOikIx", "uniqueDisplayName": "XKKIR6kPmswm5TCA", "userName": "U1cKApdJDnE73GLm"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "SZns5owBhoUg4LsG", "emailAddress": "P6KLPXkvUv2XiXaB", "languageTag": "zsmaxjTZPlLitytG", "upgradeToken": "ka7Kv5TacQKF4OlR"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "GdmXxETLEQrr3KCA", "contactType": "V9alq3hK1G4kKooS", "languageTag": "NNUZuiynZ64IwncZ", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "S2FgarY903INGIyE", "country": "fRBEj7qms9AGQExP", "dateOfBirth": "hgr9gGfC0GjvpgJf", "displayName": "uBs1Vpqn47GVghTH", "emailAddress": "2wToOnq9U5lyW89X", "password": "wt3wmRTrDCjhnKvs", "uniqueDisplayName": "HezWTqgYPixtHk6l", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "q6tEeUmU96FLEak0", "password": "mJqjRYldcTpdeCD9"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "XPRi4bAQL7VE2wL8", "mfaToken": "Y4JFVUdzA8bvXlDh", "newPassword": "G7BrorbKIKuOXJPm", "oldPassword": "5ztrr09CDA8Ij5bG"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'KSuopWQbaCvdPSq8' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'Z27GpvHCDx55JZ5z' '6gujpFzlPspQD9IR' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'IpDDubntPCFxfeoW' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 '2NdSWzOXjO1NQUqW' 'HBW78XREZCiTNAxq' --login_with_auth "Bearer foo"
iam-public-web-link-platform '26gZrPqCsSDspvgM' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish '16sZ6rjnkH4ExObp' 'pC6CMYDm5ge659UD' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'EOF6gp5UfmjtiVbq' 'JnZcrqrPye7fCwi7' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "Il2wIFlHm9N6owMH", "userIds": ["MtJy1Oqn59tEGm9N", "YeUT5P0nx8TqSZdZ", "5C8mFI9TnvzEqBNM"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "F9CZvPxT5zbreMc9", "code": "fBoU3RHNDFjLKFre", "emailAddress": "py56eW1kmb15QeIQ", "languageTag": "F51c4MqJzDSvELgB", "newPassword": "e6dboSdhkBzAzPkt"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '1efGJeJaxyHYutgX' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'ucx85vHA009FAb21' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'jxeWXk80y9uxgVLG' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'gK8aVSCN6oCETQ8g' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'IDRdD2wwMXwKVXGP' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'hEJsc7rZpxaPHc9r' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "8eToFmkHJ6BPOKFL", "platformUserId": "xIwKssw647YwDudn"}' 'GRufOUGfMjTU226l' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["07jPlcYaqYM7YfBm", "hjI9Y28qVceS9UX4", "8dKPCFUIeyYEymNX"], "requestId": "zNX6TGh4UdEweeBs"}' 'JEvBbAvCmlh6Z1oz' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '9BaixUUvmzbajE2g' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'jooiDnc1NUb51lEg' 'UwQ9tkWaMOH47CAT' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 '7cBP0918JaEBQBP7' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "66LUnBBR84iAO7sB", "emailAddress": "Qt6YJ2tWwF7RnP1o", "languageTag": "K3c4RVfjB0zi3XrY", "upgradeToken": "ZUiN24ol1qqbalgi"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'zL97ycJV5YqE2myQ' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["zl7X9fHr6WvBxmBv", "Nj3ktaDf9B22HGgx", "akPt7IYzaZUTmvsE"], "oneTimeLinkCode": "zLPnnGsnfmBerp84"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'qjwzWpCF1vyamjsE' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "zwtLPxK1os4qR8La"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'QzEb39sZTdFfC8x5' 'aHLsXHlm1RJTTy9J' --login_with_auth "Bearer foo"
iam-login-sso-client 'rNz1K5M1qgFddYvi' --login_with_auth "Bearer foo"
iam-logout-sso-client 'fGHawNx6yhniEHLb' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'EQKc0aUvrKXDIjYC' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 '4df9qswSlpCI8Dhj' 'lxUyrs3OSesE5p0D' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'wUj2HKUvPYUcQBxM' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "SdOOsn2Nd8Jpa19G", "deviceId": "JDK46Eehx7xasqMY", "deviceType": "9aulsL6NOV5agpS6", "enabled": true, "endDate": "UeKKlPKtE6gnYxmk", "ext": {"mCWbs5qugklBUS6u": {}, "wWrCQt86Jrg8tLAJ": {}, "WpcyNkUvqn6eXr6F": {}}, "reason": "NbKJ05Orya6LSSUl"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'ugIAknXcSaVYcAYp' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'K9JrK6Or2xx7rLwr' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'PoWiywnxuDLLuIaS' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'xoloIH1gBCWVFrvl' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 's0ZwosKhDlLfTKxp' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'VOXvGSrdkqddI3ez' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 34, "userInfo": {"country": "zkbDseh4tJdoGcwM"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rhZCAlDlVKBsLZiB", "policyId": "RXszE7CL1cQCSoqH", "policyVersionId": "vH7g63cOx6yrIw37"}, {"isAccepted": true, "localizedPolicyVersionId": "M2BUXnzUEWTiKMJA", "policyId": "f6AgbiEDMfCckWog", "policyVersionId": "E5gcfF8AMGZ2FBS9"}, {"isAccepted": true, "localizedPolicyVersionId": "Mg6TKwdRMraDLrwh", "policyId": "3d0ykRGkgqUNIbJM", "policyVersionId": "J9ABbKVWO2YEDiqk"}], "authType": "EMAILPASSWD", "code": "cvtQ92iD02YMvEUN", "country": "foL7JCcMo7GxxXdb", "dateOfBirth": "YCRexPekTsQxMTfa", "displayName": "Sot7aohFYy4VxwHI", "emailAddress": "J9gzxqAw4vBGQAeh", "password": "0VTiTP4PSrXUS6jY", "passwordMD5Sum": "I9lsQFD43Df5qUZO", "reachMinimumAge": false, "uniqueDisplayName": "zpFd6b5Jc5TETHcu", "username": "p8GG0VCMTFJ6svTy"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["bBb0n1JhPUS8BRPG", "V9n769zLJdKMexeJ", "c7NvgTSgKjCxZjKf"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["8NA4cGUaDfy9XnH2", "r0EKrk5VlnKsWCPc", "cAFn5CEPoH6opK5D"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "SO8JyX4IE1z3rDwZ", "country": "1HKsOpyq8agQuz86", "dateOfBirth": "nc6jLF9DIW2ncJJK", "displayName": "pqmgvUTr8XAtpOqU", "languageTag": "QxzqJZiWi3KQffT5", "skipLoginQueue": false, "uniqueDisplayName": "bVpCgKvPXSDufmKh", "userName": "783cV54JsVBRB0rY"}' '0xfWddACyHSmo4KX' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "9TPO3K1k5ZM8btmG", "emailAddress": "sgXNXbpqxh76Af5J"}' 'Swjw2fE2g6jXV7oa' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "i2oDm9FaP0HJ98tE", "mfaToken": "4UyoQg0b0sGOkzxV"}' 't15LKmkQ7YBhsOuJ' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 '0ypkkt2G4eFh2YNs' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'doxpLTBM9Q8t829I' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["do1JyveSRiBq23ky", "H9jQbHWkcVk0X28G", "S54vl7gIKBc7OYTy"], "roleId": "lFRAJKySnC0cfPl3"}' 'Z2zSBbs4PAV72u8A' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["xE2IQeoxYV4UcYzs", "wAGpXqQxctuVaqPJ", "GAHEZmuQrZ8GaQ4O"], "roleId": "Z2nDodm4TNs8mAj6"}' 'IKSYFdJwgZsRPOzw' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["uDSdGl1A2vaNeDiS", "qTfmAVg50kOdJagE", "mTuaxlxgywkbdOsy"], "roleId": "xX1tfW488oYUT4jy"}' 'CVJ0V8obTlGVThz4' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "41oIcV33yjPxibDj"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'fF7JkjCVpZKMxkFk' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'BtXMU6KRIm5xBoIi' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "tgFXasxp5h780ktj"}' 'Qw2yXzaQWaF2PqUf' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 2, "resource": "hOQ161TFjROYJm75", "schedAction": 98, "schedCron": "UHeCpqnZ5NW623WW", "schedRange": ["n2ZJY3QvRa7CDRTc", "sAHzD3dZyyWbUQpb", "cv3IwmL7a1K3zIUY"]}, {"action": 72, "resource": "5M80LLbku9GYH4ij", "schedAction": 33, "schedCron": "ppNCrscDPbklTHcm", "schedRange": ["gXsrVj3Mjml6BpCO", "DWGOLMmCZUeelXYy", "NrXweiCnDldRPRfd"]}, {"action": 10, "resource": "mLZ0GTJwEjoZrRta", "schedAction": 9, "schedCron": "npKwhpZVdw5UMa8y", "schedRange": ["mxtEFLwELCY2vIdd", "lxnA1VynioJcAPwV", "HUGcs1ACMvoY4jWH"]}]}' '9dFmOHW0j9suukPE' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 72, "resource": "Tjnxp5Cl8ggaEmCc", "schedAction": 41, "schedCron": "36uiiMTAductvUfV", "schedRange": ["wLahtRedh1SiZlOp", "IQ8GL7jBF1R5OexA", "PzCG6ZKQClGc1636"]}, {"action": 26, "resource": "P5pVtN4jNVIdruEA", "schedAction": 41, "schedCron": "ALznQuHVskfCjUK8", "schedRange": ["GeX4Q0B2Cj0oOmBm", "Xu1KiTTiz7yrIvQj", "2isN7bRwcr16lW5Y"]}, {"action": 46, "resource": "kuhb4pUwnGptHUpl", "schedAction": 47, "schedCron": "7qNkQiKp2oac8QTN", "schedRange": ["EuBbeuQqm9wM7mgT", "tUdPVcQijMBhs0kD", "P6d3nuUZ41mSeS9S"]}]}' 'nGqhJOvykBcDpzD9' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["zh6dtPK4fVHLMvrC", "sH3RYxH2Up9VthPj", "FrK7Hip0eONFDgUP"]' 'ShG8wwFKY9AMpcwJ' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'd4SrigIxAhbFMZfx' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["aznlDQbzTiFrQB1y", "UonirH4URx3NkKQB", "YrlUaMiFEWUT8cAF"], "namespace": "O5zEw8GENEJYPKxx", "userId": "Ow7xNQ98IEbc9YIT"}' 'N98j4P2AGeidXRRn' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "IAJfKVjOn6rtILNJ", "userId": "Vv2DLLUyBt5hDs45"}' 'siG30Lv9iGa5mkZj' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["nRXVcg6AByNpBo2J", "YkwLdmR97u9MVUii", "4KpYcb1AUsESaBOT"], "emailAddresses": ["HnbX9tC9PQlFAGbM", "tEybfcAl0mnsAkRT", "2k0AzdgIunRkTxsG"], "isAdmin": false, "isNewStudio": false, "languageTag": "rpNELM8Lfkut0wnT", "namespace": "24wh59RGSbBMh7jp", "roleId": "szuVk6iPdJ2boQqC"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "CyJfThvCJieqRSGN", "country": "8Mm74HlSZzp4aEW4", "dateOfBirth": "GkHG5OIVuGv47XJp", "displayName": "kMiopQrVL3ZZTVxq", "languageTag": "a9XM2gY14iWk12Jf", "skipLoginQueue": false, "uniqueDisplayName": "75lkjQNHrjaboGom", "userName": "guUqeuZh5qtrRbNn"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "GejdTGvZgN5hshSe", "mfaToken": "5YmZXKEQLkM6o3eG"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'SP4Htmr90TqGf0Oy' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "qJ9ibJMmRgoxNwp1", "mfaToken": "lGkYoq8HP1TM0tef"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "VQPWX1NPO5Wn7rNG", "mfaToken": "8rGp7Fadvo5EzpX0"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'IttsRezyY9GB5sf9' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '4ALBmvdncQkcZb8c' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'WdVH9bww15zZsaYr' 'JAe5Kd5QB96ndlO6' 'iPGC9RhzMC7V8BEp' 'hnRXnSpCzyb8Fkox' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'QbrPngi87K58pQsw' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'qKLutINusOsa92F6' 'iwkJIYOLarmpWyvi' 'b9CDW21ANrlpuXD9' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'u1CvzWPcZwkj1l6b' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'epicgames' 'H94SUinY5diUlqgv' --login_with_auth "Bearer foo"
iam-token-grant-v4 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 '7dPPyahppgxJhk4E' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "dTZ000rS92594HLv", "platformUserIds": ["WFsXHtMP0k9L5dRE", "QbCqfh0gpABFBER6", "WNcDOsRzBkf9A6Hj"]}' 'CnFRdSihcvszzQLZ' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "eJOlxa395rghZwGh", "policyId": "dZJkkGhYvXYMIyaE", "policyVersionId": "MEqOpwetb82b96rs"}, {"isAccepted": false, "localizedPolicyVersionId": "3hRfDgl29GWKpItM", "policyId": "t4GszRufkDFLYyNB", "policyVersionId": "PlMrkse9SGcMuV5p"}, {"isAccepted": false, "localizedPolicyVersionId": "kAHRJHZyfrXZmiJX", "policyId": "4CjKCeIRIr997KKp", "policyVersionId": "JXTLbYWpqeXjaf1f"}], "authType": "EMAILPASSWD", "country": "fjNMZjKJ05puX319", "dateOfBirth": "7WrMnJtovSMFw8X4", "displayName": "zxbdfXgunt1oMNZ6", "emailAddress": "8eovHSH3xV3URIRV", "password": "DYBd6hMB0l7sg7If", "passwordMD5Sum": "MH5Tu1ky1ZYvyeHm", "uniqueDisplayName": "foFkUDP864shbnQ3", "username": "bVvuvpsDJXPCWkX4", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FpRE5pS85yTIRWvL", "policyId": "Ry58UKWPv3F7S0wC", "policyVersionId": "VlYQi9cfMCeNnu6O"}, {"isAccepted": true, "localizedPolicyVersionId": "G1PPLRDEXLXZWXvq", "policyId": "NCHvNpeMjMzguq6H", "policyVersionId": "FIqaqwH9J6JLb5f3"}, {"isAccepted": true, "localizedPolicyVersionId": "Q0RjSf1srB7hGwGb", "policyId": "UmQmJHNffZENs9X0", "policyVersionId": "hFMdzryvhc1YjHmm"}], "authType": "EMAILPASSWD", "code": "ysae8HpWH4xiz3fW", "country": "thJSu2pUIIuPLFAt", "dateOfBirth": "cWhjAP57QbWvSSp7", "displayName": "1zEPPfmAQiqRRC2c", "emailAddress": "aquMRtQOILcaDqUI", "password": "TBHQR5ISNoFR3GUx", "passwordMD5Sum": "dMuvmL0UBfwzaaeP", "reachMinimumAge": false, "uniqueDisplayName": "PDTRqjlvwnnCA5tf", "username": "K5ushaKTPVjyOUpR"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Bh60NUA2aKQwnXrm", "policyId": "i6ya8u4sQPvaf1Ac", "policyVersionId": "weR7tJW3MLMob1hU"}, {"isAccepted": false, "localizedPolicyVersionId": "1FIMyF7CcNu2DYn6", "policyId": "E9Gk51kOTJZluTek", "policyVersionId": "DMCGUJvERxNg8djS"}, {"isAccepted": false, "localizedPolicyVersionId": "PVZaDcXsV1TnsZio", "policyId": "DiBgprzahPB0FKMa", "policyVersionId": "0YeyNBQWUHDBnBee"}], "authType": "EMAILPASSWD", "code": "WUV0WpmsQnp1n4YG", "country": "umTKOlDOy5vhSkxE", "dateOfBirth": "RZ2AQ1jvXYBar5RM", "displayName": "mmGdWl0wpj5tVfKU", "emailAddress": "3D8WVPh0Z7YiGE2c", "password": "yzTMBY7Xd0OoENg2", "passwordMD5Sum": "Lw7uepmahXojVZYz", "reachMinimumAge": true, "uniqueDisplayName": "ZEJH3ebM71Tg922x", "username": "iBgHSka0Pz7I1WkI"}' 'a0oZ1nXpW1l70pcZ' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "gIn4lPghHyMEHBzA", "country": "rbyW10NkJFQxuMHn", "dateOfBirth": "fOlX6HYVEiaereFC", "displayName": "PJU2wEzUYUTmZ8JS", "languageTag": "MeNmRocp400RZe8B", "uniqueDisplayName": "zx9aGEI22BTCZs97", "userName": "TJI8GPrM24F3celF"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "gM62HQtgzQhO3nR8", "emailAddress": "j8DlP6OGbn8vmfMY"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "GLt1AjKhh3JMX7xS", "country": "rz1EH6X2SM3xzsNr", "dateOfBirth": "JzWBcdFlo7oAsOlf", "displayName": "LB1J19b5rTfiL2P3", "emailAddress": "r1a8KIJH33aKkPuW", "password": "D59MgTy1HA58Jt5N", "reachMinimumAge": false, "uniqueDisplayName": "s4e0uR47OzUGHeBK", "username": "tpvyRNgjZkdDppvE", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "iUiDGXgh8BKcLqtR", "displayName": "Z93LuR8OEyICvwgw", "emailAddress": "BFehwtdJLdn3R2wo", "password": "8beVQvgeP9qOHaLw", "uniqueDisplayName": "YnXxrz7sLmP70LxN", "username": "0f3JA27Qz5SjzQfO"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "LYu9O46OOzz9p57q", "mfaToken": "SpHerzO87cg7TqtM"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'iQgi7Aj28qCRbwwZ' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "c4ZS1NMkrnHs1Iyh", "mfaToken": "wqk140MolIrnlkRV"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "bcX435TDYpkk2Gza", "mfaToken": "6DrSycophHw3EoEE"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'ClTO9SDKnMlnKW9j' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'iNMu9QVrMeD4bD8g' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'ISE34yIAZQeigiA3' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "wBrmBYIlZeheP72A", "emailAddress": "B8EO3YrlyrWowUpU", "languageTag": "DVLlTtuJJsHZVsG6", "namespace": "izJZruOJvSRFLDSd", "namespaceDisplayName": "j8elbtHvDU91DmHz"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"code": "wiqVPCJ5j18Ou3aY", "country": "8nceFU5GKmcEKp8A", "dateOfBirth": "QwqgJs6O0Qj0ccMk", "displayName": "dz6zPz3BVHAqp4O9", "emailAddress": "XSjap24esyjh6Wc3", "password": "migf2n6iQyr5cb5Y", "reachMinimumAge": false, "uniqueDisplayName": "6fwBiaVPmmn0T5uz", "username": "lmi2NY26xrkPPdg3", "validateOnly": false}' --login_with_auth "Bearer foo"
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
echo "1..425"

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
    '{"modules": [{"docLink": "JX5ln8PZbYVD8Ria", "groups": [{"group": "TsdD4d3kSbTkHPMU", "groupId": "vOAUXkw36cr2WJQq", "permissions": [{"allowedActions": [92, 92, 97], "resource": "Tq4YIyZAFQ6lZfa2"}, {"allowedActions": [19, 98, 6], "resource": "wSaoj1ugjr8mPkr3"}, {"allowedActions": [40, 97, 78], "resource": "506ERSVy5M3rrkxu"}]}, {"group": "0U9h9gCNVZxHGxhZ", "groupId": "qNXJ6JXSh0Z3SWIS", "permissions": [{"allowedActions": [38, 82, 69], "resource": "dYrJKmx1BT6iLFQe"}, {"allowedActions": [20, 7, 81], "resource": "PuWeMEeL0EJG67g4"}, {"allowedActions": [100, 47, 8], "resource": "hPKU5abnqw8fFa30"}]}, {"group": "pVbhr1BHh1arZAyu", "groupId": "LcZoEkPpqKhP2jWn", "permissions": [{"allowedActions": [90, 80, 93], "resource": "DPRI2cCk8zHR8VyC"}, {"allowedActions": [59, 33, 42], "resource": "EQwE0cXokXbwKDtV"}, {"allowedActions": [26, 36, 69], "resource": "YQu7hZvHfiT9s9pK"}]}], "module": "8HuUY1QQHQ0NCEdd", "moduleId": "Jtx6GV01vD7lNLxl"}, {"docLink": "pvqaB9P9GaukfCEI", "groups": [{"group": "eSBLhTfzigzHcRuJ", "groupId": "gYaj4I8Dzyh1N0JE", "permissions": [{"allowedActions": [74, 62, 81], "resource": "7GuwKn63KIDTkUCq"}, {"allowedActions": [2, 2, 69], "resource": "HGJGOTvKKRTHDnta"}, {"allowedActions": [65, 28, 17], "resource": "AuujPeP9N0vdVB5a"}]}, {"group": "2XkS3XQfMuzZh4Ah", "groupId": "ZRe2hgU56xtyJtnb", "permissions": [{"allowedActions": [94, 84, 61], "resource": "on2OW4Zw5QwVKWNy"}, {"allowedActions": [39, 25, 28], "resource": "0rvakR8rcwojLRjh"}, {"allowedActions": [5, 20, 1], "resource": "YnVnFK6gB6ZxC6yY"}]}, {"group": "UVUJYnQ3jOGmROIq", "groupId": "xqQ0gcNeTflyvUh3", "permissions": [{"allowedActions": [45, 67, 74], "resource": "ZtfwmOCKpFSMF0tf"}, {"allowedActions": [66, 18, 72], "resource": "CDwg186hGWKfO9Mn"}, {"allowedActions": [30, 31, 94], "resource": "AJMCxMp2J0hDg2kM"}]}], "module": "gkvhoQe9gD9tGN0n", "moduleId": "E7M36mI9u3EeZtLQ"}, {"docLink": "ij2JXsqdXfhZTTaC", "groups": [{"group": "eqGv7meuQhJuq1C6", "groupId": "JHkWMSUbqByWN2BC", "permissions": [{"allowedActions": [28, 88, 45], "resource": "z9w2nur0B9jKaunA"}, {"allowedActions": [5, 28, 51], "resource": "zVZdj8tsyzC4QaLX"}, {"allowedActions": [31, 71, 62], "resource": "o4TDraEEaDNJbVd2"}]}, {"group": "0FVHevCjthJUb7jK", "groupId": "uMrFaoLulzp3sZxI", "permissions": [{"allowedActions": [25, 33, 98], "resource": "0mYWKQYlqMmu2pvF"}, {"allowedActions": [20, 36, 38], "resource": "P03bQaq1cT88H6RC"}, {"allowedActions": [99, 37, 3], "resource": "gJmGzDlqxtLsR2AG"}]}, {"group": "OiPhNt2IdH8aYYUT", "groupId": "6mma833TDzk66ix8", "permissions": [{"allowedActions": [99, 37, 24], "resource": "AUrXr7MXxCvyy7ca"}, {"allowedActions": [48, 78, 53], "resource": "hKHmSjqPuQZX5Kjd"}, {"allowedActions": [81, 36, 49], "resource": "EwfWo2MwulLg4bsO"}]}], "module": "4YHEYLjTSNDf3zaz", "moduleId": "m6p5Y1tkG9WwU4Ty"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "6Ch5QYyFjuBquE7x", "moduleId": "ssm4hxczskbSUbOZ"}' \
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
    '[{"field": "9WNl3apJmNAbl1g5", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["bP4QVey9pEz1TV5c", "UtPBsw01i5Mf7Wvb", "NSeeDNfUESLlwHv3"], "preferRegex": true, "regex": "gteOLyKp8a1VqxXn"}, "blockedWord": ["RhDd9TGkO6aIYqft", "w1SrM2nhSEanfUYr", "MU6A43UKGpvC1cr5"], "description": [{"language": "T1PSXhduTWchzXDv", "message": ["3TAtBjP4HSuiYCbG", "0UyYUJmNL8p6Abdt", "U0CDrlQpKB8qoel2"]}, {"language": "QK3aSOYdmMDikc3F", "message": ["jm9HoQDemtiQvURY", "ZCeF30RT9rBgM8o7", "lxXq7TkdM7FVDCBc"]}, {"language": "vVegrZddP8lLQo6t", "message": ["Hj4z4cAM4LMJfWNZ", "IxAgBpeubprKX68j", "TyRd3LrR1x6U1v6z"]}], "isCustomRegex": true, "letterCase": "Ljm9zmzUW0vPj90j", "maxLength": 25, "maxRepeatingAlphaNum": 91, "maxRepeatingSpecialCharacter": 76, "minCharType": 10, "minLength": 94, "profanityFilter": "Mi2CPVGxjcdpdCqV", "regex": "eePMSqb8y8qJTUQY", "specialCharacterLocation": "40Zrpn0vAD9YsPeD", "specialCharacters": ["WrAVQZSvgWuCuLsU", "GrVQAbhS54ZuQHKe", "rsDmJLUHAKtfXCKO"]}}, {"field": "na8DdjtZhh6ofsUo", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["0e0J6vyqPw7YlmV3", "kES0Hi88UYgSV40O", "vY7apPCrN5bEhmuH"], "preferRegex": false, "regex": "uXXpt0YSPX04uEId"}, "blockedWord": ["AwgDobopbdJeVCiK", "s2vLyH9kcSBdk7Mw", "Qzn28Le5neohqhCz"], "description": [{"language": "roAzWQDve0Z2G2N0", "message": ["9VIbbsz24fQKDZX6", "plErw0Gb0ceCbphW", "4YMhJ0S50bez9ZLH"]}, {"language": "W882riiPfRQ3rJ0f", "message": ["5lwXvRNDBnmL1KQn", "77hiP1lzkzjYDw6m", "LBordrJkD6vy60uR"]}, {"language": "MT1Xw9K9Yb68a8yg", "message": ["Yx2TqkhlqMnE9Wj9", "0EQzOidrWnLrXqIm", "gDf3GaJsdCZND0wg"]}], "isCustomRegex": false, "letterCase": "OilX1e1825iasunE", "maxLength": 91, "maxRepeatingAlphaNum": 28, "maxRepeatingSpecialCharacter": 19, "minCharType": 21, "minLength": 4, "profanityFilter": "bAFW8RgBUwBL28Bq", "regex": "M8UzvKqeoTiNKGRU", "specialCharacterLocation": "MrimGAz6OhmHOpCd", "specialCharacters": ["r3WzDm3hJdd6uaO9", "TiTPnIh2iaIBpYC4", "txul6VKYlNYYlHPw"]}}, {"field": "KDpJmkeoAkp3Z4pg", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["lb4gd4QgQut2hiPu", "DdOPHcN9drwqytie", "XpIZfr5XDq9dGLHj"], "preferRegex": true, "regex": "LPP0w52JRAZxMWdo"}, "blockedWord": ["leYNHXeOpaRDwYLg", "e851PbK2MFKvw5TW", "jAh4gy41LLzQ2IjY"], "description": [{"language": "5PeNr4JmYxH2qs28", "message": ["hePJjMp0TKKUBfPN", "I9f2oLWDPSZexfKV", "xqdxmh5QWxuQuI7g"]}, {"language": "dDTDb3WdnOpzTrRz", "message": ["CCafADJfWBspT3ML", "wJZquMQSPp5XD4S1", "ilfgff7Et4uY8nlB"]}, {"language": "wGNHgfgwZwVMvshG", "message": ["msg6ZJYnkHDnHTlR", "ugM7a2UZgeesipbP", "027okM5E8tAajVSv"]}], "isCustomRegex": true, "letterCase": "j306RDuaSixXEdlo", "maxLength": 35, "maxRepeatingAlphaNum": 27, "maxRepeatingSpecialCharacter": 57, "minCharType": 43, "minLength": 21, "profanityFilter": "XY5dDwneac75C6S2", "regex": "eHsH4Y84hL75QboM", "specialCharacterLocation": "HCtzEF9FSeg6WYgt", "specialCharacters": ["fuqJHrs4e3RnWR30", "MdBZezfwc3H0qSbM", "q4GLj8aGsH0qE5p6"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '01ak59yFSfdZIv8o' \
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
    '{"ageRestriction": 83, "enable": true}' \
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
    '{"ageRestriction": 91}' \
    'UYUQMooiKT57rmbj' \
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
    '{"ban": "EnimeR7EFBz43E9F", "comment": "kOPVu2fDtOjW1iSY", "endDate": "QbcebBd5wb5H3qpp", "reason": "oCiHMD4iBK2O7qYt", "skipNotif": true, "userIds": ["5hnpjc5CNLnnEvo2", "5aEtdjls5oadseJg", "7y4Q9CU3fjSRaXD4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "HDmdvhMXxiKR29LK", "userId": "IhNU43K8bihdw3pr"}, {"banId": "p0UHlWUxkBefhxRt", "userId": "rqbv56oqwnCLVc2q"}, {"banId": "HZuuedbBOd19DqZJ", "userId": "RYV1oqNLmPAUIMwa"}]}' \
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
    '{"clientIds": ["2wYq6DsUq38bYvaW", "LoKzHnngdfFnOfY9", "stXH6LYXXMndxBPK"], "clientUpdateRequest": {"audiences": ["mHVB7cNzHhvxc4xA", "PZ86WNnQOhusPn44", "66u8agb5HPsBU0Eo"], "baseUri": "6QJ9vBRJ4UP09fab", "clientName": "C01Thm9f4AWpyiKV", "clientPermissions": [{"action": 93, "resource": "fdPyKf3SwHekWIz4", "schedAction": 36, "schedCron": "OHzpb623EciYoYOP", "schedRange": ["Vg6DLEZ6DxpwBm2N", "8PdQ5mQaGXEbnmWR", "0H3EkrHqaLNdfKsz"]}, {"action": 12, "resource": "ZzOg113h6fIaHSx5", "schedAction": 2, "schedCron": "dIWU6ERylESgf5dX", "schedRange": ["MrPoYSohfrLyXMSr", "C62xYtDwflNGfufW", "5cWeg6eSCypsceIT"]}, {"action": 94, "resource": "Zi6WaC8wk7HMbJhN", "schedAction": 46, "schedCron": "UCzmDAaW5xz1c7Zu", "schedRange": ["ZXUCBYnkY0LEBSYB", "dUSiTOrhB8hVs29W", "OKmZRTtgycLzXz6l"]}], "clientPlatform": "UMKi5mweMEZo2ZnL", "deletable": true, "description": "g2JfH4f73jAevOnE", "modulePermissions": [{"moduleId": "S6YJLlb2AfUEEBbq", "selectedGroups": [{"groupId": "MMKvkOsR1fHUyirM", "selectedActions": [98, 22, 79]}, {"groupId": "IQOecfLsYKTmUnKl", "selectedActions": [36, 83, 52]}, {"groupId": "sJmEwjGYN8VNPXNs", "selectedActions": [26, 98, 46]}]}, {"moduleId": "SGQyTzhs9Asy4d62", "selectedGroups": [{"groupId": "9N4YnolVWA2dWxBs", "selectedActions": [91, 24, 52]}, {"groupId": "jkPCUuE1pgdHvlQK", "selectedActions": [17, 47, 90]}, {"groupId": "Vh8HTrKqVwnpPn8N", "selectedActions": [81, 47, 14]}]}, {"moduleId": "MRgU7cPqNZrLCRRU", "selectedGroups": [{"groupId": "ysya4J3rvTzMTMSw", "selectedActions": [36, 87, 81]}, {"groupId": "PQPEp5UtwUWGt6to", "selectedActions": [29, 64, 69]}, {"groupId": "TLq0W1JqwKs1mO80", "selectedActions": [77, 87, 70]}]}], "namespace": "pwqnybvUIfuulmee", "oauthAccessTokenExpiration": 13, "oauthAccessTokenExpirationTimeUnit": "qz5NSp0B7LODN3Bo", "oauthRefreshTokenExpiration": 18, "oauthRefreshTokenExpirationTimeUnit": "IVE4fzwG3BHaRcZ8", "redirectUri": "NK4gkLmvEOaRcqTg", "scopes": ["F0xtQAXoDoFkmA3f", "gzcwdgJMjIyGfiNB", "Qy41M1gzGCbaxw33"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["yqNVv0KVpXJTMx3Y", "8Um1iqehObg3OZ9j", "0HDtbqMFlgHKQIRt"], "baseUri": "LfPngD83roOeqE7f", "clientId": "cCAeExeQX43LpmdM", "clientName": "iZeyIrA4QUKSJgEC", "clientPermissions": [{"action": 53, "resource": "v141NPqjRUMKSQjF", "schedAction": 6, "schedCron": "Q2sEHvSxjWoM1rNJ", "schedRange": ["LM0OOVG5cG6XxENb", "WqlX7idzjpKDfwl6", "XlCF6YxFMD8tJQwZ"]}, {"action": 43, "resource": "fQtLhzylaquioT3Q", "schedAction": 57, "schedCron": "i8ZDPXRL8cbTAntB", "schedRange": ["1STaab1UeibXg7RC", "e5BtKcwj6PqqOgCi", "mr3ZQNBBkrXu9czs"]}, {"action": 36, "resource": "Cmgw1wRUnIVYxY6O", "schedAction": 15, "schedCron": "KK0M2B2hbqJin37P", "schedRange": ["69t1KqeGz7qbPnXE", "uOzzkoBmMR9C4qPq", "JrAdh1HIk7vCEq7F"]}], "clientPlatform": "Q2S5VeW9ddxzLPV8", "deletable": true, "description": "wDdSkNfHJtA3QiX9", "modulePermissions": [{"moduleId": "ZvtydbaVb0scd97A", "selectedGroups": [{"groupId": "0GP6djn2Ps3IVT5h", "selectedActions": [96, 26, 34]}, {"groupId": "cnDq0ddZG0EpfGAq", "selectedActions": [70, 1, 75]}, {"groupId": "rTvrG1DXZAWlvz3c", "selectedActions": [12, 70, 54]}]}, {"moduleId": "pscUpVAciu2XPPUx", "selectedGroups": [{"groupId": "zXHUvxhvTZcvRKoa", "selectedActions": [79, 6, 95]}, {"groupId": "ozSAg8FTLrByWOJh", "selectedActions": [2, 28, 30]}, {"groupId": "RkPs2SO9XrgXNIaU", "selectedActions": [90, 32, 5]}]}, {"moduleId": "q0InxMLpP7n7M3JX", "selectedGroups": [{"groupId": "jEvsj5WcQ99M1yuX", "selectedActions": [9, 97, 33]}, {"groupId": "LcmZKKKYARape2ts", "selectedActions": [82, 52, 4]}, {"groupId": "QjDlUMCGnxZwak7K", "selectedActions": [69, 29, 28]}]}], "namespace": "kltgq2vXtUnY6UhD", "oauthAccessTokenExpiration": 73, "oauthAccessTokenExpirationTimeUnit": "QCuXeTRyJQrNLTcq", "oauthClientType": "LVTN5Qf4tjPGpu27", "oauthRefreshTokenExpiration": 49, "oauthRefreshTokenExpirationTimeUnit": "X8wTi1v2abpCWytP", "parentNamespace": "Ei9Ze0hL9rPkV5Gk", "redirectUri": "Srcl2O47XVzU7qlN", "scopes": ["Vk7qnmBS3XKDhp1O", "kMcErmeH0lX1hj0L", "aXgQ94flh775AQfz"], "secret": "NjQ7IuMSY2epRDJj", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '5EVB9ZFzLNsjdCFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'KY0KsxR0rCFkyiQZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["fMnTbKdwNhiIP7dp", "J8B8VwFQnVco2oCn", "1KvJmbjapW9UlEqt"], "baseUri": "zDd7SgxdxB5kvtM8", "clientName": "ah9bPsksceGUEX8E", "clientPermissions": [{"action": 89, "resource": "ZbDQAEJLbVWH2XLI", "schedAction": 13, "schedCron": "6LpHCvCYTgX9JQwE", "schedRange": ["rzjtuP9pUUv7qefN", "MFsZAIqak1zi0JSa", "5cRn31D8ubfdXi7B"]}, {"action": 51, "resource": "16aH6gOBUIMeL0GL", "schedAction": 67, "schedCron": "aefSDME8X2MxILI4", "schedRange": ["2BJMPkZmay4Csye3", "iJLtjsu6ZJRCoDq3", "geuHFFaZzPIjETqc"]}, {"action": 75, "resource": "RfGe3z2rtjWpJAlK", "schedAction": 69, "schedCron": "lw31pdDrXQ47WSGy", "schedRange": ["DCKF0LLhO3lGZ7eG", "OPj2XoFug8BUQUmP", "HnPumcazKAna0ji7"]}], "clientPlatform": "57aNDFeKnQP2j2Ws", "deletable": false, "description": "duN4gx0UC6eWKCFG", "modulePermissions": [{"moduleId": "S97Si6XyLVPrkUxy", "selectedGroups": [{"groupId": "Z1OH5Nn4nMT8QOyT", "selectedActions": [41, 52, 96]}, {"groupId": "sHdFftHHR6xbcVVo", "selectedActions": [28, 100, 47]}, {"groupId": "SNrCjSNEAdojkCMm", "selectedActions": [35, 50, 35]}]}, {"moduleId": "TGO07foRZ6FujpIW", "selectedGroups": [{"groupId": "o0qJtqp4Q6XgICLg", "selectedActions": [78, 32, 68]}, {"groupId": "FgA7i9tqvfHmFvUZ", "selectedActions": [18, 31, 96]}, {"groupId": "p6QGW56CNiszHE69", "selectedActions": [61, 43, 49]}]}, {"moduleId": "MMoaf6KlgRtwaM2I", "selectedGroups": [{"groupId": "oyY1wpIdjcAtTj1I", "selectedActions": [80, 59, 42]}, {"groupId": "h7sieJjZPAkiWuml", "selectedActions": [24, 0, 96]}, {"groupId": "8Ri85PA9wNpmrK5Y", "selectedActions": [40, 16, 8]}]}], "namespace": "bfJOhNaIT0pv7Xeq", "oauthAccessTokenExpiration": 83, "oauthAccessTokenExpirationTimeUnit": "htrBcBofWTGYx2ih", "oauthRefreshTokenExpiration": 12, "oauthRefreshTokenExpirationTimeUnit": "xvxwaLM8HkVOW8Pn", "redirectUri": "LkgqkqYZWPZTgKag", "scopes": ["TzdcYcko7U3gH239", "LhRx2Laa2RdtVb6V", "gA5yFIH3s9UyeaFi"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    'pM1JBcTzf4dz1Boj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 85, "resource": "9zblWEiHaUjyTHb0"}, {"action": 38, "resource": "4nJWUvLp1wxGF747"}, {"action": 38, "resource": "68MXUq3uIffkIpPm"}]}' \
    'rWVxNZUvkiU2jXSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 38, "resource": "TRmJOqIl7U12hO5v"}, {"action": 31, "resource": "6EmWxC75M88TKhFY"}, {"action": 20, "resource": "5NmuZDUV3yHurgOf"}]}' \
    'ba1XeoHYTNoRol84' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '97' \
    'CiQwuyrI87uSyXP6' \
    'C0jXS8au2wcWYyj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'JvHqXp4JR7xI59Z9' \
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
    '{"blacklist": ["tfGVsglnOxOXBfgB", "Luglkd9LIoshGnFS", "uHmrqej8PRppYY1v"]}' \
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
    '{"active": false, "roleIds": ["DU8N3DjVUt0n0jfy", "DbtIXICLkK8ZvbnT", "g3znlg8nmzQx1RsY"]}' \
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
    'hcRlv16Wwe8YK3lZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "FslECI9QzuQcsjFe", "AWSCognitoRegion": "hD6uTDYnqyNgN7Go", "AWSCognitoUserPool": "eMsezFZsTBHkgcJ0", "AllowedClients": ["DcEt23pci6xEljer", "6aGJx5OFp3jKEx4a", "SGdwTPX4ig3NVFFk"], "AppId": "P7O3F4vsohRWDyGY", "AuthorizationEndpoint": "IVFDbTvRYfpJ4wM9", "ClientId": "WZfOOxAzmsbhi5QJ", "EmptyStrFieldList": ["uc2SNBaOlXfgsgBd", "7MYLLoPZrkjRm5Ki", "0orhXrISEaPZHLQk"], "EnableServerLicenseValidation": false, "Environment": "HvndQsCKAO2JRz3C", "FederationMetadataURL": "GwtujkzxidLcAQWG", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "6DVso5TJCSugdo4X", "JWKSEndpoint": "Tm8t1YTWqItjNWXm", "KeyID": "9sraeMA78YSRS2fP", "LogoURL": "y5fpbbbMIu9lu18j", "NetflixCertificates": {"encryptedPrivateKey": "IMBUM77XmemN8LO0", "encryptedPrivateKeyName": "3mnFSq9jJTVFoFjx", "publicCertificate": "Zjh5qUR1Pq4a4uaM", "publicCertificateName": "fd0SQAfYIyzHL8jx", "rootCertificate": "akuVu5r5B08VZxI4", "rootCertificateName": "TU3apnZXoJ4gI4EQ"}, "OrganizationId": "KO8xC4D0FsUo3IB2", "PlatformName": "kX5REQZsHyXzoIXN", "RedirectUri": "f0KbL9HyJttdgfLG", "RegisteredDomains": [{"affectedClientIDs": ["O3ummpllnV6B62P1", "Kazg73c6UpmA4ehx", "NIIlcrZzgameT2mL"], "domain": "kkAMjHyI0e2Axj0n", "namespaces": ["ZHjmoKHJngwMe1An", "QVj6QQjZtkNJCnDS", "rsSey2BqOxgwCymC"], "roleId": "DYsuff3b7G5FDX4m"}, {"affectedClientIDs": ["u0qPHb9Ll2EFEb8G", "nsthmQ2Y6ZGOiqrg", "3lpqN5bOfnqJ5bzD"], "domain": "RzbhMxfEDE4TrtIH", "namespaces": ["yyMq79EdB9MxaF8Q", "HGM2IuQYBO8m0HgT", "th479W8rXqwGVIRW"], "roleId": "gTNHCka3Wb5kH1Br"}, {"affectedClientIDs": ["LWUetP7nmESQDV3B", "D1nnEzoUlUWqP4El", "zL44KEm3uHBMCP5c"], "domain": "kjphURs4ksgsKJ2R", "namespaces": ["6Jacwwu8W1zvrKMR", "PvwA9k6yJz03NETd", "ywPqYerrpOm4M2pM"], "roleId": "4fIfcHBWZM50aHbP"}], "Secret": "XRns3qwYL6LwGlZG", "TeamID": "F7XQPLAcIL7FvAMW", "TokenAuthenticationType": "qhyyNZH1CducB5y5", "TokenClaimsMapping": {"iMdeBG7REG4meKEa": "bfVXBJPIZqZC5d6J", "uFdcfiNf0DOHKwxD": "F5GJhCjVHiCn2hTe", "fT8gPFJ4WndMpQhc": "LK0WTZbtmQkwC8az"}, "TokenEndpoint": "x3IRWme3C6p2r4D3", "UserInfoEndpoint": "NQdjrjkX3AMgK3Jg", "UserInfoHTTPMethod": "ZufzssA284mG7uAo", "scopes": ["jLYBsx8oqMzbE0lj", "QaBtb47V691j0FZp", "2vjOXptxzx6kkaZY"]}' \
    'pl52sQR9Znp5d1eS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'wrG2GBBEWrDbQ1Zz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "hDuLHq9LTBstguOd", "AWSCognitoRegion": "N0O7l3GbKPHdDTQD", "AWSCognitoUserPool": "EEE2mTsn1NwJ71sz", "AllowedClients": ["sNmnqZSWdEyOVYrT", "dDq7IqbTVv8BLsqQ", "W8HSrEm5Y7jI232S"], "AppId": "jktijiNzTUe8Kdiz", "AuthorizationEndpoint": "XmrmK0sCUsqxKocH", "ClientId": "omtjoU1kUqRedwIu", "EmptyStrFieldList": ["1TSRr6r8mzfMedpc", "KhvHPlvYanGqEkn9", "OEVwLWGT4MXhmzvR"], "EnableServerLicenseValidation": false, "Environment": "rpWAjwatSvtPbAFn", "FederationMetadataURL": "8oWQcmFkkRX6Eqad", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "AMa6Pco7Mfvikslp", "JWKSEndpoint": "yL9BYLVVznF6hMYf", "KeyID": "ksp8VQhYSFeBOp0i", "LogoURL": "lGQFwHUtZugblT3a", "NetflixCertificates": {"encryptedPrivateKey": "IDKn9qJXncm5igpA", "encryptedPrivateKeyName": "ewbmnWk0E7YaPblc", "publicCertificate": "WEyNgvs5LEZrQXzS", "publicCertificateName": "QRWRs9EGnRPgYlJE", "rootCertificate": "lgJ8kx1WEeDbql13", "rootCertificateName": "FtQMu41rnOzbsFBq"}, "OrganizationId": "g6dziWvdNcwfUBMd", "PlatformName": "NuTaiLxFMXRpDP9x", "RedirectUri": "utntU8xHw4yYJOCV", "RegisteredDomains": [{"affectedClientIDs": ["iHwunQwpC2eCFUAH", "ZaYSvsWiNJtqXltZ", "F6aSRmHU5iR3hXIb"], "domain": "zWPKOkzftOgDQAWh", "namespaces": ["ulbrDf7q4cAnpmLi", "Eu4CNtX2lnqi7cHT", "SdGoLZbC3UJruU4u"], "roleId": "IXBZsEYogFWiH9z4"}, {"affectedClientIDs": ["E8zmaZ5cg0REtUWY", "4fVIdqwCWF5wmbOu", "bTxAAeDCowR3MeCN"], "domain": "L1oNrF3SmgudQusJ", "namespaces": ["LsPlW7ZyORFkN9Eb", "KbTbrDzNgVEcw0lx", "Ram16O6v4VjJf40L"], "roleId": "jUdORELVXUFQyVlt"}, {"affectedClientIDs": ["9jmxmxpfp41k1uDg", "59PhdUXShabwyYCx", "THrDel8oThvr8CUE"], "domain": "zw4zL1QeR3EYXBFp", "namespaces": ["UX9y4tY7o5FFi1n1", "0vDgyoHXIlrMl2RA", "ukCL26ihdMy9YCLN"], "roleId": "JEkvq6SUSt8xd8Eg"}], "Secret": "E15XNuw6Y7sToQNk", "TeamID": "uZzJ1XBxw01iBBQu", "TokenAuthenticationType": "kgQ94ZvPCWcMX0ov", "TokenClaimsMapping": {"3U2sKjIeyFS97dYD": "7LkcTKYpCfl6HPy5", "cJfAV5iOfzwt3bpx": "RNt6lKoMjCPtEKeB", "WTm78Fn8TvZVTe4L": "2lXrVPX6r5ZTcnVV"}, "TokenEndpoint": "OKMApTcWsFRUlWBp", "UserInfoEndpoint": "4gBs9UufgsVbG6TU", "UserInfoHTTPMethod": "e3jbuQ7HMPO4ozK7", "scopes": ["05ykRqSPYZgPm4JL", "sXVtBOEetHsxAJ8N", "y1LRkPU9hrl5nkpE"]}' \
    'dBe8bYWdok4UnUEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["yP0cPZf5OvolfI0m", "qZctohLheRaQkfML", "FW9B7jHZro4hhwnA"], "assignedNamespaces": ["NAGp8zGqNGrcQyoA", "1TWPcy83iXfYXNdM", "kdg9TMwxNcQ6CkVi"], "domain": "8fqVPRqNbF5yLnYS", "roleId": "a8xFLvcYexMMMiDF"}' \
    'h5RbW021cHN3QbzV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "uJZH3k54cExxWKtd"}' \
    'GTW4FILotv5ycTa0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'i6ifYP1zfgjsy3VR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "jX4qA4g9OGoWw1qn", "apiKey": "CAvdnAcokJ0rzqX2", "appId": "KJcYHgiFDxclBXap", "federationMetadataUrl": "6j73doCWxhubMXbx", "isActive": false, "redirectUri": "vT6wAffv4uzKAwiI", "secret": "4wTxNIefCmtrxWu2", "ssoUrl": "93551nQBNKcqCkUX"}' \
    'Rj8gQHEe4CO370Os' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'bzRKKPd6mjzLxllU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "rFYn7cSuO7NxKHUH", "apiKey": "g0c4X7fHdITmN9op", "appId": "aF0kh3pCRB3infEV", "federationMetadataUrl": "xArF7TB6A6a71zAJ", "isActive": true, "redirectUri": "JMOEv5W0v25yAObZ", "secret": "IbrA8XAKKWMDebeh", "ssoUrl": "Sjpt0wrfWPXaI1Jb"}' \
    '75o2MFOa6xgPt69Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["ROGDeJCyHvUsnLvX", "CSgQHvs25eiQO3oW", "dgXdm1IxL1OtleUB"]}' \
    'qBO0Ze049k9W6ZLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'JzRpUsITfVruDuku' \
    'n42zPZvOd4yZyMKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-admin-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-admin-update-profile-update-strategy-v3' \
    '{"config": {"minimumAllowedInterval": 62}, "type": "auhrw9Yn2z5cnbm7"}' \
    'username' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-get-role-override-config-v3' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-update-role-override-config-v3' \
    '{"additions": [{"actions": [68, 54, 88], "resource": "a24yBTw3wfNGyWf3"}, {"actions": [98, 41, 19], "resource": "NgjDMcJxfMfYFlt3"}, {"actions": [72, 43, 60], "resource": "ltCxyztUnj17t3gH"}], "exclusions": [{"actions": [57, 25, 45], "resource": "OwPCPKVPlOGfFBlu"}, {"actions": [95, 48, 85], "resource": "M3AWyDkA5LmART6k"}, {"actions": [41, 23, 90], "resource": "pM4SRtUE5P4kxmHt"}], "overrides": [{"actions": [64, 2, 18], "resource": "UjprhCxhzW6ZM7Lk"}, {"actions": [93, 97, 78], "resource": "rtVJZVhxCVdjPutJ"}, {"actions": [7, 17, 21], "resource": "RfzJwKuc7EpiQEzz"}], "replacements": [{"replacement": {"actions": [7, 81, 29], "resource": "A1SQmWGSQLAVPAJ7"}, "target": "zX5lB80k2smdkBS2"}, {"replacement": {"actions": [79, 40, 0], "resource": "ccNorRls7EC3nDnh"}, "target": "FvDlFd7iyZpvWVJF"}, {"replacement": {"actions": [74, 44, 4], "resource": "ZuvlzGCII156hIg0"}, "target": "g8HIxpzm9AcFhH4Z"}]}' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
$PYTHON -m $MODULE 'iam-admin-get-role-source-v3' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
$PYTHON -m $MODULE 'iam-admin-change-role-override-config-status-v3' \
    '{"active": true}' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'rEuHMWwQNmCQmGCF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '963CbsOawlRBQJH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["VH8q8svV5hMOSfpy", "JkJlmJmTkFvB7wkY", "6nuUEGJ3k0HGtpK4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["3uORGREOOwTuY8dh", "NCDWWpN3B6tedgFU", "zBm5vGA3itKaF9z3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["WWuv3j8T9g1f6P3D", "3rVcC2g6t42jE1Wa", "d232YV7A2zHFGbN8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["AQaCaw9UF7cdSDd9", "9DQZ7vnTx8HDXTJW", "iyw17ogzmbj4SLYD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["rZJvDLGvn6qtroZc", "p16HKXX1ft5nBA9x", "NIJVuMz04evSdE2F"], "isAdmin": true, "languageTag": "cKd7c94rEmIYuAT5", "namespace": "OAcUwYHGmG5rNDBF", "roles": ["1oU37vjfyX5YLaM0", "wmi0i1WABBbq8IzZ", "sMFLX9ZhFXcFtfBS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    '3ZIHofhwyM6Bw2sF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["GQ5DQoDwzrKPOZZn", "V3zR7YxSu6addocg", "10Hy9jx7gBHTOHHA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'rjld0LnREsrrB2pJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "7V8BSrucjO3zvSM5", "country": "KeVNHU9GcOivIfcC", "dateOfBirth": "Jt4U8VSgXoi9Fw25", "displayName": "b9qXzlIK2G6AUjBC", "languageTag": "df0Rp5e5IvFuN1oU", "skipLoginQueue": true, "uniqueDisplayName": "r18nCxiV9bQMHpPb", "userName": "vflI3LkRc1NgZaoY"}' \
    'AaCCeRgtstsU3Qec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'xo4bQZO3P2f8TTOV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "f6jrr1OL606QpqCg", "comment": "xt0NgDSj1T6EdeYF", "endDate": "mrLT0HbvS4kSSt3C", "reason": "yDgf6eFAiqSkHi0B", "skipNotif": false}' \
    '2ElF6z6eJKuOW61a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'kRFizqxCmudSXivA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": false}' \
    'n478mhb2I2yBJeCJ' \
    'ghTrk68FWFzuLBdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "rKjUbgZQfw6Zys3m", "emailAddress": "N8fIcC9Ckharfqao", "languageTag": "MsGyv1RuSNdycDss", "upgradeToken": "UeHiVDXzSJ8kbFAy"}' \
    'idbnXdMSwmkBkKC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "h6h45u0wuh9pY001", "ContactType": "1jSmHFTtfM2mGUUp", "LanguageTag": "q3ix7Am7W1fwJnV9", "validateOnly": true}' \
    'BrMSP31wAkVH75Uc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'mNXK5RqcIo9lpz9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'M52vHPlwVV3jlPKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 62, "enabled": true}' \
    'ahnlLJaLCvjRKKX1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'brmkJDfdngbQD3pO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "8U3W94Z8IW2MAL9g", "country": "YHEV3wnTZTvYYf4Z", "dateOfBirth": "FuV6L2AldoWWRN5w", "displayName": "NYlFiliYmBrqrOc0", "emailAddress": "NIligBrOkBljwREN", "password": "jt04ZpyTTZG1LxLd", "uniqueDisplayName": "ySvyVqY8nxBZbHcP", "validateOnly": false}' \
    'EFuEVP9bF07gnWDU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'LkJPQR0UJMr8oucc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'GH0B4LCe2h0iFCCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "gFWs5s0nT89A88GD", "mfaToken": "OUClGyzYgnYTdim6", "newPassword": "PkRoq5TO65KWh8zt", "oldPassword": "RJkXxUAj3jzZvEaY"}' \
    '103YUIMuSjDHz0zP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 100, "Resource": "l1jaOAMCzbsoIgmK", "SchedAction": 46, "SchedCron": "T1Gofv4SuaZ8yCB9", "SchedRange": ["TVZnuzgvAZJRm71E", "C3ENuvD8OPsp5Z3e", "z84KVB7HeWPnVeFd"]}, {"Action": 50, "Resource": "c7Zd7EUoezOLw8C1", "SchedAction": 6, "SchedCron": "wxobjxAbagqEmXn6", "SchedRange": ["U2VeV2emK3JecJA4", "skqCbPxRkIAFQh9y", "DdoLE2s7mrVrmTJw"]}, {"Action": 41, "Resource": "ljPWlCWTuGO8MnfO", "SchedAction": 88, "SchedCron": "Hpi1JZJjIRtCfqDH", "SchedRange": ["Slo54zSnRN0zGMwo", "rzym1z3ZdetOic9A", "QOFWpdItLBhvKJq9"]}]}' \
    'tWz9yui8a6jOflFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 22, "Resource": "7Nb1vrKthVvU5on0", "SchedAction": 45, "SchedCron": "5ApCkVN3QchuQ6pn", "SchedRange": ["txB648ss7rBnvQHA", "M8gSdIybKUByHBzf", "vgtRTPPzwJmKaLCx"]}, {"Action": 13, "Resource": "29cV8v7MXctihtxM", "SchedAction": 27, "SchedCron": "u5AjwR1Z4fU7ICca", "SchedRange": ["QtuuKUw3dUwWHhQW", "3I1y9tjRLVOXBMa0", "JiIe1AY0tUA7EKAS"]}, {"Action": 21, "Resource": "CUtizYM97ebZcYqw", "SchedAction": 10, "SchedCron": "p8ByTi2F6AyUX8w7", "SchedRange": ["7riPlPgJcLbeQf9M", "ICxX7xKyCfgwSPz1", "4asyOdgn77gN8K1F"]}]}' \
    'lNkgbFE8U4meK5gr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 24, "Resource": "4i9mLyX46Alt08rr"}, {"Action": 28, "Resource": "gQbNA2WQrHTkJT1V"}, {"Action": 22, "Resource": "GcxvXaG9LzHpMS53"}]' \
    'jllopwirRo3A8Wxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '88' \
    'gT6LMehg047axU5k' \
    'tNywRIvO2Sgz30he' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'jqdktHIO1VdtMSew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    's1TrU4FhAfKDcDG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'bMTba1tUlFGcP6eL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    '7EpWtPifmO0JK4dP' \
    '1aZFiSkmhwVVMGkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'NwMYwFyljy5bYQdQ' \
    '87hUHA0FJZwP8Gsl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "Mpx3m7lEXTmnTbtj", "platformUserId": "K9RsyoqT3adB48Jx"}' \
    'p2zaItg9jTNZvpFE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'UI21aSaIsMyLKPPI' \
    'Zx0zdNAagipZwiaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'rFrXtGMjujfHZB1g' \
    'MI1B8DXb37DffTZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'yQz337LLNCjIySe3' \
    '6SA5dxATLv5PkLvr' \
    'aRzChdjDGdlk2A2j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'HbAPNGInvbnf4ewK' \
    'FFLoGggX4gQWyZoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'vYfr0Rnl02R1IVNn' \
    'aK6KS71Xs1BphA9B' \
    'XpKYgF9OuigDP0Vj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'my7j2BrdCAm3slCw' \
    'aBqHpE55sjxBGijw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["0dQtZNonMrPkzUe9", "SglAJGyZS0I8FevJ", "iT98HUBp56Q4WETx"]' \
    'tGMs5tPKPuK0K4Pi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "MDTR7LxihuOn57io", "roleId": "0d9dG3yzaNbGeASX"}, {"namespace": "83SLiIbAP2qyUnHn", "roleId": "frEdDfY4TTxu8goZ"}, {"namespace": "gsX4RwfM4qnUdcQq", "roleId": "Z9F1uivPob0YZEuX"}]' \
    'QACDDQryNf9VGxbO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'eJe4n9eUlBQZ2UGe' \
    'PWXbAyGiXa9nUsHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'VicuJ7onrUXVlB6x' \
    'Nel4Bxb9KwFYqdhE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "q3hbsApeASfR0ljK"}' \
    'xqZcLuhwNDvValv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "bkoMXNzl1ywEPiun", "password": "ixlEAHZzHs8x5oPS"}' \
    'kZFIV2feXnTRlzAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'y9oFOHB2KEsIdtoz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "VltBhoXE4wgcYT5C"}' \
    'djaJuUzFIeqaVr1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'E1gu6cYuzC77J4ir' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "9tktWLtDdlmVGK6i", "namespace": "olEw6IIpDc9X5ijm", "userId": "tDGvd9ESdY0eTkBW"}, {"displayName": "A44Qqsi5yOjvl5sR", "namespace": "N2ENn1RLi5iMPnbg", "userId": "7o1zYpqUsliPyXZG"}, {"displayName": "YIW5ZDtWbdkzPP47", "namespace": "RcUIi2CoNj4EG2em", "userId": "xKQk8cBrt5E8k8rz"}], "members": [{"displayName": "DZ08j6ICP75cm8YD", "namespace": "ChFi3zLvfQWC85Mx", "userId": "WxvW0veFl3uU1aMD"}, {"displayName": "0mczWxc8f1s2QPMM", "namespace": "Zsf2dvKZyHChRPHv", "userId": "dkcKW21B5EFtD2pY"}, {"displayName": "aKTz1gcE2XCwTkRU", "namespace": "IX6IFHNmB9mYBvtO", "userId": "wxjqyrjDApeN5eAf"}], "permissions": [{"action": 90, "resource": "SVxgQCbpZx5yMGIQ", "schedAction": 49, "schedCron": "ZxVIefYlKBJyQMqU", "schedRange": ["EfDikX6yOlgZrn0I", "6T0hvcAFTaSWR4VO", "GIY7hM6uhonkAe0F"]}, {"action": 8, "resource": "xBlw1IWeXKFT4rfS", "schedAction": 3, "schedCron": "nBTVmBFZ6TIs9bTi", "schedRange": ["2m7eNsYEqKkeuLWD", "feFeExlOFjRh8mLF", "TJLveQSDWnMQGaYR"]}, {"action": 49, "resource": "w78lLGKjDHuXt358", "schedAction": 13, "schedCron": "jvb7JcGUFgp6LkyX", "schedRange": ["pxJeFxhgTwyO51CU", "pcdxL0a9VDhrqWCT", "XOxQUpyFgZhNpOTE"]}], "roleName": "4toH57yr01N33p1G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'ha8HwpagvERZI6Cq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'hcknhecNv2Tw6YKh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": true, "roleName": "jUXvM1GqMkZ44UXg"}' \
    'dBqtJaRyDlP9qIZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '5Krx6KkHagEugKJx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'kU8Y58COtTNjnNSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'kJDg6ujKvq0CIa1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'CK9PlMeQprfgLGkH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "X1tdBjKmCBXETZwq", "namespace": "dzAX28DikGk8cWiX", "userId": "44azSHcwicUVq2XP"}, {"displayName": "ljTZj5R0yZSVQ8SS", "namespace": "eJ4qy4PIKleuV271", "userId": "bwZ4niLSzQnv0C00"}, {"displayName": "dtNGGzbGYSYo9fY2", "namespace": "EBZAHQXc4Xcae7VK", "userId": "l0ARzGEArlfE1NSm"}]}' \
    'tcADoZvd0La7P4JI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "4H7uDzkOHTdnUtdr", "namespace": "Rcs3GeOsKPNlG7rE", "userId": "Xi6LEqJERpbxEq07"}, {"displayName": "txnvZZeAf7QBuZK5", "namespace": "GJlBncg8tQnJOKHC", "userId": "16xjJZ4kiU3N8556"}, {"displayName": "ll2LQWpdESOBV7wZ", "namespace": "Jsg7wSv9lyRyTdYB", "userId": "UljvBzvYNEtfgBFi"}]}' \
    'kt18cQ677SotDEtU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '2xBSEQ8rBKc2K6oJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "XxVEfnaqX8NuZtRU", "namespace": "TKUvR69PImy6Ccwl", "userId": "qJ4MO3L8x1H5OgzH"}, {"displayName": "ypgsSeKCvtPz7jag", "namespace": "BG9a1TZ87ltClc3R", "userId": "DXF5055tUlenimjI"}, {"displayName": "bm0riCaNp8dUBDin", "namespace": "AB6HqIWIi5Bvb1rc", "userId": "uEtWAF763kci7lT6"}]}' \
    '2BOHaso53W3U2Mu9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 24, "resource": "GMWou1U0RVCf3gMW", "schedAction": 60, "schedCron": "X1ZHV9yo9Ur1hfhm", "schedRange": ["GEKuVUZdCacRGata", "PrcgTcA71dtqtSUN", "4zvBzGh3mhIDNuMB"]}, {"action": 82, "resource": "egHtB9uTCiiIoMZC", "schedAction": 18, "schedCron": "pck1l0qxRyQ2pi7x", "schedRange": ["uAufJakIPXOQznHZ", "Tj8oYfWObyNJKVSQ", "saCokoGynp6xcqNK"]}, {"action": 73, "resource": "TY4AejyQc5Dac7hS", "schedAction": 77, "schedCron": "GV3sNxS8uLBZiVRY", "schedRange": ["IyQLcslTEqgVNG8A", "qktgvjwNJAwIpEy2", "ZNpojZ24I2n25sms"]}]}' \
    'rmJFHGiYnyhbqxLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 93, "resource": "MlgfkTsAThLyflAq", "schedAction": 33, "schedCron": "pmb1C9Al7eWrbNRE", "schedRange": ["0xyYPUZHyLGQ52Ij", "GpRJCUJpscOTkWET", "SJ04c5MGInO4yznh"]}, {"action": 40, "resource": "pZvvmziSSiSpXeWO", "schedAction": 67, "schedCron": "k1mMyeNRsjQuDEgO", "schedRange": ["3MEQNL6ijLRvQOgo", "aBooTawHLMxhx9nC", "3o6pXU5MDJLCB6Wb"]}, {"action": 93, "resource": "WIRpgjooaBVemsbk", "schedAction": 1, "schedCron": "XPFWFaKbDgrGkv8S", "schedRange": ["VwLyS4VbHJvD0lL7", "aZUY9d1Idud8bjYe", "BVMr7zHYmRE4X36K"]}]}' \
    'UOdfEmoIYwSxxAsf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["wDMivWqHHGlnAnEu", "6EKYceTEqYudHlA4", "AxeEIfUxJ2xMSNNB"]' \
    'xCeN3pGn46fGvodt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '83' \
    'MRdG8qAPiANv2Ar8' \
    'yXV6qf6v5SgcJPZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'Uh2nHQwpWi8HZ6C0' \
    'VJ0fK2m6lQ5Ao8TI' \
    'TYiHSR2SEJh1YDed' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'ZdNqkXPWZfT8ZfdK' \
    'p9q4nXuK0tJAYror' \
    '2XdtSCG7ZExOoIpW' \
    'zacOvwUsnIbQM3ZA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'tyEWKWoZRUL7wS3H' \
    'aMTXAX6y0STTN2sB' \
    'EijjjpvSzGkED0ow' \
    'eFYDBPyd1jJBxbrb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AuthenticateAndLinkForwardV3' test.out

#- 237 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'uFay9PXgEQS4871Q' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 237 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 238 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'Smsspn5sNfifK65t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'RequestOneTimeLinkingCodeV3' test.out

#- 239 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'vaH9jwcO48pthyYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'ValidateOneTimeLinkingCodeV3' test.out

#- 240 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'BJDHIIxTIGI5EssY' \
    'llIqjJzuQ8GglVgx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 241 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'GetCountryLocationV3' test.out

#- 242 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'Logout' test.out

#- 243 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'jOGQGlHm8VTN56tJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'RequestTokenExchangeCodeV3' test.out

#- 244 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'KwD8O07L9GG1uenD' \
    'ihceaLdgPZI0fKW8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 245 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'LeQxItaK6s3Hha69' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'RevokeUserV3' test.out

#- 246 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'MgxjGJx62mkfVlu4' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 246 'AuthorizeV3' test.out

#- 247 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'FPcUALNziO9Bz2wx' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 247 'TokenIntrospectionV3' test.out

#- 248 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'GetJWKSV3' test.out

#- 249 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    '4kDAm8XIleiujtv2' \
    'NdQTYoHZogW8lBvn' \
    'iHdARadfSoctA3GY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'SendMFAAuthenticationCode' test.out

#- 250 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'O94ZOo94gS5DHLB6' \
    '5fxQ06GwTmobiBnf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'Change2faMethod' test.out

#- 251 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'rnq9kOFBWhUTPiKR' \
    '3qcbHLGplYsS3jsR' \
    'ZffCd00VrgPuNtOv' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'Verify2faCode' test.out

#- 252 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'wRs1E7sH2G9MJ6F7' \
    'Rr7O15jqeKssQpme' \
    '6eyM48tE7eJRsXNe' \
    'veQXqnFRYmEIX40X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'Verify2faCodeForward' test.out

#- 253 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'OUoLOa7oDz00gxco' \
    'aH6u9TVf4DvEzpoP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 254 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'RiClZ6rlwX99AHML' \
    'HqguYykVWzNwPcvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'AuthCodeRequestV3' test.out

#- 255 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'yieBsRUduW5lxSlo' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 255 'PlatformTokenGrantV3' test.out

#- 256 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 256 'GetRevocationListV3' test.out

#- 257 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'rWEGN5bPGSOSiiIt' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 257 'TokenRevocationV3' test.out

#- 258 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'sAMTZC37xPXxnfgg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'SimultaneousLoginV3' test.out

#- 259 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 259 'TokenGrantV3' test.out

#- 260 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'QfpQ9o0GJMTfqRRa' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 260 'VerifyTokenV3' test.out

#- 261 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ZozM8xCBoaS2FMwf' \
    'WNCbN5GelVOU0hHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PlatformAuthenticationV3' test.out

#- 262 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'sCl5k6Jxh5mkmQzK' \
    'g0jWCjpGwh7pLAi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PlatformTokenRefreshV3' test.out

#- 263 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetInputValidations' test.out

#- 264 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'JmzvM6JFKB8ikHpl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetInputValidationByField' test.out

#- 265 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    '3sNRaDEC2OkXA3Wq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryAgeRestrictionV3' test.out

#- 266 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'ypoOw0H2s0sibQNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetConfigValueV3' test.out

#- 267 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCountryListV3' test.out

#- 268 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 269 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'z81zRPntxpgi7tXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 270 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 270 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 271 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'cNEcGJjOCXpuix5v' \
    'nPeTu9evbRov7Bm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetUserByPlatformUserIDV3' test.out

#- 272 PublicGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-public-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetProfileUpdateStrategyV3' test.out

#- 273 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '0CtZiAxk43DGV1SC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetAsyncStatus' test.out

#- 274 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicSearchUserV3' test.out

#- 275 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "kw8U0d4FvVmPMtpR", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SQ8Szi1IrGidRmR5", "policyId": "BGRJhFwxmkGfPI3j", "policyVersionId": "4luXQuuLtYa86kvL"}, {"isAccepted": false, "localizedPolicyVersionId": "cBZQssUUXOsXMNdv", "policyId": "W1hbvGenRbm3QtsY", "policyVersionId": "5WaKM5YY6pYrmeMI"}, {"isAccepted": true, "localizedPolicyVersionId": "8egV8XhgDjbrum8U", "policyId": "xcutmVg8APWKxoj6", "policyVersionId": "MF68VuKDoklYmkyt"}], "authType": "CAH8Jiqe7gfV1G6b", "code": "YgIbVKp4Kgew2mHD", "country": "ksA6Mv9Nzs19eBq9", "dateOfBirth": "a1L8S1yduOwscICr", "displayName": "o6P8FWIPeqaBeD2u", "emailAddress": "BAvIXEc2CCgYcFo9", "password": "A93o22UgObCOiBWd", "reachMinimumAge": true, "uniqueDisplayName": "AB7RRxiZH3ngnitU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicCreateUserV3' test.out

#- 276 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'RdMjZLYCaeklQcFY' \
    '1QIk1h5EKvMGd6hQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'CheckUserAvailability' test.out

#- 277 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["2mHjmLu4oFlReHy0", "JyZv7honqeiGTTqp", "gVsY1kPNdJiJXB3y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicBulkGetUsers' test.out

#- 278 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "jNUPIfvoXRO0CkW1", "languageTag": "ZcgUSbbnffBWRaJN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicSendRegistrationCode' test.out

#- 279 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "1SjCFLDNJfAhJGwS", "emailAddress": "YEZjEb0Pv35fEk9s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicVerifyRegistrationCode' test.out

#- 280 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "11bFXkf7rQJ4Kj7Q", "languageTag": "yo9tUptiyZzRX8Y4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicForgotPasswordV3' test.out

#- 281 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "rxRWZPe4ZLAQWuBJ", "password": "wxObZqMGxhffy9cH", "uniqueDisplayName": "rLYfftad99JDcnn7", "username": "f2d8SOWP2dw6Uy88"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicValidateUserInput' test.out

#- 282 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'WpQalG38VOo82aLD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'GetAdminInvitationV3' test.out

#- 283 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "9jUjuDITjifWRbmt", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MTxcCWnMiCLsjroK", "policyId": "HPApA8GsGwyocvY9", "policyVersionId": "NePjLJQJXwUApJWo"}, {"isAccepted": false, "localizedPolicyVersionId": "xx2dr6DDuDHXcfvX", "policyId": "PXJURX3XwhOlgcpc", "policyVersionId": "OIxqCMSpZxby2J9v"}, {"isAccepted": true, "localizedPolicyVersionId": "OUeSeGb02vDPUpv5", "policyId": "VEdIG82dpIbfxVFf", "policyVersionId": "dvKQVgPQw3MVXe4x"}], "authType": "BPDWHRHCCVDBRjPU", "code": "QWYVxGQVFJlDDJ7z", "country": "4Pb5jyGID39Ung1D", "dateOfBirth": "57FjYKlJiRIvhej7", "displayName": "7OSPwdzMSmrSvQds", "emailAddress": "AdTUGpd8KFrXKFA2", "password": "gdjQCYoE8b0CZetL", "reachMinimumAge": false, "uniqueDisplayName": "3ncPkqiTKzz72PKX"}' \
    'jShM2DvesmMIbiQf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'CreateUserFromInvitationV3' test.out

#- 284 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "aHxl2YUNRLRjgKqS", "country": "SYgZnVfa8govttlp", "dateOfBirth": "FAq8oebnS4Y2zkGY", "displayName": "Tr9yJIveX52r6Inl", "languageTag": "9VTJB9Al3mn2DsHD", "uniqueDisplayName": "HzSVJzhU5Z44zgZ1", "userName": "fieLdl3Y82DOj5kP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'UpdateUserV3' test.out

#- 285 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "uNRZZaUccuBYep9n", "country": "7b17fsblalJrwQiU", "dateOfBirth": "3DD0xZFH1fHFLSr0", "displayName": "O4rEZTbFDj2L2Mcv", "languageTag": "CrrR7h9uKLXDaRf3", "uniqueDisplayName": "pxKtJbRY5luCwKrt", "userName": "6wn3yVrRCh6j7rpv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicPartialUpdateUserV3' test.out

#- 286 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "8K8fBAeRa1R6ksxL", "emailAddress": "YGkOLgReff5IHxLJ", "languageTag": "IemNHbzgAFjtjC7s", "upgradeToken": "uvgIUkB2PAGJqOrk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicSendVerificationCodeV3' test.out

#- 287 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "dlZB246OY0dPVMd2", "contactType": "WDUVEQTpfyAIoF7q", "languageTag": "sANBbEKQrgocpjGN", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicUserVerificationV3' test.out

#- 288 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "U2g9imVMh3i7j095", "country": "rDL6lEuB1ZIMIs1d", "dateOfBirth": "FvYokH9t2u8ZZnyH", "displayName": "Kkk6Gh25tEcX9Geg", "emailAddress": "DnrYz0GFpSVdxFsX", "password": "Ap1roclyXllFitPa", "uniqueDisplayName": "mSKRzDIZgSk6suS9", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicUpgradeHeadlessAccountV3' test.out

#- 289 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "wxgRpTSUppvO3QG6", "password": "8KeD7QJQEEVDAg04"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicVerifyHeadlessAccountV3' test.out

#- 290 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "5BvtPd7ibBA3sd51", "mfaToken": "mDooH53vibq3Qcrt", "newPassword": "t8L5dIebsw7EjkMn", "oldPassword": "JSziEA43WqIMJdrq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicUpdatePasswordV3' test.out

#- 291 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'HIsJ98WRjqYieXRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicCreateJusticeUser' test.out

#- 292 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'hQZvzRi7pqpajYEH' \
    's9TIkcnrJ64BOKqy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformLinkV3' test.out

#- 293 PublicPlatformUnlinkV3
eval_tap 0 293 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 294 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'wS6DKNSeb2UMWOgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicPlatformUnlinkAllV3' test.out

#- 295 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'eYkCvqq0tO15pEVG' \
    '7sNihxpuuL7DJCxv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicForcePlatformLinkV3' test.out

#- 296 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'zZnh8oBAk1MNCAUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicWebLinkPlatform' test.out

#- 297 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'dnLaVRUu5VbjwPa9' \
    'rYgHaxeTT3ebuaYP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicWebLinkPlatformEstablish' test.out

#- 298 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'NBp9wA4LxO2n7WJQ' \
    'FzBCD9S03D7JLsIM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicProcessWebLinkPlatformV3' test.out

#- 299 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "3VOMRvvqkXDMPzOB", "userIds": ["08tpk0qhZath4b4H", "twEYX55pJNTX1sDj", "SWiSXsV5rJ8eZXZ1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetUsersPlatformInfosV3' test.out

#- 300 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "TLMZnNL3DQK45IAt", "code": "byUDDSJSV8pzl1lf", "emailAddress": "IR7jnetIJPGObyWC", "languageTag": "LyFPHaxkKxEDvSoi", "newPassword": "2X9SygvMG8QAaWUh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'ResetPasswordV3' test.out

#- 301 PublicGetUserByUserIdV3
eval_tap 0 301 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 302 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'IguMvKDOrx0wQXKE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserBanHistoryV3' test.out

#- 303 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'royKz2reP63EVHT7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 304 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    '2VuhoGP2IFXGU5hu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserInformationV3' test.out

#- 305 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'jEfCMt95DEjxqhgY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUserLoginHistoriesV3' test.out

#- 306 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'qmMqIdlRrQmuILke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserPlatformAccountsV3' test.out

#- 307 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'RUafUDP5b6BWfm7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicListJusticePlatformAccountsV3' test.out

#- 308 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "YCpDIJG42ILhUoCh", "platformUserId": "8lmKKocC5Ea29Jhf"}' \
    'FGN964J8WOgsAj2R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicLinkPlatformAccount' test.out

#- 309 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["mf1DXvAIkzTRNRVy", "eEGu1ICOCmLAmcaE", "FBKgy92LYqtQcDN7"], "requestId": "OMCehk42acy8wsWa"}' \
    'PyppR3ztPSALA8Ll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicForceLinkPlatformWithProgression' test.out

#- 310 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'V2sccbVr6HSiXVzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetPublisherUserV3' test.out

#- 311 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'G4EdKn8eypTzI497' \
    'DG0ZNoJvvi4Ys50i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 312 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetRolesV3' test.out

#- 313 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'E7IjZoDzMmMgoMxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetRoleV3' test.out

#- 314 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyUserV3' test.out

#- 315 PublicSendCodeForwardV3
$PYTHON -m $MODULE 'iam-public-send-code-forward-v3' \
    '{"context": "Z9AutWDfVOINhql9", "emailAddress": "CdDX4xiHpdfKH35R", "languageTag": "WUUVEHCB5wzF6oLI", "upgradeToken": "rAwjAsgo51XHJBG2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicSendCodeForwardV3' test.out

#- 316 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'PmyeFaBiT3SyLHXZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 317 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["SyfjukWmkfkiF2GZ", "PuyWBVH66JU1IICV", "NNRV4lBToTcn1l44"], "oneTimeLinkCode": "ebrKEKdeo779KG5y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'LinkHeadlessAccountToMyAccountV3' test.out

#- 318 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'Cz9jVs1lYK1Mx9rE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 319 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 320 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "FkDqb31AZzwiQBaG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicSendVerificationLinkV3' test.out

#- 321 PublicGetOpenidUserInfoV3
$PYTHON -m $MODULE 'iam-public-get-openid-user-info-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetOpenidUserInfoV3' test.out

#- 322 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicVerifyUserByLinkV3' test.out

#- 323 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'dS41VRIyAHjYxVhC' \
    'bXbeBEoTlfR33jqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PlatformAuthenticateSAMLV3Handler' test.out

#- 324 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'RoXcCPaLXJM2B9bM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'LoginSSOClient' test.out

#- 325 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'ohkWsFKIdycYHQcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'LogoutSSOClient' test.out

#- 326 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '7JkKBcLFRf50Y7ME' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 326 'RequestTargetTokenResponseV3' test.out

#- 327 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    '2QmYiYqap7masUca' \
    'yqmp7vhz1T6cSrZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'UpgradeAndAuthenticateForwardV3' test.out

#- 328 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminListInvitationHistoriesV4' test.out

#- 329 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminGetDevicesByUserV4' test.out

#- 330 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminGetBannedDevicesV4' test.out

#- 331 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    '2CgHxdmYDj9vZNgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminGetUserDeviceBansV4' test.out

#- 332 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "I1AeYHe8WPQGPclC", "deviceId": "hxLfbXrH6f2GDrNb", "deviceType": "LOjGz34ct0ctEeH4", "enabled": true, "endDate": "EWGg1r4nW4pBcPPa", "ext": {"iaM1og5rxUjGPKKL": {}, "MoAy1stmxPFz0i1I": {}, "K3QzkcRwFPpXGlKR": {}}, "reason": "9ss8b8udl6fLkxFn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminBanDeviceV4' test.out

#- 333 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'AqyvjBy0NXg7zd6S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminGetDeviceBanV4' test.out

#- 334 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'pkV7cAICgWFJZGnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminUpdateDeviceBanV4' test.out

#- 335 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'a5yOM68r4W1fDZL8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGenerateReportV4' test.out

#- 336 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminGetDeviceTypesV4' test.out

#- 337 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    '0oPQ0s7QhC8hgSgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminGetDeviceBansV4' test.out

#- 338 AdminDecryptDeviceV4
eval_tap 0 338 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 339 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'tNEojK3YgWH9l7rv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminUnbanDeviceV4' test.out

#- 340 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    '6XUSINd4keCeiw7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUsersByDeviceV4' test.out

#- 341 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 342 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 343 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 80, "userInfo": {"country": "PtUrPawQPaHARrhj"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminCreateTestUsersV4' test.out

#- 344 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vULYNIhs5PZGTJmg", "policyId": "ofq7nlF5Ch8J2Qs9", "policyVersionId": "90APOU4hcdwlnsTa"}, {"isAccepted": false, "localizedPolicyVersionId": "X6TN5ctYX1sZnYF3", "policyId": "hWmCCIrP0lJXexse", "policyVersionId": "o2e6BCNJTTRIHDKd"}, {"isAccepted": false, "localizedPolicyVersionId": "fOUr14yZH00n8MsR", "policyId": "jaB8iurBWW5jSJi0", "policyVersionId": "seeGJIqnatME8GnN"}], "authType": "EMAILPASSWD", "code": "i1yEI9ychtyhjZSe", "country": "DCKT4ilZB8apDTR3", "dateOfBirth": "aL9sunWp7V1s8LmX", "displayName": "m0FaJMIjgzU02nZW", "emailAddress": "wBdEFpfccauYDc86", "password": "pxK9KhF4KRVPoIuz", "passwordMD5Sum": "AuQNjAfvOE2cVjFp", "reachMinimumAge": true, "uniqueDisplayName": "CeCEfaV4ZGGwbqOB", "username": "4mD3E7AFHqlTTkL8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminCreateUserV4' test.out

#- 345 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["QoIrpvmM19X4zFOv", "dRTpGmBUjfEU9vL8", "H96tuVfQwYIqDWqb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 346 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["PmwQw8J7na1POTXh", "XLRU5prAdqnnPOiT", "VzAeQq6rnWJoTpYo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminBulkCheckValidUserIDV4' test.out

#- 347 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "e2uHaWnO98YwqHZn", "country": "EDkfmNbDTMGgET2y", "dateOfBirth": "S6C8a8L0vQDS4EVp", "displayName": "BmsUzx64Gr4XEm0u", "languageTag": "YYuAmqhftIfe2zdq", "skipLoginQueue": false, "uniqueDisplayName": "7ht1vUiJ7jBXy8ps", "userName": "NoHNalwgvju62rPF"}' \
    'MbE1cW57GaNZLT1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminUpdateUserV4' test.out

#- 348 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "0GqDZN7ftHOhVy48", "emailAddress": "YYg1AkRh3NmbRhMx"}' \
    'KeIgwq1NZmxa0ghR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminUpdateUserEmailAddressV4' test.out

#- 349 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "G020QpWTNKsVyK8E", "mfaToken": "U8JYc00PA2ef1jFe"}' \
    'qQ8mBpTuvLTJUzwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminDisableUserMFAV4' test.out

#- 350 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'JFaWW3JVdYpfHOYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminGetUserMFAStatusV4' test.out

#- 351 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'Lva2c4JscEQfBFZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminListUserRolesV4' test.out

#- 352 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["cSXpU81S5H9XsZyv", "ZOFJ5RrFZYcwfQ1Q", "2BbcjSpv6Nt1oz4t"], "roleId": "dgfKu4bmK8kOKcEo"}' \
    'CRjQJlPY3p42OS9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminUpdateUserRoleV4' test.out

#- 353 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["GNElTpMlvRDZSIuM", "0OXOHPluvsry8AKS", "ZxOhUhl3Y0EshaG0"], "roleId": "uDiJNUuxK22saWaG"}' \
    'vrzBdLvFUBZDnVrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminAddUserRoleV4' test.out

#- 354 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["wbsD0RDLxWgEWwoH", "pV8E1xQZLa7Kw77U", "pCxNyx1jjdxNePPA"], "roleId": "J6Z9UzqIhZZiK0QE"}' \
    'G6C9w4lVRNOF1Bg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminRemoveUserRoleV4' test.out

#- 355 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminGetRolesV4' test.out

#- 356 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "sYRQz97fRWI17eNP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminCreateRoleV4' test.out

#- 357 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '3Y2nWlS9Sfjh0hty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminGetRoleV4' test.out

#- 358 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'VaGj4y9ahS7h7XVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminDeleteRoleV4' test.out

#- 359 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "GYsLNEGrfy9qHKuf"}' \
    'Jfk0MeG3qYJr6PuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminUpdateRoleV4' test.out

#- 360 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 98, "resource": "ie8SJckSRbu7hgmU", "schedAction": 26, "schedCron": "DiyybXY4v7JRFMRa", "schedRange": ["eIaQuPWPlkxeotrN", "akKGvOSvpmZZdlNX", "dx2kWmSqodNZgfQy"]}, {"action": 61, "resource": "dVT0aWj58Othvd3j", "schedAction": 52, "schedCron": "Tp5GJHHbsLJ73mCP", "schedRange": ["hhmUyIwgQS9kVFUb", "eTeB9KgnFZQ9lVMN", "yCiytnfMoO1I3KIS"]}, {"action": 93, "resource": "J10goNq8uq79Du28", "schedAction": 92, "schedCron": "Em4Gant6aqjKzWDA", "schedRange": ["auqLKarcLQRQtC92", "7GneBM8LvzgyIVzG", "FBLJ5vbC9NfLTFJG"]}]}' \
    'OzAIAqpmkDdFSs4s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminUpdateRolePermissionsV4' test.out

#- 361 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 10, "resource": "u1VUuLmenyxTQVkE", "schedAction": 12, "schedCron": "p0GXpM4nbG7aww2T", "schedRange": ["ANW1Or7TvLoL0wwH", "oRMNexBOron8wIdU", "bp7xVMKfbAJfW4iM"]}, {"action": 71, "resource": "ULzSeTnUWGxxfnMI", "schedAction": 59, "schedCron": "pSsyEPDWHcqfYp2E", "schedRange": ["FxEaEHCGtg812NQb", "5Glh8srTlTj61WdV", "2XUo1BO1rE7E12Fa"]}, {"action": 31, "resource": "ApAxyDnHjAx7rZTv", "schedAction": 8, "schedCron": "FwLGan2SrKckNxLW", "schedRange": ["H6rjhRL9uxoV5Oe8", "ktlePEo1xBuRSv6V", "izgtOXZy9cQ6B074"]}]}' \
    'dTJZqeOllKQNwJUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminAddRolePermissionsV4' test.out

#- 362 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["tC0tAhxn1ay6ruu7", "PYWHODRb6skOj0lf", "YFGnQCAWidWPjYgy"]' \
    'ebU6rHFirnUpZ9UJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminDeleteRolePermissionsV4' test.out

#- 363 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '4N78qHTGdn7gE4bw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminListAssignedUsersV4' test.out

#- 364 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["LzDEw2PYt8x9SSaO", "ZcEvG6KZh954Bmtu", "IFllfSUnaUhC4x11"], "namespace": "AS2jTKoTYeHaCuN7", "userId": "zpX9vp4QJdCrwkz0"}' \
    'nw2oxKye8jZqj7k0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminAssignUserToRoleV4' test.out

#- 365 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "YiLqOUSBuwR388RE", "userId": "DRuYBnWiEsOnDfIA"}' \
    'N04f5kSONmw1BDqq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminRevokeUserFromRoleV4' test.out

#- 366 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["SctLL4WfGq8JCDnw", "GWgccuzuc6QDRMGd", "BPbUyHTYPS8CGKXG"], "emailAddresses": ["on2ecc65YAFLweD9", "Z7U2lNkorrw9QH3r", "NhDepQum4Dj7pR05"], "isAdmin": true, "isNewStudio": false, "languageTag": "GXGRkYXifTd5nAOF", "namespace": "9VV7JgCOm4wL729H", "roleId": "ma0nCdCEFcf2doBr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminInviteUserNewV4' test.out

#- 367 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "fHiHXXgvu496H02y", "country": "OVN1h41jIPOMXufZ", "dateOfBirth": "PWSe20JfNvtNcWtp", "displayName": "Ukw98x3tMM1bFFDI", "languageTag": "qKD8HJ4X0DetCeJ4", "skipLoginQueue": true, "uniqueDisplayName": "aQxLYrz08jh6Tyq7", "userName": "WUilXgtf5UctyV3a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminUpdateMyUserV4' test.out

#- 368 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "Sw4twReM5DcHde3f", "mfaToken": "kHf7tH8WTOTeBOcY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminDisableMyAuthenticatorV4' test.out

#- 369 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'hf6nGCnPjiIbJifs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminEnableMyAuthenticatorV4' test.out

#- 370 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 371 AdminGetMyBackupCodesV4
eval_tap 0 371 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 372 AdminGenerateMyBackupCodesV4
eval_tap 0 372 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 373 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "0arKxCcNv8FQCyQB", "mfaToken": "qKxayGvw7MqOsypC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminDisableMyBackupCodesV4' test.out

#- 374 AdminDownloadMyBackupCodesV4
eval_tap 0 374 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 AdminEnableMyBackupCodesV4
eval_tap 0 375 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminGetBackupCodesV4' test.out

#- 377 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminGenerateBackupCodesV4' test.out

#- 378 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableBackupCodesV4' test.out

#- 379 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminChallengeMyMFAV4' test.out

#- 380 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'AdminSendMyMFAEmailCodeV4' test.out

#- 381 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "JmfRnW0spgvjt7eC", "mfaToken": "LDu6PA3PRnQtB410"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'AdminDisableMyEmailV4' test.out

#- 382 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'iWT0SILVGXCWRucR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AdminEnableMyEmailV4' test.out

#- 383 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'AdminGetMyEnabledFactorsV4' test.out

#- 384 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'pP1Tq7uYXhB6FPfF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'AdminMakeFactorMyDefaultV4' test.out

#- 385 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'AdminGetMyOwnMFAStatusV4' test.out

#- 386 AdminGetMyMFAStatusV4
eval_tap 0 386 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 387 AdminInviteUserV4
eval_tap 0 387 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 388 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    '5DvveMdBsPt19V2F' \
    'kBPk0QLufK6eiT38' \
    'raaRG1Fg0hfM5vQm' \
    'ahJlT5OUDEMwAjgN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'AuthenticationWithPlatformLinkV4' test.out

#- 389 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'Zgto2EhOlnsuDnku' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 390 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'OJekbO0sk7o1z37u' \
    'uqLDQF12kYfBqeQx' \
    'os58kVk7F1KKOfFF' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'Verify2faCodeV4' test.out

#- 391 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'vER3xqCwUgKa4oCB' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 391 'PlatformTokenGrantV4' test.out

#- 392 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'epicgames' \
    'PwR1BinZ4ULwAKO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'SimultaneousLoginV4' test.out

#- 393 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 393 'TokenGrantV4' test.out

#- 394 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'Aw9m6GvDSE2F7Ad6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'RequestTargetTokenResponseV4' test.out

#- 395 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "9Dln4mqFhgKKcGoh", "platformUserIds": ["djQUwVdPsArkepfK", "0DE3IibPSQnphnvA", "WBSOr7zljUKyhKkD"]}' \
    '7wAHMrv8zABDhYAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 396 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uaBCdhzXb6cBMPNM", "policyId": "mjMi2uztFNfXg0Uv", "policyVersionId": "waZ0py16ShGomFzU"}, {"isAccepted": false, "localizedPolicyVersionId": "pccdjjZpFnVLb7xe", "policyId": "rpjVPfktNnl8UYH5", "policyVersionId": "kesuOtYHLqcdy05Y"}, {"isAccepted": true, "localizedPolicyVersionId": "MDxvlK9RnTEYv5eD", "policyId": "hCxwy85vlhWw1RCg", "policyVersionId": "Hr3f6UqFGCvsMFEF"}], "authType": "EMAILPASSWD", "country": "yXqQbKWMJ0aODiWn", "dateOfBirth": "6bPmSa85Riu1alaV", "displayName": "EhjJZbwMHkFWLSzm", "emailAddress": "AXAruYrVjX4HRTvm", "password": "3Qr9IkuW6jjofc6i", "passwordMD5Sum": "tDEsq0dHfYG6k853", "uniqueDisplayName": "GERdJdphepF9dfsn", "username": "g9FGGjJ0hRPUBFxM", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicCreateTestUserV4' test.out

#- 397 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1YTT3qUMd0U73RjV", "policyId": "eYSM479gn62lizsW", "policyVersionId": "GrtIgVPb7hoo8YkN"}, {"isAccepted": true, "localizedPolicyVersionId": "W8mWOJGtdXJGDsxR", "policyId": "AR3NObYp43YXMHqW", "policyVersionId": "eVjnOURxGvOhz9s7"}, {"isAccepted": false, "localizedPolicyVersionId": "jLUZHK0OO1yQsMBQ", "policyId": "AdOfrtHWyGg5TU3I", "policyVersionId": "NkMgjsnP8itevmjT"}], "authType": "EMAILPASSWD", "code": "netcvAuim14Wdh1q", "country": "KoSDBbyqlJyfVgaW", "dateOfBirth": "6ziZF6ijZzA3Mkos", "displayName": "OcoAcV0T2G3vQZNi", "emailAddress": "qaXzRBra3I4K9iBd", "password": "ljXtowifBfAw30kO", "passwordMD5Sum": "ykBuDJ0IPQeAL4MZ", "reachMinimumAge": true, "uniqueDisplayName": "1sGlfqjDBzOjNeq8", "username": "JJhbi7QD0RW0qgxO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicCreateUserV4' test.out

#- 398 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "TFpFSCsrhSGeeExZ", "policyId": "YnGcrZHMKoTcIXeK", "policyVersionId": "ZzZBo6ARaQnNZQ1R"}, {"isAccepted": true, "localizedPolicyVersionId": "PGBFVnc37aWVjM3i", "policyId": "VKjr5VDqakKdW767", "policyVersionId": "GAH1oiS1JuO7MNoF"}, {"isAccepted": false, "localizedPolicyVersionId": "tRhYYIpNqVHbbCVw", "policyId": "bitD5tWXZVvjYqrE", "policyVersionId": "XKUDlmtixw9FtBVA"}], "authType": "EMAILPASSWD", "code": "PxL8674KYMeN2W2C", "country": "NqmO8JALtCiDuGQQ", "dateOfBirth": "svWV3NSjXUXSMKY0", "displayName": "9x4TKOwsyRNnaLNh", "emailAddress": "w0xGnXc29UDQxeiB", "password": "o2hB9u1v1POCjseK", "passwordMD5Sum": "1xaSbMjyFrYsITcy", "reachMinimumAge": true, "uniqueDisplayName": "5AhNNH0Ht1yPtBwX", "username": "IuYrbPUcvEOJ4Pgh"}' \
    'ksbaThW37NTbz8Hi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'CreateUserFromInvitationV4' test.out

#- 399 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "RmuknvXiTP0KrWQ3", "country": "pgbHM0Svy3GRenDz", "dateOfBirth": "wlTE9Czhnck3GnyP", "displayName": "FQHgn9jVE6QGkZ8A", "languageTag": "VzeiaDi67E3rTwN2", "uniqueDisplayName": "LrT85Arfe6EweJxW", "userName": "ANt1bDay64EnFyFe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicUpdateUserV4' test.out

#- 400 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "W0oNhddKrrhzwz2P", "emailAddress": "FXC33KjLNUFQJgCW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicUpdateUserEmailAddressV4' test.out

#- 401 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "V7dj8I5eVnflH2hn", "country": "MV6Yxtl5DKUhjBy9", "dateOfBirth": "oWPcMIQc5lRQojhJ", "displayName": "gpXVCubdw0sPrgDK", "emailAddress": "qHCs5GTdTLCxJqK7", "password": "dgsgrnpVE1acxZoD", "reachMinimumAge": true, "uniqueDisplayName": "dPORkWkyTcJzvDUl", "username": "hTlBNpvkjg48iVKC", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 402 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "VQnAexrRomTZFHX4", "displayName": "cgtkxEx6tlxks0yG", "emailAddress": "W8qDWfr7MF8Ptq10", "password": "XBhcJfG9qYAEpR44", "uniqueDisplayName": "fWWEsCETqKlcFcaL", "username": "6XOoO3WqBsbDmsTk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicUpgradeHeadlessAccountV4' test.out

#- 403 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "9UuiQwezvArAKJwZ", "mfaToken": "GVyknpOhuGhAnlnj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicDisableMyAuthenticatorV4' test.out

#- 404 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'yPBj7h3hncU5vgL6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicEnableMyAuthenticatorV4' test.out

#- 405 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 406 PublicGetMyBackupCodesV4
eval_tap 0 406 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 407 PublicGenerateMyBackupCodesV4
eval_tap 0 407 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 408 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "2RA2BI7knizQ4Jx8", "mfaToken": "In4w8yRFOLeTQypl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicDisableMyBackupCodesV4' test.out

#- 409 PublicDownloadMyBackupCodesV4
eval_tap 0 409 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 410 PublicEnableMyBackupCodesV4
eval_tap 0 410 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 411 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicGetBackupCodesV4' test.out

#- 412 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGenerateBackupCodesV4' test.out

#- 413 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicEnableBackupCodesV4' test.out

#- 414 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicChallengeMyMFAV4' test.out

#- 415 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicRemoveTrustedDeviceV4' test.out

#- 416 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicSendMyMFAEmailCodeV4' test.out

#- 417 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "scfsZvvUpCMJRliF", "mfaToken": "CmFC9uUxSxI4yyrZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicDisableMyEmailV4' test.out

#- 418 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'IV9M22gRLsc6Jwt1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicEnableMyEmailV4' test.out

#- 419 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicGetMyEnabledFactorsV4' test.out

#- 420 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '90s6yFiDZs0wyldb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicMakeFactorMyDefaultV4' test.out

#- 421 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicGetMyOwnMFAStatusV4' test.out

#- 422 PublicGetMyMFAStatusV4
eval_tap 0 422 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 423 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'DDntsSQ8DEsKT6Mw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 424 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "5xDz8asARtI3TVV2", "emailAddress": "QmlqRK5roG1oZArF", "languageTag": "JBUmMx7nzK8rRAYv", "namespace": "vynDPJ9SMRzSo0Rz", "namespaceDisplayName": "UoSen8CjEhtRcnVs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicInviteUserV4' test.out

#- 425 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"code": "YOwypw6F21uYowkP", "country": "NGANjli9XZkbrkh3", "dateOfBirth": "dQNtIEwCcfPmWjX5", "displayName": "40aN2pvOi5UG7agV", "emailAddress": "hXIgoHE9eEvIyV2D", "password": "qxWhSV3r9vk4HQDi", "reachMinimumAge": true, "uniqueDisplayName": "ifOFJQwGPy5zGebV", "username": "w9nLvVm8UeFUbaGb", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
