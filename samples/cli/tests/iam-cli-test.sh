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
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "jDDCvs78mcMdiS76", "AWSCognitoRegion": "YApGJ9ufwLYkqIgL", "AWSCognitoUserPool": "uZS6hsQryiEtOAbp", "AllowedClients": ["eUNf26UqkCfgCUYB", "n2xaOBdPF0JmX8qw", "U1cTuHHPB5S3DvPR"], "AppId": "CzBrVUxmDOj3cvRF", "AuthorizationEndpoint": "aTC11W0TGTCm4fZW", "ClientId": "uk6pQxDQpKqxLGeM", "EmptyStrFieldList": ["vr9TsvcMQ7dBsaIe", "cRxIsZvD6rmzVr5X", "T1Nxw0v1dMQ9Rrbk"], "Environment": "6C2cVWf6ttvbU1PO", "FederationMetadataURL": "6ApCD2VXidT7w0Oc", "GenericOauthFlow": false, "IsActive": false, "Issuer": "8WXBPp17PAewqSm5", "JWKSEndpoint": "x3B4t7WQnp8jXZed", "KeyID": "gt5cyNe27HLtwtVO", "LogoURL": "axgP6Jbct8puMybY", "NetflixCertificates": {"encryptedPrivateKey": "GxD9IPmmsLmu3kaP", "encryptedPrivateKeyName": "j0O4zd8Tb7cUNGPT", "publicCertificate": "BxiFFCrn7djjs69F", "publicCertificateName": "TFVGUVhvKhJCmeis", "rootCertificate": "ql14mUHVbMPimNhc", "rootCertificateName": "ZsU3VAdMDcb4qlki"}, "OrganizationId": "FAamqvZI2KwjqPBi", "PlatformName": "WXade41s3rH34mB2", "RedirectUri": "yPlRpWjmHZAAvKTH", "RegisteredDomains": [{"affectedClientIDs": ["8MuqIg0CzkguwuJC", "W7EEFB67AODbi9Bz", "upBsFpYc77GtRUcC"], "domain": "FeY5g4XgBsbfzqxB", "namespaces": ["PNe8ae1Il4aAtEbu", "4IjGdqthRxTjQ7gk", "ZEY8rG0q0Q2Qd2Jz"], "roleId": "RbkF2I03dIjvBbA6"}, {"affectedClientIDs": ["bfbYaJCJjfk2TUvn", "95FhO7VW3mbDVMDu", "87t0ldWf7iSGIiKF"], "domain": "tWtn4Yr2svKM6pqL", "namespaces": ["GZ0TBujELAUK6mQ5", "iZgbwwm5iGzXtckn", "rgidKupvXO6aj4hC"], "roleId": "mTC34jxW4pIDwdqX"}, {"affectedClientIDs": ["pmRmut9H9XyWI8bp", "8fQxRuX91uYmtrHJ", "bEGTUj7YjERL1rEQ"], "domain": "G02zccA8wvLsWUNd", "namespaces": ["6lPKvqDejvqklTSv", "DwuOrP9lzpiX0VuF", "pZum7izxe7NPzjOa"], "roleId": "8E7wY76PxLv9HBEU"}], "Secret": "e89AwEw1HO4FnKtx", "TeamID": "4XLKAmlDr19uJ3nq", "TokenAuthenticationType": "6VerzVCcI8y3Cz0Y", "TokenClaimsMapping": {"qCKUh5RD9vNAp4ji": "nFpnQ5xF9wwbvMZy", "eDeRnVfPUa6xVVBc": "q3wZpFIYeAg79HcL", "JXJ7mpVI6eTYAjdP": "lCiQQC35cj4KyOVg"}, "TokenEndpoint": "vnWbfRJtsB7cUQZ2", "UserInfoEndpoint": "QUAxJrINPXppPNO3", "UserInfoHTTPMethod": "AfmXcgwC3IN6tvKg", "scopes": ["LB9QmJIOq9dP5szG", "71utjsQ4CrRb9gUC", "eVz7fWbZIdhevfZv"]}' 'yV7AcodcZwKjYDdm' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'JOlzwm9Su4FnS98Q' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "qftSjq7sn8yreciP", "AWSCognitoRegion": "LfkVyyJsbGpO6Jge", "AWSCognitoUserPool": "hDJxEN7JlZc8LMq1", "AllowedClients": ["o2jZWu4yA3r0u4q1", "bTHXIjfJKyFlM0u1", "uuoVdn9yVoSlKNch"], "AppId": "PHNL4X3LLaGPGdqL", "AuthorizationEndpoint": "E8SohhhuiTnJarYY", "ClientId": "kHBDdSzBXdxapwhd", "EmptyStrFieldList": ["5IQYBQuxLvPuWYvE", "3fsNy9Z9OhxXvCp9", "y7fLD2qfCXnlUnqx"], "Environment": "T1WsRNMZcA92hzC7", "FederationMetadataURL": "MNa8vVe4MHX6AgMe", "GenericOauthFlow": false, "IsActive": false, "Issuer": "90AyyUJyAK5PRMRM", "JWKSEndpoint": "wdvl0hv6g62GxBW2", "KeyID": "tQF5tkTjgJaMYvNQ", "LogoURL": "OsDa4bkcgepqtxjb", "NetflixCertificates": {"encryptedPrivateKey": "rztee7QLTGAak7Ka", "encryptedPrivateKeyName": "ol01DK97D2xnik42", "publicCertificate": "miteR5eQAe1rzmmg", "publicCertificateName": "qBPRmd6mO4oI8KDq", "rootCertificate": "ebm83raNBJ5y7axE", "rootCertificateName": "kvI4oxZEDxGiBnNb"}, "OrganizationId": "n0zaf7CaOSlHXrUS", "PlatformName": "A6sMJzA5mtqISQ83", "RedirectUri": "TTbtefXWznDe4LQd", "RegisteredDomains": [{"affectedClientIDs": ["XfFBii2RAMEX5RMj", "BFVZGYzQqV8d9mDd", "UIoiIJFNxuNOmUSW"], "domain": "w18T1IxVWCxdvPL9", "namespaces": ["e4P01vxP8xj1LyEi", "rURERnEMzpImW6sj", "AHyCK5tNanGBrkzU"], "roleId": "vck3xTtmOFMebS4A"}, {"affectedClientIDs": ["dlNzwog2IhErkNhN", "cECWwchW6zL9SkbL", "lrNXnGanMazb8jvR"], "domain": "WenURH48aJuALEcS", "namespaces": ["qcE15u6D31DjOsrs", "3CUYATdqnQGbqiqO", "kNeATj7eGjodd7Cc"], "roleId": "JUrI6MAugK5kypNr"}, {"affectedClientIDs": ["p2nFe9FmN86sK5LO", "q4ft5jGcMICPUYnf", "G6jl9U4jReteIMgz"], "domain": "ISomCsodJrhQW41q", "namespaces": ["2OspCZbt3Uta5I0u", "GcL1koyHjCH5olYL", "ETRpABAmO2EGvJ4U"], "roleId": "MS93yOxNInDByhno"}], "Secret": "luO6ti0QP2ssiJ66", "TeamID": "OzOj84O6tgohjtC7", "TokenAuthenticationType": "bzjPpucddXJ5zifF", "TokenClaimsMapping": {"8y959anrNSleywHb": "Hig6IKWVZ77KeRWd", "ECaFGzfZ2hxcJ2Fn": "emn7M23SzUo4hNBD", "h9ZFP1OW0nXOErQP": "S4VsRoYIK69yg9AD"}, "TokenEndpoint": "CGiXaLs2xjHkinOD", "UserInfoEndpoint": "975nARHCmhNHSXuq", "UserInfoHTTPMethod": "IHsxvaUoXDmwWsuk", "scopes": ["xncuD3QxCXMd00YB", "WCaVVmM45mfIZsWh", "kS476dGGJwJ00UH1"]}' '97MJ6zU7JLMQyMWz' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["YQCAaPJgoxGJoJaS", "zUtY4ZD0Xtb0U4pH", "16NUsVY21NVIs7NR"], "assignedNamespaces": ["en2Y3Ns0QJQeaWyt", "Pfds1BYx0EaURydf", "8ZyyZeHAWGgJUbUJ"], "domain": "RMbkcTglbU86FyOj", "roleId": "ApNHBVfNOURcjY3Y"}' 'YT9oTynmfIuBWgJT' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "NFfM8M0IW4oe8KDg"}' 'y0xZfAcNg14Ws8TI' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'P1LKiFQoLDvumfqr' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "gSfnx2h61X9dN1MG", "apiKey": "RXBJ6mVV7JS9qjNL", "appId": "wvI8JdiY3RRiLilm", "federationMetadataUrl": "OGF6dLLIeIVIjMcd", "isActive": false, "redirectUri": "VQ4X67tPZSTpPq3x", "secret": "jrElvvDgw0ag7kSW", "ssoUrl": "E0Hiqm5IuLryiEXq"}' 'vUWDjU1G0EVjVZw1' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'ToLuPakQN1MpOs1R' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "VFrcg2CXxepx78fv", "apiKey": "syhE2BKtyTDSIM7m", "appId": "kmvZ7Cmsh4US8o4j", "federationMetadataUrl": "fMANPpmZDdMiCxmu", "isActive": true, "redirectUri": "dWYmELe74p38vumn", "secret": "xAnYBTxaTIz0jcgD", "ssoUrl": "I8Pkz96vd80msqIm"}' '5bufnBqrpLeqhwVh' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["jnnjKMEmtbiWsAQH", "bMrKYi0Zxs5SWCqZ", "XHLLa31oQf7BULnZ"]}' 'DhutDM6BqguqD5xx' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'GxBWtnTKUe2znsqP' 'zPkwCBo2SwCUsTag' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 '4MLAo3m61P2xaNfm' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["ZhNMd1onFjGRbxtA", "BPXDmgNEJBhgGq5G", "IDhNC66szbCCf73I"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["FbRkPSSITz4TjCrJ", "HXGXku2YVuOzhxHm", "nrrV9ZGWrZ05sxe6"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["A6RpmKDebNkylbyn", "kgT9vayLLiizac7G", "e6zKJdlt7rjF5RaJ"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["wvkWVco2LTo5ijlv", "DF8qBWCQ9dLWYyS8", "zdhMeBXH8x6HdVfZ"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["VDAiU6iJOF7JKZFN", "k2NKy59X8iOg2sVB", "iCoeC5weXJl7PeiM"], "isAdmin": false, "languageTag": "8z8dVej8N2yv6VTn", "namespace": "OK7xAvM7tuL81lsR", "roles": ["7xxSVp3Gd2TK0HzY", "viTgYmx82JVBRLPZ", "6Iz8tne5dbguBF6G"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'svvdl8jHz9x7XZIj' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["U4IK9lOLaZaMphKC", "qTq3EVheJjoEEXBL", "IxGnNuhoJM3WWPvv"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'CiCf33ViEdqQpoGk' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "UWNizk5UcPAGv6c1", "country": "ESC6hZYTYZbzf5aA", "dateOfBirth": "NNNs5kgSZZNUHbIT", "displayName": "9szApmWJO5vzzXZj", "languageTag": "08a6K1XRVfriSpPF", "skipLoginQueue": false, "uniqueDisplayName": "JPOIKrRBrYVzi9ui", "userName": "3lvozTt9TsH7A0Tu"}' 'U2aL4bPkk11sys6G' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'dkDcos5uVJ0BJfZ0' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "jvA54CSqZFDsO1sk", "comment": "RjOU1SMfQVQa6blj", "endDate": "9Rdd85bdYUumPKVS", "reason": "ZCg3XTc9vQe0dHJf", "skipNotif": false}' 'KIuvnRCa9JktyBdx' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'kZKrEWFw9GYxjiiO' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": true}' '9QWVMYz7TU1TsxsC' 'hSclSkb5aBi9K9zy' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "v6gFZXI5nXJ7hLi6", "emailAddress": "HweweRmyo91dIn7Q", "languageTag": "qXBDXJcrqKmXDwoE"}' 'V6tCdrxw1KOPhuvH' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "uYrGWDK41uMOC0mR", "ContactType": "vSoaGk4ktF5wnJDg", "LanguageTag": "9Q3WXiydCOInVols", "validateOnly": true}' '4lU6jaGfsD1cfswm' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'eFpvtDtetoQVFL8L' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'NW11vtpaTxi7k489' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 18, "enabled": true}' 'RCn48bvkCPfKofwX' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'OIZZQAJza84lKKmV' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "OaTS6xBbNrSUAW2a", "country": "k7ISDrBVg6NuDZvP", "dateOfBirth": "b1kuUfNfUDe4g7q6", "displayName": "PHEaqbzHvDDl1jiL", "emailAddress": "w3XMGBA6JXDpA1tI", "password": "C45C0oaGouFu4hXO", "uniqueDisplayName": "NgUwJnUpryDeRcpU", "validateOnly": true}' 'yLm67rkadH5Y41SL' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'jCPrFa05Xl5TPC5G' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'ODS44bmm7jPdKLdd' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "fdsUqjXVzW1QqxnW", "mfaToken": "R5sheLgsAF4ctv5g", "newPassword": "uycGiq9j2EyIknfL", "oldPassword": "DpgHnMOn8nc3gUZ8"}' 'ZFyyEr0KBXuJBqK4' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 87, "Resource": "M18uux9xBomQFPFW", "SchedAction": 50, "SchedCron": "c1ZYapx7C477etqg", "SchedRange": ["fOJDUT0uKAPrARya", "2IMlNiXpF4qvsUUp", "Hqi33TcBGkc0HjUc"]}, {"Action": 27, "Resource": "EcNcJqrKxnMzSYoc", "SchedAction": 10, "SchedCron": "ZjiMY4H34B6wVd8i", "SchedRange": ["pcKDwQeUWtjCC2UH", "6jzMO3AfmOS5mQNy", "RPZFPNP56l1AT6OL"]}, {"Action": 75, "Resource": "mbeqaVemINdClpF7", "SchedAction": 82, "SchedCron": "WBSO2jJepUnEEgja", "SchedRange": ["2mIE2kLTnJwc5Xmk", "CuL5W4tKt6G3j9LY", "dG7xVPqBqe9RDQMB"]}]}' 'SYAFLqp8PF5hCcou' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 21, "Resource": "10DjjwMv4vrIPRtv", "SchedAction": 14, "SchedCron": "u2HEG0qfKegvFTD1", "SchedRange": ["sPykS8YLmwtYgWGc", "A0h4G1LZ1HaX5UBM", "bsF44VTsLDRzdq22"]}, {"Action": 5, "Resource": "YBF2g7TVtzYEHUod", "SchedAction": 14, "SchedCron": "pnnVfxPwc259HF9e", "SchedRange": ["jHaILQruAuYyJLYG", "qMv824ouSgkpK70u", "JmUL0uzElixc023d"]}, {"Action": 70, "Resource": "JOBy6lsj1AKGBjnH", "SchedAction": 25, "SchedCron": "tx3VAl6tXFbnATCz", "SchedRange": ["UOIzVcy9k3ie64Vn", "wa0ClGQJultJe32A", "iwKadEoIVmprwPsa"]}]}' '9YD92CX0rITajpwH' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 71, "Resource": "GcRAn51rVAQSxp4q"}, {"Action": 93, "Resource": "JbQ3Fj1umx4ItzkM"}, {"Action": 73, "Resource": "mLYsHooOIaxIpb1c"}]' 'IOJPS3lJ80YJ41U4' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '29' 'tx60AehGz1ermJYX' 'sYgL7TfyIlAwjTZd' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'RZJJzWZwvTX2bamS' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'CvX1nwvSWdDwD7WJ' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'HzgNZUKsI5y0mR3z' 'MyTsftKqnsIJctAd' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'xyZVKHA9DkaSOWgt' 'g8yw8lHEbVDwBAqa' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "nOlscRIWw82k5K5V", "platformUserId": "TkdubkOFldMCQ98J"}' 'H4n0JtgqzZv5kVu4' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-v3 '{"platformNamespace": "S95mj8YRvae4f4lh"}' 'BPbarbWEm8bVtZcf' 'VCPdQhim9QKUAFTV' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'YelIlGJg9wdc8bih' 'hWjfZpfcFBUsnnDJ' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'lmD1iEokbUiYzCQh' '2iNTwtnohddMzMTQ' '9P7sYLDWAJOA75K4' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-history-by-platform-idv3 'BYJ2fkqYJoF2FI3v' 'yyqRzc20O7FdsJP1' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'G9tyBTfERXdvgD1Q' 'f7Ot2DkUt3yexZBR' 'vxYnEBhXtAVxCd3m' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'eTrT7cF9oVCh89wN' 'OkKYssVejcL3kR3h' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["CGNgaJmuALlMQl9R", "Lrthbfp0VgweLlT2", "sY3SsTnDQY7kKU2u"]' '06Q4veujxtyQENvJ' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "rBCqeg67d4RWOqO4", "roleId": "U0bitNQLzwRoWnR0"}, {"namespace": "AbkCPY70FmvviVIB", "roleId": "bcujF8Vk5qb8NhWW"}, {"namespace": "waxyMchkt8l5IPSr", "roleId": "wrJl7wYIVw13NCo9"}]' 'yXlbQ52FTHTCj6SE' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'AzT7TOpyiuvvQUm2' '9Iacq4XRLaA643nT' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'MtXSAyejnny0Ju13' 'b6o5uB2XM6IHy7EE' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "ubN4AUUPFPscZsXe"}' 'JOD4DMtqfIGiGJov' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "gWSRxZ8N4UQ2fg3V", "password": "1o2x0hL5DuBDqMyI"}' 'AzWze94MEdJFAy2J' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'TllJkRGB8jqJEd6e' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "qqsBVyONV0JRtozI"}' '0jpliCFQ6WgJpGPi' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'gdc5VyC4qvWjVac1' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "b7yaLXzAVYymOuhC", "namespace": "kZu4htrsf8eIFSov", "userId": "TGXaMsq8ePN1oco2"}, {"displayName": "jx8Upe8SjMvpqM8p", "namespace": "uggOEdG47gD5i2Ni", "userId": "6AnWn3NdEPhNHSH7"}, {"displayName": "eKDfRcngEpTnRUQr", "namespace": "3RLOM1vEx4gqDY6j", "userId": "wyKRxhkLe5zohg9s"}], "members": [{"displayName": "9utRQt28b6o3K0CO", "namespace": "F74tz6aeXZOYwbwj", "userId": "MNdxKWlBfnRyFS0E"}, {"displayName": "d7gTM5AVrtBQiDTc", "namespace": "NnZa6Zuxk6u6HXXd", "userId": "iC9ZDj4E4mv12FNX"}, {"displayName": "ypoOLl13j84P0Kqi", "namespace": "rJ4PkMFtsnFfz8Ew", "userId": "0X8fBuBSKLSQ4GvL"}], "permissions": [{"action": 39, "resource": "RLiDi0mNHb6Lx8eq", "schedAction": 56, "schedCron": "SGNwEQO8dYXvBSYv", "schedRange": ["JBwb6CjZUMRf2VJe", "tWsokvx3BHuTEczr", "9KjQ3ttz8MTBt1xk"]}, {"action": 70, "resource": "mcjSuz9vbNStqPtQ", "schedAction": 24, "schedCron": "Tb7iYdmNZWosrsVB", "schedRange": ["PZ64j0HUONscofwY", "LQcDvkaEIIPoJT83", "zEGXmVBZLyrH9J7B"]}, {"action": 29, "resource": "181q9GA5DydC2D8U", "schedAction": 94, "schedCron": "4JTsqDTynCewqJli", "schedRange": ["gLlRxOelKykICRxF", "6HtlER2txs4qrNAR", "ATn6KXOutlYBbLhL"]}], "roleName": "8KXx25FZfQIodVBq"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'QsBpCJBIXLGYcwWV' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'RK6UKk5ozrXA4HZH' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": true, "roleName": "biPJ9j4vxmbH3rVa"}' 'auufxkPHElug48Tg' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'fNu0rqXUOyToLPIR' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'EGIKlJt3EP9kKwkE' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'NQ8VOHGwbADMfuOm' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'h0lciRhVZ2DeoODX' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "MzLSrzoiBnYi5UWs", "namespace": "3tYlYeMoCimJySoc", "userId": "RvUWDOrFZKPNoN9A"}, {"displayName": "WtLK9TFgi9j2XMh9", "namespace": "WpifqjNjLOtNQts2", "userId": "yxf6MLZJ2jZfZbpT"}, {"displayName": "JezzriCDWXT59SRu", "namespace": "0YqUxKDc84OMIzvT", "userId": "ScdbKBsAyJMz4ILN"}]}' 'DvhB4Eoes9a6XaJe' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "RbzTPwD3jxF7vxRU", "namespace": "Y0ilrNoFT98SgtJd", "userId": "4Z5f8nfaKqdZFLbZ"}, {"displayName": "EHxsDxeR6d7r1SQw", "namespace": "80JfMpPrSqYypRUn", "userId": "q5o4ETeCUYG9ccTt"}, {"displayName": "7Wxw8OQ13t3uTw6z", "namespace": "QuoZcXQpoTOxe8y1", "userId": "jorNsg9ZKYCKoISy"}]}' 'XtHzoWGdYohxMp3u' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'OQIybqWfG9BJ6FVK' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "lbYHtbPtaxvagSlp", "namespace": "GgVTF6VeDAPOGBww", "userId": "eyFfXEOEAEtbag82"}, {"displayName": "KgBgyCd5vjkfz3eR", "namespace": "4DtNp129hzBw3xLU", "userId": "cCEt0DzmkJq1sml5"}, {"displayName": "bYt76BNsi4giR943", "namespace": "4WpKKdzxoufCNlFo", "userId": "OcWQQy4bjmQeEweo"}]}' 'BHTdwAk7ZQnbqY1c' --login_with_auth "Bearer foo"
iam-admin-remove-role-members-v3 '{"members": [{"displayName": "QwVEtAr5kKKAo9MM", "namespace": "2Cqm84jVi9kIpqgr", "userId": "zpUkNOBWydXV0Fi0"}, {"displayName": "2aFr8CDapjwNOl4k", "namespace": "8rVNrm8drv8QD2JO", "userId": "e2Ntz7EFvowPgIGu"}, {"displayName": "etxFMqXCQMAqQ2ZR", "namespace": "GzNtrThFa9XU8mos", "userId": "luiHZJ7O8sAQ32wj"}]}' '9uaDzsr9xYiWRuuz' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 87, "resource": "XUjNypF6MMqWpdEJ", "schedAction": 37, "schedCron": "bEk7s7gw07FlounC", "schedRange": ["3vJKBC7SwgoViPeI", "B4Ehy0Y5aSJVDgin", "xAM77eY9C14FbfiI"]}, {"action": 81, "resource": "eIba1sB0HsJ06Dzf", "schedAction": 3, "schedCron": "WZbjf7GZxaossQmj", "schedRange": ["o69wohJFyTNk5FGU", "PhR4LEZvz3EjFR79", "96Ug5m4axDV5uTcY"]}, {"action": 38, "resource": "Sc58zgZVl4gIF7v3", "schedAction": 34, "schedCron": "MgZWAU6E92nHJzvw", "schedRange": ["7tnYtGfv0EJyjBu4", "EzwRjD7jmQJeFPgh", "qamSc5y0X48eT7Ml"]}]}' 'uexk87b9Z5BTsEA3' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 62, "resource": "SfWhT5B4WedopzwS", "schedAction": 24, "schedCron": "ojzPXI2v0prR3OEe", "schedRange": ["y0MkZwS6TYwNN3UY", "hic03qGEg5fNzBVr", "jo3g8CfRwtyl1HeT"]}, {"action": 99, "resource": "ovoKWE4EW0sw8v5p", "schedAction": 8, "schedCron": "078IghoQBp2mWAOY", "schedRange": ["ksczxBS0OBCa2vWa", "dLmQtYKmEMzicbuL", "2S3RiW8dLTCBfGUd"]}, {"action": 98, "resource": "IyvZbOy1T4hfwkuV", "schedAction": 51, "schedCron": "aJoSqtrEOqxH46fR", "schedRange": ["TSZoDdT0fefo74eg", "3Nt2c0r4GqF0NHgl", "OVuNZ9LzNeJnBurh"]}]}' '54CWbYb0Pebyt8b4' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["DGscjwrizsFUgYwb", "aLvqvQ2NbmDITuym", "TBjn3d2sFzMS3QaV"]' 'jZF7Ax6115Kg9U8v' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '36' 'ivHEoLbUMM47f1Ur' 'eUpxEkXIbE1ETzRJ' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'ZKMavu4Ul2IaieEb' 'PSE7TGkeHsYsW9oG' 'BN1pYMBwbPZTlMlU' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'vFEiGprcNSQ9kEeX' 'BZ6FVrBzyhyhoS6a' '9oe0JaXFpff28uYb' 'e4Cf2HEHvVevhISj' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'btBJUK5fE3OufPSX' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 '3PdOU2V9yw94oa8U' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'J34TIedV3HyoX4Vn' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'O2LpBU08wfnlHBXF' 'IqFUmgUSMM5au8GJ' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'T0mkVPI6zUtf3QaJ' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'PGrTNcXXTUIggoH8' '9QNmI17UDb19R6H7' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'r1ta3m7jK5pxe82p' --login_with_auth "Bearer foo"
iam-authorize-v3 'gFiAS6piIzmc8rKr' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'EPGSAcong6eNERUf' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code '8kjci1Ctccv9Gv4t' 'OcbnuCqf0lm6WBkI' 'zjoSV31tvmMB6jzr' --login_with_auth "Bearer foo"
iam-change2fa-method 'pRGESmooHiCV4GUO' 'nXpapXQGRakUbcG7' --login_with_auth "Bearer foo"
iam-verify2fa-code 'PcR4eiU3Idi55jNr' 'GNT2VHTKuIT5FwwH' 'j0Ur5F2PWGTTD81x' 'false' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'BAoKGcVCdMiSNV4q' 'Brt1kcLmRv6EJtl5' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'xWnsb8oWq94RImNW' 'VIJnhhwFDV1Vitao' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'mvWTzdsW4N70wYS4' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'Kj7Yi2VvoQNW8Yc4' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'dYdvGxJAMDRA1LF7' --login_with_auth "Bearer foo"
iam-token-grant-v3 'client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'C3Bajy3BcEMCtQs2' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'FcEcvVAyId6Cp85H' 'VDsZBQgOnXuXsGTh' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'YZrmm0wrFMnPpWgr' 'QD4hEk0OLjYsnign' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'E7KcMF7fuDbzRRYM' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'NXWUsp1tOibJY9aL' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 '9ie6vvMbiNURrlm8' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 '8QlKyuoya4JgakZy' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 'UV7t73VnSFbuxd4K' 'YZ0jk0UZdhtnKu9o' --login_with_auth "Bearer foo"
iam-public-get-async-status 'Tc8pVkiyGsj5JdXz' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "RxfNEjUMTs8WIObJ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WIRUQmauIY5HXCZ0", "policyId": "W4XmWP0HzSdiylLh", "policyVersionId": "VYszm8xY33OQbumu"}, {"isAccepted": true, "localizedPolicyVersionId": "LyZNuysyM4OfCzdQ", "policyId": "CXMAWnf87YPNOe9E", "policyVersionId": "evf1fhMg1E2k7QLF"}, {"isAccepted": true, "localizedPolicyVersionId": "hM84DiZk6ySrB9SV", "policyId": "FctW7YS0OkL78XeE", "policyVersionId": "AtALFI3v8yha4pd5"}], "authType": "A7MYcpBD6lKNb8Rx", "code": "vN2u5J7baOeLH19f", "country": "qBwNbNe1ffYRtIvQ", "dateOfBirth": "aKyevWYtZjK6J29v", "displayName": "8MpBSpo3AKRmnJkz", "emailAddress": "JHAckUyBksYQfDm0", "password": "RNFwiz70tRVLMlHi", "reachMinimumAge": true, "uniqueDisplayName": "i9gOVqajUWrgEsWD"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'taKzn8dZwnnGeZsZ' 'VgbPzPFbrOMZMgWk' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["FN7Tpkx6GcfyOg6Z", "Urrp9ubg9mndW2JK", "mQafUs2bxYztOEyV"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "bKIf1ZbzgUwd8DHo", "languageTag": "CQykmXHYmkRlg7gY"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "s6unPYQ9jNQN1di1", "emailAddress": "ldhOh6HvjnYuV7Nf"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "C4A2ODiZhbfb8QqC", "languageTag": "yK1XH9D6vl5eFdFf"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "gK46GjCWaP8huTmn", "uniqueDisplayName": "q3FGQn3Ahu5wxq6o", "username": "Jq4mChmQHQhO9IKB"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'XDFQfXFD58sG6uDh' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "FYlrzJBYSeMuJfQe", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Cj9ObVGT0Scwl4kN", "policyId": "mCi15XTJTgCNNH7R", "policyVersionId": "tG5Xmo9Q0Wb07N17"}, {"isAccepted": false, "localizedPolicyVersionId": "q8OzTE89WDNoMcOm", "policyId": "bfJrCJQIj1haAosK", "policyVersionId": "glqaCXE9ytpIO8bt"}, {"isAccepted": false, "localizedPolicyVersionId": "3OwNEGSW5TaW4to7", "policyId": "QCY2NGGvi9kg3rMI", "policyVersionId": "zNmhJTNQjKlwjfJ3"}], "authType": "TJ2xVpge70WsLfgb", "code": "ZieRvJI5sT9DH3Df", "country": "LCv8q4Thmq09bBgP", "dateOfBirth": "AYxrBE9jlnTgtgW3", "displayName": "3wDwD9RKvQX4yFQF", "emailAddress": "drRoM6FoqCYw7Alx", "password": "O6qdFpc71sSck3gg", "reachMinimumAge": false, "uniqueDisplayName": "WJlSlCQMDji329Pf"}' 'VrvMEPtpsSNcpK1Q' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "kB2Sy8Ww79LVeVsk", "country": "qeUB7RSayqGFguhh", "dateOfBirth": "3bvadRthdbVApebR", "displayName": "A09rW8i8krFWJhe0", "languageTag": "3coRFok5d3AyGrZO", "uniqueDisplayName": "8GuoXNSoVEBG7VbB", "userName": "PUWipz9C05YabFX4"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "FCK5ucTFsAFzaO3y", "country": "JpA3KMxBlrRytER1", "dateOfBirth": "qdTelFAadM9y66Dr", "displayName": "f4SSGGt3MiBKohow", "languageTag": "3kKoaP1K4CDuH1mM", "uniqueDisplayName": "IfOCDyVAHrHncR5d", "userName": "ShqiBUI9esSsXegS"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "EhrPpK2q8kxR4BuE", "emailAddress": "ksS2A9VOA8H9VeHv", "languageTag": "0L2Acm960EYQEuGJ"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "Vl8xs1WId9Wlalqs", "contactType": "hF9Rh2o7GCQGPCxw", "languageTag": "EdkyuT3MgzReRq01", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "ISArROIodcmM6v2A", "country": "EozWWaYvBLE46bpu", "dateOfBirth": "Jip8JyxJ39vrtuWW", "displayName": "rqTZbSqBSKp8Amgw", "emailAddress": "hYzk33J34fiTxK63", "password": "OHpnUCGBVfpctNFU", "uniqueDisplayName": "sUQ6ZXQcb2o1J5eu", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "AbBgejqc0apxqZ20", "password": "9BySn8aUaGlAyvIs"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "lt7N1qcxKs4nlf1M", "mfaToken": "fqUZXkjHvcUOTlxN", "newPassword": "f09pefgFIiJssShB", "oldPassword": "KsQjXvfQgQDt6ce8"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'NDMErA82FrR1GSog' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'kewIzTOqKkcjRh3l' '2gAJOTCbx7J3gNLI' --login_with_auth "Bearer foo"
iam-public-platform-unlink-v3 '{"platformNamespace": "lTk3Bpclrk4hIRn0"}' 'znIKzAEAHQpBOgHE' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'P5l94s7CbIJ7eHnV' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'WOboMkyB7FTexsOZ' '0b2p3b63KrcwIcXM' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'hGy83Xit6boOLGCc' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'g16DqwdQPQ9HkSSV' '8e1MgTTLS2FgarY9' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 '03INGIyEfRBEj7qm' 's9AGQExPhgr9gGfC' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "0GjvpgJfuBs1Vpqn", "userIds": ["47GVghTH2wToOnq9", "U5lyW89Xwt3wmRTr", "DCjhnKvsHezWTqgY"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"code": "PixtHk6lWq6tEeUm", "emailAddress": "U96FLEak0mJqjRYl", "newPassword": "dcTpdeCD9XPRi4bA"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'QL7VE2wL8Y4JFVUd' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'zA8bvXlDhG7Brorb' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'KIKuOXJPm5ztrr09' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'CDA8Ij5bGKSuopWQ' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'baCvdPSq8Z27GpvH' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'CDx55JZ5z6gujpFz' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "lPspQD9IRIpDDubn", "platformUserId": "tPCFxfeoW2NdSWzO"}' 'XjO1NQUqWHBW78XR' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["EZCiTNAxq26gZrPq", "CsSDspvgM16sZ6rj", "nkH4ExObppC6CMYD"], "requestId": "m5ge659UDEOF6gp5"}' 'UfmjtiVbqJnZcrqr' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'Pye7fCwi7Il2wIFl' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'Hm9N6owMHMtJy1Oq' 'n59tEGm9NYeUT5P0' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'nx8TqSZdZ5C8mFI9' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'TnvzEqBNMF9CZvPx' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["T5zbreMc9fBoU3RH", "NDFjLKFrepy56eW1", "kmb15QeIQF51c4Mq"], "oneTimeLinkCode": "JzDSvELgBe6dboSd"}' --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "hkBzAzPkt1efGJeJ"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'axyHYutgXucx85vH' 'A009FAb21jxeWXk8' --login_with_auth "Bearer foo"
iam-login-sso-client '0y9uxgVLGgK8aVSC' --login_with_auth "Bearer foo"
iam-logout-sso-client 'N6oCETQ8gIDRdD2w' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'wMXwKVXGPhEJsc7r' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'ZpxaPHc9r8eToFmk' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "HJ6BPOKFLxIwKssw", "deviceId": "647YwDudnGRufOUG", "deviceType": "fMjTU226l07jPlcY", "enabled": false, "endDate": "M2qohglzO8AEl6A9", "ext": {"sh2x2ur2ccp7R7Oq": {}, "PqIjS4i0N9ytb3c8": {}, "pVZ8GlU8962e6gtn": {}}, "reason": "5pUARJM1T8QwMNOA"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'zXmyHEV4g9P6a280' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'NB5dVCsB7xL4axSP' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'gPCiwLxCFLDixZwV' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'tt3RVTl0tR00oQgc' --login_with_auth "Bearer foo"
iam-admin-decrypt-device-v4 'HdGGK3x76U1EIckl' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'ttmrpgF5szl0sMY8' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'es36r1FgR70eNLHk' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 98}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "rEFd8xArWJuCAIfN", "policyId": "BSHgpFNw9K9pmAIc", "policyVersionId": "6VSfE9nbE2PMv12Z"}, {"isAccepted": false, "localizedPolicyVersionId": "kujxbCu1HFaj6Vxs", "policyId": "3GuA4S1dS7H7yIS7", "policyVersionId": "b5TSDRIoMg7Dc5AP"}, {"isAccepted": true, "localizedPolicyVersionId": "EzwtLPxK1os4qR8L", "policyId": "aQzEb39sZTdFfC8x", "policyVersionId": "5aHLsXHlm1RJTTy9"}], "authType": "EMAILPASSWD", "code": "ihZkvFKfSHQh8I9x", "country": "k3sFl0cbuCRM69XK", "dateOfBirth": "kLwioRaKnWhlh80B", "displayName": "hYe2fJDS6T75Q4ul", "emailAddress": "onMFjmYqE1wJhfog", "password": "Wg2Apm0sUy18aWn6", "passwordMD5Sum": "5Co0vdCk8so6JSaZ", "reachMinimumAge": true, "uniqueDisplayName": "DK46Eehx7xasqMY9", "username": "aulsL6NOV5agpS6A"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["mkufBpWVxIK9D2bT", "cgaKoccaSwWcZmzC", "WGI1cIQcPWAShIhi"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["eSKUf3zKbyQk2vQT", "YX1xsth28NZZgsXy", "cuQNGIDeHlf6IcX1"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "K9JrK6Or2xx7rLwr", "country": "PoWiywnxuDLLuIaS", "dateOfBirth": "xoloIH1gBCWVFrvl", "displayName": "s0ZwosKhDlLfTKxp", "languageTag": "VOXvGSrdkqddI3ez", "skipLoginQueue": true, "uniqueDisplayName": "zkbDseh4tJdoGcwM", "userName": "BmegqVUaWMJBjrV0"}' 'p9A7tcHrV0MbJGr4' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "drgkDuWS05m0pGza", "emailAddress": "zM2BUXnzUEWTiKMJ"}' 'Af6AgbiEDMfCckWo' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 'gE5gcfF8AMGZ2FBS' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '93Mg6TKwdRMraDLr' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["wh3d0ykRGkgqUNIb", "JMJ9ABbKVWO2YEDi", "qkwKbpdk7wlDngNi"], "roleId": "PPjpSAlZwFGpea5O"}' 'bBB49Km4ClIQmkId' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["LCvNhZ6P8aqZ2yfr", "C1V7ZpJZPHCMqvcY", "meDLYEzs2SQUdKr6"], "roleId": "vgqkjycqclNlBORl"}' 'C8ZkjsxYtgxplHTP' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["LzynjFZgF3erw7Us", "yHq4bBb0n1JhPUS8", "BRPGV9n769zLJdKM"], "roleId": "exeJc7NvgTSgKjCx"}' 'ZjKf8NA4cGUaDfy9' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "fd1GS5YkyhAiAItn"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'WUmD225fp1egsx3E' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'rheNwqd5priclNNq' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "lzrJ4QHbfnAdtkuj"}' 'xHff7n1yaNCcjgFh' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 91, "resource": "vUTr8XAtpOqUQxzq", "schedAction": 73, "schedCron": "W2B2uPQLrt2t6bVp", "schedRange": ["CgKvPXSDufmKh783", "cV54JsVBRB0rY0xf", "WddACyHSmo4KX9TP"]}, {"action": 83, "resource": "Y5aSlqhYoSXbn6l5", "schedAction": 49, "schedCron": "Xbpqxh76Af5JSwjw", "schedRange": ["2fE2g6jXV7oai2oD", "m9FaP0HJ98tE4Uyo", "Qg0b0sGOkzxVt15L"]}, {"action": 76, "resource": "OutADrNGBWSJ1zQK", "schedAction": 48, "schedCron": "t2G4eFh2YNsdoxpL", "schedRange": ["TBM9Q8t829Ido1Jy", "veSRiBq23kyH9jQb", "HWkcVk0X28GS54vl"]}]}' '7gIKBc7OYTylFRAJ' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 74, "resource": "ZVnkLT0Lb85nmpdN", "schedAction": 38, "schedCron": "6BY5YI0jeO2zMDSy", "schedRange": ["4kyqyKgrtEPdXXlt", "8geCdiXu3iNvn7vL", "Z7h6alhJNGZF07ls"]}, {"action": 86, "resource": "4TNs8mAj6IKSYFdJ", "schedAction": 45, "schedCron": "yzZo1rj0ZrLQjk4V", "schedRange": ["oYfIksth24cZBpdD", "FfvzeU5iqhx6zv7E", "URTNIoG1DBdoKH6s"]}, {"action": 89, "resource": "8oYUT4jyCVJ0V8ob", "schedAction": 94, "schedCron": "Q2Gd8m7Y3wiNloJf", "schedRange": ["ey3HXL6SjljNPTXA", "3qbg55SyienCODZ0", "mnOpPTVxEgBFzG8t"]}]}' 'lkxWKCU1XN4gl7yH' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["vEqpJSrDXVwCkhOQ", "161TFjROYJm75VIu", "COCkt2W1DfI8QtgO"]' 'Dk9K6DcMnyCPn1Fy' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'lWdaNV1VaZTkbbuW' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["iiA4UTDgS2SVEo5M", "80LLbku9GYH4ijqO", "VM50tCqkZfsSxAbD"], "namespace": "J7sHCLup8pmEosOX", "userId": "glQwwdeLVpmXqRwV"}' 'jc3W2ANmE3VVsQ1f' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "m9EUdiaRjuLsKZoq", "userId": "npKwhpZVdw5UMa8y"}' 'mxtEFLwELCY2vIdd' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["lxnA1VynioJcAPwV", "HUGcs1ACMvoY4jWH", "9dFmOHW0j9suukPE"], "emailAddresses": ["4JwQONQ2vCbMn0Oi", "a336uiiMTAductvU", "fVwLahtRedh1SiZl"], "isAdmin": false, "isNewStudio": true, "languageTag": "Q8GL7jBF1R5OexAP", "namespace": "zCG6ZKQClGc1636n", "roleId": "bfM3J9G40Y62bCo9"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "41ALznQuHVskfCjU", "country": "K8GeX4Q0B2Cj0oOm", "dateOfBirth": "BmXu1KiTTiz7yrIv", "displayName": "Qj2isN7bRwcr16lW", "languageTag": "5YwgZpjlMMtPWg82", "skipLoginQueue": false, "uniqueDisplayName": "7m7qNkQiKp2oac8Q", "userName": "TNEuBbeuQqm9wM7m"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"mfaToken": "gTtUdPVcQijMBhs0"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"mfaToken": "kDP6d3nuUZ41mSeS"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"mfaToken": "9SnGqhJOvykBcDpz"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'D9zh6dtPK4fVHLMv' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'rCsH3RYxH2Up9Vth' --login_with_auth "Bearer foo"
iam-admin-get-my-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'PjFrK7Hip0eONFDg' 'UPShG8wwFKY9AMpc' 'wJd4SrigIxAhbFMZ' 'fxaznlDQbzTiFrQB' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 '1yUonirH4URx3NkK' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'QBYrlUaMiFEWUT8c' 'AFO5zEw8GENEJYPK' 'xxOw7xNQ98IEbc9Y' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'TN98j4P2AGeidXRR' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'epicgames' 'HikKkpOjqwgKvfXX' --login_with_auth "Bearer foo"
iam-token-grant-v4 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'Vv2DLLUyBt5hDs45' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"platformUserIds": ["siG30Lv9iGa5mkZj", "nRXVcg6AByNpBo2J", "YkwLdmR97u9MVUii"]}' '4KpYcb1AUsESaBOT' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bG04KKnh3jvW0Qp3", "policyId": "kTyL4CsLwiWUMcpx", "policyVersionId": "n4B6XoTNMuqZTHwo"}, {"isAccepted": false, "localizedPolicyVersionId": "IAJQpb6r8ZeaSHwQ", "policyId": "uiH3Ozu4G6bXxp0g", "policyVersionId": "YZyF9fJBJkSOrF9D"}, {"isAccepted": false, "localizedPolicyVersionId": "JfThvCJieqRSGN8M", "policyId": "m74HlSZzp4aEW4Gk", "policyVersionId": "HG5OIVuGv47XJpkM"}], "authType": "EMAILPASSWD", "country": "rsDZNYUV48Oh6I45", "dateOfBirth": "X7HvUtPYONZdFk75", "displayName": "lkjQNHrjaboGomgu", "emailAddress": "UqeuZh5qtrRbNnGe", "password": "jdTGvZgN5hshSe5Y", "passwordMD5Sum": "mZXKEQLkM6o3eGSP", "uniqueDisplayName": "4Htmr90TqGf0OyqJ", "username": "9ibJMmRgoxNwp1lG", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7DN2lDvdh7okHl1w", "policyId": "Mht2Izq7TCUJhDsD", "policyVersionId": "efAS09VyQB1vR1mx"}, {"isAccepted": false, "localizedPolicyVersionId": "K17GL1CrO4ZuoGZS", "policyId": "xTzm8oMSPIHPtqzI", "policyVersionId": "WIzg8pbjnt1iBV8D"}, {"isAccepted": true, "localizedPolicyVersionId": "5QB96ndlO6iPGC9R", "policyId": "hzMC7V8BEphnRXnS", "policyVersionId": "pCzyb8FkoxQbrPng"}], "authType": "EMAILPASSWD", "code": "vvYeJZw6QZFN7wFC", "country": "nqpvNesGiVnt9p2t", "dateOfBirth": "o7Yja1soDE1K0SvG", "displayName": "rMYwPmPXC2LfL2m5", "emailAddress": "rP2A20t6foPPH94S", "password": "UinY5diUlqgvY7dP", "passwordMD5Sum": "PyahppgxJhk4EdTZ", "reachMinimumAge": true, "uniqueDisplayName": "00rS92594HLvWFsX", "username": "HtMP0k9L5dREQbCq"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "pssgJJC3CX0hpB1Z", "policyId": "GMMo5DSozCuFsrBM", "policyVersionId": "toOeLfMCYxSeeJOl"}, {"isAccepted": true, "localizedPolicyVersionId": "siMup01kyaFwwD7w", "policyId": "ecuQb4GNQHVZMKGB", "policyVersionId": "nzh4suaGIzttTncV"}, {"isAccepted": true, "localizedPolicyVersionId": "fDgl29GWKpItMt4G", "policyId": "szRufkDFLYyNBPlM", "policyVersionId": "rkse9SGcMuV5phhU"}], "authType": "EMAILPASSWD", "code": "C6HSMQ32UznXNd6v", "country": "e29lqqtcLJW9eTJv", "dateOfBirth": "KNDFrx6LabyDnqXj", "displayName": "XKPIcxh0x7T6RQGn", "emailAddress": "nW4ugGX6mKBbgTD9", "password": "xL07ZzzIs3Jke34Z", "passwordMD5Sum": "AUuLP897ooMLnemw", "reachMinimumAge": true, "uniqueDisplayName": "AvgDXNrFEE4Jf4hQ", "username": "psLOcLtZw0efmEVc"}' 'W7mxbS5UOoICxQMi' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "t8555Niy4NNFpRE5", "country": "pS85yTIRWvLRy58U", "dateOfBirth": "KWPv3F7S0wCVlYQi", "displayName": "9cfMCeNnu6OIG1PP", "languageTag": "LRDEXLXZWXvqNCHv", "uniqueDisplayName": "NpeMjMzguq6HFIqa", "userName": "qwH9J6JLb5f3SBMy"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "JUdwEBRrHAWUFqTo", "emailAddress": "oGGnPEgY0t7QQWl4"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "2byOwXgKyPhXmcys", "country": "ae8HpWH4xiz3fWth", "dateOfBirth": "JSu2pUIIuPLFAtcW", "displayName": "hjAP57QbWvSSp71z", "emailAddress": "EPPfmAQiqRRC2caq", "password": "uMRtQOILcaDqUITB", "reachMinimumAge": true, "uniqueDisplayName": "R5ISNoFR3GUxdMuv", "username": "mL0UBfwzaaeP3Wd0", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "RqjlvwnnCA5tfK5u", "password": "shaKTPVjyOUpR3uU", "username": "dgNlyU4IJnqtrjCO"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"mfaToken": "sE8VjvzhJwNX4bhq"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"mfaToken": "CjlwrmsSRV86iic1"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"mfaToken": "FIMyF7CcNu2DYn6E"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 '9Gk51kOTJZluTekD' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'MCGUJvERxNg8djSb' --login_with_auth "Bearer foo"
iam-public-get-my-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '4Vt2vKQ5vlCdI519' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "Pf2iogwxM5DZM0dg", "emailAddress": "ozmco41750xdYQg3", "languageTag": "4WUV0WpmsQnp1n4Y", "namespace": "GumTKOlDOy5vhSkx", "namespaceDisplayName": "ERZ2AQ1jvXYBar5R"}' --login_with_auth "Bearer foo"
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
echo "1..401"

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
    '{"modules": [{"docLink": "MmmGdWl0wpj5tVfK", "groups": [{"group": "U3D8WVPh0Z7YiGE2", "groupId": "cyzTMBY7Xd0OoENg", "permissions": [{"allowedActions": [89, 78, 11], "resource": "w7uepmahXojVZYz2"}, {"allowedActions": [52, 78, 63], "resource": "U9jLzNV3GaG43R6n"}, {"allowedActions": [24, 14, 89], "resource": "HSka0Pz7I1WkIa0o"}]}, {"group": "Z1nXpW1l70pcZgIn", "groupId": "4lPghHyMEHBzArby", "permissions": [{"allowedActions": [99, 80, 26], "resource": "NkJFQxuMHnfOlX6H"}, {"allowedActions": [85, 98, 4], "resource": "EiaereFCPJU2wEzU"}, {"allowedActions": [11, 96, 46], "resource": "TmZ8JSMeNmRocp40"}]}, {"group": "0RZe8Bzx9aGEI22B", "groupId": "TCZs97TJI8GPrM24", "permissions": [{"allowedActions": [64, 18, 8], "resource": "celFgM62HQtgzQhO"}, {"allowedActions": [74, 27, 20], "resource": "R8j8DlP6OGbn8vmf"}, {"allowedActions": [79, 14, 6], "resource": "GLt1AjKhh3JMX7xS"}]}], "module": "rz1EH6X2SM3xzsNr", "moduleId": "JzWBcdFlo7oAsOlf"}, {"docLink": "LB1J19b5rTfiL2P3", "groups": [{"group": "r1a8KIJH33aKkPuW", "groupId": "D59MgTy1HA58Jt5N", "permissions": [{"allowedActions": [0, 38, 89], "resource": "4e0uR47OzUGHeBKt"}, {"allowedActions": [32, 45, 10], "resource": "yRNgjZkdDppvEJiU"}, {"allowedActions": [18, 7, 60], "resource": "hwmcH03yoMxzRR6x"}]}, {"group": "d9rTh3ureaIbxM3W", "groupId": "ev9pZQjWAN0tny16", "permissions": [{"allowedActions": [87, 68, 44], "resource": "ZtuSJGQCrM7JEMRP"}, {"allowedActions": [20, 8, 37], "resource": "TcAzkIlndN5xeayr"}, {"allowedActions": [52, 45, 96], "resource": "SjzQfOLYu9O46OOz"}]}, {"group": "z9p57qSpHerzO87c", "groupId": "g7TqtMiQgi7Aj28q", "permissions": [{"allowedActions": [59, 71, 89], "resource": "Pei0pXglJYnKkoCA"}, {"allowedActions": [43, 70, 30], "resource": "yhwqk140MolIrnlk"}, {"allowedActions": [90, 97, 14], "resource": "bcX435TDYpkk2Gza"}]}], "module": "6DrSycophHw3EoEE", "moduleId": "ClTO9SDKnMlnKW9j"}, {"docLink": "iNMu9QVrMeD4bD8g", "groups": [{"group": "ISE34yIAZQeigiA3", "groupId": "wBrmBYIlZeheP72A", "permissions": [{"allowedActions": [56, 62, 16], "resource": "O3YrlyrWowUpUDVL"}, {"allowedActions": [24, 83, 94], "resource": "RTyHnLYDAAg1YA4k"}, {"allowedActions": [43, 96, 84], "resource": "RmoGgxVRMPf8g1rb"}]}, {"group": "hfIMStMnSqrKWYOu", "groupId": "ITlYS2RYaD9WNKGh", "permissions": [{"allowedActions": [3, 66, 78], "resource": "KmcEKp8AQwqgJs6O"}, {"allowedActions": [86, 88, 1], "resource": "j0ccMkdz6zPz3BVH"}, {"allowedActions": [54, 45, 33], "resource": "jRyfo4nWVZZbKFsK"}]}, {"group": "OmgEhjH2wFzCpxxJ", "groupId": "LfAg5cFT0gHAkltc", "permissions": [{"allowedActions": [90, 94, 8], "resource": "5uzlmi2NY26xrkPP"}, {"allowedActions": [6, 31, 14], "resource": "HBJX5ln8PZbYVD8R"}, {"allowedActions": [18, 0, 30], "resource": "TsdD4d3kSbTkHPMU"}]}], "module": "vOAUXkw36cr2WJQq", "moduleId": "S7Tq4YIyZAFQ6lZf"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "a2jdNvpWf32JS1av", "moduleId": "9VNpVLT0LvqcfSdO"}' \
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
    '[{"field": "1nAjY5FvADb3GUQg", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["qNXJ6JXSh0Z3SWIS", "s1dYrJKmx1BT6iLF", "QejNZJNF2hm0TqBQ"], "preferRegex": true, "regex": "7g4W1eAmDxP23qst"}, "blockedWord": ["MuikKc6VNU8570si", "Wm3V9sirE0JOQxWe", "HypqCWMDPRI2cCk8"], "description": [{"language": "zHR8VyCC0EQwE0cX", "message": ["okXbwKDtVmrYQu7h", "ZvHfiT9s9pK8HuUY", "1QQHQ0NCEddJtx6G"]}, {"language": "V01vD7lNLxlpvqaB", "message": ["9P9GaukfCEIeSBLh", "TfzigzHcRuJgYaj4", "I8Dzyh1N0JEKNoMt"]}, {"language": "HvjM7X1fjzknv2HZ", "message": ["MIL2P2bh14LroFTn", "AuujPeP9N0vdVB5a", "2XkS3XQfMuzZh4Ah"]}], "isCustomRegex": true, "letterCase": "Re2hgU56xtyJtnbT", "maxLength": 61, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 28, "minCharType": 43, "minLength": 84, "profanityFilter": "FbleSP5PcdOuq0m0", "regex": "rvakR8rcwojLRjhc", "specialCharacterLocation": "aJ56nGlYZ2tod2BG", "specialCharacters": ["BXjNyRCtPOr1FU3Q", "Zy3gdDms3kb1htW0", "UGJpwQZlXuzu3m9u"]}}, {"field": "67JjCDwg186hGWKf", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["pAJMCxMp2J0hDg2k", "MgkvhoQe9gD9tGN0", "nE7M36mI9u3EeZtL"], "preferRegex": false, "regex": "zCqUgq1gLbcIMevT"}, "blockedWord": ["mC631p7q794bu49l", "INFTtERAXT2h3hcQ", "2wV3ZbBTnNQnVUhA"], "description": [{"language": "5WnzVZdj8tsyzC4Q", "message": ["aLXp3o4TDraEEaDN", "JbVd20FVHevCjthJ", "Ub7jKuMrFaoLulzp"]}, {"language": "3sZxImVK5yh2LcM8", "message": ["LaMW0ByjsRUrAHNR", "kIcC4wNFzsbrtYvL", "h56AWXoMiowdWSs9"]}, {"language": "DQ0VU1HED9CGo9aU", "message": ["Xj3rh0UyqxVWlIMY", "5tTJw4KV104MtMhK", "HmSjqPuQZX5KjdNr"]}], "isCustomRegex": true, "letterCase": "9DJ4V97SJLlrwXmI", "maxLength": 67, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 68, "minCharType": 26, "minLength": 63, "profanityFilter": "RCARuFLx4rV4CXVM", "regex": "rDYKe2eTf1axo16G", "specialCharacterLocation": "qT2vSLLiMvcu39YZ", "specialCharacters": ["JypWzpNXgnoKIz8O", "8NglJtZTh280vflF", "MxIhlIT8AgyZJ16M"]}}, {"field": "Md2bzOrTn2huwPgy", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["eeDNfUESLlwHv3Jg", "teOLyKp8a1VqxXnR", "hDd9TGkO6aIYqftw"], "preferRegex": false, "regex": "rM2nhSEanfUYrMU6"}, "blockedWord": ["A43UKGpvC1cr5T1P", "SXhduTWchzXDv3TA", "tBjP4HSuiYCbG0Uy"], "description": [{"language": "YUJmNL8p6AbdtU0C", "message": ["DrlQpKB8qoel2QK3", "aSOYdmMDikc3Fjm9", "HoQDemtiQvURYZCe"]}, {"language": "F30RT9rBgM8o7lxX", "message": ["q7TkdM7FVDCBcvVe", "grZddP8lLQo6tHj4", "z4cAM4LMJfWNZIxA"]}, {"language": "gBpeubprKX68jTyR", "message": ["d3LrR1x6U1v6zSLj", "m9zmzUW0vPj90jmL", "Tt5YQGawcomPoiYo"]}], "isCustomRegex": false, "letterCase": "1f1AYq306Pysv4VP", "maxLength": 1, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 36, "minCharType": 29, "minLength": 31, "profanityFilter": "lXypwucUqqqff2iW", "regex": "i4yP3uqNcig6YcDA", "specialCharacterLocation": "8Z3g62oGYwkrjLI4", "specialCharacters": ["EHJEEWgki9fbdvUM", "DZeO4U55wdCpVpnE", "NiTc9NESV22eRBEl"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'D4K2Cy1tJcPAEkCe' \
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
    '{"ageRestriction": 98, "enable": false}' \
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
    '{"ageRestriction": 88}' \
    'pPCrN5bEhmuHgKeW' \
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
    '{"ban": "izEpw1zN0mOYgGhH", "comment": "Mz9dddLWJWDuSYtC", "endDate": "aIv4Lp91wYUJPbvz", "reason": "n8TYoMDAaUXSuBQd", "skipNotif": true, "userIds": ["WQDve0Z2G2N09VIb", "bsz24fQKDZX6plEr", "w0Gb0ceCbphW4YMh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "J0S50bez9ZLHW882", "userId": "riiPfRQ3rJ0f5lwX"}, {"banId": "vRNDBnmL1KQn77hi", "userId": "P1lzkzjYDw6mLBor"}, {"banId": "drJkD6vy60uRMT1X", "userId": "w9K9Yb68a8ygYx2T"}]}' \
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
    '{"clientIds": ["qkhlqMnE9Wj90EQz", "OidrWnLrXqImgDf3", "GaJsdCZND0wgYOil"], "clientUpdateRequest": {"audiences": ["X1e1825iasunESjc", "gr2drXG5NkKCySLA", "8cKCs0dFYRSa2OUL"], "baseUri": "Z0iOZJiOAh1SpLhM", "clientName": "F2Pav11FuU8iXCRz", "clientPermissions": [{"action": 16, "resource": "KgqgwijYxpGhsFAr", "schedAction": 34, "schedCron": "ul6VKYlNYYlHPwKD", "schedRange": ["pJmkeoAkp3Z4pgyJ", "Ywclb4gd4QgQut2h", "iPuDdOPHcN9drwqy"]}, {"action": 41, "resource": "s4tLVOYQCWMktmiK", "schedAction": 8, "schedCron": "HjtgE2bTXJxCCFqP", "schedRange": ["NDqWrpkWnnova15W", "VuE5cYVP9tQSa27B", "nPyq3I1BLtGEZDRN"]}, {"action": 22, "resource": "jY5PeNr4JmYxH2qs", "schedAction": 58, "schedCron": "8hePJjMp0TKKUBfP", "schedRange": ["NI9f2oLWDPSZexfK", "Vxqdxmh5QWxuQuI7", "gdDTDb3WdnOpzTrR"]}], "clientPlatform": "zCCafADJfWBspT3M", "deletable": false, "description": "wJZquMQSPp5XD4S1", "modulePermissions": [{"moduleId": "ilfgff7Et4uY8nlB", "selectedGroups": [{"groupId": "wGNHgfgwZwVMvshG", "selectedActions": [24, 62, 38]}, {"groupId": "xUFipJsUiDawAjgH", "selectedActions": [64, 79, 87]}, {"groupId": "7a2UZgeesipbP027", "selectedActions": [29, 90, 20]}]}, {"moduleId": "CcHADYpS861c0CJ7", "selectedGroups": [{"groupId": "LzpFvOSF6xKA6yrn", "selectedActions": [43, 21, 1]}, {"groupId": "Y5dDwneac75C6S2e", "selectedActions": [69, 23, 39]}, {"groupId": "Qwj5xPvm7c5nPR0Y", "selectedActions": [52, 39, 63]}]}, {"moduleId": "ffUaZ64dFpiv8o9G", "selectedGroups": [{"groupId": "w4QtKgyIeySoUxoM", "selectedActions": [36, 52, 19]}, {"groupId": "fwc3H0qSbMq4GLj8", "selectedActions": [0, 91, 66]}, {"groupId": "yjEaFH2DRN6HIEqI", "selectedActions": [64, 92, 63]}]}], "namespace": "fdZIv8oYWPUS4Zu0", "oauthAccessTokenExpiration": 91, "oauthAccessTokenExpirationTimeUnit": "ooiKT57rmbjEnime", "oauthRefreshTokenExpiration": 89, "oauthRefreshTokenExpirationTimeUnit": "yq2WAHtL7IWE3MFq", "redirectUri": "vfDG5jvMOaXrDlEX", "scopes": ["42U0syrGNhBmgT2q", "0kIbrJ2S5Pf1Lvg8", "kYEVylINJpxFY8E6"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["U8eHjh0aTjIOaQt0", "snbE0yMvqF7TJ9uB", "0zypjJiu7BIimNuw"], "baseUri": "B3hBVhuSMHhf5R2M", "clientId": "kxQTAYGfE6hXZ7XL", "clientName": "oWCGf0dZEeXBd6mG", "clientPermissions": [{"action": 66, "resource": "edbBOd19DqZJRYV1", "schedAction": 30, "schedCron": "osmDnXoncy7NZQ4P", "schedRange": ["kAPXBCfkE1Fb0y94", "eP7yh0zsKhR60HZw", "Uwk48XK7MXHbEwAv"]}, {"action": 44, "resource": "cNzHhvxc4xAPZ86W", "schedAction": 82, "schedCron": "UYMimVLzAP6aOzsT", "schedRange": ["qEFXUhGAwpYq1UqZ", "ydOB0MThZW6LwcAg", "57BYBVCbi0ifdPyK"]}, {"action": 10, "resource": "jx5yjtQSCJaOHzpb", "schedAction": 46, "schedCron": "23EciYoYOPVg6DLE", "schedRange": ["Z6DxpwBm2N8PdQ5m", "QaGXEbnmWR0H3Ekr", "HqaLNdfKszYZzOg1"]}], "clientPlatform": "13h6fIaHSx5bClxU", "deletable": true, "description": "BmMwv5pmiIVnhlLo", "modulePermissions": [{"moduleId": "Memsp7o3F2LQw7Y2", "selectedGroups": [{"groupId": "VdSxgXez7VvS0C9J", "selectedActions": [77, 8, 97]}, {"groupId": "SCypsceITTkJGGCV", "selectedActions": [64, 46, 21]}, {"groupId": "LrILDLviUCzmDAaW", "selectedActions": [83, 48, 90]}]}, {"moduleId": "z1c7ZuZXUCBYnkY0", "selectedGroups": [{"groupId": "LEBSYBdUSiTOrhB8", "selectedActions": [15, 81, 98]}, {"groupId": "AVOYqSH533YlJ93C", "selectedActions": [58, 67, 53]}, {"groupId": "BXv4fP4VPzhcH4UJ", "selectedActions": [37, 27, 35]}]}, {"moduleId": "L1Zg2JfH4f73jAev", "selectedGroups": [{"groupId": "OnES6YJLlb2AfUEE", "selectedActions": [57, 71, 4]}, {"groupId": "qK5PT404mFw4HJv5", "selectedActions": [93, 79, 98]}, {"groupId": "kIQOecfLsYKTmUnK", "selectedActions": [24, 34, 36]}]}], "namespace": "Zz574g31cA0PwZxT", "oauthAccessTokenExpiration": 71, "oauthAccessTokenExpirationTimeUnit": "smwTV8imJHNI0l6j", "oauthClientType": "JVzF1Oi2sQuWUBBH", "oauthRefreshTokenExpiration": 57, "oauthRefreshTokenExpirationTimeUnit": "onSmzF831vlCiZAZ", "parentNamespace": "HCWMXxVh8HTrKqVw", "redirectUri": "npPn8N5xMRgU7cPq", "scopes": ["NZrLCRRUysya4J3r", "vTzMTMSwrNov2GW9", "i54JY23AUWFTLq0W"], "secret": "1JqwKs1mO80L7IOH", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'f6j8PZOzUiQKZqz5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'NSp0B7LODN3Boi2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["SAO2n4MZQt753XQB", "93rOW0guPoQbYzc1", "RDVhs2lhdzxxgibu"], "baseUri": "qUuyW3cMz9YyduMo", "clientName": "mEHcU15St4v8ry8I", "clientPermissions": [{"action": 51, "resource": "E4bbDU4FMTbQaANJ", "schedAction": 83, "schedCron": "Um1iqehObg3OZ9j0", "schedRange": ["HDtbqMFlgHKQIRtL", "fPngD83roOeqE7fc", "CAeExeQX43LpmdMi"]}, {"action": 8, "resource": "BWDoc3qNcQFFyHv1", "schedAction": 99, "schedCron": "1NPqjRUMKSQjFdjq", "schedRange": ["TaZFsWzbqwTZQIN5", "jC6a8mEVCXHmFnrS", "L0PJcZQaCeNLYxMI"]}, {"action": 60, "resource": "F6YxFMD8tJQwZvUV", "schedAction": 70, "schedCron": "LhzylaquioT3QBt2", "schedRange": ["9AiRASsuFM4ahGw7", "XcF1Qwzz606UGXPh", "oNZlXMef7AvS3TfK"]}], "clientPlatform": "x6ByTygbtOtcQS4C", "deletable": false, "description": "cFeVw70xdNTuOdLK", "modulePermissions": [{"moduleId": "K0M2B2hbqJin37P6", "selectedGroups": [{"groupId": "9t1KqeGz7qbPnXEu", "selectedActions": [83, 44, 53]}, {"groupId": "QAn2LuMjLqwmVz3z", "selectedActions": [75, 7, 38]}, {"groupId": "h1HIk7vCEq7FQ2S5", "selectedActions": [97, 9, 58]}]}, {"moduleId": "W9ddxzLPV8wDjsny", "selectedGroups": [{"groupId": "Ph5yNbYXmlAOi1SC", "selectedActions": [0, 71, 98]}, {"groupId": "1SjkH42LtyZKrTJo", "selectedActions": [84, 78, 38]}, {"groupId": "5sHil4Q0mqa8Gatr", "selectedActions": [19, 3, 66]}]}, {"moduleId": "J5YT7uvqarTvrG1D", "selectedGroups": [{"groupId": "XZAWlvz3c3XALMre", "selectedActions": [38, 97, 67]}, {"groupId": "Aciu2XPPUxzXHUvx", "selectedActions": [14, 36, 44]}, {"groupId": "Hd250nyihcUVGHQc", "selectedActions": [51, 65, 71]}]}], "namespace": "TLrByWOJhbocoGlP", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "O9XrgXNIaU11cBXL", "oauthRefreshTokenExpiration": 47, "oauthRefreshTokenExpirationTimeUnit": "xMLpP7n7M3JXjEvs", "redirectUri": "j5WcQ99M1yuXeqV3", "scopes": ["1LX2ehcMnM6QtjzQ", "jDlUMCGnxZwak7KH", "nzGASmVzePIroz41"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'pe0s0Cuhl3dU9b4s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 10, "resource": "TN5Qf4tjPGpu27yx"}, {"action": 2, "resource": "wTi1v2abpCWytPEi"}, {"action": 34, "resource": "Ze0hL9rPkV5GkSrc"}]}' \
    'l2O47XVzU7qlNVk7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 34, "resource": "4kiIFgS4fLqlrKGi"}, {"action": 92, "resource": "rmeH0lX1hj0LaXgQ"}, {"action": 70, "resource": "4flh775AQfzNjQ7I"}]}' \
    'uMSY2epRDJjDyMDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '86' \
    '9ZFzLNsjdCFtKY0K' \
    'sxR0rCFkyiQZfMnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'bKdwNhiIP7dpJ8B8' \
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
    '{"blacklist": ["VwFQnVco2oCn1KvJ", "mbjapW9UlEqtzDd7", "SgxdxB5kvtM8ah9b"]}' \
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
    'PsksceGUEX8ERZcK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "SYLo6y7yJMowQ6Lp", "AWSCognitoRegion": "HCvCYTgX9JQwErzj", "AWSCognitoUserPool": "tuP9pUUv7qefNMFs", "AllowedClients": ["ZAIqak1zi0JSa5cR", "n31D8ubfdXi7BycD", "PckeGJUgU8bD5mGF"], "AppId": "FmKTTUxG0mpmFxxD", "AuthorizationEndpoint": "NXGlGJvHf558h1lt", "ClientId": "yhiSGhfqXhxBJ7zL", "EmptyStrFieldList": ["XioAGkWgSDdDQvpR", "fGe3z2rtjWpJAlKH", "F0ebxhJ1176CeD4d"], "Environment": "WCp4wqlQJcZroNQi", "FederationMetadataURL": "efBnPluOIjZyvlGD", "GenericOauthFlow": false, "IsActive": true, "Issuer": "umcazKAna0ji757a", "JWKSEndpoint": "NDFeKnQP2j2WsQIm", "KeyID": "TwYkiuxzLrbJ0BkG", "LogoURL": "zCNgesQlZZHIZH0i", "NetflixCertificates": {"encryptedPrivateKey": "ks6kx0adnimPyyze", "encryptedPrivateKeyName": "zsHdFftHHR6xbcVV", "publicCertificate": "onwz27DWfGRVhbZT", "publicCertificateName": "vCPrrZCTU5WUJizF", "rootCertificate": "69PSsquWUafwbFPX", "rootCertificateName": "15633pFgA7i9tqvf"}, "OrganizationId": "HmFvUZiUW5Y0CYw5", "PlatformName": "OXSGwQkJuy9oLFcH", "RedirectUri": "HcraLXR2n9JQvq7N", "RegisteredDomains": [{"affectedClientIDs": ["KWIHYsii3fCh7sie", "JjZPAkiWumllU31u", "XPwYxedGHCIkmt4b"], "domain": "fJOhNaIT0pv7XeqO", "namespaces": ["8gY3c4SryWB4yRaD", "xvxwaLM8HkVOW8Pn", "LkgqkqYZWPZTgKag"], "roleId": "TzdcYcko7U3gH239"}, {"affectedClientIDs": ["LhRx2Laa2RdtVb6V", "gA5yFIH3s9UyeaFi", "8OE7BCK4FeVGrl5N"], "domain": "pUG9zblWEiHaUjyT", "namespaces": ["Hb0sSlstb3slUe94", "NxhXsVcqTYi1TMBM", "zaOrxuKvtUVtqbDW"], "roleId": "nJ2i9TRmJOqIl7U1"}, {"affectedClientIDs": ["2hO5vpk9DOSgbsdG", "VPLD9A5NmuZDUV3y", "HurgOfba1XeoHYTN"], "domain": "oRol84UlkxtP5Vok", "namespaces": ["9sNK1ORg3tChsS3f", "FpaS1uq1mH3oYfPK", "2QiAUhIfi17YrkWH"], "roleId": "NxiaNyqBfgw58Hx0"}], "Secret": "XYL0fJOPYpnPqGlP", "TeamID": "nhBDOWqDU8N3DjVU", "TokenAuthenticationType": "t0n0jfyDbtIXICLk", "TokenClaimsMapping": {"K8ZvbnTg3znlg8nm": "zQx1RsYhcRlv16Ww", "e8YK3lZFslECI9Qz": "uQcsjFehD6uTDYnq", "yNgN7GoeMsezFZsT": "BHkgcJ0DcEt23pci"}, "TokenEndpoint": "6xEljer6aGJx5OFp", "UserInfoEndpoint": "3jKEx4aSGdwTPX4i", "UserInfoHTTPMethod": "g3NVFFkP7O3F4vso", "scopes": ["hRWDyGYIVFDbTvRY", "fpJ4wM9WZfOOxAzm", "sbhi5QJuc2SNBaOl"]}' \
    'XfgsgBd7MYLLoPZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'kjRm5Ki0orhXrISE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "aPZHLQkTHvndQsCK", "AWSCognitoRegion": "AO2JRz3CGwtujkzx", "AWSCognitoUserPool": "idLcAQWGVRg6DVso", "AllowedClients": ["5TJCSugdo4XTm8t1", "YTWqItjNWXm9srae", "MA78YSRS2fPy5fpb"], "AppId": "bbMIu9lu18jIMBUM", "AuthorizationEndpoint": "77XmemN8LO03mnFS", "ClientId": "q9jJTVFoFjxZjh5q", "EmptyStrFieldList": ["UR1Pq4a4uaMfd0SQ", "AfYIyzHL8jxakuVu", "5r5B08VZxI4TU3ap"], "Environment": "nZXoJ4gI4EQKO8xC", "FederationMetadataURL": "4D0FsUo3IB2kX5RE", "GenericOauthFlow": true, "IsActive": true, "Issuer": "r1y5Ihr531Kajxq7", "JWKSEndpoint": "lzuVRVEvhKIbrq1x", "KeyID": "sGpdobYun8hcO55h", "LogoURL": "VjfWyK02w5QytAmk", "NetflixCertificates": {"encryptedPrivateKey": "anukAzAMaRvIUhUw", "encryptedPrivateKeyName": "guGgbLLN3O7CEYjx", "publicCertificate": "qElP5lA2FJ0iGLRT", "publicCertificateName": "XGsC5mxxse4eeuMg", "rootCertificate": "EctVEux2MSuwsEHl", "rootCertificateName": "wdeJyhsHS6YqPudW"}, "OrganizationId": "viQsULL1txfX9tqF", "PlatformName": "SkGXoIcFN5JL9M53", "RedirectUri": "Mg0MzWS9usxxnMhj", "RegisteredDomains": [{"affectedClientIDs": ["v66DyED4prRVibTA", "Txd7Mzjv1gSj8kcN", "hoqcRZRNATojM7da"], "domain": "V0VwR3yNKDtMqMrA", "namespaces": ["GpdyF6WDHn3ePBxQ", "Nz2IUEHMzl5jhwVD", "suzwJ4v50eoaIBrT"], "roleId": "h0EKkJioUpvGnkcH"}, {"affectedClientIDs": ["gCfaWzPUvCnfqsPG", "gJZyRwigaMu07Zek", "8WObpf0FHYfViEj7"], "domain": "0KYKIfFt4GYjUt4F", "namespaces": ["1ZVy2qFfSr3psWjO", "yHLyKe2foqsVIfgB", "Tr8RcxRQR0NYdJzf"], "roleId": "3TMhSaynVs05nZC4"}, {"affectedClientIDs": ["Os7hqIH2NgARSG3Q", "QNGNH2K0UuJdeGNq", "uQnaXpDQ5rU2taDW"], "domain": "h9JV5oc5IFQsrwHq", "namespaces": ["FqwVA5mozeeOjIFQ", "fXV3YW3ug3nCXhD7", "FUz1iOe0pHa0Lmse"], "roleId": "IRXeoerZAxbDPXU5"}], "Secret": "xJBhIpJ9b0Ap7CmS", "TeamID": "iKPjcwAw5GdxpvLf", "TokenAuthenticationType": "a4b4hTaZBGdX66Dq", "TokenClaimsMapping": {"PTdurR3MYda0Y0BC": "O4qPnvxERWjKasq5", "zQ6uZNwKjnX7vDIq": "pcjmaq5KBCsHlwNr", "fKJrkzwR40tfd9GF": "XChtxB10d4Q8nlBt"}, "TokenEndpoint": "hUSu4WNfTvD5UcES", "UserInfoEndpoint": "1eLMZs9lSQVDp16q", "UserInfoHTTPMethod": "VIqXCK9dS5JTbdJE", "scopes": ["e6mnkYAfw61kyKk0", "UXUF2523OTvOmfVN", "JNDaSO3FEkk4It6V"]}' \
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

#- 184 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'O3P2f8TTOVf6jrr1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminGetListJusticePlatformAccounts' test.out

#- 185 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'OL606QpqCgxt0NgD' \
    'Sj1T6EdeYFmrLT0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserMapping' test.out

#- 186 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'bvS4kSSt3CyDgf6e' \
    'FAiqSkHi0BR2ElF6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateJusticeUser' test.out

#- 187 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "z6eJKuOW61akRFiz", "platformUserId": "qxCmudSXivAL3n47"}' \
    '8mhb2I2yBJeCJghT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminLinkPlatformAccount' test.out

#- 188 AdminPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-v3' \
    '{"platformNamespace": "rk68FWFzuLBdlrKj"}' \
    'UbgZQfw6Zys3mN8f' \
    'IcC9CkharfqaoMsG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkV3' test.out

#- 189 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'yv1RuSNdycDssUeH' \
    'iVDXzSJ8kbFAyidb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformUnlinkAllV3' test.out

#- 190 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'nXdMSwmkBkKC1h6h' \
    '45u0wuh9pY0011jS' \
    'mHFTtfM2mGUUpq3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminPlatformLinkV3' test.out

#- 191 AdminDeleteUserLinkingHistoryByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-history-by-platform-idv3' \
    'x7Am7W1fwJnV94Br' \
    'MSP31wAkVH75UcmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 192 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'XK5RqcIo9lpz9oM5' \
    '2vHPlwVV3jlPKDEY' \
    'ahnlLJaLCvjRKKX1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 193 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'brmkJDfdngbQD3pO' \
    '8U3W94Z8IW2MAL9g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserSinglePlatformAccount' test.out

#- 194 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["YHEV3wnTZTvYYf4Z", "FuV6L2AldoWWRN5w", "NYlFiliYmBrqrOc0"]' \
    'NIligBrOkBljwREN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserRolesV3' test.out

#- 195 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "jt04ZpyTTZG1LxLd", "roleId": "ySvyVqY8nxBZbHcP"}, {"namespace": "HEFuEVP9bF07gnWD", "roleId": "ULkJPQR0UJMr8ouc"}, {"namespace": "cGH0B4LCe2h0iFCC", "roleId": "ZgFWs5s0nT89A88G"}]' \
    'DOUClGyzYgnYTdim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminSaveUserRoleV3' test.out

#- 196 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    '6PkRoq5TO65KWh8z' \
    'tRJkXxUAj3jzZvEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminAddUserRoleV3' test.out

#- 197 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'Y103YUIMuSjDHz0z' \
    'PWMZQNNP2JqQqhIS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRoleV3' test.out

#- 198 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "wwMDQPjUIosq1l6x"}' \
    'o0D4JRbNqO6IuP2P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateUserStatusV3' test.out

#- 199 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "Y5hhX6uNah9JoHPj", "password": "7jFWxSv1lYylYAiZ"}' \
    '8c7Zd7EUoezOLw8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminTrustlyUpdateUserIdentity' test.out

#- 200 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    '1c5bBB3XZ7ColKwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 201 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "sNvtFuunQsvdXGlD"}' \
    '40xxIyVwYjn6dlC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateClientSecretV3' test.out

#- 202 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'Kfh9gHuloyce0cLJ' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "ljPWlCWTuGO8MnfO", "namespace": "Qu3wdT4Aodp95o1R", "userId": "kX7iW7VpCngWAv5D"}, {"displayName": "AG8dPdkKgQqjyzUZ", "namespace": "R2rFIAuALNhNCysc", "userId": "sMBRLsWadk2OQ421"}, {"displayName": "q7Nb1vrKthVvU5on", "namespace": "065ApCkVN3QchuQ6", "userId": "pntxB648ss7rBnvQ"}], "members": [{"displayName": "HAM8gSdIybKUByHB", "namespace": "zfvgtRTPPzwJmKaL", "userId": "Cx3gcidEALWe6RG5"}, {"displayName": "wWznu5AjwR1Z4fU7", "namespace": "ICcaQtuuKUw3dUwW", "userId": "HhQW3I1y9tjRLVOX"}, {"displayName": "BMa0JiIe1AY0tUA7", "namespace": "EKASk3USNLhOBlxR", "userId": "BLgohp8ByTi2F6Ay"}], "permissions": [{"action": 96, "resource": "HL16jMwECnmwJv4r", "schedAction": 31, "schedCron": "Qf9MICxX7xKyCfgw", "schedRange": ["SPz14asyOdgn77gN", "8K1FlNkgbFE8U4me", "K5grmPBsFH71Vrhs"]}, {"action": 70, "resource": "08rrnG8y2ScXkwjp", "schedAction": 55, "schedCron": "JT1VkChD3n0c1ryA", "schedRange": ["kRvdPR8gx2rX5dck", "8NFKPgT6LMehg047", "axU5ktNywRIvO2Sg"]}, {"action": 52, "resource": "Bhh0NStWIggmhfAz", "schedAction": 97, "schedCron": "MSews1TrU4FhAfKD", "schedRange": ["cDG5bMTba1tUlFGc", "P6eL7EpWtPifmO0J", "K4dP1aZFiSkmhwVV"]}], "roleName": "MGkXNwMYwFyljy5b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminCreateRoleV3' test.out

#- 205 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'YQdQ87hUHA0FJZwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleV3' test.out

#- 206 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    '8GslMpx3m7lEXTmn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteRoleV3' test.out

#- 207 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "bmf392ersoZ2KbMb"}' \
    '5jal0ruZmBXlGSp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRoleV3' test.out

#- 208 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '5q6fuGfo5wSDHnya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleAdminStatusV3' test.out

#- 209 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'bk493I3pvHKDaWhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateAdminRoleStatusV3' test.out

#- 210 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'N1qyxpUzWIZWJTDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleAdminV3' test.out

#- 211 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'Wguhujw1EoR58uCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleManagersV3' test.out

#- 212 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "ldefonHJZAiX4abm", "namespace": "qqi90KTWwZk0HGeJ", "userId": "NaBjVdMB5kMzKycY"}, {"displayName": "rhr4FnNzdT4pWwIV", "namespace": "Xp9avUr6IydpXW0M", "userId": "O0eT9okl6MlWOl9f"}, {"displayName": "eWO2bmOikTBJHTEm", "namespace": "5PSeyod5L6OooYoQ", "userId": "n9iHEqWO1cVCUIOx"}]}' \
    '90FQdwLi3GOQkLtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRoleManagersV3' test.out

#- 213 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "uRNeT1CULEMPaOU5", "namespace": "nukycAUlkUSZKUrs", "userId": "xNRzF3NaUuCyQyze"}, {"displayName": "6zPKu5sE89JW8UU0", "namespace": "RsB6dvrpmInhHYzV", "userId": "VlHGFSwjby6rMYkV"}, {"displayName": "QnZDUAbINRKQsxUO", "namespace": "1YMxAndOj5O6IBwX", "userId": "JjgQjgLoJyqwFVBd"}]}' \
    '1ZjaRXEdWgS12bSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleManagersV3' test.out

#- 214 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'PgOCWUogizeWOPUM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleMembersV3' test.out

#- 215 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "rqgEIsMwNbfti0Lo", "namespace": "TBcNzyoCSw1t653G", "userId": "3ydYmGzvx9bSqqyA"}, {"displayName": "Pha5b6PQTPTytHee", "namespace": "Xo7gOFVLZCBWuVIR", "userId": "OZuqdJBi8pkn98Vt"}, {"displayName": "LNkaIQJfkFDhSeSG", "namespace": "XtZU5SuIhMSaDRp1", "userId": "7dUWHcjrb6qNeKpO"}]}' \
    'xPrlG9svdqsiVTqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleMembersV3' test.out

#- 216 AdminRemoveRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-members-v3' \
    '{"members": [{"displayName": "bzY1yxl7zeEpmSPO", "namespace": "6KwlJQlj9Ii2jARw", "userId": "zowk9OoiPdnq9KBq"}, {"displayName": "BwiNCsnK8CcO1OHb", "namespace": "pQZtwW3EwLre1bL4", "userId": "dJnkRLJbMvOGSd7u"}, {"displayName": "MrmQ2SaLd6M7TM3w", "namespace": "nJyExuo5z9RAcYgY", "userId": "Zb7cAakJpqN6eubd"}]}' \
    'p49JFwXG0EvoSHNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleMembersV3' test.out

#- 217 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 52, "resource": "7eEyhnL1QH5AlYRA", "schedAction": 33, "schedCron": "G2emxKQk8cBrt5E8", "schedRange": ["k8rzDZ08j6ICP75c", "m8YDChFi3zLvfQWC", "85MxWxvW0veFl3uU"]}, {"action": 41, "resource": "aMD0mczWxc8f1s2Q", "schedAction": 85, "schedCron": "ijqEuMfuYFUS079t", "schedRange": ["OpZYM1XV0Op0damy", "cnTUOoMkOppZNOkq", "xc42HKv5wvtPJVsu"]}, {"action": 52, "resource": "tOwxjqyrjDApeN5e", "schedAction": 55, "schedCron": "HoSVxgQCbpZx5yMG", "schedRange": ["IQ1ZxVIefYlKBJyQ", "MqUEfDikX6yOlgZr", "n0I6T0hvcAFTaSWR"]}]}' \
    '4VOGIY7hM6uhonkA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateRolePermissionsV3' test.out

#- 218 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 10, "resource": "ZVTxBlw1IWeXKFT4", "schedAction": 36, "schedCron": "ww3nBTVmBFZ6TIs9", "schedRange": ["bTi2m7eNsYEqKkeu", "LWDfeFeExlOFjRh8", "mLFTJLveQSDWnMQG"]}, {"action": 1, "resource": "f2Sw78lLGKjDHuXt", "schedAction": 55, "schedCron": "58gzqRMuMPrIekxq", "schedRange": ["58fikq83hqJ7HP63", "Se6kVW5fkl60ImLB", "v6nUU0r1rfX9stpv"]}, {"action": 72, "resource": "TE4toH57yr01N33p", "schedAction": 77, "schedCron": "Gha8HwpagvERZI6C", "schedRange": ["qhcknhecNv2Tw6YK", "hVrYkMqXkQ7qlaJj", "SYEseBYCFGoKpXx6"]}]}' \
    '0GmEX9x2BYpyKEBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["7TW7lZvDbwFJJhBR", "dq8BgAI81k4Gr7jV", "Vx5l3yrH9HR4reG0"]' \
    'HwUXxQTf5YpDUGYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionsV3' test.out

#- 220 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '72' \
    'wqdzAX28DikGk8cW' \
    'iX44azSHcwicUVq2' \
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
    'XPljTZj5R0yZSVQ8' \
    'SSeJ4qy4PIKleuV2' \
    '71bwZ4niLSzQnv0C' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 222 'UserAuthenticationV3' test.out

#- 223 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '00dtNGGzbGYSYo9f' \
    'Y2EBZAHQXc4Xcae7' \
    'VKl0ARzGEArlfE1N' \
    'SmtcADoZvd0La7P4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AuthenticationWithPlatformLinkV3' test.out

#- 224 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'JI4H7uDzkOHTdnUt' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 224 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 225 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'drRcs3GeOsKPNlG7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'RequestOneTimeLinkingCodeV3' test.out

#- 226 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'rEXi6LEqJERpbxEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'ValidateOneTimeLinkingCodeV3' test.out

#- 227 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '07txnvZZeAf7QBuZ' \
    'K5GJlBncg8tQnJOK' \
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
    'HC16xjJZ4kiU3N85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenExchangeCodeV3' test.out

#- 231 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    '56ll2LQWpdESOBV7' \
    'wZJsg7wSv9lyRyTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 232 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'YBUljvBzvYNEtfgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserV3' test.out

#- 233 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'Fikt18cQ677SotDE' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 233 'AuthorizeV3' test.out

#- 234 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'arkhltUxgbN5eElQ' \
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
    'NESFLD8hCc9onSNj' \
    'bQEqFGwnDG8kz4kv' \
    'Ev6tNjGRhrmRAxRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'SendMFAAuthenticationCode' test.out

#- 237 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'eIKGlCJmDXpjyvLS' \
    'HB1y3klHuAGnidOy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'Change2faMethod' test.out

#- 238 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'GuS0OG7ohiL2943C' \
    'lrNhEdxd24ZKfvMf' \
    '1T5FzYMf1jaCgZos' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'Verify2faCode' test.out

#- 239 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'cuEtWAF763kci7lT' \
    '62BOHaso53W3U2Mu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '9ZGMWou1U0RVCf3g' \
    'MWDAodCKqfqzeexH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AuthCodeRequestV3' test.out

#- 241 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'A70NgJTxjtzgO7W3' \
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
    'taRvJ6lKWJwHO65a' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 243 'TokenRevocationV3' test.out

#- 244 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    '4zvBzGh3mhIDNuMB' \
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
    'll4O8ELahcNJqRje' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 246 'VerifyTokenV3' test.out

#- 247 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'pck1l0qxRyQ2pi7x' \
    'uAufJakIPXOQznHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'PlatformAuthenticationV3' test.out

#- 248 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'Tj8oYfWObyNJKVSQ' \
    'saCokoGynp6xcqNK' \
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
    'JnAhrSt96OaARAjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetInputValidationByField' test.out

#- 251 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'LGV3sNxS8uLBZiVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'PublicGetCountryAgeRestrictionV3' test.out

#- 252 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'YIyQLcslTEqgVNG8' \
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
    'AqktgvjwNJAwIpEy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 256 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 256 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 257 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    '2ZNpojZ24I2n25sm' \
    'srmJFHGiYnyhbqxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserByPlatformUserIDV3' test.out

#- 258 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'uTZIxgiUaiyy0aWr' \
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
    '{"PasswordMD5Sum": "shpmb1C9Al7eWrbN", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "E0xyYPUZHyLGQ52I", "policyId": "jGpRJCUJpscOTkWE", "policyVersionId": "TSJ04c5MGInO4yzn"}, {"isAccepted": false, "localizedPolicyVersionId": "KZtZnxgywmr4CYNG", "policyId": "m7Tk1mMyeNRsjQuD", "policyVersionId": "EgO3MEQNL6ijLRvQ"}, {"isAccepted": false, "localizedPolicyVersionId": "goaBooTawHLMxhx9", "policyId": "nC3o6pXU5MDJLCB6", "policyVersionId": "WbXWIRpgjooaBVem"}], "authType": "sbkaXZQ6nTj9rZpk", "code": "SntuOeaPAyPeEGBe", "country": "pK1Ix4SwjCYjCHni", "dateOfBirth": "VSn1gYGal5NrBtT0", "displayName": "om9OlGzpF25qu98R", "emailAddress": "hktX6qwkXbCLbh8t", "password": "0zPkQWRUlgE0kxzF", "reachMinimumAge": false, "uniqueDisplayName": "q9ttbEHAEV7C65An"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PublicCreateUserV3' test.out

#- 261 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    's9SquNSJIay5VdUd' \
    'Yy9Y9OCSmmT3WKij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'CheckUserAvailability' test.out

#- 262 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["bqhT3uyQRXvvcUYD", "eWPZ8yhwQ0gIdj1l", "TJdNLmAvEdEBVAU3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicBulkGetUsers' test.out

#- 263 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "rbkv8V98cupW0L5W", "languageTag": "siuITRMSPOUfWQwr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicSendRegistrationCode' test.out

#- 264 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "4PYf48r66MaToxBi", "emailAddress": "liy2vtRkpqL6KrVc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicVerifyRegistrationCode' test.out

#- 265 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "Nz83J57t6OcYPQ5b", "languageTag": "k5IeuAi3zWFGorCb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicForgotPasswordV3' test.out

#- 266 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "ncoj5RvEtXiKyUGd", "uniqueDisplayName": "NfMiwgSvsTRmJsOm", "username": "0wVFyHvFhRMCFJuA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicValidateUserInput' test.out

#- 267 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '0DEMgykqqjoHTpIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'GetAdminInvitationV3' test.out

#- 268 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "MSRAuPI7mSZQ5UDm", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "q51PlW2HG8LAiIzu", "policyId": "o321Ll90IBFsSb3F", "policyVersionId": "sV2PnCs9R0D5jZEw"}, {"isAccepted": true, "localizedPolicyVersionId": "lVgxjOGQGlHm8VTN", "policyId": "56tJKwD8O07L9GG1", "policyVersionId": "uenDihceaLdgPZI0"}, {"isAccepted": false, "localizedPolicyVersionId": "7hWvT5bzcfzIpL2p", "policyId": "WB4XsdrxIF6kEAmK", "policyVersionId": "GNEmFPcUALNziO9B"}], "authType": "z2wx4kDAm8XIleiu", "code": "jtv2NdQTYoHZogW8", "country": "lBvniHdARadfSoct", "dateOfBirth": "A3GYO94ZOo94gS5D", "displayName": "HLB65fxQ06GwTmob", "emailAddress": "iBnfrnq9kOFBWhUT", "password": "PiKR3qcbHLGplYsS", "reachMinimumAge": true, "uniqueDisplayName": "jsRZffCd00VrgPuN"}' \
    'tOv3jbhGBuW8KcyP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'CreateUserFromInvitationV3' test.out

#- 269 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "MfDWSEEpKoJlmhMQ", "country": "UCx70QjYbzemOTUR", "dateOfBirth": "zzAOIBarB7kcer5S", "displayName": "vPLeQZIpKFXgnsxx", "languageTag": "3c2bUsO7FP8RmOst", "uniqueDisplayName": "ZAGDgiVsV2OttwJa", "userName": "MxPDIJ5hFQHumFvP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserV3' test.out

#- 270 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "KqupHj72TlLs964i", "country": "ABOgTKtnaA7O35Ia", "dateOfBirth": "ytd9CsAMTZC37xPX", "displayName": "xnfggnZ3EZp6wSAu", "languageTag": "fwYirs9lwvPKd925", "uniqueDisplayName": "u3fFLV0YeMrVaYST", "userName": "RYGFzgLZ7gEypQf2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicPartialUpdateUserV3' test.out

#- 271 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "Pn9A4gcbDJ0LmdnO", "emailAddress": "PkIT1C6KGTpA7JZ6", "languageTag": "xullPROSfiW9zcxm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicSendVerificationCodeV3' test.out

#- 272 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "gNfTHu3vkZt9FgWc", "contactType": "kjNpHhM2ZXp4N0RO", "languageTag": "mUCTrS7Gi9Iigk9v", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicUserVerificationV3' test.out

#- 273 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "uix5vnPeTu9evbRo", "country": "v7Bm40CtZiAxk43D", "dateOfBirth": "GV1SCkw8U0d4FvVm", "displayName": "PMtpRMWSQ8Szi1Ir", "emailAddress": "GidRmR5BGRJhFwxm", "password": "kGfPI3j4luXQuuLt", "uniqueDisplayName": "Ya86kvL6cBZQssUU", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicUpgradeHeadlessAccountV3' test.out

#- 274 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "Rg8y4rOuj7J6ijJb", "password": "cycXmBcrJLb7laby"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicVerifyHeadlessAccountV3' test.out

#- 275 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "otifVk9KyqceGv0C", "mfaToken": "EDTVSjINYeKLowG7", "newPassword": "UQB9pXzuCK5qd2m8", "oldPassword": "A5axixm9X9TXNhN8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicUpdatePasswordV3' test.out

#- 276 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'y1PVriIyv9kjuiAG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicCreateJusticeUser' test.out

#- 277 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'iXx47etMikLFggYD' \
    'c2FMbzZoeKagnKf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformLinkV3' test.out

#- 278 PublicPlatformUnlinkV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-v3' \
    '{"platformNamespace": "Yifzvr9OqTsInGzH"}' \
    'FpFXYJtHtqwoIwQB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicPlatformUnlinkV3' test.out

#- 279 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'eIALI8JNIII4jrzr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicPlatformUnlinkAllV3' test.out

#- 280 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'PsuMziNM8AB7RRxi' \
    'ZH3ngnitURdMjZLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicForcePlatformLinkV3' test.out

#- 281 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'CaeklQcFY1QIk1h5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicWebLinkPlatform' test.out

#- 282 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'EKvMGd6hQ2mHjmLu' \
    '4oFlReHy0JyZv7ho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicWebLinkPlatformEstablish' test.out

#- 283 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'nqeiGTTqpgVsY1kP' \
    'NdJiJXB3yjNUPIfv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicProcessWebLinkPlatformV3' test.out

#- 284 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "oXRO0CkW1ZcgUSbb", "userIds": ["nffBWRaJN1SjCFLD", "NJfAhJGwSYEZjEb0", "Pv35fEk9s11bFXkf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUsersPlatformInfosV3' test.out

#- 285 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"code": "7rQJ4Kj7Qyo9tUpt", "emailAddress": "iyZzRX8Y4rxRWZPe", "newPassword": "4ZLAQWuBJwxObZqM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'ResetPasswordV3' test.out

#- 286 PublicGetUserByUserIdV3
eval_tap 0 286 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 287 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'Gxhffy9cHrLYffta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserBanHistoryV3' test.out

#- 288 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'd99JDcnn7f2d8SOW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 289 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'P2dw6Uy88WpQalG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserInformationV3' test.out

#- 290 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '8VOo82aLD9jUjuDI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserLoginHistoriesV3' test.out

#- 291 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'TjifWRbmtK7MTxcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicGetUserPlatformAccountsV3' test.out

#- 292 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'WnMiCLsjroKHPApA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicListJusticePlatformAccountsV3' test.out

#- 293 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "8GsGwyocvY9NePjL", "platformUserId": "JQJXwUApJWohXn01"}' \
    'RB7pu7BaONXyE5fI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicLinkPlatformAccount' test.out

#- 294 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["DbsMi48xOYVvEcEm", "53BYMBacQBIuDVs7", "U0AJtWPRteszMTd0"], "requestId": "R5Fsrf9xbVfgvG61"}' \
    '7GmxzClkR3M6Twpw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicForceLinkPlatformWithProgression' test.out

#- 295 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'q3nLwxnJKjOo9fvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicGetPublisherUserV3' test.out

#- 296 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'XF1VsikD3IphQQiR' \
    'cOtsthUwgQzNHUZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 297 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRolesV3' test.out

#- 298 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'l1FRfOjJUmCbi2ll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicGetRoleV3' test.out

#- 299 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicGetMyUserV3' test.out

#- 300 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'ksf6GA8vTt92kldC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 301 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["oyRdiOikUdqGocLY", "BaRC7T5qSl7WN3nc", "PkqiTKzz72PKXjSh"], "oneTimeLinkCode": "M2DvesmMIbiQfaHx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'LinkHeadlessAccountToMyAccountV3' test.out

#- 302 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "l2YUNRLRjgKqSSYg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicSendVerificationLinkV3' test.out

#- 303 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicVerifyUserByLinkV3' test.out

#- 304 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'ZnVfa8govttlpFAq' \
    '8oebnS4Y2zkGYTr9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PlatformAuthenticateSAMLV3Handler' test.out

#- 305 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'yJIveX52r6Inl9VT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'LoginSSOClient' test.out

#- 306 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'JB9Al3mn2DsHDHzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'LogoutSSOClient' test.out

#- 307 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'VJzhU5Z44zgZ1fie' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 307 'RequestTargetTokenResponseV3' test.out

#- 308 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'AdminListInvitationHistoriesV4' test.out

#- 309 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDevicesByUserV4' test.out

#- 310 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'AdminGetBannedDevicesV4' test.out

#- 311 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'Ldl3Y82DOj5kPuNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'AdminGetUserDeviceBansV4' test.out

#- 312 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "ZZaUccuBYep9n7b1", "deviceId": "7fsblalJrwQiU3DD", "deviceType": "0xZFH1fHFLSr0O4r", "enabled": true, "endDate": "7gBhy77iRVFfFvWe", "ext": {"nMNV00KVuLF9WDnG": {}, "O3bpQWmnS52ZuuuI": {}, "7F1xpVrcoXzSOEGE": {}}, "reason": "DYfiGPYo2K3dN3YB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'AdminBanDeviceV4' test.out

#- 313 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'OJfvV6SuHovoQlk5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'AdminGetDeviceBanV4' test.out

#- 314 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'HbzgAFjtjC7suvgI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateDeviceBanV4' test.out

#- 315 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'UkB2PAGJqOrkdlZB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateReportV4' test.out

#- 316 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceTypesV4' test.out

#- 317 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    '246OY0dPVMd2WDUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'AdminGetDeviceBansV4' test.out

#- 318 AdminDecryptDeviceV4
$PYTHON -m $MODULE 'iam-admin-decrypt-device-v4' \
    'EQTpfyAIoF7qsANB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'AdminDecryptDeviceV4' test.out

#- 319 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'bEKQrgocpjGNenRl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'AdminUnbanDeviceV4' test.out

#- 320 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'DORLvP7ynTuXzafC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'AdminGetUsersByDeviceV4' test.out

#- 321 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 322 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 323 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 34}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminCreateTestUsersV4' test.out

#- 324 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "lMrrVIehVCf3AwIz", "policyId": "UdQ6sTrUg7Z0SLrZ", "policyVersionId": "raV3NLBUSrFnzE6y"}, {"isAccepted": true, "localizedPolicyVersionId": "FpSVdxFsXAp1rocl", "policyId": "yXllFitPamSKRzDI", "policyVersionId": "ZgSk6suS90ZbDdmj"}, {"isAccepted": true, "localizedPolicyVersionId": "IZtkSn8QRbA5V4gj", "policyId": "Wv1W6cqnvSuKswQ7", "policyVersionId": "vH8GScnP5QzRBY1U"}], "authType": "EMAILPASSWD", "code": "bq3Qcrtt8L5dIebs", "country": "w7EjkMnJSziEA43W", "dateOfBirth": "qIMJdrqHIsJ98WRj", "displayName": "qYieXRthQZvzRi7p", "emailAddress": "qpajYEHs9TIkcnrJ", "password": "64BOKqywS6DKNSeb", "passwordMD5Sum": "2UMWOgVeYkCvqq0t", "reachMinimumAge": false, "uniqueDisplayName": "5pEVG7sNihxpuuL7", "username": "DJCxvzZnh8oBAk1M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminCreateUserV4' test.out

#- 325 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["NCKWNkLU5ty3uQa7", "Fl3ZhSMLtrwnjTJV", "Dlh112byTYCDBnAv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 326 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["f8JpFuJSZistM755", "44PDlVK8taScpV0N", "tCxDDz5rxt6LflBJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminBulkCheckValidUserIDV4' test.out

#- 327 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "jokLAaL4oAF2lqx8", "country": "yneWKrOy4xcg30Bq", "dateOfBirth": "C5W7g7hiwumJTI3j", "displayName": "lZPjoCdGiIP6cB3P", "languageTag": "j63MJXIuLWYb2iHH", "skipLoginQueue": true, "uniqueDisplayName": "N0ZBgvrigXUT4fRb", "userName": "awD5yOvjgOopQfbX"}' \
    'mtF0WFH7F2Inhxty' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminUpdateUserV4' test.out

#- 328 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "nUjuBCxkb2oF99xI", "emailAddress": "1VVtVrVT6Hn8B2d1"}' \
    'hZUnoQwg5uqgoHaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateUserEmailAddressV4' test.out

#- 329 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    'yoczck0qJsgZPfue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminDisableUserMFAV4' test.out

#- 330 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'lAiZBZcQGHHGI7cs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminListUserRolesV4' test.out

#- 331 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["I8ecZSvzXYOytshB", "cKQytQagui6lsKF2", "8n7UC7y1MKYVeoGF"], "roleId": "rDb8unXv1iE7YgEZ"}' \
    'spOJ0NiZl6OVLxKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateUserRoleV4' test.out

#- 332 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["kBpaCG8Nu5m4ctwU", "NV8ncebaJ0DCuIeE", "Stt3PbyctX7HC2ha"], "roleId": "QwVWONEpAPedzI2A"}' \
    'dlqiyEJIQcbZJJ3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminAddUserRoleV4' test.out

#- 333 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["hkrMi0bnppEJFISz", "e88rGEr3cilJWhaW", "6jNsM94E2FQb6S0V"], "roleId": "maTR7E3mkDSQkgVM"}' \
    'hLbM6H1MnNSKd0KS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminRemoveUserRoleV4' test.out

#- 334 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRolesV4' test.out

#- 335 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "AwjAsgo51XHJBG2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminCreateRoleV4' test.out

#- 336 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'myeFaBiT3SyLHXZS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminGetRoleV4' test.out

#- 337 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'yfjukWmkfkiF2GZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminDeleteRoleV4' test.out

#- 338 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "Pry2vMON7sdhlilf"}' \
    'pDT8o2iFrYtGfCZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminUpdateRoleV4' test.out

#- 339 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 4, "resource": "KEKdeo779KG5yCz9", "schedAction": 20, "schedCron": "ZGJ8ZMLwPJ871nV5", "schedRange": ["ALS7cneNLItUJgh7", "4tyxkTR8ZCVJtkxj", "BJrNeQRsqkkKK2qx"]}, {"action": 34, "resource": "CPaLXJM2B9bMohkW", "schedAction": 38, "schedCron": "WIT9TLnuMLNJAEk3", "schedRange": ["A6A6rYiIu8eLdWyk", "hBxLFnKnSYC9yyBY", "epIqtrikdAbdOT6i"]}, {"action": 90, "resource": "dmYDj9vZNgfI1AeY", "schedAction": 69, "schedCron": "aKGDOULJbjHphqjH", "schedRange": ["GGAhfWaXqkA5fuVY", "OsMFo9tnqa4LEWGg", "1r4nW4pBcPPaiaM1"]}]}' \
    'og5rxUjGPKKLMoAy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateRolePermissionsV4' test.out

#- 340 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 67, "resource": "stmxPFz0i1IK3Qzk", "schedAction": 4, "schedCron": "wFSebBkXkaxtY97T", "schedRange": ["MJH8bO4GDHT6ZaUU", "kvlTKAhrxqHw7f81", "3qNjzlcxXsmGGcJh"]}, {"action": 0, "resource": "68r4W1fDZL80oPQ0", "schedAction": 37, "schedCron": "PuQE3Gc8bY4IH0OX", "schedRange": ["HZP6VVB7qjDHMS49", "dkv8vxyg6giNKzeF", "nlgGRgYK3SeYvULY"]}, {"action": 81, "resource": "0PNuFyKW95dJsGoB", "schedAction": 71, "schedCron": "lF5Ch8J2Qs990APO", "schedRange": ["U4hcdwlnsTap2RJp", "HtncLywP3WlLmNdQ", "Gk6vneHoB1PXO1vT"]}]}' \
    '1AonFO3syvkYd78G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminAddRolePermissionsV4' test.out

#- 341 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["sJGLbnb4Nvw7fnm4", "MnOqnqNerQoHiDIJ", "ayvSNt8EQXsMbYi1"]' \
    'yEI9ychtyhjZSeDC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminDeleteRolePermissionsV4' test.out

#- 342 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'KT4ilZB8apDTR3aL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminListAssignedUsersV4' test.out

#- 343 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["9sunWp7V1s8LmXm0", "FaJMIjgzU02nZWwB", "dEFpfccauYDc86px"], "namespace": "K9KhF4KRVPoIuzAu", "userId": "QNjAfvOE2cVjFp1C"}' \
    'eCEfaV4ZGGwbqOB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminAssignUserToRoleV4' test.out

#- 344 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "mD3E7AFHqlTTkL8c", "userId": "mpA0sZ0tgeR4UV5S"}' \
    'MZ8GUvWZvoCmprkv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminRevokeUserFromRoleV4' test.out

#- 345 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["7A8MRutCKCsqmx2z", "riOGB8b5qTFp3cIx", "OI33nt54i5hdAeze"], "emailAddresses": ["dcppbujZh1fYXF6R", "9Rz3HVP2Y9WqSRiw", "V3UZg0UJLPMkeUwa"], "isAdmin": true, "isNewStudio": false, "languageTag": "xCMxuf0P9r5f6fdm", "namespace": "yi4kQnOFbBtvBw81", "roleId": "hUgtONCIoZ2rkomS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminInviteUserNewV4' test.out

#- 346 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "j52mAIMo6EW9QhzU", "country": "8FwQtZpfUoyoiUjm", "dateOfBirth": "qOyQ7ammFgHprdM9", "displayName": "viFWmezrQOWH03zy", "languageTag": "r7kRbC31YMJfRiD7", "skipLoginQueue": false, "uniqueDisplayName": "wq1NZmxa0ghRG020", "userName": "QpWTNKsVyK8EU8JY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateMyUserV4' test.out

#- 347 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"mfaToken": "c00PA2ef1jFeqQ8m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminDisableMyAuthenticatorV4' test.out

#- 348 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminEnableMyAuthenticatorV4' test.out

#- 349 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 350 AdminGetMyBackupCodesV4
eval_tap 0 350 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 351 AdminGenerateMyBackupCodesV4
eval_tap 0 351 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 352 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"mfaToken": "BpTuvLTJUzwXJFaW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminDisableMyBackupCodesV4' test.out

#- 353 AdminDownloadMyBackupCodesV4
eval_tap 0 353 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminEnableMyBackupCodesV4
eval_tap 0 354 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 355 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminGetBackupCodesV4' test.out

#- 356 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminGenerateBackupCodesV4' test.out

#- 357 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminEnableBackupCodesV4' test.out

#- 358 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminChallengeMyMFAV4' test.out

#- 359 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminSendMyMFAEmailCodeV4' test.out

#- 360 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"mfaToken": "W3JVdYpfHOYoLva2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminDisableMyEmailV4' test.out

#- 361 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'c4JscEQfBFZXcSXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminEnableMyEmailV4' test.out

#- 362 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminGetMyEnabledFactorsV4' test.out

#- 363 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'U81S5H9XsZyvZOFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminMakeFactorMyDefaultV4' test.out

#- 364 AdminGetMyMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminGetMyMFAStatusV4' test.out

#- 365 AdminInviteUserV4
eval_tap 0 365 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 366 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    '5RrFZYcwfQ1Q2Bbc' \
    'jSpv6Nt1oz4tdgfK' \
    'u4bmK8kOKcEoCRjQ' \
    'JlPY3p42OS9iGNEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AuthenticationWithPlatformLinkV4' test.out

#- 367 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'TpMlvRDZSIuM0OXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 368 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'HPluvsry8AKSZxOh' \
    'Uhl3Y0EshaG0uDiJ' \
    'NUuxK22saWaGvrzB' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'Verify2faCodeV4' test.out

#- 369 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'IITUJGj5FYaSgewL' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 369 'PlatformTokenGrantV4' test.out

#- 370 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'cBxz5LpdkRCAU8Hh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'SimultaneousLoginV4' test.out

#- 371 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 371 'TokenGrantV4' test.out

#- 372 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'ZLa7Kw77UpCxNyx1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'RequestTargetTokenResponseV4' test.out

#- 373 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"platformUserIds": ["jjdxNePPAJ6Z9Uzq", "IhZZiK0QEG6C9w4l", "VRNOF1Bg6OHZzvdZ"]}' \
    'HoIm4tKNhPjNIQGF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 374 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nWlS9Sfjh0htyVaG", "policyId": "j4y9ahS7h7XVlmc5", "policyVersionId": "Rs5FVQSIqObR55tV"}, {"isAccepted": false, "localizedPolicyVersionId": "BlN1iFvw0GSLBmie", "policyId": "8SJckSRbu7hgmUm7", "policyVersionId": "RVCUREDdoGatGQ1S"}, {"isAccepted": false, "localizedPolicyVersionId": "aQuPWPlkxeotrNak", "policyId": "KGvOSvpmZZdlNXdx", "policyVersionId": "2kWmSqodNZgfQyDV"}], "authType": "EMAILPASSWD", "country": "0aWj58Othvd3jzMD", "dateOfBirth": "Af40gKSizvmxts5H", "displayName": "SQvRAPG9JoVSLrbs", "emailAddress": "5niXkjpkOgRCC7qf", "password": "z5jV7NTRYld9FJJ1", "passwordMD5Sum": "0goNq8uq79Du28SR", "uniqueDisplayName": "RAMaQFEzppeticck", "username": "SUon7awfol07696u", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'PublicCreateTestUserV4' test.out

#- 375 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "p5ieMjjOfFSx3AJN", "policyId": "97kUjwiCmWQvbrxQ", "policyVersionId": "pUSnos6QiHyrcGeR"}, {"isAccepted": true, "localizedPolicyVersionId": "VUuLmenyxTQVkEg5", "policyId": "wouUKa35m8oH9zCf", "policyVersionId": "w7mCMkbvSIm7JROc"}, {"isAccepted": true, "localizedPolicyVersionId": "MNexBOron8wIdUbp", "policyId": "7xVMKfbAJfW4iMIC", "policyVersionId": "52NUedhhkME18qGp"}], "authType": "EMAILPASSWD", "code": "syEPDWHcqfYp2EFx", "country": "EaEHCGtg812NQb5G", "dateOfBirth": "lh8srTlTj61WdV2X", "displayName": "Uo1BO1rE7E12Fapa", "emailAddress": "o5jo9nJoKEb8tHmF", "password": "wLGan2SrKckNxLWH", "passwordMD5Sum": "6rjhRL9uxoV5Oe8k", "reachMinimumAge": true, "uniqueDisplayName": "EUJtMC8NyV2HLHZT", "username": "3oYJlC4ie3InnSA2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'PublicCreateUserV4' test.out

#- 376 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Tb4qXYyJUAlKlTwd", "policyId": "JEPoemVtmVXTs3tC", "policyVersionId": "u4F9IgDT2tq2V2lM"}, {"isAccepted": true, "localizedPolicyVersionId": "CAWidWPjYgyebU6r", "policyId": "HFirnUpZ9UJ4N78q", "policyVersionId": "HTGdn7gE4bwLzDEw"}, {"isAccepted": false, "localizedPolicyVersionId": "Yt8x9SSaOZcEvG6K", "policyId": "Zh954BmtuIFllfSU", "policyVersionId": "naUhC4x11AS2jTKo"}], "authType": "EMAILPASSWD", "code": "eHaCuN7zpX9vp4QJ", "country": "dCrwkz0nw2oxKye8", "dateOfBirth": "jZqj7k0YiLqOUSBu", "displayName": "wR388REDRuYBnWiE", "emailAddress": "sOnDfIAN04f5kSON", "password": "mw1BDqqSctLL4WfG", "passwordMD5Sum": "q8JCDnwGWgccuzuc", "reachMinimumAge": false, "uniqueDisplayName": "QDRMGdBPbUyHTYPS", "username": "8CGKXGon2ecc65YA"}' \
    'FLweD9Z7U2lNkorr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'CreateUserFromInvitationV4' test.out

#- 377 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "w9QH3rNhDepQum4D", "country": "j7pR05RTGXGRkYXi", "dateOfBirth": "fTd5nAOF9VV7JgCO", "displayName": "m4wL729Hma0nCdCE", "languageTag": "Fcf2doBrfHiHXXgv", "uniqueDisplayName": "u496H02yOVN1h41j", "userName": "IPOMXufZPWSe20Jf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'PublicUpdateUserV4' test.out

#- 378 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "NvtNcWtpUkw98x3t", "emailAddress": "MM1bFFDIqKD8HJ4X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'PublicUpdateUserEmailAddressV4' test.out

#- 379 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "0DetCeJ4x0wf5mQx", "country": "6Hs7M5apPMc8ZR3b", "dateOfBirth": "PCJ5n5s6DODBmrqE", "displayName": "hGlkEmGdCbwodVRj", "emailAddress": "ZJWuCQpjuJzpPO7B", "password": "PxVWlRFnIekrQ99e", "reachMinimumAge": false, "uniqueDisplayName": "v8FQCyQBqKxayGvw", "username": "7MqOsypCJmfRnW0s", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 380 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "Lj4mCShMFlbrRGjo", "password": "BQ45Za4JR4S3iac6", "username": "vLeoIULJlWXmQFle"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'PublicUpgradeHeadlessAccountV4' test.out

#- 381 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"mfaToken": "f1tSHJf6sVpwAAKK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyAuthenticatorV4' test.out

#- 382 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'PublicEnableMyAuthenticatorV4' test.out

#- 383 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 384 PublicGetMyBackupCodesV4
eval_tap 0 384 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 PublicGenerateMyBackupCodesV4
eval_tap 0 385 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 386 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"mfaToken": "qmTy0ZSyJ7IIUXlB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'PublicDisableMyBackupCodesV4' test.out

#- 387 PublicDownloadMyBackupCodesV4
eval_tap 0 387 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 388 PublicEnableMyBackupCodesV4
eval_tap 0 388 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 389 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicGetBackupCodesV4' test.out

#- 390 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicGenerateBackupCodesV4' test.out

#- 391 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableBackupCodesV4' test.out

#- 392 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'PublicChallengeMyMFAV4' test.out

#- 393 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicRemoveTrustedDeviceV4' test.out

#- 394 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicSendMyMFAEmailCodeV4' test.out

#- 395 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"mfaToken": "lZMQeSnOg5gf1Swr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicDisableMyEmailV4' test.out

#- 396 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'bpmoF4DvNA1wo9IA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicEnableMyEmailV4' test.out

#- 397 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicGetMyEnabledFactorsV4' test.out

#- 398 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'xV5C71gTw8BJPFct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicMakeFactorMyDefaultV4' test.out

#- 399 PublicGetMyMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyMFAStatusV4' test.out

#- 400 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'wUMCRdxXOBu3TWmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 401 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "DVmCGFoD7aNFj9wO", "emailAddress": "RAVqRuNsXxRu4EQq", "languageTag": "R3KbYWtFzplXVk36", "namespace": "IpbGquPnIPwR1Bin", "namespaceDisplayName": "Z4ULwAKO8n42UuxE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
