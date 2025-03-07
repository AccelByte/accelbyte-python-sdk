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
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "pr4U4fwQIiLXgmRa", "AWSCognitoRegion": "svjO4lj8m3XEwP2b", "AWSCognitoUserPool": "4gd3xOeii8Jnmsse", "AllowedClients": ["p2xD2NY0kABeGs9y", "xahld1pO0Gyf5PO3", "COyMvczgEpzZ3Fbt"], "AppId": "xfhcRC7IVYa6iZ5u", "AuthorizationEndpoint": "FRYNn3SHiWxF0Ybu", "ClientId": "U5ar5qTLWUCy0Afg", "EmptyStrFieldList": ["c050XIZRW491e94m", "QjVOOBnIWhunElqZ", "Uodp3IhtCSHy1ei1"], "EnableServerLicenseValidation": false, "Environment": "m5x3B4t7WQnp8jXZ", "FederationMetadataURL": "edgt5cyNe27HLtwt", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "HAyNFxcVTKuAQTGh", "JWKSEndpoint": "5BxjWOozGoDtsUuY", "KeyID": "o5p8ED5QZAufwNa8", "LogoURL": "lzfjv9oYMXMjlVHY", "NetflixCertificates": {"encryptedPrivateKey": "1AHwF3vGoav7MK0P", "encryptedPrivateKeyName": "cLnEkcokKwcQ0baD", "publicCertificate": "T9OyJ2h23GUS2amU", "publicCertificateName": "7syGlElXdEAOrVSn", "rootCertificate": "LocLVVYamQc4wcG5", "rootCertificateName": "nDBLJoJHbiQ5duE5"}, "OrganizationId": "p4cfs2E41cK8QTwi", "PlatformName": "IAvxSvNDlmM5nQFM", "RedirectUri": "Gzs7fzjgyc44mEh9", "RegisteredDomains": [{"affectedClientIDs": ["tRk8knYSV30lnroQ", "ehMDli6t9unQLYXx", "m09wpGAbpEmDY9vL"], "domain": "h3u6EDsUmrV6kH4O", "namespaces": ["otKwG3UC6XCnnZxF", "8CmQr17W65br34rB", "BN9tU6TDm5GloFSK"], "roleId": "WM1eym5ydC6p25xC", "ssoCfg": {"googleKey": {"WTqUOYZENJ1QHZQx": {}, "PRXH7uxBJEECQE1l": {}, "i3Bg7Jxc9pUnZmvh": {}}, "groupConfigs": [{"assignNamespaces": ["idwCkZwqjYLfTiCO", "1NDBvQvRPnAz4VzW", "0CpoBCbyJsF5IjF1"], "group": "c0W338HS6CBgVRyi", "roleId": "hYNZ84CVhziXV8Hw"}, {"assignNamespaces": ["SmvcvcDKF19yVRaf", "CjOuSYht83AdvBaa", "gTiRJ8daGTVX3Bb7"], "group": "jlz5IfHgKjI9mwJS", "roleId": "rN8jkIykR2zbaI6P"}, {"assignNamespaces": ["D7fEscShnGUGUtV9", "GJ279GDbLNwjm3FK", "0nnX2poMfZ1hDHtb"], "group": "h4HtMlFgvh2Dp2So", "roleId": "iIPp1yvfAHS0VgLu"}]}}, {"affectedClientIDs": ["11A3HTovFi4tPAGf", "leyCA6jEtcqsnzoV", "ILjkwW61duF87aUy"], "domain": "rdt4XSpWBAetsanz", "namespaces": ["qP8oxfrtbECD1CYP", "waiBAxfYL8Avt70Z", "UT2fSk3LL0calqxE"], "roleId": "ewuGS469k2hG0WKt", "ssoCfg": {"googleKey": {"4sUmanYxM0UHZVNY": {}, "zGMNIpWoSLkUrfuf": {}, "4U3WeYeA9t2ENKKW": {}}, "groupConfigs": [{"assignNamespaces": ["rFtHIi1CMgKAOG5i", "DcCR5PbCvDLil8wj", "9cKM3Ar6MF35hCER"], "group": "4nGmWGgTJfHlJl4t", "roleId": "HGa4XfZcd9CVnGqM"}, {"assignNamespaces": ["X9FieeEssWEUl07b", "hwntCVqiYOJf5KwM", "ZQjzvjSozv6CTRDl"], "group": "0zp9CzHFwinkBNi4", "roleId": "gvqgl6TZ9TGVPmv3"}, {"assignNamespaces": ["4h6T7EsufmfxKYB4", "LM6H6QXmpZ9X3fUS", "R1l9xLPBsmAUrD9L"], "group": "1IiD6MlcEPhMDFzj", "roleId": "HZ3sIhzOx2CXKlvI"}]}}, {"affectedClientIDs": ["omU3pIxM9n8D2eLM", "e3lt9qfx2UDcgVE7", "L9FK6e0MrPc4vtxk"], "domain": "9hVKlG56HlzGr7Xj", "namespaces": ["dyRJunZPkp6ccIBn", "WyPw8mj7gyQ7XdIs", "zGRj46COPipH1MWV"], "roleId": "THG0qHJCWEfOJpZm", "ssoCfg": {"googleKey": {"9yEYWNGMy2pgSGSU": {}, "OK68eqGJtWf1Ybgg": {}, "8rdwY9bmrvHmO07K": {}}, "groupConfigs": [{"assignNamespaces": ["NqX9LM2IwEsdOGBX", "BwnzDX8v3xgC1Ge9", "PdbTTAJ2Gp1r0sVZ"], "group": "6LJAOddIL2l3hPjN", "roleId": "DKv2LWfXqjr8fS79"}, {"assignNamespaces": ["En3wYowBdkaZ3y6i", "38XQjLDRqkpiFK5B", "tiQ272Uo9UBJWodp"], "group": "dwsX1jorcyR0x3Yi", "roleId": "HF8ITGPRQBCgIs1Q"}, {"assignNamespaces": ["2lzxl0yF5m77TTh4", "gUoj8u2WRcLiEtzV", "lnkflfn7pHY48F1d"], "group": "l1q92m3iRlfnBAk0", "roleId": "CwiAsR65yQ9ssuHd"}]}}], "Secret": "GmxncCEr0KcgeqzG", "TeamID": "bruNB72HHMkjzyBB", "TokenAuthenticationType": "4UFKiaoV0VOem2yq", "TokenClaimsMapping": {"PsMFxKybPkbuS6x9": "cLJ1APnNlsa2bRBr", "27fVMWuAfDqLMR91": "9IZPKOKiAVQXXOmq", "FHLbyXmgCNiXH8ue": "nbC5CphgMweexsIA"}, "TokenEndpoint": "P5vHLjBJ9iqMcBL4", "UserInfoEndpoint": "BzhDUjhKPwbwcvQU", "UserInfoHTTPMethod": "5kG8bXGFmPAnOkDi", "googleAdminConsoleKey": "Jq4xQye7HqnVK3YV", "scopes": ["eOWs9mfVQh3jLBtn", "9pxpE7BYtzB0B4Cx", "yQrUpIFvORxTi79D"]}' 'pSjb39ukcR6c2E2r' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 '3vk3IfAKEbqcNXSG' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "CCvNowNmdpcJgF88", "AWSCognitoRegion": "ySNq4Mj7mulP4tQ6", "AWSCognitoUserPool": "R1OqKVOTniBgLsNh", "AllowedClients": ["dgQ0JWZjNRSzOTqc", "VNX3ahvxw9gwwhTn", "jN6wKZGW4y3f0R9s"], "AppId": "2kndhhZhwAiLsZs4", "AuthorizationEndpoint": "pmLDIQch4IjDq9aT", "ClientId": "3qZyI0rYsWucAkXs", "EmptyStrFieldList": ["VJbXi7eRZa7WwIc8", "95ImqK6tVsaUq3st", "Uh5J5Z9GiBiSAylX"], "EnableServerLicenseValidation": false, "Environment": "cS0IeHpWCugmfOL0", "FederationMetadataURL": "QQpxsuD8PGqku59e", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "OXyDYz9vMUOPG0iH", "JWKSEndpoint": "DT8QbF7gHPTPQbvL", "KeyID": "t2NRqJGIKzLyH1y7", "LogoURL": "2L13Ornyx34luLdv", "NetflixCertificates": {"encryptedPrivateKey": "tsTKXMjiw6gYPvfn", "encryptedPrivateKeyName": "2Qt9iyq3Nyk8ncu2", "publicCertificate": "Z3eDHH9WaVO4iKhD", "publicCertificateName": "cJ7TCcNIsQ3PuppU", "rootCertificate": "xDSK8aOTGMudcxlC", "rootCertificateName": "V4cNbJGQ57lPdinp"}, "OrganizationId": "jS2DRfGt9GlyZVQ4", "PlatformName": "X67tPZSTpPq3xjrE", "RedirectUri": "lvvDgw0ag7kSWE0H", "RegisteredDomains": [{"affectedClientIDs": ["iqm5IuLryiEXqvUW", "DjU1G0EVjVZw1ToL", "uPakQN1MpOs1RVFr"], "domain": "cg2CXxepx78fvsyh", "namespaces": ["E2BKtyTDSIM7mkmv", "Z7Cmsh4US8o4jfMA", "NPpmZDdMiCxmuCCV"], "roleId": "uFjS1GC1d2b92B4v", "ssoCfg": {"googleKey": {"Egj3HOmhcWm428Xe": {}, "jRF94NIY9nMrBZo0": {}, "lNUBDShHD32vvL28": {}}, "groupConfigs": [{"assignNamespaces": ["FPwTiXfLcxDC9Ynd", "02mECIQhfIhHtADU", "Q9zimQTQT95pFJUA"], "group": "JsyAfeKOufV4f15N", "roleId": "ohXu6opxQGRt6Pql"}, {"assignNamespaces": ["kL0diRhLC10ih2EQ", "fY3XCv4hdOa6FdZh", "NMd1onFjGRbxtABP"], "group": "XDmgNEJBhgGq5GID", "roleId": "hNC66szbCCf73IFb"}, {"assignNamespaces": ["RkPSSITz4TjCrJHX", "GXku2YVuOzhxHmnr", "rV9ZGWrZ05sxe6A6"], "group": "RpmKDebNkylbynkg", "roleId": "T9vayLLiizac7Ge6"}]}}, {"affectedClientIDs": ["zKJdlt7rjF5RaJwv", "kWVco2LTo5ijlvDF", "8qBWCQ9dLWYyS8zd"], "domain": "hMeBXH8x6HdVfZVD", "namespaces": ["AiU6iJOF7JKZFNk2", "NKy59X8iOg2sVBiC", "oeC5weXJl7PeiMH8"], "roleId": "z8dVej8N2yv6VTnO", "ssoCfg": {"googleKey": {"K7xAvM7tuL81lsR7": {}, "xxSVp3Gd2TK0HzYv": {}, "iTgYmx82JVBRLPZ6": {}}, "groupConfigs": [{"assignNamespaces": ["Iz8tne5dbguBF6Gs", "vvdl8jHz9x7XZIjU", "4IK9lOLaZaMphKCq"], "group": "Tq3EVheJjoEEXBLI", "roleId": "xGnNuhoJM3WWPvvC"}, {"assignNamespaces": ["iCf33ViEdqQpoGkU", "WNizk5UcPAGv6c1E", "SC6hZYTYZbzf5aAN"], "group": "NNs5kgSZZNUHbIT9", "roleId": "szApmWJO5vzzXZj0"}, {"assignNamespaces": ["8a6K1XRVfriSpPFn", "ZBJZkDnEiyfa2Lrn", "pZxNnLRH36bqS2oF"], "group": "Y76PU1AziBOHEAj1", "roleId": "cT3u6Zc2FbrTFznT"}]}}, {"affectedClientIDs": ["gDIwZIRWf6T3by2k", "YSCdnFKLc0xcTjqj", "dcEfU61OJYMnW49r"], "domain": "Wynp1ck1vT90C6o8", "namespaces": ["6cSRL9cgbUmulhe9", "8oaFKlQicdrxVhrt", "wSd9QWVMYz7TU1Ts"], "roleId": "xsChSclSkb5aBi9K", "ssoCfg": {"googleKey": {"9zyv6gFZXI5nXJ7h": {}, "Li6HweweRmyo91dI": {}, "n7QqXBDXJcrqKmXD": {}}, "groupConfigs": [{"assignNamespaces": ["woEV6tCdrxw1KOPh", "uvHuYrGWDK41uMOC", "0mRvSoaGk4ktF5wn"], "group": "JDg9Q3WXiydCOInV", "roleId": "olsr6CHmj763vLwt"}, {"assignNamespaces": ["YEJTSiXjcY5ZPkv9", "0lyKSTWLxSFZ0Lpu", "pEi5DbkVs3qFTi1t"], "group": "530Wj1WfzIvc3VlS", "roleId": "XrA3XUGud4tVjmxE"}, {"assignNamespaces": ["f4XvVhFJTxFHITBg", "9x4unq3eOMHIKeTy", "BG5dCUoExnKfV386"], "group": "9IN4V1OdhH4GVU7E", "roleId": "xlkmc4xYiLjLyZrX"}]}}], "Secret": "r9Bhtzn8jAdTn6xB", "TeamID": "hrciryLm67rkadH5", "TokenAuthenticationType": "Y41SLjCPrFa05Xl5", "TokenClaimsMapping": {"TPC5GODS44bmm7jP": "dKLddfdsUqjXVzW1", "QqxnWR5sheLgsAF4": "ctv5guycGiq9j2Ey", "IknfLDpgHnMOn8nc": "3gUZ8ZFyyEr0KBXu"}, "TokenEndpoint": "JBqK4QtEydPWLPBY", "UserInfoEndpoint": "iR3UbJc1ZYapx7C4", "UserInfoHTTPMethod": "77etqgfOJDUT0uKA", "googleAdminConsoleKey": "PrARya2IMlNiXpF4", "scopes": ["qvsUUpHqi33TcBGk", "c0HjUcnkpU9oVzl2", "kBuLFXIeCEKZUTz3"]}' 'GvCAZ5j24acYHbrr' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["yHB6GO9zP3FaepA3", "b3YJ9nJM6vtT27xv", "85K5MU2qmbeqaVem"], "assignedNamespaces": ["INdClpF7OvlBIEgj", "se5kd6GEDo08yq5E", "5HleLoog4me2NBFp"], "domain": "62xlXvVcJerTPW02", "roleId": "PWsHiKYArAxnKBfB", "ssoCfg": {"googleKey": {"fDlrQQuAc10DjjwM": {}, "v4vrIPRtvhQIyLar": {}, "jaLOKnX51yAB8Pa3": {}}, "groupConfigs": [{"assignNamespaces": ["uNGKhaLlJzJMSnJI", "IgsAVmaGYxUX1B9o", "VuzG2CnYX2YBF2g7"], "group": "TVtzYEHUodh3iUfB", "roleId": "thbepUCTWiZ1uqh7"}, {"assignNamespaces": ["GAi4FEIu44u83ZLR", "xYlYqlpq03BGdIk4", "oEogFVGR71rJOBy6"], "group": "lsj1AKGBjnHmaAu4", "roleId": "YK87DYAWWcbcbGWm"}, {"assignNamespaces": ["KgE8CZ4AELr5lraa", "5v5P5Cj8hgFsqHC9", "h5JPiMEtgKuiGTYg"], "group": "wWv5XldL6rOVGcRA", "roleId": "n51rVAQSxp4qTB54"}]}}' 'mKA3V9DKlCeZ7mLY' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "sHooOIaxIpb1cIOJ", "ssoGroups": ["PS3lJ80YJ41U4ooQ", "980ywmg1pWpWit1Q", "C7FKe0fnHUlmU1un"]}' 'GKM0tgfeWy47bbwM' --login_with_auth "Bearer foo"
iam-partial-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["I4gGmvK9gW596FwB", "NrFXt3TAuKBwBcD1", "2ae6r3hHwya4NpdO"], "assignedNamespaces": ["zg3hr6ucHf7dbh2i", "KNUl0qJqzoKMRMG5", "41PAiNjULsx4SnKN"], "domain": "XLMUaDSwwQlnNRZJ", "roleId": "HBSB4fZWEFIZs28F", "ssoCfg": {"googleKey": {"f1kZp1Zktx3N7WNM": {}, "YIfcDKbLu8pnK34o": {}, "A1keYXJvtggDdXjb": {}}, "groupConfigs": [{"assignNamespaces": ["djMBahFZZGMTcqnW", "rIprOv0BJ9Sgl7H1", "sdH2RIJz1eI7Q5pu"], "group": "9PutLf6IrvZoBGQb", "roleId": "O4S3rURGWUzPAE6S"}, {"assignNamespaces": ["dV4D5jftRl9rZmtQ", "Uvro8TWwXWsz9TVm", "dMKEohKzuMYDUTLB"], "group": "eCidXjuGgx8ncXej", "roleId": "meZtzT0qj0ltsqfi"}, {"assignNamespaces": ["ZrthVvyX0OCKDJE3", "RMUddwSSgxCu8zru", "1DhGAYOHR5BWa9Vz"], "group": "IkaQEl1iUProNB6h", "roleId": "I6IpGcToWgFvdRhG"}]}}' '9NwV3zDuqVlVTypc' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'YPK8IxrSZuxWl0Je' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "4fJIyFAm3DQht4Jw", "apiKey": "nPS2urJqerobWMZG", "appId": "VL5KLTxahWlS6XdB", "federationMetadataUrl": "aKSLCgOOPXM6XTUh", "isActive": false, "redirectUri": "dJ90yqHDNacl4F9G", "secret": "6Dl5TFwBY6HKXAbl", "ssoUrl": "kT8VGgSH8MGZGwiV"}' 'j7eDTaka9ABfX1IB' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'yPEOuPhGspRi3bhP' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "QvBBJI5JxytpcubN", "apiKey": "4AUUPFPscZsXeJOD", "appId": "4DMtqfIGiGJovgWS", "federationMetadataUrl": "RxZ8N4UQ2fg3V1o2", "isActive": true, "redirectUri": "xUzrTwagH7BMT1IZ", "secret": "KTdNFVBQ1crBXAup", "ssoUrl": "ATO8uXsqVpdiWo8S"}' 'jDAM0Riw8wLYW3n4' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["F3LD1EDwBXw5uBYe", "QZOzATNSV9E9yyNb", "7yaLXzAVYymOuhCk"]}' 'Zu4htrsf8eIFSovT' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'GXaMsq8ePN1oco2j' 'x8Upe8SjMvpqM8pu' --login_with_auth "Bearer foo"
iam-admin-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-admin-update-profile-update-strategy-v3 '{"config": {"minimumAllowedInterval": 12}, "type": "NBYl9iCqfW6rqGOQ"}' 'display_name' --login_with_auth "Bearer foo"
iam-admin-get-role-override-config-v3 'GAME_ADMIN' --login_with_auth "Bearer foo"
iam-admin-update-role-override-config-v3 '{"additions": [{"actions": [51, 100, 27], "resource": "ij4ysYPonb59gQff"}, {"actions": [22, 5, 81], "resource": "ngEpTnRUQr3RLOM1"}, {"actions": [44, 62, 90], "resource": "x4gqDY6jwyKRxhkL"}], "exclusions": [{"actions": [9, 94, 51], "resource": "DuI5f6m4KC07CnsZ"}, {"actions": [9, 74, 14], "resource": "COF74tz6aeXZOYwb"}, {"actions": [46, 1, 20], "resource": "JYdMqGegcg3eRvBZ"}], "overrides": [{"actions": [8, 80, 12], "resource": "cjIXmFWRJnj8xN7H"}, {"actions": [60, 1, 84], "resource": "6Zuxk6u6HXXdiC9Z"}, {"actions": [61, 93, 18], "resource": "Sb55g8LSTs7Nf95l"}], "replacements": [{"replacement": {"actions": [66, 23, 85], "resource": "j84P0KqirJ4PkMFt"}, "target": "snFfz8Ew0X8fBuBS"}, {"replacement": {"actions": [76, 0, 78], "resource": "HP5SVPvRLiDi0mNH"}, "target": "b6Lx8eq8SGNwEQO8"}, {"replacement": {"actions": [8, 19, 43], "resource": "xGhaBKoUfiHjGmCy"}, "target": "PsKCJTv1ic9gvagF"}]}' 'USER' --login_with_auth "Bearer foo"
iam-admin-get-role-source-v3 'GAME_ADMIN' --login_with_auth "Bearer foo"
iam-admin-change-role-override-config-status-v3 '{"active": false}' 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-get-role-namespace-permission-v3 'zr9KjQ3ttz8MTBt1' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'xk9IyssSA8nP5PQj' --login_with_auth "Bearer foo"
iam-admin-query-tag-v3 --login_with_auth "Bearer foo"
iam-admin-create-tag-v3 '{"tagName": "pzk2Tb7iYdmNZWos"}' --login_with_auth "Bearer foo"
iam-admin-update-tag-v3 '{"tagName": "rsVBPZ64j0HUONsc"}' 'ofwYLQcDvkaEIIPo' --login_with_auth "Bearer foo"
iam-admin-delete-tag-v3 'JT83zEGXmVBZLyrH' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["7BoysmaORLkP5hc2", "Fh04JTsqDTynCewq", "JligLlRxOelKykIC"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["RxF6HtlER2txs4qr", "NARATn6KXOutlYBb", "LhL8KXx25FZfQIod"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["VBqQsBpCJBIXLGYc", "wWVRK6UKk5ozrXA4", "HZHNyq9odanhR1Zr"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["m3thUvV87yfkycLS", "VdleSaAylsmLYe2p", "hYOgT5kDTyPl3dKF"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["7NXEjrJMki8jvc3P", "8Gwjg3IOH0SDHgYK", "qxJiFJdrmj5vhzgs"], "isAdmin": true, "languageTag": "UWs3tYlYeMoCimJy", "namespace": "SocRvUWDOrFZKPNo", "roles": ["N9AWtLK9TFgi9j2X", "Mh9WpifqjNjLOtNQ", "ts2yxf6MLZJ2jZfZ"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'bpTJezzriCDWXT59' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["SRu0YqUxKDc84OMI", "zvTScdbKBsAyJMz4", "ILNDvhB4Eoes9a6X"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'aJeRbzTPwD3jxF7v' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "xRUY0ilrNoFT98Sg", "country": "tJd4Z5f8nfaKqdZF", "dateOfBirth": "LbZEHxsDxeR6d7r1", "displayName": "SQw80JfMpPrSqYyp", "languageTag": "RUnq5o4ETeCUYG9c", "skipLoginQueue": false, "tags": ["gqYhyVhURx1yPecz", "Rpdk0HATGylx2JG2", "KNGfhzfCTxxrsRRL"], "uniqueDisplayName": "ee3TcJ7DQIi45aCD", "userName": "HN9mVug2zkVf6Kgp"}' 'KOcn3tMD9UT67bOw' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'ugFDa6wUQvehKqwC' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "h86XmRkCEcfHDCdl", "comment": "59Wp9A3tXGve6DdK", "endDate": "6uvg8f2cIoByk9fx", "reason": "tvsgeAxo57nKAbZp", "skipNotif": true}' 'l5bYt76BNsi4giR9' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 '434WpKKdzxoufCNl' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' 'rpnMUBsnUfuQIcSb' 'Ut5UGkInFGpuUsdt' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "q4dOwNESzCEW9dUV", "emailAddress": "hZjLftC3sCS8CpLC", "languageTag": "qPD9CeDEdCnnL6Kt", "upgradeToken": "1Bjj3b8QM8Rr45UL"}' 'qXQgvwD3PsKDJiWx' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "QBwaS7rDBf2S54ph", "ContactType": "bdyGDt47f9GWRlE9", "LanguageTag": "hqz6rjDNo4rhjxUd", "validateOnly": false}' 'M83WekqfWv04vvn9' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'bk5qr8qs2mqtnGAq' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'XUjNypF6MMqWpdEJ' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 37, "enabled": false}' 'PoaIbYz8cK5jlpJd' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 're5ur6yvWJDdvM7T' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "7PX2vamIRZHzsIYO", "country": "CUoiCXNjrdQL2jdx", "dateOfBirth": "1eIba1sB0HsJ06Dz", "displayName": "fbzRYt4OVUyumBeI", "emailAddress": "qdQGZC5kM03HHijs", "password": "QRj7N8IAjmsonjj0", "uniqueDisplayName": "ZR50BQ1U6aFD3O2k", "validateOnly": true}' 'Sc58zgZVl4gIF7v3' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'qbZu9M3OxqVAT4H1' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'lRZ9Z1JBrHRzEOtI' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "xzPqb6n73m0jiaDH", "mfaToken": "86d9rsKgzCsMulpB", "newPassword": "8HZUtVVaJCiLgKOw", "oldPassword": "rSfWhT5B4Wedopzw"}' 'SluBtRFPKThyGnbj' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 25, "Resource": "ey0MkZwS6TYwNN3U", "SchedAction": 10, "SchedCron": "hic03qGEg5fNzBVr", "SchedRange": ["jo3g8CfRwtyl1HeT", "7VEPgG40QyXzsOzg", "ck078IghoQBp2mWA"]}, {"Action": 83, "Resource": "CXVMiyEvMf9yilUE", "SchedAction": 42, "SchedCron": "adLmQtYKmEMzicbu", "SchedRange": ["L2S3RiW8dLTCBfGU", "dVEdvdQL7sVwcZ2P", "ofaJoSqtrEOqxH46"]}, {"Action": 10, "Resource": "PKdbabJIkNnt9P1T", "SchedAction": 22, "SchedCron": "g3Nt2c0r4GqF0NHg", "SchedRange": ["lOVuNZ9LzNeJnBur", "h54CWbYb0Pebyt8b", "4DGscjwrizsFUgYw"]}]}' 'baLvqvQ2NbmDITuy' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 25, "Resource": "eoW6JBcGp9Rx2Rfc", "SchedAction": 89, "SchedCron": "jZF7Ax6115Kg9U8v", "SchedRange": ["rQJXQxoIbVi2CLEk", "277Ivjj1A647XQ3k", "oaAfZIim0sFPm1YN"]}, {"Action": 85, "Resource": "7bojDVaZLpx4kEWY", "SchedAction": 22, "SchedCron": "N1pYMBwbPZTlMlUv", "SchedRange": ["FEiGprcNSQ9kEeXB", "Z6FVrBzyhyhoS6a9", "oe0JaXFpff28uYbe"]}, {"Action": 79, "Resource": "Cf2HEHvVevhISjbt", "SchedAction": 57, "SchedCron": "MAAmIHYbsxG5N066", "SchedRange": ["FXb88SbLOa21DiSF", "sm0XXQJWszvTQEuA", "LzDNp1SZ58aDllwz"]}]}' 'TRHak1MXxj7Esrg7' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 21, "Resource": "00nml5BidsK9dCEz"}, {"Action": 15, "Resource": "NcXXTUIggoH89QNm"}, {"Action": 72, "Resource": "eorY7A1otGFyv2SM"}]' 'jbEr50qGdCZIc6EF' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '34' '6piIzmc8rKrKEPGS' 'Acong6eNERUf8kjc' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'i1Ctccv9Gv4tOcbn' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'uCqf0lm6WBkIzjoS' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'V31tvmMB6jzrpRGE' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'SmooHiCV4GUOnXpa' 'pXQGRakUbcG7PcR4' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'eiU3Idi55jNrGNT2' 'VHTKuIT5FwwHj0Ur' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "5F2PWGTTD81xhNP4", "platformUserId": "t6kYBUjyXAn3bWQF"}' '6QcAiJpXIrgroixp' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'tZhckUTGkcBOE4qM' 'cH1Kyi8ZFvGcV8DY' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 '0XOkDstxZcY1HgAn' 'ZV4IOglVLqb9lGAJ' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'Ug21Lt7JwgwMUSuC' '3Bajy3BcEMCtQs2F' 'cEcvVAyId6Cp85HV' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 'DsZBQgOnXuXsGThY' 'Zrmm0wrFMnPpWgrQ' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'D4hEk0OLjYsnignE' '7KcMF7fuDbzRRYMN' 'XWUsp1tOibJY9aL9' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'ie6vvMbiNURrlm88' 'QlKyuoya4JgakZyU' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["V7t73VnSFbuxd4KY", "Z0jk0UZdhtnKu9oT", "c8pVkiyGsj5JdXzR"]' 'xfNEjUMTs8WIObJB' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "Tsvsw76uISRX0bKV", "roleId": "oWtoUW1P7ocuBAld"}, {"namespace": "DSUS7Haa6unq1yQO", "roleId": "SRvyiLBRVtIDi2pi"}, {"namespace": "IQFVmzMidw70KSah", "roleId": "pYZdKZRyR9AX7Jjx"}]' 'vNZhM84DiZk6ySrB' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '9SVFctW7YS0OkL78' 'XeEAtALFI3v8yha4' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'pd5A7MYcpBD6lKNb' '8RxvN2u5J7baOeLH' --login_with_auth "Bearer foo"
iam-admin-get-user-state-by-user-id-v3 '19fqBwNbNe1ffYRt' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "vQaKyevWYtZjK6J2"}' '9v8MpBSpo3AKRmnJ' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "kzJHAckUyBksYQfD", "password": "m0RNFwiz70tRVLMl"}' 'Hi8i9gOVqajUWrgE' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'sWDtaKzn8dZwnnGe' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "ZsZVgbPzPFbrOMZM"}' 'gWkFN7Tpkx6GcfyO' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'g6ZUrrp9ubg9mndW' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "gJRvpZrSpWX3KEe2", "namespace": "BjV00ReCXFffjJJx", "userId": "lgjzIhpgOoIOD74V"}, {"displayName": "21HWDAfvXwdxbyp4", "namespace": "HAPbBbNPStVBUpKg", "userId": "OssFkz0F36piDYXe"}, {"displayName": "HZ7FHls3nyvconqb", "namespace": "HQqKLQKe3xmj6s0G", "userId": "qsWncp5LrqbiKudv"}], "members": [{"displayName": "9z75SzoCV8ZMi2o1", "namespace": "nR482D6gNClk9c87", "userId": "hosaPFC5zBW3ZgVZ"}, {"displayName": "Cj9ObVGT0Scwl4kN", "namespace": "mCi15XTJTgCNNH7R", "userId": "tG5Xmo9Q0Wb07N17"}, {"displayName": "fkxZSc6VbE0AGcek", "namespace": "jMNHuPXtz8tXxrmz", "userId": "afMUguyDoN91uc28"}], "permissions": [{"action": 69, "resource": "O3OwNEGSW5TaW4to", "schedAction": 86, "schedCron": "QCY2NGGvi9kg3rMI", "schedRange": ["zNmhJTNQjKlwjfJ3", "TJ2xVpge70WsLfgb", "ZieRvJI5sT9DH3Df"]}, {"action": 77, "resource": "zbrddqcKLa7LevxN", "schedAction": 69, "schedCron": "YxrBE9jlnTgtgW33", "schedRange": ["wDwD9RKvQX4yFQFd", "rRoM6FoqCYw7AlxO", "6qdFpc71sSck3ggZ"]}, {"action": 100, "resource": "RxNmvvNtjJNQepUT", "schedAction": 66, "schedCron": "rvMEPtpsSNcpK1Qk", "schedRange": ["B2Sy8Ww79LVeVskq", "eUB7RSayqGFguhh3", "bvadRthdbVApebRA"]}], "roleName": "09rW8i8krFWJhe03"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'coRFok5d3AyGrZO8' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'GuoXNSoVEBG7VbBP' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "Yky9DYkD2sIllFtB"}' 'tXJKG3rqBmILhtWm' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '8RQvRUbUDSiefGEd' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'LucrtO2gCQD057Dr' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'DlgC2nzS9SiGUjVA' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'w4v3q6JRHcn7KaoC' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "EkRdo6qHYIZWnXqQ", "namespace": "1oHFJ9Q0vqsL9Som", "userId": "qWsGA76yxi0QzZWf"}, {"displayName": "mP2sx0KO5bEJaPnA", "namespace": "FjsodyJQVVBrShGb", "userId": "IIuqK8C403HgoXCR"}, {"displayName": "6XOMXwKdfqk8T4QH", "namespace": "K30EX0FclpDl5Hsu", "userId": "racO5MnjnxD1OXkx"}]}' 'ShFVQTRekLfjmy8z' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "osRCRgVwbrQKmb01", "namespace": "yA7U7dGMjupZkZQY", "userId": "8CNyT4k3DIbfT22G"}, {"displayName": "5NpE130YWSgxpKWt", "namespace": "dtdtVW9anENmxb9e", "userId": "7vXZV3ig8Jg5VBye"}, {"displayName": "I3ycMcYYBixKJXCI", "namespace": "SQdwec1m8BusV9tU", "userId": "h74KVo6Xqjz2xUKL"}]}' 'NWSmYyVvyelIJ8Qg' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'aLMqi836ULa7cfZl' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "4VuY6rsZyo6CBRRn", "namespace": "oOikIxXKKIR6kPms", "userId": "wm5TCAU1cKApdJDn"}, {"displayName": "E73GLmSZns5owBho", "namespace": "Ug4LsGP6KLPXkvUv", "userId": "2XiXaBzsmaxjTZPl"}, {"displayName": "LitytGka7Kv5TacQ", "namespace": "KF4OlRGdmXxETLEQ", "userId": "rr3KCAV9alq3hK1G"}]}' '4kKooSNNUZuiynZ6' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 8, "resource": "IwncZPk82GF3eTC0", "schedAction": 44, "schedCron": "INGIyEfRBEj7qms9", "schedRange": ["AGQExPhgr9gGfC0G", "jvpgJfuBs1Vpqn47", "GVghTH2wToOnq9U5"]}, {"action": 23, "resource": "KvKyj3MqS7Dcmtfh", "schedAction": 14, "schedCron": "0eObbrmgjhWK0x0Z", "schedRange": ["idAJ1CU1eD1La16B", "w3JbUnUDh5yGjjv4", "Mwrv2vancmR6Z7rb"]}, {"action": 62, "resource": "1A2E9pX0BWCMqPsR", "schedAction": 21, "schedCron": "XlDhG7BrorbKIKuO", "schedRange": ["XJPm5ztrr09CDA8I", "j5bGKSuopWQbaCvd", "PSq8Z27GpvHCDx55"]}]}' 'JZ5z6gujpFzlPspQ' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 61, "resource": "LKQuQVFSKiXl8G2u", "schedAction": 11, "schedCron": "eoW2NdSWzOXjO1NQ", "schedRange": ["UqWHBW78XREZCiTN", "Axq26gZrPqCsSDsp", "vgM16sZ6rjnkH4Ex"]}, {"action": 83, "resource": "rbmoRvWnfmGFy0eU", "schedAction": 28, "schedCron": "UDEOF6gp5UfmjtiV", "schedRange": ["bqJnZcrqrPye7fCw", "i7Il2wIFlHm9N6ow", "MHMtJy1Oqn59tEGm"]}, {"action": 41, "resource": "NYeUT5P0nx8TqSZd", "schedAction": 1, "schedCron": "5C8mFI9TnvzEqBNM", "schedRange": ["F9CZvPxT5zbreMc9", "fBoU3RHNDFjLKFre", "py56eW1kmb15QeIQ"]}]}' 'F51c4MqJzDSvELgB' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["e6dboSdhkBzAzPkt", "1efGJeJaxyHYutgX", "ucx85vHA009FAb21"]' 'jxeWXk80y9uxgVLG' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '12' 'FxRGj00RT6LvcnGM' 'JbJIYLssMvy9gkfT' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'MRrXVRcAVRDX6gmD' 'fNfPGYYSTunMgt3C' '8hEguCqlMHiQN3HW' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'Jw9zIWsiP2JQ24me' 'DrwEuTyM2qohglzO' '8AEl6A9sh2x2ur2c' 'cp7R7OqPqIjS4i0N' --login_with_auth "Bearer foo"
iam-authenticate-and-link-forward-v3 '9ytb3c8pVZ8GlU89' '62e6gtn5pUARJM1T' '8QwMNOAzXmyHEV4g' '9P6a280S5RNB5dVC' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'sB7xL4axSPgPCiwL' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'xCFLDixZwVtt3RVT' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'l0tR00oQgcHdGGK3' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'x76U1EIcklttmrpg' 'F5szl0sMY8es36r1' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'FgR70eNLHkVrEFd8' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'xArWJuCAIfNBSHgp' 'FNw9K9pmAIc6VSfE' --login_with_auth "Bearer foo"
iam-revoke-user-v3 '9nbE2PMv12ZSRJku' --login_with_auth "Bearer foo"
iam-authorize-v3 'jxbCu1HFaj6Vxs3G' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'LPnnGsnfmBerp84q' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'jwzWpCF1vyamjsEz' 'wtLPxK1os4qR8LaQ' 'zEb39sZTdFfC8x5a' --login_with_auth "Bearer foo"
iam-change2fa-method 'HLsXHlm1RJTTy9Jr' 'Nz1K5M1qgFddYvif' --login_with_auth "Bearer foo"
iam-verify2fa-code 'GHawNx6yhniEHLbE' 'QKc0aUvrKXDIjYC4' 'df9qswSlpCI8Dhjl' 'true' --login_with_auth "Bearer foo"
iam-verify2fa-code-forward 'nMFjmYqE1wJhfogW' 'g2Apm0sUy18aWn65' 'Co0vdCk8so6JSaZA' 'IadKDEZywonA2SrE' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'dN2tmGuX6r0gBVUU' 'eKKlPKtE6gnYxmkm' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'CWbs5qugklBUS6uw' 'WrCQt86Jrg8tLAJW' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'pcyNkUvqn6eXr6FN' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'bKJ05Orya6LSSUlu' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' 'cuQNGIDeHlf6IcX1' --login_with_auth "Bearer foo"
iam-token-grant-v3 'urn:ietf:params:oauth:grant-type:extend_client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'SiDvsfMUOpWv46sX' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'vpOjrpRo4mYrCeQU' 'nYoID2UqO0iAXA9d' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'B4ib8HDOJ8TNiP8K' 'gEAj3dbRTI0i6dO3' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'zkbDseh4tJdoGcwM' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'BmegqVUaWMJBjrV0' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'p9A7tcHrV0MbJGr4' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'drgkDuWS05m0pGza' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'zM2BUXnzUEWTiKMJ' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "Af6AgbiEDMfCckWo", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qx7T3l1ut2oyolli", "policyId": "YsTJUmpscwLcUml3", "policyVersionId": "KuoMKh7tprnacA34"}, {"isAccepted": true, "localizedPolicyVersionId": "MJ9ABbKVWO2YEDiq", "policyId": "kwKbpdk7wlDngNiP", "policyVersionId": "PjpSAlZwFGpea5Ob"}, {"isAccepted": true, "localizedPolicyVersionId": "bYCRexPekTsQxMTf", "policyId": "aSot7aohFYy4VxwH", "policyVersionId": "IJ9gzxqAw4vBGQAe"}], "authType": "h0VTiTP4PSrXUS6j", "code": "YI9lsQFD43Df5qUZ", "country": "OFzpFd6b5Jc5TETH", "dateOfBirth": "cup8GG0VCMTFJ6sv", "displayName": "Tyo9RHget5hzB52B", "emailAddress": "DFopxUwkMuSqQnKz", "password": "DgDAtqE3kuybwTQF", "reachMinimumAge": true, "uniqueDisplayName": "f8NA4cGUaDfy9XnH"}' --login_with_auth "Bearer foo"
iam-check-user-availability '2r0EKrk5VlnKsWCP' 'ccAFn5CEPoH6opK5' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "DSO8JyX4IE1z3rDw", "languageTag": "Z1HKsOpyq8agQuz8"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "6nc6jLF9DIW2ncJJ", "emailAddress": "KpqmgvUTr8XAtpOq"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "UQxzqJZiWi3KQffT", "languageTag": "5Tn61A1xW6okIqmd"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "87ir9op4YfGTno5o", "password": "HzqY3DgykA8zBJX0", "uniqueDisplayName": "rkOHUkY5aSlqhYoS", "username": "Xbn6l5xAzc1nc3eF"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'm950dtVAo7w4e3v5' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "mh6Rum5pbgEt39uJ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pgEtchTe3nt7t9zt", "policyId": "prSfW9OutADrNGBW", "policyVersionId": "SJ1zQKxVmRTawjiZ"}, {"isAccepted": true, "localizedPolicyVersionId": "MoZZcyGEHxAKDQhe", "policyId": "r3usApPdJPn9eIdh", "policyVersionId": "IBvTTupABJ4RwH3E"}, {"isAccepted": false, "localizedPolicyVersionId": "S54vl7gIKBc7OYTy", "policyId": "lFRAJKySnC0cfPl3", "policyVersionId": "Z2zSBbs4PAV72u8A"}], "authType": "xE2IQeoxYV4UcYzs", "code": "wAGpXqQxctuVaqPJ", "country": "GAHEZmuQrZ8GaQ4O", "dateOfBirth": "Z2nDodm4TNs8mAj6", "displayName": "IKSYFdJwgZsRPOzw", "emailAddress": "uDSdGl1A2vaNeDiS", "password": "qTfmAVg50kOdJagE", "reachMinimumAge": false, "uniqueDisplayName": "hx6zv7EURTNIoG1D"}' 'BdoKH6sREmmfwUZL' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "ZZS7snx0Q2Gd8m7Y", "country": "3wiNloJfey3HXL6S", "dateOfBirth": "jljNPTXA3qbg55Sy", "displayName": "ienCODZ0mnOpPTVx", "languageTag": "EgBFzG8tlkxWKCU1", "uniqueDisplayName": "XN4gl7yHvEqpJSrD", "userName": "XVwCkhOQ161TFjRO"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "YJm75VIuCOCkt2W1", "country": "DfI8QtgODk9K6DcM", "dateOfBirth": "nyCPn1FylWdaNV1V", "displayName": "aZTkbbuWiiA4UTDg", "languageTag": "S2SVEo5M80LLbku9", "uniqueDisplayName": "GYH4ijqOVM50tCqk", "userName": "ZfsSxAbDJ7sHCLup"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "8pmEosOXglQwwdeL", "emailAddress": "VpmXqRwVjc3W2ANm", "languageTag": "E3VVsQ1fm9EUdiaR", "upgradeToken": "juLsKZoqnpKwhpZV"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "dw5UMa8ymxtEFLwE", "contactType": "LCY2vIddlxnA1Vyn", "languageTag": "ioJcAPwVHUGcs1AC", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "SmWa8TGko16XTqHc", "country": "0cM7ixq8Tjnxp5Cl", "dateOfBirth": "8ggaEmCcuK2hHviB", "displayName": "EWpbusO6EyVqstpg", "emailAddress": "Zpbz77y88rUFum2Z", "password": "cA8iKcF0bkfjcTEF", "uniqueDisplayName": "XcTwEtnHxP5pVtN4", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "40Y62bCo941ALznQ", "password": "uHVskfCjUK8GeX4Q"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "0B2Cj0oOmBmXu1Ki", "mfaToken": "TTiz7yrIvQj2isN7", "newPassword": "bRwcr16lW5YwgZpj", "oldPassword": "lMMtPWg8217m7qNk"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'QiKp2oac8QTNEuBb' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'euQqm9wM7mgTtUdP' 'VcQijMBhs0kDP6d3' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'nuUZ41mSeS9SnGqh' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'JOvykBcDpzD9zh6d' 'tPK4fVHLMvrCsH3R' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'YxH2Up9VthPjFrK7' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'Hip0eONFDgUPShG8' 'wwFKY9AMpcwJd4Sr' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'igIxAhbFMZfxaznl' 'DQbzTiFrQB1yUoni' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "rH4URx3NkKQBYrlU", "userIds": ["aMiFEWUT8cAFO5zE", "w8GENEJYPKxxOw7x", "NQ98IEbc9YITN98j"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "4P2AGeidXRRnIAJf", "code": "KVjOn6rtILNJVv2D", "emailAddress": "LLUyBt5hDs45siG3", "languageTag": "0Lv9iGa5mkZjnRXV", "newPassword": "cg6AByNpBo2JYkwL"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'dmR97u9MVUii4KpY' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'cb1AUsESaBOTHnbX' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '9tC9PQlFAGbMtEyb' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'fcAl0mnsAkRT2k0A' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'zdgIunRkTxsGdrpN' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'ELM8Lfkut0wnT24w' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "h59RGSbBMh7jpszu", "platformUserId": "Vk6iPdJ2boQqCCyJ"}' 'fThvCJieqRSGN8Mm' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["74HlSZzp4aEW4GkH", "G5OIVuGv47XJpkMi", "opQrVL3ZZTVxqa9X"], "requestId": "M2gY14iWk12Jffk8"}' 'dwKNPUOHNZxML3yo' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'BM9qxd6PWz7sVnMx' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'ge2inL8fBFP1ABaI' 'KrEt8d3o7cTS9OII' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'MErnNTLXHrsOFsbh' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "Row4iaYKy0IjsDgb", "emailAddress": "J37DN2lDvdh7okHl", "languageTag": "1wMht2Izq7TCUJhD", "upgradeToken": "sDefAS09VyQB1vR1"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'mx6K17GL1CrO4Zuo' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["GZSxTzm8oMSPIHPt", "qzIWIzg8pbjnt1iB", "V8DpbjGts4UZDTfh"], "oneTimeLinkCode": "AyZKhqilty9NVlgx"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'UmnfdOAmu1dX1NqD' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "20RUvvYeJZw6QZFN"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '7wFCnqpvNesGiVnt' '9p2to7Yja1soDE1K' --login_with_auth "Bearer foo"
iam-login-sso-client '0SvGrMYwPmPXC2Lf' --login_with_auth "Bearer foo"
iam-logout-sso-client 'L2m5rP2A20t6foPP' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'H94SUinY5diUlqgv' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 'Y7dPPyahppgxJhk4' 'EdTZ000rS92594HL' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'vWFsXHtMP0k9L5dR' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "EQbCqfh0gpABFBER", "deviceId": "6WNcDOsRzBkf9A6H", "deviceType": "jCnFRdSihcvszzQL", "enabled": false, "endDate": "Bktk0siMup01kyaF", "ext": {"wwD7wecuQb4GNQHV": {}, "ZMKGBnzh4suaGIzt": {}, "tTncVBf5g3oeuHiN": {}}, "reason": "yLkfPQPmjUkvSs5Y"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'mIejozmG5HlrIfMA' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' '5phhU315LUC6HSMQ' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 '32UznXNd6ve29lqq' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'tcLJW9eTJvKNDFrx' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 '6LabyDnqXjXKPIcx' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'h0x7T6RQGnnW4ugG' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 26, "userInfo": {"country": "4zxbdfXgunt1oMNZ"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ke34ZAUuLP897ooM", "policyId": "LnemwKAvgDXNrFEE", "policyVersionId": "4Jf4hQpsLOcLtZw0"}, {"isAccepted": false, "localizedPolicyVersionId": "FkUDP864shbnQ3bV", "policyId": "vuvpsDJXPCWkX4Kp", "policyVersionId": "i8CJ88aMPGFFAQZb"}, {"isAccepted": false, "localizedPolicyVersionId": "Ry58UKWPv3F7S0wC", "policyId": "VlYQi9cfMCeNnu6O", "policyVersionId": "IG1PPLRDEXLXZWXv"}], "authType": "EMAILPASSWD", "code": "0HNBYZSrz7pMjESL", "country": "LMPKDXLki6Oz5Byg", "dateOfBirth": "t8Q0RjSf1srB7hGw", "displayName": "GbUmQmJHNffZENs9", "emailAddress": "X0hFMdzryvhc1YjH", "password": "mmulSBIElc2CdRvB", "passwordMD5Sum": "b0aGnMt625bWHb5s", "reachMinimumAge": false, "uniqueDisplayName": "AtcWhjAP57QbWvSS", "username": "p71zEPPfmAQiqRRC"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["HLwZGikW7TFA9gE6", "SrYKq6lcVOhPJIcE", "HbiKHW7flVolAWEM"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["mQSPDTRqjlvwnnCA", "5tfK5ushaKTPVjyO", "UpR3uUdgNlyU4IJn"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "qtrjCOsE8VjvzhJw", "country": "NX4bhqCjlwrmsSRV", "dateOfBirth": "86iic1FIMyF7CcNu", "displayName": "2DYn6E9Gk51kOTJZ", "languageTag": "luTekDMCGUJvERxN", "skipLoginQueue": false, "tags": ["ioKnXPVZaDcXsV1T", "nsZioDiBgprzahPB", "0FKMa0YeyNBQWUHD"], "uniqueDisplayName": "BnBeePkqg6Zt1Lr5", "userName": "BlO8K6LH4dSaa8XY"}' 'Hug51ZTogG0N7Hvn' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "uq1kJ1kpHcQtnIc9", "emailAddress": "z70LFQMI0oZuEjY0"}' 'rNBbbB9txAvtRQvq' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "JacXR2Rf4noXDFaE", "mfaToken": "UkPUBnB0ZEJH3ebM"}' '71Tg922xiBgHSka0' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'Pz7I1WkIa0oZ1nXp' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'W1l70pcZgIn4lPgh' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["HyMEHBzArbyW10Nk", "JFQxuMHnfOlX6HYV", "EiaereFCPJU2wEzU"], "roleId": "YUTmZ8JSMeNmRocp"}' '400RZe8Bzx9aGEI2' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["2BTCZs97TJI8GPrM", "24F3celFgM62HQtg", "zQhO3nR8j8DlP6OG"], "roleId": "bn8vmfMYGLt1AjKh"}' 'h3JMX7xSrz1EH6X2' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["SM3xzsNrJzWBcdFl", "o7oAsOlfLB1J19b5", "rTfiL2P3r1a8KIJH"], "roleId": "33aKkPuWD59MgTy1"}' 'HA58Jt5NaROjSKFE' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "UGHeBKtpvyRNgjZk"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'dDppvEJiUiDGXgh8' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'BKcLqtRZ93LuR8OE' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "CvwgwBFehwtdJLdn"}' '3R2wo8beVQvgeP9q' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 82, "resource": "QCrM7JEMRPkdTcAz", "schedAction": 20, "schedCron": "0LxN0f3JA27Qz5Sj", "schedRange": ["zQfOLYu9O46OOzz9", "p57qSpHerzO87cg7", "TqtMiQgi7Aj28qCR"]}, {"action": 3, "resource": "ei0pXglJYnKkoCAZ", "schedAction": 43, "schedCron": "Iyhwqk140MolIrnl", "schedRange": ["kRVbcX435TDYpkk2", "Gza6DrSycophHw3E", "oEEClTO9SDKnMlnK"]}, {"action": 99, "resource": "pmShlmIt2nfhUaZG", "schedAction": 33, "schedCron": "8gISE34yIAZQeigi", "schedRange": ["A3wBrmBYIlZeheP7", "2AB8EO3YrlyrWowU", "pUDVLlTtuJJsHZVs"]}]}' 'G6izJZruOJvSRFLD' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 90, "resource": "MPf8g1rbhfIMStMn", "schedAction": 91, "schedCron": "zwiqVPCJ5j18Ou3a", "schedRange": ["Y8nceFU5GKmcEKp8", "AQwqgJs6O0Qj0ccM", "kdz6zPz3BVHAqp4O"]}, {"action": 29, "resource": "XSjap24esyjh6Wc3", "schedAction": 25, "schedCron": "jH2wFzCpxxJLfAg5", "schedRange": ["cFT0gHAkltcR3eHF", "biAluHv7Hssd05pH", "BJX5ln8PZbYVD8Ri"]}, {"action": 0, "resource": "o3dupUHNu8abrVVO", "schedAction": 75, "schedCron": "vOAUXkw36cr2WJQq", "schedRange": ["S7Tq4YIyZAFQ6lZf", "a2jdNvpWf32JS1av", "9VNpVLT0LvqcfSdO"]}]}' '1nAjY5FvADb3GUQg' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["ci632w6LUrHuKBoN", "TpPQXDNHto74GcmV", "f0fbCU9QdPuWeMEe"]' 'L0EJG67g4W1eAmDx' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'P23qstMuikKc6VNU' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["8570siWm3V9sirE0", "JOQxWeHypqCWMDPR", "I2cCk8zHR8VyCC0E"], "namespace": "QwE0cXokXbwKDtVm", "userId": "rYQu7hZvHfiT9s9p"}' 'K8HuUY1QQHQ0NCEd' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "dJtx6GV01vD7lNLx", "userId": "lpvqaB9P9GaukfCE"}' 'IeSBLhTfzigzHcRu' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["JgYaj4I8Dzyh1N0J", "EKNoMtHvjM7X1fjz", "knv2HZMIL2P2bh14"], "emailAddresses": ["LroFTnAuujPeP9N0", "vdVB5a2XkS3XQfMu", "zZh4AhZRe2hgU56x"], "isAdmin": true, "isNewStudio": true, "languageTag": "ogxHrOon2OW4Zw5Q", "namespace": "wVKWNy2tnF2MifJR", "roleId": "4hr4gdJDujYnVnFK"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "6gB6ZxC6yYUVUJYn", "country": "Q3jOGmROIqxqQ0gc", "dateOfBirth": "NeTflyvUh3w5Ztfw", "displayName": "mOCKpFSMF0tfGIZC", "languageTag": "TNiIRc9fEjkZhEpA", "skipLoginQueue": true, "tags": ["MCxMp2J0hDg2kMgk", "vhoQe9gD9tGN0nE7", "M36mI9u3EeZtLQij"], "uniqueDisplayName": "2JXsqdXfhZTTaCeq", "userName": "Gv7meuQhJuq1C6JH"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "kWMSUbqByWN2BCnR", "mfaToken": "z9w2nur0B9jKaunA"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'cylsau7wRQmL4i3e' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "RyIECEDa1I4lwXqw", "mfaToken": "Pfq3VzHQjtolx64w"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "1gyvjacKtGqxMnoA", "mfaToken": "XRlcq0mYWKQYlqMm"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'u2pvF6rP03bQaq1c' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'T88H6RCW8gJmGzDl' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'qxtLsR2AGOiPhNt2' 'IdH8aYYUT6mma833' 'TDzk66ix88sAUrXr' '7MXxCvyy7caxz4MQ' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'rODLNlxiEjQBCZx9' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'DJ4V97SJLlrwXmIG' 'amRCARuFLx4rV4CX' 'VMrDYKe2eTf1axo1' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'GqT2vSLLiMvcu39Y' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'epicgames' 'ypWzpNXgnoKIz8O8' --login_with_auth "Bearer foo"
iam-token-grant-v4 'urn:ietf:params:oauth:grant-type:login_queue_ticket' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'apJmNAbl1g5ZmTTG' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "YRbP4QVey9pEz1TV", "platformUserIds": ["5cUtPBsw01i5Mf7W", "vbNSeeDNfUESLlwH", "v3JgteOLyKp8a1Vq"]}' 'xXnRhDd9TGkO6aIY' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'qftw1SrM2nhSEanf' 'UYrMU6A43UKGpvC1' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "W3pvAJJieHhveGg9", "policyId": "7PY0txzvYwv7atn9", "policyVersionId": "EQv2Oj8TFNeGtJGj"}, {"isAccepted": false, "localizedPolicyVersionId": "bMgCeuAYuzrmbWof", "policyId": "EaKStqdKu4ROnONp", "policyVersionId": "J849chqeiUGQMwNw"}, {"isAccepted": true, "localizedPolicyVersionId": "YZCeF30RT9rBgM8o", "policyId": "7lxXq7TkdM7FVDCB", "policyVersionId": "cvVegrZddP8lLQo6"}], "authType": "EMAILPASSWD", "country": "bUy7F82Adu9BYRHr", "dateOfBirth": "VTehrqgvEtEs2LpE", "displayName": "0qfbvdU8hlDoC9Fn", "emailAddress": "xqBlPBYJ7X6uVy7F", "password": "WTSfMi2CPVGxjcdp", "passwordMD5Sum": "dCqVeePMSqb8y8qJ", "uniqueDisplayName": "TUQY40Zrpn0vAD9Y", "username": "sPeDWrAVQZSvgWuC", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LsUGrVQAbhS54ZuQ", "policyId": "HKersDmJLUHAKtfX", "policyVersionId": "CKOna8DdjtZhh6of"}, {"isAccepted": true, "localizedPolicyVersionId": "dCpVpnENiTc9NESV", "policyId": "22eRBElD4K2Cy1tJ", "policyVersionId": "cPAEkCeV29QsQk10"}, {"isAccepted": false, "localizedPolicyVersionId": "eu5UcxuXXpt0YSPX", "policyId": "04uEIdAwgDobopbd", "policyVersionId": "JeVCiKs2vLyH9kcS"}], "authType": "EMAILPASSWD", "code": "1wYUJPbvzn8TYoMD", "country": "AaUXSuBQdvdhJoT0", "dateOfBirth": "WK5ngNUxDKfZYofP", "displayName": "GUbSaA00nKxQjYU6", "emailAddress": "KlavIiLxU2I1GyJS", "password": "48Hxu8Ju4XSAnlXR", "passwordMD5Sum": "YB9BgSZBvkehRn83", "reachMinimumAge": true, "uniqueDisplayName": "L1KQn77hiP1lzkzj", "username": "YDw6mLBordrJkD6v"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "eMF8UAJIHEZv5zyU", "policyId": "UyNJkvA5xF3zHtZS", "policyVersionId": "d3QzXhkrN4pWryt4"}, {"isAccepted": true, "localizedPolicyVersionId": "Nwpp0ni1YfIgLZ4Y", "policyId": "IzElrLZOBLHCKmLB", "policyVersionId": "aIwlokbAFW8RgBUw"}, {"isAccepted": true, "localizedPolicyVersionId": "KCySLA8cKCs0dFYR", "policyId": "Sa2OULZ0iOZJiOAh", "policyVersionId": "1SpLhMF2Pav11FuU"}], "authType": "EMAILPASSWD", "code": "uaO9TiTPnIh2iaIB", "country": "pYC4txul6VKYlNYY", "dateOfBirth": "lHPwKDpJmkeoAkp3", "displayName": "Z4pgyJYwclb4gd4Q", "emailAddress": "gQut2hiPuDdOPHcN", "password": "9drwqytieXpIZfr5", "passwordMD5Sum": "XDq9dGLHjtgE2bTX", "reachMinimumAge": true, "uniqueDisplayName": "RAZxMWdoleYNHXeO", "username": "paRDwYLge851PbK2"}' 'MFKvw5TWjAh4gy41' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "LLzQ2IjY5PeNr4Jm", "country": "YxH2qs28hePJjMp0", "dateOfBirth": "TKKUBfPNI9f2oLWD", "displayName": "PSZexfKVxqdxmh5Q", "languageTag": "WxuQuI7gdDTDb3Wd", "uniqueDisplayName": "nOpzTrRzCCafADJf", "userName": "WBspT3MLwJZquMQS"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "Pp5XD4S1ilfgff7E", "emailAddress": "t4uY8nlBwGNHgfgw"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "ZwVMvshGmsg6ZJYn", "country": "kHDnHTlRugM7a2UZ", "dateOfBirth": "geesipbP027okM5E", "displayName": "8tAajVSvLRj306RD", "emailAddress": "uaSixXEdloYZBkat", "password": "NLc42eq0O6VsXtOl", "reachMinimumAge": true, "uniqueDisplayName": "4Y84hL75QboMHCtz", "username": "EF9FSeg6WYgtfuqJ", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "rs4e3RnWR30MdBZe", "displayName": "zfwc3H0qSbMq4GLj", "emailAddress": "8aGsH0qE5p601ak5", "password": "9yFSfdZIv8oYWPUS", "uniqueDisplayName": "4Zu0SbTt6M2Xizik", "username": "Ch6q0yq2WAHtL7IW"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "E3MFqvfDG5jvMOaX", "mfaToken": "rDlEX42U0syrGNhB"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'mgT2q0kIbrJ2S5Pf' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "1Lvg8kYEVylINJpx", "mfaToken": "FY8E6pU8eHjh0aTj"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "IOaQt0snbE0yMvqF", "mfaToken": "7TJ9uB0zypjJiu7B"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'IimNuwB3hBVhuSMH' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'hf5R2MkxQTAYGfE6' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'hXZ7XLoWCGf0dZEe' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "XBd6mGG6SHcZbX2w", "emailAddress": "NnT6A9zosmDnXonc", "languageTag": "y7NZQ4PkAPXBCfkE", "namespace": "1Fb0y94eP7yh0zsK", "namespaceDisplayName": "hR60HZwUwk48XK7M"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mHVB7cNzHhvxc4xA", "policyId": "PZ86WNnQOhusPn44", "policyVersionId": "66u8agb5HPsBU0Eo"}, {"isAccepted": true, "localizedPolicyVersionId": "QJ9vBRJ4UP09fabC", "policyId": "01Thm9f4AWpyiKVT", "policyVersionId": "3OvEujx5yjtQSCJa"}, {"isAccepted": false, "localizedPolicyVersionId": "zpb623EciYoYOPVg", "policyId": "6DLEZ6DxpwBm2N8P", "policyVersionId": "dQ5mQaGXEbnmWR0H"}], "code": "3EkrHqaLNdfKszYZ", "country": "zOg113h6fIaHSx5b", "dateOfBirth": "ClxUOBmMwv5pmiIV", "displayName": "nhlLoMemsp7o3F2L", "emailAddress": "Qw7Y2VdSxgXez7Vv", "password": "S0C9JLVQQPa7PPx4", "reachMinimumAge": false, "uniqueDisplayName": "i6WaC8wk7HMbJhNw", "username": "Zgf5nlMDORYuXnPN", "validateOnly": false}' --login_with_auth "Bearer foo"
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
echo "1..432"

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
    '{"modules": [{"docLink": "UCBYnkY0LEBSYBdU", "groups": [{"group": "SiTOrhB8hVs29WOK", "groupId": "mZRTtgycLzXz6lUM", "permissions": [{"allowedActions": [76, 84, 16], "resource": "4VPzhcH4UJrrCKvr"}, {"allowedActions": [83, 73, 55], "resource": "fH4f73jAevOnES6Y"}, {"allowedActions": [73, 99, 76], "resource": "UxgOzeRNHIqK5PT4"}]}, {"group": "04mFw4HJv5T2kIQO", "groupId": "ecfLsYKTmUnKlrOs", "permissions": [{"allowedActions": [74, 26, 63], "resource": "g31cA0PwZxTIZVSG"}, {"allowedActions": [88, 50, 16], "resource": "Tzhs9Asy4d629N4Y"}, {"allowedActions": [27, 30, 37], "resource": "lVWA2dWxBs056jkP"}]}, {"group": "CUuE1pgdHvlQKiR7", "groupId": "SDQUDavOlKT5EIHN", "permissions": [{"allowedActions": [14, 79, 72], "resource": "RgU7cPqNZrLCRRUy"}, {"allowedActions": [37, 71, 50], "resource": "ltQUku3n32atB0QP"}, {"allowedActions": [87, 43, 86], "resource": "2GW9i54JY23AUWFT"}]}], "module": "Lq0W1JqwKs1mO80L", "moduleId": "7IOHlf6j8PZOzUiQ"}, {"docLink": "KZqz5NSp0B7LODN3", "groups": [{"group": "Boi2sSAO2n4MZQt7", "groupId": "53XQB93rOW0guPoQ", "permissions": [{"allowedActions": [3, 93, 12], "resource": "zc1RDVhs2lhdzxxg"}, {"allowedActions": [17, 12, 2], "resource": "zcwdgJMjIyGfiNBQ"}, {"allowedActions": [51, 28, 25], "resource": "1M1gzGCbaxw33rNb"}]}, {"group": "E4bbDU4FMTbQaANJ", "groupId": "OODGerDCWcl3VSJE", "permissions": [{"allowedActions": [81, 70, 87], "resource": "DtbqMFlgHKQIRtLf"}, {"allowedActions": [85, 33, 27], "resource": "nJUmfDmofxvN8pRG"}, {"allowedActions": [29, 63, 96], "resource": "xeQX43LpmdMiZeyI"}]}, {"group": "rA4QUKSJgECzvaWU", "groupId": "CA7wKru7ry3AQ2sE", "permissions": [{"allowedActions": [69, 44, 64], "resource": "SxjWoM1rNJLM0OOV"}, {"allowedActions": [66, 25, 4], "resource": "EVCXHmFnrSL0PJcZ"}, {"allowedActions": [87, 31, 1], "resource": "KDfwl6XlCF6YxFMD"}]}], "module": "8tJQwZvUVInos5RK", "moduleId": "100yH89i8ZDPXRL8"}, {"docLink": "cbTAntB1STaab1Ue", "groups": [{"group": "ibXg7RCe5BtKcwj6", "groupId": "PqqOgCimr3ZQNBBk", "permissions": [{"allowedActions": [36, 2, 40], "resource": "u9czsYr3cFeVw70x"}, {"allowedActions": [6, 97, 80], "resource": "YxY6OhdkrYiCinoV"}, {"allowedActions": [84, 17, 53], "resource": "n37P69t1KqeGz7qb"}]}, {"group": "PnXEuOzzkoBmMR9C", "groupId": "4qPqJrAdh1HIk7vC", "permissions": [{"allowedActions": [63, 49, 33], "resource": "oUzfMFoXCOguSq2A"}, {"allowedActions": [97, 90, 45], "resource": "wDdSkNfHJtA3QiX9"}, {"allowedActions": [82, 44, 18], "resource": "tydbaVb0scd97A0G"}]}, {"group": "P6djn2Ps3IVT5hUZ", "groupId": "3cnDq0ddZG0EpfGA", "permissions": [{"allowedActions": [33, 34, 70], "resource": "arTvrG1DXZAWlvz3"}, {"allowedActions": [4, 71, 12], "resource": "XALMresGFfsH4aXC"}, {"allowedActions": [59, 48, 15], "resource": "zXHUvxhvTZcvRKoa"}]}], "module": "M4ozSAg8FTLrByWO", "moduleId": "JhbocoGlPzdfxcC3"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "rpWhSpq0InxMLpP7", "moduleId": "n7M3JXjEvsj5WcQ9"}' \
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
    '[{"field": "9M1yuXeqV31LX2eh", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["6QtjzQjDlUMCGnxZ", "wak7KHnzGASmVzeP", "Iroz41oQCuXeTRyJ"], "preferRegex": false, "regex": "rNLTcqLVTN5Qf4tj"}, "blockedWord": ["PGpu27yxb1of79zV", "TWIfgdNphqe9fS1m", "77MAg4KoZQPLhDSJ"], "description": [{"language": "x9jzxaRKph4kiIFg", "message": ["S4fLqlrKGiS3Xxjk", "yNfj3XgTRTjI9oNB", "zgQ4CRwg0sKVeSpM"]}, {"language": "ny0GrvKI5EVB9ZFz", "message": ["LNsjdCFtKY0KsxR0", "rCFkyiQZfMnTbKdw", "NhiIP7dpJ8B8VwFQ"]}, {"language": "nVco2oCn1KvJmbja", "message": ["pW9UlEqtzDd7Sgxd", "xB5kvtM8ah9bPsks", "ceGUEX8ERZcKSYLo"]}], "isCustomRegex": false, "letterCase": "y7yJMowQ6LpHCvCY", "maxLength": 94, "maxRepeatingAlphaNum": 32, "maxRepeatingSpecialCharacter": 13, "minCharType": 15, "minLength": 72, "profanityFilter": "xPsVY8qNwB2TY4v9", "regex": "NNfQSYLFKSl3FNFF", "specialCharacterLocation": "Jnt3rIwZdW02Su6a", "specialCharacters": ["CnL816aH6gOBUIMe", "L0GL3aefSDME8X2M", "xILI42BJMPkZmay4"]}}, {"field": "Csye3iJLtjsu6ZJR", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["J7zLXioAGkWgSDdD", "QvpRfGe3z2rtjWpJ", "AlKHF0ebxhJ1176C"], "preferRegex": false, "regex": "SGyDCKF0LLhO3lGZ"}, "blockedWord": ["7eGOPj2XoFug8BUQ", "UmPHnPumcazKAna0", "ji757aNDFeKnQP2j"], "description": [{"language": "2WsQImTwYkiuxzLr", "message": ["bJ0BkGzCNgesQlZZ", "HIZH0iks6kx0adni", "mPyyzezsHdFftHHR"]}, {"language": "6xbcVVonwz27DWfG", "message": ["RVhbZTvCPrrZCTU5", "WUJizF69PSsquWUa", "fwbFPX15633pFgA7"]}, {"language": "i9tqvfHmFvUZiUW5", "message": ["Y0CYw5OXSGwQkJuy", "9oLFcHHcraLXR2n9", "JQvq7NKWIHYsii3f"]}], "isCustomRegex": true, "letterCase": "uuhxxlulfmya73hX", "maxLength": 24, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 96, "minCharType": 90, "minLength": 18, "profanityFilter": "uXPwYxedGHCIkmt4", "regex": "bfJOhNaIT0pv7Xeq", "specialCharacterLocation": "O8gY3c4SryWB4yRa", "specialCharacters": ["DxvxwaLM8HkVOW8P", "nLkgqkqYZWPZTgKa", "gTzdcYcko7U3gH23"]}}, {"field": "9LhRx2Laa2RdtVb6", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["H3s9UyeaFi8OE7BC", "K4FeVGrl5NpUG9zb", "lWEiHaUjyTHb0sSl"], "preferRegex": true, "regex": "WUvLp1wxGF747468"}, "blockedWord": ["MXUq3uIffkIpPmrW", "VxNZUvkiU2jXSwsB", "BRopVl38d4NZGtk6"], "description": [{"language": "EmWxC75M88TKhFYk", "message": ["A9aRNDe2IoPMSQKc", "g0OTT9JA0ll1RimB", "CiQwuyrI87uSyXP6"]}, {"language": "C0jXS8au2wcWYyj3", "message": ["JvHqXp4JR7xI59Z9", "tfGVsglnOxOXBfgB", "Luglkd9LIoshGnFS"]}, {"language": "uHmrqej8PRppYY1v", "message": ["lV0M2g6oreqyBzWz", "CgMMWZuD6tmIR28x", "VxbtpSKOfiIP3S6p"]}], "isCustomRegex": true, "letterCase": "hcRlv16Wwe8YK3lZ", "maxLength": 64, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 88, "minCharType": 23, "minLength": 66, "profanityFilter": "ECI9QzuQcsjFehD6", "regex": "uTDYnqyNgN7GoeMs", "specialCharacterLocation": "ezFZsTBHkgcJ0DcE", "specialCharacters": ["t23pci6xEljer6aG", "Jx5OFp3jKEx4aSGd", "wTPX4ig3NVFFkP7O"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '3F4vsohRWDyGYIVF' \
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
    '{"ageRestriction": 60, "enable": true}' \
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
    '{"ageRestriction": 3}' \
    'sYXVzBenLtaAoYyR' \
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
    '{"ban": "fiCWrm3s1Ah3TII7", "comment": "0MIcBMJ04508jKed", "endDate": "x0CVRpd7SwZw2Ukj", "reason": "DzJ4NuMMgI13nplX", "skipNotif": false, "userIds": ["QsCKAO2JRz3CGwtu", "jkzxidLcAQWGVRg6", "DVso5TJCSugdo4XT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "m8t1YTWqItjNWXm9", "userId": "sraeMA78YSRS2fPy"}, {"banId": "5fpbbbMIu9lu18jI", "userId": "MBUM77XmemN8LO03"}, {"banId": "mnFSq9jJTVFoFjxZ", "userId": "jh5qUR1Pq4a4uaMf"}]}' \
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
    '{"clientIds": ["d0SQAfYIyzHL8jxa", "kuVu5r5B08VZxI4T", "U3apnZXoJ4gI4EQK"], "clientUpdateRequest": {"audiences": ["O8xC4D0FsUo3IB2k", "X5REQZsHyXzoIXNf", "0KbL9HyJttdgfLGO"], "baseUri": "3ummpllnV6B62P1K", "clientName": "azg73c6UpmA4ehxN", "clientPermissions": [{"action": 71, "resource": "QytAmkanukAzAMaR", "schedAction": 44, "schedCron": "AMjHyI0e2Axj0nZH", "schedRange": ["jmoKHJngwMe1AnQV", "j6QQjZtkNJCnDSrs", "Sey2BqOxgwCymCDY"]}, {"action": 38, "resource": "wsEHlwdeJyhsHS6Y", "schedAction": 33, "schedCron": "PHb9Ll2EFEb8Gnst", "schedRange": ["hmQ2Y6ZGOiqrg3lp", "qN5bOfnqJ5bzDRzb", "hMxfEDE4TrtIHyyM"]}, {"action": 34, "resource": "ibTATxd7Mzjv1gSj", "schedAction": 71, "schedCron": "kcNhoqcRZRNATojM", "schedRange": ["7daV0VwR3yNKDtMq", "MrAGpdyF6WDHn3eP", "BxQNz2IUEHMzl5jh"]}], "clientPlatform": "wVDsuzwJ4v50eoaI", "deletable": true, "description": "Em3uHBMCP5ckjphU", "modulePermissions": [{"moduleId": "Rs4ksgsKJ2R6Jacw", "selectedGroups": [{"groupId": "wu8W1zvrKMRPvwA9", "selectedActions": [22, 10, 21]}, {"groupId": "yJz03NETdywPqYer", "selectedActions": [35, 32, 74]}, {"groupId": "Om4M2pM4fIfcHBWZ", "selectedActions": [79, 98, 51]}]}, {"moduleId": "0aHbPXRns3qwYL6L", "selectedGroups": [{"groupId": "wGlZGF7XQPLAcIL7", "selectedActions": [64, 6, 43]}, {"groupId": "xRQR0NYdJzf3TMhS", "selectedActions": [0, 50, 49]}, {"groupId": "nVs05nZC4Os7hqIH", "selectedActions": [0, 82, 2]}]}, {"moduleId": "gARSG3QQNGNH2K0U", "selectedGroups": [{"groupId": "uJdeGNquQnaXpDQ5", "selectedActions": [36, 96, 66]}, {"groupId": "2taDWh9JV5oc5IFQ", "selectedActions": [38, 14, 35]}, {"groupId": "PFJ4WndMpQhcLK0W", "selectedActions": [93, 70, 65]}]}], "namespace": "btmQkwC8azx3IRWm", "oauthAccessTokenExpiration": 9, "oauthAccessTokenExpirationTimeUnit": "7FUz1iOe0pHa0Lms", "oauthRefreshTokenExpiration": 8, "oauthRefreshTokenExpirationTimeUnit": "X3AMgK3JgZufzssA", "redirectUri": "284mG7uAojLYBsx8", "scopes": ["oqMzbE0ljQaBtb47", "V691j0FZp2vjOXpt", "xzx6kkaZYpl52sQR"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["p5d1eSwrG2GBBEWr", "DbQ1ZzhDuLHq9LTB", "stguOdN0O7l3GbKP"], "baseUri": "HdDTQDEEE2mTsn1N", "clientId": "wJ71szsNmnqZSWdE", "clientName": "yOVYrTdDq7IqbTVv", "clientPermissions": [{"action": 80, "resource": "BLsqQW8HSrEm5Y7j", "schedAction": 70, "schedCron": "CK9dS5JTbdJEe6mn", "schedRange": ["kYAfw61kyKk0UXUF", "2523OTvOmfVNJNDa", "SO3FEkk4It6V8Bu7"]}, {"action": 36, "resource": "edpcKhvHPlvYanGq", "schedAction": 62, "schedCron": "UhopdqGrqRZ124P7", "schedRange": ["PauXTrpWAjwatSvt", "PbAFn8oWQcmFkkRX", "6EqadAEIzxld80Yn"]}, {"action": 37, "resource": "vikslpyL9BYLVVzn", "schedAction": 64, "schedCron": "MeJPCbs8jWmTteJh", "schedRange": ["wNbwHGG39YAZJ4Hu", "LfeTfFBTOFFMJ9pq", "511jZcTK8zmMfysh"]}], "clientPlatform": "Yk3b5cAFVo85r1b8", "deletable": true, "description": "p2QnuhQuIdvZdj6A", "modulePermissions": [{"moduleId": "spWBfRnLcLbp7Omc", "selectedGroups": [{"groupId": "rDJ7u1rrRPcnG89r", "selectedActions": [27, 37, 80]}, {"groupId": "FBqg6dziWvdNcwfU", "selectedActions": [56, 78, 6]}, {"groupId": "hHeb0CaPFDjrSotK", "selectedActions": [26, 41, 30]}]}, {"moduleId": "tntU8xHw4yYJOCVi", "selectedGroups": [{"groupId": "HwunQwpC2eCFUAHZ", "selectedActions": [1, 56, 91]}, {"groupId": "QjzobhDa8VxKOrfV", "selectedActions": [10, 90, 56]}, {"groupId": "mHU5iR3hXIbzWPKO", "selectedActions": [21, 40, 51]}]}, {"moduleId": "BLljC7gcT3M1DArk", "selectedGroups": [{"groupId": "4L80aXFY7SQkym9K", "selectedActions": [44, 75, 24]}, {"groupId": "MHK5fbqioeoRIplY", "selectedActions": [95, 59, 73]}, {"groupId": "IzRCNAO6ZpqXJmPJ", "selectedActions": [37, 18, 30]}]}], "namespace": "H9z4E8zmaZ5cg0RE", "oauthAccessTokenExpiration": 39, "oauthAccessTokenExpirationTimeUnit": "16HQdtAneXGgxNg3", "oauthClientType": "3ZIUrIkfmdXVvaPQ", "oauthRefreshTokenExpiration": 53, "oauthRefreshTokenExpirationTimeUnit": "eCNL1oNrF3SmgudQ", "parentNamespace": "usJLsPlW7ZyORFkN", "redirectUri": "9EbKbTbrDzNgVEcw", "scopes": ["0lxRam16O6v4VjJf", "40LjUdORELVXUFQy", "Vlt9jmxmxpfp41k1"], "secret": "uDg59PhdUXShabwy", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'KHE764EwhQfxFKIO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'GT1WKSmLoA0ILaES' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["C1GJXsoBwqh0TQXa", "2j7v3zQJoQLTAlW7", "5icIKUpXazsFrmaG"], "baseUri": "Noi3RPTgWotLNz0u", "clientName": "8ySxA0yrjz4q7e0E", "clientPermissions": [{"action": 72, "resource": "kuZzJ1XBxw01iBBQ", "schedAction": 41, "schedCron": "9oA4vK56dsYI5SKV", "schedRange": ["5pDANyJ184miBhdV", "Jt81fmLSyGuu5rbJ", "VIwRMtwApGbXnR3y"]}, {"action": 58, "resource": "RNt6lKoMjCPtEKeB", "schedAction": 100, "schedCron": "lOXdPYZQxBnttu4y", "schedRange": ["W5etl4Xk8Hd1lRto", "PMvsu9oswEPTvzww", "Gnpbx8MCIjKzylqW"]}, {"action": 1, "resource": "jbuQ7HMPO4ozK705", "schedAction": 50, "schedCron": "4XzVL5McglFCrjxq", "schedRange": ["qxAYqXG2V3baMkZ9", "JCqBIkUID0EE9InZ", "NLwwAhW2b5OHKtUv"]}], "clientPlatform": "4lTkQNjxhXdj1CG0", "deletable": true, "description": "tohLheRaQkfMLFW9", "modulePermissions": [{"moduleId": "B7jHZro4hhwnANAG", "selectedGroups": [{"groupId": "p8zGqNGrcQyoA1TW", "selectedActions": [85, 100, 5]}, {"groupId": "xRF6fBPa6GOuV5z0", "selectedActions": [32, 80, 46]}, {"groupId": "jaJs2duQqawPrxi6", "selectedActions": [64, 81, 3]}]}, {"moduleId": "elhy9CZ94CAUVW8F", "selectedGroups": [{"groupId": "oEf8tjCjWc22qqDf", "selectedActions": [81, 69, 52]}, {"groupId": "N3QbzVuJZH3k54cE", "selectedActions": [47, 51, 48]}, {"groupId": "hPm7RmaOr6TLwVyE", "selectedActions": [4, 93, 53]}]}, {"moduleId": "a0i6ifYP1zfgjsy3", "selectedGroups": [{"groupId": "VRjX4qA4g9OGoWw1", "selectedActions": [34, 13, 27]}, {"groupId": "umV4wAsd4ifGd0bk", "selectedActions": [99, 74, 35]}, {"groupId": "JcYHgiFDxclBXap6", "selectedActions": [19, 21, 26]}]}], "namespace": "doCWxhubMXbxNvT6", "oauthAccessTokenExpiration": 46, "oauthAccessTokenExpirationTimeUnit": "5gBQlVDx9neFHWhD", "oauthRefreshTokenExpiration": 90, "oauthRefreshTokenExpirationTimeUnit": "NIefCmtrxWu29355", "redirectUri": "1nQBNKcqCkUXRj8g", "scopes": ["QHEe4CO370OsbzRK", "KPd6mjzLxllUrFYn", "7cSuO7NxKHUHg0c4"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    '5n7eXCo9gZWdxfId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 100, "resource": "CRB3infEVxArF7TB"}, {"action": 45, "resource": "A6a71zAJpaPeudUt"}, {"action": 75, "resource": "v25yAObZIbrA8XAK"}]}' \
    'KWMDebehSjpt0wrf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 99, "resource": "SDyYy4e5qoTZxSoZ"}, {"action": 2, "resource": "xgPt69QROGDeJCyH"}, {"action": 43, "resource": "4yx5I0euBsccHPA2"}]}' \
    'v9XP9enfEX7lloLg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '70' \
    'OtleUBqBO0Ze049k' \
    '9W6ZLVJzRpUsITfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'ruDukun42zPZvOd4' \
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
    '{"blacklist": ["yZyMKyED3qDO5HXp", "5oVkhESbHQ7hvTlz", "f7XwQtVIYU87NgjD"]}' \
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
    '{"active": false, "roleIds": ["bcfPW4pPZB9YXltC", "xyztUnj17t3gHBXv", "jvziexzOLbOWbtcJ"]}' \
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
    'UxM3AWyDkA5LmART' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "6kulpM4SRtUE5P4k", "AWSCognitoRegion": "xmHtFbjqurHix0QY", "AWSCognitoUserPool": "ycDH5we2Mx0sYCnY", "AllowedClients": ["PT4i4mxc14iRfzJw", "Kuc7EpiQEzz5N5os", "RYO7wbYh7q02W8tk"], "AppId": "TURUFmqNc8xhQqpt", "AuthorizationEndpoint": "ccNorRls7EC3nDnh", "ClientId": "FvDlFd7iyZpvWVJF", "EmptyStrFieldList": ["K6ZuvlzGCII156hI", "g0g8HIxpzm9AcFhH", "4ZlYY3rEuHMWwQNm"], "EnableServerLicenseValidation": true, "Environment": "yJPQ1qdRcJjsme1O", "FederationMetadataURL": "ukIfIZVH8q8svV5h", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "5huTA6AvmW0567BF", "JWKSEndpoint": "qbrPIuxKmBXLi6Gp", "KeyID": "nqAeMvg3w0FQ1520", "LogoURL": "WM3TxWXSdTiKdva2", "NetflixCertificates": {"encryptedPrivateKey": "UREoBSFtCLy2CqgC", "encryptedPrivateKeyName": "G7JwJCDqkzOdFwLJ", "publicCertificate": "pIPxzLE1V9U1NgpH", "publicCertificateName": "7Oc44yjRdfqZgv34", "rootCertificate": "GqqjelcN0GJmPwUT", "rootCertificateName": "WMx0MiPAjnWIhFrq"}, "OrganizationId": "Sn4erXEtU1CaD8Aq", "PlatformName": "sMCGBNhmUt6fzYRn", "RedirectUri": "85brTu8F7cuCPh1T", "RegisteredDomains": [{"affectedClientIDs": ["GZJmgWNHWnvOBRCt", "4onqRo2PnMSRarKg", "4coy3AFpULIn21Nf"], "domain": "2FNgDWNC6yh7kgTH", "namespaces": ["lrxKbsV4XtrI7SFB", "EgkwHifMHYI581Hb", "F7fMX9lDXYxGRJM9"], "roleId": "2eX42WW2WKf5urEO", "ssoCfg": {"googleKey": {"pASBicX3ZwzZ7aVh": {}, "rkmhSOEozGOv8D0i": {}, "Vxzrec5kNwJAxm0R": {}}, "groupConfigs": [{"assignNamespaces": ["dm9l6nIhG5SilDDI", "smj4h625dIsMKWBx", "F9RAIrI81ZR2kNzh"], "group": "60RQNaTEhMXMepgz", "roleId": "Y9jLiAdMiQ7eDMke"}, {"assignNamespaces": ["BRMur18nCxiV9bQM", "HpPbvflI3LkRc1Ng", "ZaoYAaCCeRgtstsU"], "group": "3Qecxo4bQZO3P2f8", "roleId": "TTOVf6jrr1OL606Q"}, {"assignNamespaces": ["pqCgxt0NgDSj1T6E", "deYFmrLT0HbvS4kS", "St3CyDgf6eFAiqSk"], "group": "Hi0BR2ElF6z6eJKu", "roleId": "OW61akRFizqxCmud"}]}}, {"affectedClientIDs": ["SXivAL3n478mhb2I", "2yBJeCJghTrk68FW", "FzuLBdlrKjUbgZQf"], "domain": "w6Zys3mN8fIcC9Ck", "namespaces": ["harfqaoMsGyv1RuS", "NdycDssUeHiVDXzS", "J8kbFAyidbnXdMSw"], "roleId": "mkBkKC1h6h45u0wu", "ssoCfg": {"googleKey": {"h9pY0011jSmHFTtf": {}, "M2mGUUpq3ix7Am7W": {}, "1fwJnV94BrMSP31w": {}}, "groupConfigs": [{"assignNamespaces": ["AkVH75UcmNXK5Rqc", "Io9lpz9oM52vHPlw", "VV3jlPKDEYahnlLJ"], "group": "aLCvjRKKX1brmkJD", "roleId": "fdngbQD3pO8U3W94"}, {"assignNamespaces": ["Z8IW2MAL9gYHEV3w", "nTZTvYYf4ZFuV6L2", "AldoWWRN5wNYlFil"], "group": "iYmBrqrOc0NIligB", "roleId": "rOkBljwRENjt04Zp"}, {"assignNamespaces": ["yTTZG1LxLdySvyVq", "Y8nxBZbHcPHEFuEV", "P9bF07gnWDULkJPQ"], "group": "R0UJMr8ouccGH0B4", "roleId": "LCe2h0iFCCZgFWs5"}]}}, {"affectedClientIDs": ["s0nT89A88GDOUClG", "yzYgnYTdim6PkRoq", "5TO65KWh8ztRJkXx"], "domain": "UAj3jzZvEaY103YU", "namespaces": ["IMuSjDHz0zPWMZQN", "NP2JqQqhISTBT1Go", "fv4SuaZ8yCB9TVZn"], "roleId": "uzgvAZJRm71EC3EN", "ssoCfg": {"googleKey": {"uvD8OPsp5Z3ez84K": {}, "VB7HeWPnVeFdy5ez": {}, "lCU6SGzkMpTL2wxo": {}}, "groupConfigs": [{"assignNamespaces": ["bjxAbagqEmXn6U2V", "eV2emK3JecJA4skq", "CbPxRkIAFQh9yDdo"], "group": "LE2s7mrVrmTJwtBT", "roleId": "zQTrNo1LcWNf7xHp"}, {"assignNamespaces": ["i1JZJjIRtCfqDHSl", "o54zSnRN0zGMworz", "ym1z3ZdetOic9AQO"], "group": "FWpdItLBhvKJq9tW", "roleId": "z9yui8a6jOflFJlZ"}, {"assignNamespaces": ["Ehz1QDeh05hj92bw", "VVxJ62Q5AOAOyL65", "cPaOZA8BG8KcVWOX"], "group": "9n3YsjJexnFA9Umz", "roleId": "3KPICya5Fk5TPaEb"}]}}], "Secret": "X29cV8v7MXctihtx", "TeamID": "MnIr4b7jyfL3zMkk", "TokenAuthenticationType": "lGCPISlsnVA6z0uS", "TokenClaimsMapping": {"fNNpJUYzJxnOyvqm": "swrToyBIQumxDfAx", "NqCUtizYM97ebZcY": "qwfIHPWMkOmrT5HL", "16jMwECnmwJv4rpq": "tzDaz0WUJlBCHzJ2"}, "TokenEndpoint": "v9K8c1zOlZg30pag", "UserInfoEndpoint": "fP0FfOMBOpeQT4zY", "UserInfoHTTPMethod": "IbU4i9mLyX46Alt0", "googleAdminConsoleKey": "8rrnG8y2ScXkwjpA", "scopes": ["p82pGcxvXaG9LzHp", "MS53jllopwirRo3A", "8WxnR0YaMsF3f5KL"]}' \
    'tpTSsPMGDZTOwEP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'Bhh0NStWIggmhfAz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "VdNYP7Ao1z7FeJM2", "AWSCognitoRegion": "fWXGk7JObSHksRka", "AWSCognitoUserPool": "bpmvRsc7ZYvXCT6m", "AllowedClients": ["6mRZAlLBczJVeil7", "GbG1ISBCkcnpxKUx", "LjmxhBS6YypRW7fN"], "AppId": "ntaIEtDI6MbhxkQd", "AuthorizationEndpoint": "ezbmf392ersoZ2Kb", "ClientId": "Mb5jal0ruZmBXlGS", "EmptyStrFieldList": ["p85q6fuGfo5wSDHn", "yabk493I3pvHKDaW", "hTN1qyxpUzWIZWJT"], "EnableServerLicenseValidation": true, "Environment": "ZB1gMI1B8DXb37Df", "FederationMetadataURL": "fTZ7yQz337LLNCjI", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "e36SA5dxATLv5PkL", "JWKSEndpoint": "vraRzChdjDGdlk2A", "KeyID": "2jHbAPNGInvbnf4e", "LogoURL": "wKFFLoGggX4gQWyZ", "NetflixCertificates": {"encryptedPrivateKey": "ocvYfr0Rnl02R1IV", "encryptedPrivateKeyName": "NnaK6KS71Xs1BphA", "publicCertificate": "9BXpKYgF9OuigDP0", "publicCertificateName": "Vjmy7j2BrdCAm3sl", "rootCertificate": "CwaBqHpE55sjxBGi", "rootCertificateName": "jw0dQtZNonMrPkzU"}, "OrganizationId": "e9SglAJGyZS0I8Fe", "PlatformName": "vJiT98HUBp56Q4WE", "RedirectUri": "TxtGMs5tPKPuK0K4", "RegisteredDomains": [{"affectedClientIDs": ["PiMDTR7LxihuOn57", "io0d9dG3yzaNbGeA", "SX83SLiIbAP2qyUn"], "domain": "HnfrEdDfY4TTxu8g", "namespaces": ["oZgsX4RwfM4qnUdc", "QqZ9F1uivPob0YZE", "uXQACDDQryNf9VGx"], "roleId": "bOeJe4n9eUlBQZ2U", "ssoCfg": {"googleKey": {"GePWXbAyGiXa9nUs": {}, "HCVicuJ7onrUXVlB": {}, "6xNel4Bxb9KwFYqd": {}}, "groupConfigs": [{"assignNamespaces": ["hEVq3hbsApeASfR0", "ljKxqZcLuhwNDvVa", "lv3bkoMXNzl1ywEP"], "group": "iunixlEAHZzHs8x5", "roleId": "oPSkZFIV2feXnTRl"}, {"assignNamespaces": ["zAJy9oFOHB2KEsId", "tozVltBhoXE4wgcY", "T5CdjaJuUzFIeqaV"], "group": "r1CE1gu6cYuzC77J", "roleId": "4irvZ9tktWLtDdlm"}, {"assignNamespaces": ["VGK6iolEw6IIpDc9", "X5ijmtDGvd9ESdY0", "eTkBWA44Qqsi5yOj"], "group": "vl5sRN2ENn1RLi5i", "roleId": "MPnbg7o1zYpqUsli"}]}}, {"affectedClientIDs": ["PyXZGYIW5ZDtWbdk", "zPP47RcUIi2CoNj4", "EG2emxKQk8cBrt5E"], "domain": "8k8rzDZ08j6ICP75", "namespaces": ["cm8YDChFi3zLvfQW", "C85MxWxvW0veFl3u", "U1aMD0mczWxc8f1s"], "roleId": "2QPMMZsf2dvKZyHC", "ssoCfg": {"googleKey": {"hRPHvdkcKW21B5EF": {}, "tD2pYaKTz1gcE2XC": {}, "wTkRUIX6IFHNmB9m": {}}, "groupConfigs": [{"assignNamespaces": ["YBvtOwxjqyrjDApe", "N5eAfRqSgH5xIuBT", "YOdsvNyk52MQFkVV"], "group": "Ef36S7yPgG48bk6P", "roleId": "wH1tdEAJSqXA0Wv0"}, {"assignNamespaces": ["zWGvkc6byp3mvyYT", "3GuaZVTxBlw1IWeX", "KFT4rfSbbSlDPGf9"], "group": "Fn32SJNPZkEfkAcJ", "roleId": "TMS4pVRcCHIGfmCM"}, {"assignNamespaces": ["Tr9ACnI2sMrEgl7Z", "R1HCkf2Sw78lLGKj", "DHuXt358gzqRMuMP"], "group": "rIekxq58fikq83hq", "roleId": "J7HP63Se6kVW5fkl"}]}}, {"affectedClientIDs": ["60ImLBv6nUU0r1rf", "X9stpvJUuyPdzx8B", "M2wEgTtLRT5stwQF"], "domain": "UEbTPQ8p7VMlxEXn", "namespaces": ["qHwMyKpwphjUXvM1", "GqMkZ44UXgdBqtJa", "RyDlP9qIZJ5Krx6K"], "roleId": "kHagEugKJxkU8Y58", "ssoCfg": {"googleKey": {"COtTNjnNSikJDg6u": {}, "jKvq0CIa1YCK9PlM": {}, "eQprfgLGkHX1tdBj": {}}, "groupConfigs": [{"assignNamespaces": ["KmCBXETZwqdzAX28", "DikGk8cWiX44azSH", "cwicUVq2XPljTZj5"], "group": "R0yZSVQ8SSeJ4qy4", "roleId": "PIKleuV271bwZ4ni"}, {"assignNamespaces": ["LSzQnv0C00dtNGGz", "bGYSYo9fY2EBZAHQ", "Xc4Xcae7VKl0ARzG"], "group": "EArlfE1NSmtcADoZ", "roleId": "vd0La7P4JI4H7uDz"}, {"assignNamespaces": ["kOHTdnUtdrRcs3Ge", "OsKPNlG7rEXi6LEq", "JERpbxEq07txnvZZ"], "group": "eAf7QBuZK5GJlBnc", "roleId": "g8tQnJOKHC16xjJZ"}]}}], "Secret": "4kiU3N8556ll2LQW", "TeamID": "pdESOBV7wZJsg7wS", "TokenAuthenticationType": "v9lyRyTdYBUljvBz", "TokenClaimsMapping": {"vYNEtfgBFikt18cQ": "677SotDEtU2xBSEQ", "8rBKc2K6oJXxVEfn": "aqX8NuZtRUTKUvR6", "9PImy6CcwlqJ4MO3": "L8x1H5OgzHypgsSe"}, "TokenEndpoint": "KCvtPz7jagBG9a1T", "UserInfoEndpoint": "Z87ltClc3RDXF505", "UserInfoHTTPMethod": "5tUlenimjIbm0riC", "googleAdminConsoleKey": "aNp8dUBDinAB6HqI", "scopes": ["WIi5Bvb1rcuEtWAF", "763kci7lT62BOHas", "o53W3U2Mu9ZGMWou"]}' \
    '1U0RVCf3gMWDAodC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["KqfqzeexHA70NgJT", "xjtzgO7W3taRvJ6l", "KWJwHO65aOFDwpqy"], "assignedNamespaces": ["7XOU3DwglyMGNll4", "O8ELahcNJqRjepck", "1l0qxRyQ2pi7xuAu"], "domain": "fJakIPXOQznHZTj8", "roleId": "oYfWObyNJKVSQsaC", "ssoCfg": {"googleKey": {"okoGynp6xcqNKJnA": {}, "hrSt96OaARAjHLGV": {}, "3sNxS8uLBZiVRYIy": {}}, "groupConfigs": [{"assignNamespaces": ["QLcslTEqgVNG8Aqk", "tgvjwNJAwIpEy2ZN", "pojZ24I2n25smsrm"], "group": "JFHGiYnyhbqxLuTZ", "roleId": "IxgiUaiyy0aWrshp"}, {"assignNamespaces": ["mb1C9Al7eWrbNRE0", "xyYPUZHyLGQ52IjG", "pRJCUJpscOTkWETS"], "group": "J04c5MGInO4yznh2", "roleId": "YpZvvmziSSiSpXeW"}, {"assignNamespaces": ["OGayfRkQvoN06SpN", "OnuSksfm7hcIFdkd", "rwAcK2lUda9h9Fgv"], "group": "fhiLEAkA7n6516yd", "roleId": "oRT1qZBrdTnGrwHe"}]}}' \
    'WoQXPFWFaKbDgrGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "v8SVwLyS4VbHJvD0", "ssoGroups": ["lL7aZUY9d1Idud8b", "jYeBVMr7zHYmRE4X", "36KUOdfEmoIYwSxx"]}' \
    'AsfwDMivWqHHGlnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["nEu6EKYceTEqYudH", "lA4AxeEIfUxJ2xMS", "NNBxCeN3pGn46fGv"], "assignedNamespaces": ["odt413MRdG8qAPiA", "Nv2Ar8yXV6qf6v5S", "gcJPZPUh2nHQwpWi"], "domain": "8HZ6C0VJ0fK2m6lQ", "roleId": "5Ao8TITYiHSR2SEJ", "ssoCfg": {"googleKey": {"h1YDedZdNqkXPWZf": {}, "T8ZfdKp9q4nXuK0t": {}, "JAYror2XdtSCG7ZE": {}}, "groupConfigs": [{"assignNamespaces": ["xOoIpWzacOvwUsnI", "bQM3ZAtyEWKWoZRU", "L7wS3HaMTXAX6y0S"], "group": "TTN2sBEijjjpvSzG", "roleId": "kED0oweFYDBPyd1j"}, {"assignNamespaces": ["JBxbrbuFay9PXgEQ", "S4871QSmsspn5sNf", "ifK65tvaH9jwcO48"], "group": "pthyYpBJDHIIxTIG", "roleId": "I5EssYllIqjJzuQ8"}, {"assignNamespaces": ["GglVgxjOGQGlHm8V", "TN56tJKwD8O07L9G", "G1uenDihceaLdgPZ"], "group": "I0fKW8LeQxItaK6s", "roleId": "3Hha69MgxjGJx62m"}]}}' \
    'kfVlu4bGB1pyk0Pp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'xXZDy5Pmbu7RrD9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "5mdlXTCL467xHbAi", "apiKey": "D3Pr3mXZO1PnbSlf", "appId": "VRlAI8F2f3mEv09k", "federationMetadataUrl": "AA5hnQtd4bcivHGI", "isActive": true, "redirectUri": "obiBnfrnq9kOFBWh", "secret": "UTPiKR3qcbHLGplY", "ssoUrl": "sS3jsRZffCd00Vrg"}' \
    'PuNtOv3jbhGBuW8K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'cyPMfDWSEEpKoJlm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "hMQUCx70QjYbzemO", "apiKey": "TURzzAOIBarB7kce", "appId": "r5SvPLeQZIpKFXgn", "federationMetadataUrl": "sxx3c2bUsO7FP8Rm", "isActive": true, "redirectUri": "stZAGDgiVsV2Ottw", "secret": "JaMxPDIJ5hFQHumF", "ssoUrl": "vPKqupHj72TlLs96"}' \
    '4iABOgTKtnaA7O35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Iaytd9CsAMTZC37x", "PXxnfggnZ3EZp6wS", "AufwYirs9lwvPKd9"]}' \
    '25u3fFLV0YeMrVaY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'STRYGFzgLZ7gEypQ' \
    'f2Pn9A4gcbDJ0Lmd' \
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
    '{"config": {"minimumAllowedInterval": 27}, "type": "h7pLAi5JmzvM6JFK"}' \
    'username' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-get-role-override-config-v3' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-update-role-override-config-v3' \
    '{"additions": [{"actions": [17, 41, 22], "resource": "llPROSfiW9zcxmgN"}, {"actions": [10, 93, 99], "resource": "Hu3vkZt9FgWckjNp"}, {"actions": [69, 56, 15], "resource": "z81zRPntxpgi7tXI"}], "exclusions": [{"actions": [6, 81, 68], "resource": "EcGJjOCXpuix5vnP"}, {"actions": [9, 46, 93], "resource": "SWqSs05rjISy4B0X"}, {"actions": [17, 53, 55], "resource": "JdkT7UYCV8agvwOI"}], "overrides": [{"actions": [77, 65, 24], "resource": "vVmPMtpRMWSQ8Szi"}, {"actions": [30, 71, 23], "resource": "rGidRmR5BGRJhFwx"}, {"actions": [25, 86, 21], "resource": "PmYUvlkBGPJFaFzk"}], "replacements": [{"replacement": {"actions": [54, 0, 56], "resource": "86kvL6cBZQssUUXO"}, "target": "sXMNdvW1hbvGenRb"}, {"replacement": {"actions": [26, 4, 51], "resource": "QtsY5WaKM5YY6pYr"}, "target": "meMIHLS8egV8XhgD"}, {"replacement": {"actions": [19, 93, 2], "resource": "VSjINYeKLowG7UQB"}, "target": "9pXzuCK5qd2m8A5a"}]}' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
$PYTHON -m $MODULE 'iam-admin-get-role-source-v3' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
$PYTHON -m $MODULE 'iam-admin-change-role-override-config-status-v3' \
    '{"active": false}' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'kytCAH8Jiqe7gfV1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'G6bYgIbVKp4Kgew2' \
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
    '{"tagName": "mHDksA6Mv9Nzs19e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
$PYTHON -m $MODULE 'iam-admin-update-tag-v3' \
    '{"tagName": "Bq9a1L8S1yduOwsc"}' \
    'ICro6P8FWIPeqaBe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
$PYTHON -m $MODULE 'iam-admin-delete-tag-v3' \
    'D2uBAvIXEc2CCgYc' \
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
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["NIII4jrzrPsuMziN", "M8AB7RRxiZH3ngni", "tURdMjZLYCaeklQc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["FY1QIk1h5EKvMGd6", "hQ2mHjmLu4oFlReH", "y0JyZv7honqeiGTT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["qpgVsY1kPNdJiJXB", "3yjNUPIfvoXRO0Ck", "W1ZcgUSbbnffBWRa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["JN1SjCFLDNJfAhJG", "wSYEZjEb0Pv35fEk", "9s11bFXkf7rQJ4Kj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["7Qyo9tUptiyZzRX8", "Y4rxRWZPe4ZLAQWu", "BJwxObZqMGxhffy9"], "isAdmin": false, "languageTag": "M3BI51etn17OcmSV", "namespace": "HZ6wtPVAwgvxYxXJ", "roles": ["TduZp1nNYHREmm1c", "BuaRaGeM8yxRfejq", "SbVgLd1FoyNFGpu5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminInviteUserV3' test.out

#- 173 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'r2K0IvVg5LwUygH9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 174 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminListUsersV3' test.out

#- 175 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminSearchUserV3' test.out

#- 176 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["8dzTL8azKCCNBZpw", "RFNYxx2dr6DDuDHX", "cfvXPXJURX3XwhOl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetBulkUserByEmailAddressV3' test.out

#- 177 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'gcpcOIxqCMSpZxby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserByUserIdV3' test.out

#- 178 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "2J9vGOUeSeGb02vD", "country": "PUpv5VEdIG82dpIb", "dateOfBirth": "fxVFfdvKQVgPQw3M", "displayName": "VXe4xBPDWHRHCCVD", "languageTag": "BRjPUQWYVxGQVFJl", "skipLoginQueue": true, "tags": ["3IphQQiRcOtsthUw", "gQzNHUZ0l1FRfOjJ", "UmCbi2llksf6GA8v"], "uniqueDisplayName": "Tt92kldCoyRdiOik", "userName": "UdqGocLYBaRC7T5q"}' \
    'Sl7WN3ncPkqiTKzz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserV3' test.out

#- 179 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '72PKXjShM2DvesmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserBanV3' test.out

#- 180 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "IbiQfaHxl2YUNRLR", "comment": "jgKqSSYgZnVfa8go", "endDate": "vttlpFAq8oebnS4Y", "reason": "2zkGYTr9yJIveX52", "skipNotif": true}' \
    'x3mfB5ZwV25N7NAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminBanUserV3' test.out

#- 181 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'ZdGuyYEYZE3KaGSd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserBanSummaryV3' test.out

#- 182 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'EGKcp6g1A8O9N9cb' \
    'YBK6XOBDpR7SH93A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserBanV3' test.out

#- 183 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "E1Toj5vygVvLSJvd", "emailAddress": "sGpmmUeMikW3s54z", "languageTag": "ffAL2DZ7gBhy77iR", "upgradeToken": "VFfFvWenMNV00KVu"}' \
    'LF9WDnGO3bpQWmnS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminSendVerificationCodeV3' test.out

#- 184 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "52ZuuuI7F1xpVrco", "ContactType": "XzSOEGEDYfiGPYo2", "LanguageTag": "K3dN3YBOJfvV6SuH", "validateOnly": false}' \
    'xLJIemNHbzgAFjtj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminVerifyAccountV3' test.out

#- 185 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'C7suvgIUkB2PAGJq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'GetUserVerificationCode' test.out

#- 186 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'OrkdlZB246OY0dPV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserDeletionStatusV3' test.out

#- 187 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 79, "enabled": false}' \
    'd2WDUVEQTpfyAIoF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateUserDeletionStatusV3' test.out

#- 188 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    '7qsANBbEKQrgocpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 189 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "GNenRlDORLvP7ynT", "country": "uXzafCqlMrrVIehV", "dateOfBirth": "Cf3AwIzUdQ6sTrUg", "displayName": "7Z0SLrZraV3NLBUS", "emailAddress": "rFnzE6yR1wLTgjsn", "password": "B2LFVrZRrOntm2Kj", "uniqueDisplayName": "bfCOuW3dBmFwUO7Y", "validateOnly": true}' \
    '90ZbDdmjU11QIZtk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpgradeHeadlessAccountV3' test.out

#- 190 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'Sn8QRbA5V4gjWv1W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserInformationV3' test.out

#- 191 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '6cqnvSuKswQ7vH8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminGetUserLoginHistoriesV3' test.out

#- 192 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "ScnP5QzRBY1Urefg", "mfaToken": "mVFBVz4KRCU0p4jI", "newPassword": "t01gzH17IcfJyGul", "oldPassword": "mByN5rcDA3Wcv9ou"}' \
    'ALjgLZZzLU9w8MJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminResetPasswordV3' test.out

#- 193 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 70, "Resource": "YEHs9TIkcnrJ64BO", "SchedAction": 74, "SchedCron": "m5AilVhASFlYMVJt", "SchedRange": ["E2dAeC7pF73y9eAL", "KWinUJ7bAuUJ7Fxg", "5LijlQTVq8Bh1p0N"]}, {"Action": 59, "Resource": "UmdnLaVRUu5VbjwP", "SchedAction": 1, "SchedCron": "3ZhSMLtrwnjTJVDl", "SchedRange": ["h112byTYCDBnAvf8", "JpFuJSZistM75544", "PDlVK8taScpV0NtC"]}, {"Action": 48, "Resource": "B08tpk0qhZath4b4", "SchedAction": 69, "SchedCron": "LAaL4oAF2lqx8yne", "SchedRange": ["WKrOy4xcg30BqC5W", "7g7hiwumJTI3jlZP", "joCdGiIP6cB3Pj63"]}]}' \
    'MJXIuLWYb2iHHVN0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserPermissionV3' test.out

#- 194 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 77, "Resource": "BgvrigXUT4fRbawD", "SchedAction": 51, "SchedCron": "9SygvMG8QAaWUhIg", "SchedRange": ["uMvKDOrx0wQXKEro", "yKz2reP63EVHT72V", "uhoGP2IFXGU5hujE"]}, {"Action": 11, "Resource": "Qwg5uqgoHaFyoczc", "SchedAction": 21, "SchedCron": "qIdlRrQmuILkeRUa", "SchedRange": ["fUDP5b6BWfm7cYCp", "DIJG42ILhUoCh8lm", "KKocC5Ea29JhfFGN"]}, {"Action": 50, "Resource": "64J8WOgsAj2Rmf1D", "SchedAction": 44, "SchedCron": "vAIkzTRNRVyeEGu1", "SchedRange": ["ICOCmLAmcaEFBKgy", "92LYqtQcDN7OMCeh", "k42acy8wsWaPyppR"]}]}' \
    '3ztPSALA8LlV2scc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminAddUserPermissionsV3' test.out

#- 195 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 3, "Resource": "APedzI2AdlqiyEJI"}, {"Action": 87, "Resource": "8eypTzI497DG0ZNo"}, {"Action": 73, "Resource": "pEJFISze88rGEr3c"}]' \
    'ilJWhaW6jNsM94E2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminDeleteUserPermissionBulkV3' test.out

#- 196 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '65' \
    'fVOINhql9CdDX4xi' \
    'HpdfKH35RWUUVEHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionV3' test.out

#- 197 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'B5wzF6oLIrAwjAsg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserPlatformAccountsV3' test.out

#- 198 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'o51XHJBG2PmyeFaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 199 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'iT3SyLHXZSyfjukW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetListJusticePlatformAccounts' test.out

#- 200 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'mkfkiF2GZPuyWBVH' \
    '66JU1IICVNNRV4lB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetUserMapping' test.out

#- 201 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'ToTcn1l44ebrKEKd' \
    'eo779KG5yCz9jVs1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminCreateJusticeUser' test.out

#- 202 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "lYK1Mx9rEFkDqb31", "platformUserId": "AZzwiQBaGdS41VRI"}' \
    'yAHjYxVhCbXbeBEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminLinkPlatformAccount' test.out

#- 203 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'TlfR33jqIRoXcCPa' \
    'LXJM2B9bMohkWsFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserLinkHistoriesV3' test.out

#- 204 AdminPlatformUnlinkV3
eval_tap 0 204 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 205 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'IdycYHQcu7JkKBcL' \
    'FRf50Y7ME2QmYiYq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminPlatformUnlinkAllV3' test.out

#- 206 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'ap7masUcayqmp7vh' \
    'z1T6cSrZL2CgHxdm' \
    'YDj9vZNgfI1AeYHe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformLinkV3' test.out

#- 207 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 207 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 208 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    '8WPQGPclChxLfbXr' \
    'H6f2GDrNbLOjGz34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 209 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'ct0ctEeH43wYuLnI' \
    '7cTzIUERPlQI99hM' \
    'c4NbiJWP5r9EwbIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 210 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'MGJ70P9IqAyNlZ2O' \
    'wFSebBkXkaxtY97T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminGetUserSinglePlatformAccount' test.out

#- 211 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["MJH8bO4GDHT6ZaUU", "kvlTKAhrxqHw7f81", "3qNjzlcxXsmGGcJh"]' \
    'auxfhVKIbRvUnyEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminDeleteUserRolesV3' test.out

#- 212 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "HPuQE3Gc8bY4IH0O", "roleId": "XHZP6VVB7qjDHMS4"}, {"namespace": "9dkv8vxyg6giNKze", "roleId": "FnlgGRgYK3SeYvUL"}, {"namespace": "YNIhs5PZGTJmgofq", "roleId": "7nlF5Ch8J2Qs990A"}]' \
    'POU4hcdwlnsTap2R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminSaveUserRoleV3' test.out

#- 213 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'JpHtncLywP3WlLmN' \
    'dQGk6vneHoB1PXO1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminAddUserRoleV3' test.out

#- 214 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'vT1AonFO3syvkYd7' \
    '8GsJGLbnb4Nvw7fn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserRoleV3' test.out

#- 215 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'm4MnOqnqNerQoHiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminGetUserStateByUserIdV3' test.out

#- 216 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "JayvSNt8EQXsMbYi"}' \
    '1yEI9ychtyhjZSeD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminUpdateUserStatusV3' test.out

#- 217 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "CKT4ilZB8apDTR3a", "password": "L9sunWp7V1s8LmXm"}' \
    '0FaJMIjgzU02nZWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminTrustlyUpdateUserIdentity' test.out

#- 218 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'BdEFpfccauYDc86p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 219 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "xK9KhF4KRVPoIuzA"}' \
    'uQNjAfvOE2cVjFp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateClientSecretV3' test.out

#- 220 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'CeCEfaV4ZGGwbqOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 221 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminGetRolesV3' test.out

#- 222 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "D3E7AFHqlTTkL8cm", "namespace": "pA0sZ0tgeR4UV5SM", "userId": "Z8GUvWZvoCmprkv7"}, {"displayName": "A8MRutCKCsqmx2zr", "namespace": "iOGB8b5qTFp3cIxO", "userId": "I33nt54i5hdAezed"}, {"displayName": "cppbujZh1fYXF6R9", "namespace": "Rz3HVP2Y9WqSRiwV", "userId": "3UZg0UJLPMkeUwa6"}], "members": [{"displayName": "OVKxCMxuf0P9r5f6", "namespace": "fdmyi4kQnOFbBtvB", "userId": "w81hUgtONCIoZ2rk"}, {"displayName": "omSj52mAIMo6EW9Q", "namespace": "hzU8FwQtZpfUoyoi", "userId": "UjmqOyQ7ammFgHpr"}, {"displayName": "dM9viFWmezrQOWH0", "namespace": "3zyr7kRbC31YMJfR", "userId": "iD7djt1VeOFBDA3g"}], "permissions": [{"action": 45, "resource": "020QpWTNKsVyK8EU", "schedAction": 72, "schedCron": "4a6GKY0BrHiWs0B0", "schedRange": ["RhxQtgVgbN8kr872", "hJvrOCdAEZ2RHt3u", "Q5nFrPXwxJZQpkeD"]}, {"action": 68, "resource": "pU81S5H9XsZyvZOF", "schedAction": 73, "schedCron": "0pQIcYMBktqqAAF6", "schedRange": ["YG1dD1vECBb01VFF", "hO5FcdTvIDQI2uIi", "2SNZKqlJZsdnY04D"]}, {"action": 72, "resource": "TpMlvRDZSIuM0OXO", "schedAction": 69, "schedCron": "K4VctUmDhFVNa0JY", "schedRange": ["zTbdnOnEarWP4nrJ", "5fNESRVGeswvkzLN", "IITUJGj5FYaSgewL"]}], "roleName": "WHcBxz5LpdkRCAU8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminCreateRoleV3' test.out

#- 223 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'HhmXC68JFPdxhvBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleV3' test.out

#- 224 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'ee6wG66YPD4vNdEN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminDeleteRoleV3' test.out

#- 225 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "r1rI0T97qA1OiblW"}' \
    'lz2LXQNqcONcJIsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateRoleV3' test.out

#- 226 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'RQz97fRWI17eNP3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleAdminStatusV3' test.out

#- 227 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '2nWlS9Sfjh0htyVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminUpdateAdminRoleStatusV3' test.out

#- 228 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'Gj4y9ahS7h7XVlmc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminRemoveRoleAdminV3' test.out

#- 229 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '5Rs5FVQSIqObR55t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminGetRoleManagersV3' test.out

#- 230 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "V0BlN1iFvw0GSLBm", "namespace": "ie8SJckSRbu7hgmU", "userId": "m7RVCUREDdoGatGQ"}, {"displayName": "1SeOXsg4jofp9Pvl", "namespace": "Q1xdmr4JDpvZgvPG", "userId": "HjV7MNTpM7fSods1"}, {"displayName": "zdVT0aWj58Othvd3", "namespace": "jzMDAf40gKSizvmx", "userId": "ts5HSQvRAPG9JoVS"}]}' \
    'Lrbs5niXkjpkOgRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRoleManagersV3' test.out

#- 231 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "C7qfz5jV7NTRYld9", "namespace": "FJJ10goNq8uq79Du", "userId": "28SRRAMaQFEzppet"}, {"displayName": "icckSUon7awfol07", "namespace": "696uxp5ieMjjOfFS", "userId": "x3AJN97kUjwiCmWQ"}, {"displayName": "vbrxQpUSnos6QiHy", "namespace": "rcGeRv27hj73Etuf", "userId": "HuNIp0GXpM4nbG7a"}]}' \
    'ww2TANW1Or7TvLoL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminRemoveRoleManagersV3' test.out

#- 232 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    '0wwHoRMNexBOron8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminGetRoleMembersV3' test.out

#- 233 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "wIdUbp7xVMKfbAJf", "namespace": "W4iMIC52NUedhhkM", "userId": "E18qGpSsyEPDWHcq"}, {"displayName": "fYp2EFxEaEHCGtg8", "namespace": "12NQb5Glh8srTlTj", "userId": "61WdV2XUo1BO1rE7"}, {"displayName": "E12Fapao5jo9nJoK", "namespace": "Eb8tHmFwLGan2SrK", "userId": "ckNxLWH6rjhRL9ux"}]}' \
    'oV5Oe8ktlePEo1xB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminAddRoleMembersV3' test.out

#- 234 AdminRemoveRoleMembersV3
eval_tap 0 234 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 235 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 41, "resource": "V2HLHZT3oYJlC4ie", "schedAction": 72, "schedCron": "B074dTJZqeOllKQN", "schedRange": ["wJUGtC0tAhxn1ay6", "ruu7PYWHODRb6skO", "j0lfYFGnQCAWidWP"]}, {"action": 19, "resource": "0DqQgP6ynrQjYH0N", "schedAction": 23, "schedCron": "UJ4N78qHTGdn7gE4", "schedRange": ["bwLzDEw2PYt8x9SS", "aOZcEvG6KZh954Bm", "tuIFllfSUnaUhC4x"]}, {"action": 38, "resource": "1AS2jTKoTYeHaCuN", "schedAction": 63, "schedCron": "zpX9vp4QJdCrwkz0", "schedRange": ["nw2oxKye8jZqj7k0", "YiLqOUSBuwR388RE", "DRuYBnWiEsOnDfIA"]}]}' \
    'N04f5kSONmw1BDqq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AdminUpdateRolePermissionsV3' test.out

#- 236 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 91, "resource": "V3C9hJ1kSZonK02W", "schedAction": 69, "schedCron": "Wgccuzuc6QDRMGdB", "schedRange": ["PbUyHTYPS8CGKXGo", "n2ecc65YAFLweD9Z", "7U2lNkorrw9QH3rN"]}, {"action": 15, "resource": "Be4Tvb3fHCIJZkwE", "schedAction": 5, "schedCron": "GXGRkYXifTd5nAOF", "schedRange": ["9VV7JgCOm4wL729H", "ma0nCdCEFcf2doBr", "fHiHXXgvu496H02y"]}, {"action": 84, "resource": "BxVe8iW7sGELnMdX", "schedAction": 90, "schedCron": "WSe20JfNvtNcWtpU", "schedRange": ["kw98x3tMM1bFFDIq", "KD8HJ4X0DetCeJ4x", "0wf5mQx6Hs7M5apP"]}]}' \
    'Mc8ZR3bPCJ5n5s6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AdminAddRolePermissionsV3' test.out

#- 237 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["ODBmrqEhGlkEmGdC", "bwodVRjZJWuCQpju", "JzpPO7BPxVWlRFnI"]' \
    'ekrQ99ecmenxguw5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AdminDeleteRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '3' \
    'KxayGvw7MqOsypCJ' \
    'mfRnW0spgvjt7eCL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionV3' test.out

#- 239 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AdminGetMyUserV3' test.out

#- 240 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'Du6PA3PRnQtB410i' \
    'WT0SILVGXCWRucRp' \
    'P1Tq7uYXhB6FPfF5' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 240 'UserAuthenticationV3' test.out

#- 241 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'DvveMdBsPt19V2Fk' \
    'BPk0QLufK6eiT38r' \
    'aaRG1Fg0hfM5vQma' \
    'hJlT5OUDEMwAjgNZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'AuthenticationWithPlatformLinkV3' test.out

#- 242 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'gto2EhOlnsuDnkuO' \
    'JekbO0sk7o1z37uu' \
    'qLDQF12kYfBqeQxo' \
    's58kVk7F1KKOfFFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AuthenticateAndLinkForwardV3' test.out

#- 243 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'vER3xqCwUgKa4oCB' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 243 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 244 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'oJDxGa1UuSr4ehnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RequestOneTimeLinkingCodeV3' test.out

#- 245 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    '8Aw9m6GvDSE2F7Ad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'ValidateOneTimeLinkingCodeV3' test.out

#- 246 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '69Dln4mqFhgKKcGo' \
    'hdjQUwVdPsArkepf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 247 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GetCountryLocationV3' test.out

#- 248 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'Logout' test.out

#- 249 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'K0DE3IibPSQnphnv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'RequestTokenExchangeCodeV3' test.out

#- 250 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'AWBSOr7zljUKyhKk' \
    'D7wAHMrv8zABDhYA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 251 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'Vxvs3ugNvvgI2k1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RevokeUserV3' test.out

#- 252 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '9nQxzj3AnmpWfje5' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 252 'AuthorizeV3' test.out

#- 253 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'vwaZ0py16ShGomFz' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 253 'TokenIntrospectionV3' test.out

#- 254 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'GetJWKSV3' test.out

#- 255 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'UappaaODZaZ6Vzzt' \
    'nntoxwsNtNxWoH5w' \
    'VHJVaEnaycYsKkgX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'SendMFAAuthenticationCode' test.out

#- 256 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    '0RMDxvlK9RnTEYv5' \
    'eDhCxwy85vlhWw1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'Change2faMethod' test.out

#- 257 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'CgHr3f6UqFGCvsMF' \
    'EFlXHBOK1RqtKYVO' \
    'bVorIVWWLaVJwe2K' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'Verify2faCode' test.out

#- 258 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'aVEhjJZbwMHkFWLS' \
    'zmAXAruYrVjX4HRT' \
    'vm3Qr9IkuW6jjofc' \
    '6itDEsq0dHfYG6k8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'Verify2faCodeForward' test.out

#- 259 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '53GERdJdphepF9df' \
    'sng9FGGjJ0hRPUBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 260 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'xM2Fr3olO10RAyIZ' \
    's2VfCRhzfKDAGIAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'AuthCodeRequestV3' test.out

#- 261 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'uPhQcZwXRE9FOZUV' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 261 'PlatformTokenGrantV3' test.out

#- 262 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 262 'GetRevocationListV3' test.out

#- 263 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'TfDc3w1tAXRrQtHk' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 263 'TokenRevocationV3' test.out

#- 264 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'epicgames' \
    'GDsxRAR3NObYp43Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'SimultaneousLoginV3' test.out

#- 265 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'authorization_code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 265 'TokenGrantV3' test.out

#- 266 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'MHqWeVjnOURxGvOh' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 266 'VerifyTokenV3' test.out

#- 267 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'z9s7ktWkJDaHg6kD' \
    'VjxhxRxjeDrqCfJE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PlatformAuthenticationV3' test.out

#- 268 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'jrqJkFoZFZex0eOw' \
    '31PXkVnetcvAuim1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PlatformTokenRefreshV3' test.out

#- 269 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetInputValidations' test.out

#- 270 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    '4Wdh1qKoSDBbyqlJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetInputValidationByField' test.out

#- 271 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'yfVgaW6ziZF6ijZz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetCountryAgeRestrictionV3' test.out

#- 272 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'A3MkosOcoAcV0T2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetConfigValueV3' test.out

#- 273 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryListV3' test.out

#- 274 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 275 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    '3vQZNiqaXzRBra3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 276 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 276 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 277 PublicGetUserByPlatformUserIDV3
eval_tap 0 277 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 278 PublicGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-public-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicGetProfileUpdateStrategyV3' test.out

#- 279 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    '4K9iBdljXtowifBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicGetAsyncStatus' test.out

#- 280 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicSearchUserV3' test.out

#- 281 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "Aw30kOykBuDJ0IPQ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "a3lJMQ1sGlfqjDBz", "policyId": "OjNeq8JJhbi7QD0R", "policyVersionId": "W0qgxO0Y6TFpFSCs"}, {"isAccepted": true, "localizedPolicyVersionId": "0ORMCVBTrkvObsiH", "policyId": "Qgt7OfL6AcBPjUYU", "policyVersionId": "RB3Rsrc0qvV8Gq1c"}, {"isAccepted": true, "localizedPolicyVersionId": "37aWVjM3iVKjr5VD", "policyId": "qakKdW767GAH1oiS", "policyVersionId": "1JuO7MNoFPtRhYYI"}], "authType": "pNqVHbbCVwbitD5t", "code": "WXZVvjYqrEXKUDlm", "country": "tixw9FtBVAWT8PxL", "dateOfBirth": "8674KYMeN2W2CNqm", "displayName": "O8JALtCiDuGQQsvW", "emailAddress": "V3NSjXUXSMKY09x4", "password": "TKOwsyRNnaLNhw0x", "reachMinimumAge": true, "uniqueDisplayName": "nXc29UDQxeiBo2hB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicCreateUserV3' test.out

#- 282 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '9u1v1POCjseK1xaS' \
    'bMjyFrYsITcyT5Ah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'CheckUserAvailability' test.out

#- 283 PublicBulkGetUsers
eval_tap 0 283 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 284 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "NNH0Ht1yPtBwXIuY", "languageTag": "rbPUcvEOJ4Pghksb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicSendRegistrationCode' test.out

#- 285 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "aThW37NTbz8HiRmu", "emailAddress": "knvXiTP0KrWQ3pgb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicVerifyRegistrationCode' test.out

#- 286 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "HM0Svy3GRenDzwlT", "languageTag": "E9Czhnck3GnyPFQH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicForgotPasswordV3' test.out

#- 287 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "gn9jVE6QGkZ8AVze", "password": "iaDi67E3rTwN2LrT", "uniqueDisplayName": "85Arfe6EweJxWANt", "username": "1bDay64EnFyFeW0o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicValidateUserInput' test.out

#- 288 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'NhddKrrhzwz2PFXC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'GetAdminInvitationV3' test.out

#- 289 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "33KjLNUFQJgCWV7d", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "oYaII5c5UqVvKR3y", "policyId": "dSEb2trPjqlB5c8a", "policyVersionId": "78gp4BGN4NAydb6G"}, {"isAccepted": false, "localizedPolicyVersionId": "Cubdw0sPrgDKqHCs", "policyId": "5GTdTLCxJqK7dgsg", "policyVersionId": "rnpVE1acxZoDXdPO"}, {"isAccepted": true, "localizedPolicyVersionId": "kWkyTcJzvDUlhTlB", "policyId": "Npvkjg48iVKCqEqe", "policyVersionId": "ZP1CFaMkJVBkZU3q"}], "authType": "tk0dM4GZGiSutb6w", "code": "UxEikRyHC9VWMnzb", "country": "uNQNJxCbLEhfrPxI", "dateOfBirth": "RdbUwkN6Tr6vRneC", "displayName": "9JYmpKyZGtqWw67L", "emailAddress": "heLDvwZjthGMOB4H", "password": "FIzTlGBnpLBd02br", "reachMinimumAge": false, "uniqueDisplayName": "fMbjgS5WjduKixzS"}' \
    'cfrHzGYC1TdLVDBD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'CreateUserFromInvitationV3' test.out

#- 290 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "xK6laOkeLBcprByj", "country": "Ur7w9w1xKUrLmQSk", "dateOfBirth": "uEMRzyerpya2oBjb", "displayName": "gBhOdXE8y1PNIzbn", "languageTag": "PB5wG65f3ACfS3A8", "uniqueDisplayName": "JeRMYUCgn7oklNew", "userName": "pAIwtlAooXZ7HDb8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'UpdateUserV3' test.out

#- 291 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "g2BhzW03O2pp9qVp", "country": "ZbsppRsBWQ7RdYqZ", "dateOfBirth": "aQ8swcFOshiWEFDM", "displayName": "G99v5LSSkkEoAark", "languageTag": "gZ773cdzYhgH24VR", "uniqueDisplayName": "4hJnsU1m6zryXmvv", "userName": "vPmueVVC0ymY7ABW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicPartialUpdateUserV3' test.out

#- 292 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "gZVxM4rAqxlnHLAF", "emailAddress": "NEwXBsCkfqzKlzlL", "languageTag": "gHPF5iRWnREifOFJ", "upgradeToken": "QwGPy5zGebVw9nLv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicSendVerificationCodeV3' test.out

#- 293 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "Vm8UeFUbaGb5on2k", "contactType": "vdeu5DfAxsrX7OiS", "languageTag": "Rs0z2RYA8fTlbfUO", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicUserVerificationV3' test.out

#- 294 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "tDQSbDQN21JlwPxp", "country": "uUZm1GVuI2Eihx6I", "dateOfBirth": "JwMzUqM16MYY2MVv", "displayName": "o3MMCL4aV6oMUzpM", "emailAddress": "msvvKTljWspMrC4T", "password": "eRTNUYz7N4wHLHx7", "uniqueDisplayName": "FCWn7iOmKIN2roJN", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicUpgradeHeadlessAccountV3' test.out

#- 295 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "mgEGzqDHdLpDjLIh", "password": "vCNlBRcFsa03Nqu1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicVerifyHeadlessAccountV3' test.out

#- 296 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "3LgD6kOUZXQKRTVR", "mfaToken": "95IwPCb2qOuIRbBL", "newPassword": "0njCbitEJNHwfW76", "oldPassword": "v6GPVwWjIfhOXeme"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicUpdatePasswordV3' test.out

#- 297 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'TgiENbhdRohucoiX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicCreateJusticeUser' test.out

#- 298 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '0GAQZEbNr6VtQiKw' \
    'KuIHMjiIjX7Eu0WC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicPlatformLinkV3' test.out

#- 299 PublicPlatformUnlinkV3
eval_tap 0 299 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 300 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'Xd8GX7ygT5qlBekx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformUnlinkAllV3' test.out

#- 301 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'w9pO3vyRviPljDYd' \
    'dTDwgc6onXfoDvjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicForcePlatformLinkV3' test.out

#- 302 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '9jfJFTHcHvAfosnC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicWebLinkPlatform' test.out

#- 303 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'XqJplcwaBHILlCC7' \
    'ovjEbjKrZ2d6IbWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicWebLinkPlatformEstablish' test.out

#- 304 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'fPplY43FQpfFWm8V' \
    'MHjC8qrxvZsJd3RB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicProcessWebLinkPlatformV3' test.out

#- 305 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "YL4PAqdviBvToSQ7", "userIds": ["EqHUhHn1qP3G2kSI", "urSOWI2donULQokd", "CSsp87x6Jfe5YAYJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicGetUsersPlatformInfosV3' test.out

#- 306 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "eb1GUdtB5G8NITA0", "code": "g58cqZn79u2grird", "emailAddress": "qELbdqXaPlAMGm4h", "languageTag": "3PbLHDa7uqaaxqXP", "newPassword": "KuNAeKKjcKgU263P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'ResetPasswordV3' test.out

#- 307 PublicGetUserByUserIdV3
eval_tap 0 307 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 308 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'awPB10d4KCtC9mqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserBanHistoryV3' test.out

#- 309 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    '8uXBZ2Kxk4a5FeKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 310 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'm3raYpWl0MfF3iAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserInformationV3' test.out

#- 311 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'b4Iiy26m51AwCv4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetUserLoginHistoriesV3' test.out

#- 312 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'KmP7eczfnYgOqXhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserPlatformAccountsV3' test.out

#- 313 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'Z6DIokID1ZFk9fRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicListJusticePlatformAccountsV3' test.out

#- 314 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "HfId0Dhnin8RxnO0", "platformUserId": "qs4FykFXDdcUuEE9"}' \
    'wh4CEOrPY29A1L1X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicLinkPlatformAccount' test.out

#- 315 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["ijb7GTIFWcZWKcGH", "G9MBp1AEcNUzfWwp", "draZO1lfHzX5CHNi"], "requestId": "YaLYUlRZSLj5xwmP"}' \
    '8QMJJJn2Lqw6aiKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicForceLinkPlatformWithProgression' test.out

#- 316 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'bUJQ92BTViMMFji1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetPublisherUserV3' test.out

#- 317 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'GmfmwhN25xGSRRZn' \
    'wlbMGheYVteLiiIK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 318 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetRolesV3' test.out

#- 319 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'Pjokv6HMQOekLKHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetRoleV3' test.out

#- 320 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyUserV3' test.out

#- 321 PublicSendCodeForwardV3
$PYTHON -m $MODULE 'iam-public-send-code-forward-v3' \
    '{"context": "iTw5M3KvzpUEcp3c", "emailAddress": "p4fWJlLrbVQceKy5", "languageTag": "JZK1rVpGdpzlwFNJ", "upgradeToken": "yyLozi8eBqPD6pfc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicSendCodeForwardV3' test.out

#- 322 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'v9jGr7b2hHbaUEtB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 323 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["nsggbEVNmymBNr5C", "2BOjUiOQVEbp3z13", "pDy371QLVtDb6RZX"], "oneTimeLinkCode": "atSimmKudqURkyz4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'LinkHeadlessAccountToMyAccountV3' test.out

#- 324 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'E3EI1bSCYaa8JSNQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 325 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 326 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "dhrnvuDGFiT4U6WQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicSendVerificationLinkV3' test.out

#- 327 PublicGetOpenidUserInfoV3
$PYTHON -m $MODULE 'iam-public-get-openid-user-info-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetOpenidUserInfoV3' test.out

#- 328 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicVerifyUserByLinkV3' test.out

#- 329 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'QwsTHCgTvrGllrct' \
    'tK4WgzdUhB2YhKWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PlatformAuthenticateSAMLV3Handler' test.out

#- 330 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'dqRPQ1hSmShNaSmV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'LoginSSOClient' test.out

#- 331 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'FsmFW74DkabvmYAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'LogoutSSOClient' test.out

#- 332 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '6qTg6ZOaTNC1LAen' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 332 'RequestTargetTokenResponseV3' test.out

#- 333 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    'tTXWyBmb2Ir2yOaV' \
    'vE1N52PwdeTQhMz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'UpgradeAndAuthenticateForwardV3' test.out

#- 334 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminListInvitationHistoriesV4' test.out

#- 335 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGetDevicesByUserV4' test.out

#- 336 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminGetBannedDevicesV4' test.out

#- 337 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    '9aZ3fza0rlzqNhVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminGetUserDeviceBansV4' test.out

#- 338 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "wgXBCZr4m1UpizE7", "deviceId": "fm00IB0YnQ5xpjcM", "deviceType": "xUGokG4VQKR0ItcC", "enabled": false, "endDate": "xqJhfraXwzn0bbNK", "ext": {"5rhgy51k1e1gZ8QC": {}, "Ex41nhN2NMDXEHz2": {}, "uROYqy72xPhtIM8R": {}}, "reason": "w0xHZOUW3jlXYz8a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminBanDeviceV4' test.out

#- 339 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'zHYdzaYe7WjwoU21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminGetDeviceBanV4' test.out

#- 340 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'O1sgnJF31EULHtVt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminUpdateDeviceBanV4' test.out

#- 341 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'kZrE0YPmtE6fcv3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminGenerateReportV4' test.out

#- 342 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceTypesV4' test.out

#- 343 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'PROvD1FiqEUhsD6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminGetDeviceBansV4' test.out

#- 344 AdminDecryptDeviceV4
eval_tap 0 344 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 345 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'xKzbZ7xvbLKNa3OJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminUnbanDeviceV4' test.out

#- 346 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'MFdrQmX2OFLws9RV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminGetUsersByDeviceV4' test.out

#- 347 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 348 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 349 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 22, "userInfo": {"country": "irpvxpCXFlM52jb8"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminCreateTestUsersV4' test.out

#- 350 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "lw8icwWRvvZB46NC", "policyId": "iqdleq2jCNZAKjBl", "policyVersionId": "I9fsL6HEOiPcSKlQ"}, {"isAccepted": true, "localizedPolicyVersionId": "CsfA2pIWzC6nrUav", "policyId": "Xt7t0llsH39PXWtk", "policyVersionId": "222GY7L58lP7drhf"}, {"isAccepted": true, "localizedPolicyVersionId": "WHfZ3bFTqXqdzpP7", "policyId": "Rk1qbFWhtwNaVCqf", "policyVersionId": "0vP284yQAbudR95s"}], "authType": "EMAILPASSWD", "code": "VsnUueYd49OFDlbd", "country": "IrxqxAtw8vLsYBHN", "dateOfBirth": "6M7OpcFqK4FBJG8B", "displayName": "fuSzytkPE6mw3Zv0", "emailAddress": "zD14WsQt5oimAfS3", "password": "Sh33TufYVdPwYmvZ", "passwordMD5Sum": "kT3zo8gxMqM1wUdX", "reachMinimumAge": true, "uniqueDisplayName": "l0wacx4istsfrFqH", "username": "u6f54mL4hAfiqX3T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateUserV4' test.out

#- 351 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["lwtYI9wKX9V1XxF2", "CFfEpf0qN2twLYXq", "4HSEGpaUMmdPXWaJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 352 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["Rdn3WMdrhlWqCc54", "JfyGzMMHiVQ6covY", "DuI4l1d9YaLVuL1m"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminBulkCheckValidUserIDV4' test.out

#- 353 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "LP65pId36F25c13P", "country": "NqPn7XRlnqiWP9WW", "dateOfBirth": "QMGmm0biVjE8A3Es", "displayName": "Oz8LDnxgL0t7Qhdw", "languageTag": "4vmSxnJcyaijSCsF", "skipLoginQueue": false, "tags": ["LFKGFSUC1sZtVitk", "oRyEXWrhLNPUvlrO", "A50xGdlq3Dkm52TA"], "uniqueDisplayName": "4zLBSh2QJWgWvIZG", "userName": "JOPkJvsZhfMwJPOc"}' \
    'RFJTeKbAMIJChPyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateUserV4' test.out

#- 354 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "hVPmMs1zqz6exSNh", "emailAddress": "nabXGs0qawVMpRu5"}' \
    'wP9CTLKxi1BjFMOI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateUserEmailAddressV4' test.out

#- 355 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "sJO7EUYasMTHGgaQ", "mfaToken": "2UErhcMpuZW4KtmX"}' \
    'ptKHAev0UqYpD2R7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableUserMFAV4' test.out

#- 356 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'YqidgD0wxHpQyntH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminGetUserMFAStatusV4' test.out

#- 357 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'sI11lC6BXyQW3eG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminListUserRolesV4' test.out

#- 358 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["BvuCoP1hIpdIWajZ", "TyB7k7Q9zNJHkXmH", "B9cu1ZdRIZ1hHCpA"], "roleId": "pGunPxVvWyQvciFG"}' \
    'xJNOaveGzkTPehZV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminUpdateUserRoleV4' test.out

#- 359 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["mZi1UYM7BApA1YBy", "iGkJR30lAinKfKXq", "YE8GuKFRwAkAyYY8"], "roleId": "hSNUTpzSm7jdrPdk"}' \
    'MMoylrI7DpmCIb5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminAddUserRoleV4' test.out

#- 360 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["Wu7DAXtIeslnM3lJ", "QMDxu7Auj8cqdtNa", "FO3ABy1AeDryAFew"], "roleId": "cN6U8vRJ3ebbfa3e"}' \
    'p8cKNlb024FzQsBl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminRemoveUserRoleV4' test.out

#- 361 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminGetRolesV4' test.out

#- 362 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "o2DKmAp8kt8156L7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminCreateRoleV4' test.out

#- 363 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'Wl7UfG3PbsgYDgJ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminGetRoleV4' test.out

#- 364 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'JRrcPbe1REA4kpxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminDeleteRoleV4' test.out

#- 365 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "V9zpsDX7CWEoHK3y"}' \
    'LZSpydGfNnNFMfXp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminUpdateRoleV4' test.out

#- 366 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 71, "resource": "efBF8tiF7mi3iOrn", "schedAction": 56, "schedCron": "5UcGIGpI8YhyHkIN", "schedRange": ["dPYamt1NNvdmy7qa", "1StMbwcUsu3gJ0yH", "A6KDH87AmGMvChuh"]}, {"action": 49, "resource": "2dGygLo40eCb82j4", "schedAction": 83, "schedCron": "77NKczg6MaoVcixj", "schedRange": ["92JkMWuFc2x9p8sA", "rSRypvu88WyRMMRl", "oXySTO9W3BEI4eB0"]}, {"action": 86, "resource": "N9Eos8o1PdTDqm0S", "schedAction": 88, "schedCron": "zXNqw2oEptJsPYgv", "schedRange": ["PnAlN2mJeW1LQJ8A", "7NZLQPAny29oO2B8", "osfAcB6Pd2uPwzli"]}]}' \
    'HiPYuwUtR55gCTAC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminUpdateRolePermissionsV4' test.out

#- 367 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 51, "resource": "eQPU35uuCoR3Wc6j", "schedAction": 95, "schedCron": "hLxgR5AJVEz4FiSP", "schedRange": ["gU3FLs6LbIwwxFBW", "1RyUyU8GVL2TVivH", "bcJX1mqJ4BtZCHdl"]}, {"action": 25, "resource": "ler4oEJEmHHU4T74", "schedAction": 81, "schedCron": "QtuRIVY69dhSr3Ji", "schedRange": ["NweUidBVB2vTyC48", "2FeT76mWyDrmG0FH", "QOjtRg7ST2UVRJN0"]}, {"action": 33, "resource": "xmJgOQkViutBjVUo", "schedAction": 38, "schedCron": "JFNyIwxPt19hjyI7", "schedRange": ["ALyZHQ8V4AejtUM6", "llcl5hdZoPhVcQ4w", "XeArPe089cqMuV8M"]}]}' \
    'LxiTO3GhLJ2qx2h9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminAddRolePermissionsV4' test.out

#- 368 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["3yz3Y7YtgdQMhzpc", "pwawMF0j9IirMeP7", "fy5Y0RiyzWJZAZHk"]' \
    'lGmHH8I1l3xgoVyE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminDeleteRolePermissionsV4' test.out

#- 369 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'emJDvokY7UUVCHGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminListAssignedUsersV4' test.out

#- 370 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["cVrHG4ehIhJk597x", "UXpiOLFQFxY4AHLz", "QnClUtkXb0SoMLqi"], "namespace": "jtgLSGTnWHCZ6Xwq", "userId": "nOeIUKAIvQjUxtk8"}' \
    '2oOOkHmCFldZ0XAv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminAssignUserToRoleV4' test.out

#- 371 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "FitLhI0sqjfua9x0", "userId": "8SJmn2gM2q6wuaHl"}' \
    'nk9AFkbwVa7DCVeg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminRevokeUserFromRoleV4' test.out

#- 372 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["PEDDuHxwEbPLfnjl", "MfDJxP4S8TNhXBTi", "wS2sBodn1p1MJrZv"], "emailAddresses": ["1itpBPRbtgUMFAcx", "hrY80cxjAXFOLYQX", "2ryH4oq6fdhzarU0"], "isAdmin": true, "isNewStudio": true, "languageTag": "JldpqtAlzVR0Wqkb", "namespace": "KYSr7IVc2WJyX67v", "roleId": "7JTcrppNGl78VMGk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminInviteUserNewV4' test.out

#- 373 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "3b5E1GgAqoQkgiht", "country": "0lsg1U1DExMK4z32", "dateOfBirth": "P13aQRTMzFLsBDzd", "displayName": "O8IwGdLKPo5zR4q5", "languageTag": "8Tka2qLo5spq850Z", "skipLoginQueue": true, "tags": ["nX3Inv5lG8WEklkF", "FkJPn2yomTQth1iJ", "OyDZJCwufYAURyXV"], "uniqueDisplayName": "oJ9qEel6x5O5otpu", "userName": "jfw64GJDWklFkqhG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminUpdateMyUserV4' test.out

#- 374 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "FAoxfL2vrevlUaCg", "mfaToken": "xl01oVwoWAbcskuB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminDisableMyAuthenticatorV4' test.out

#- 375 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'fcvcoAMPzCXwpgD8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminEnableMyAuthenticatorV4' test.out

#- 376 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 377 AdminGetMyBackupCodesV4
eval_tap 0 377 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 AdminGenerateMyBackupCodesV4
eval_tap 0 378 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 379 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "MOfYXcljy6EB8dB8", "mfaToken": "wCiYq2y16Jp7HjPD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminDisableMyBackupCodesV4' test.out

#- 380 AdminDownloadMyBackupCodesV4
eval_tap 0 380 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminEnableMyBackupCodesV4
eval_tap 0 381 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AdminGetBackupCodesV4' test.out

#- 383 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'AdminGenerateBackupCodesV4' test.out

#- 384 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'AdminEnableBackupCodesV4' test.out

#- 385 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'AdminChallengeMyMFAV4' test.out

#- 386 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'AdminSendMyMFAEmailCodeV4' test.out

#- 387 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "G07XwughkPLKDhdM", "mfaToken": "f1o4pweyQyv10mRO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'AdminDisableMyEmailV4' test.out

#- 388 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    '0tK1CH6ozETFSgu9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'AdminEnableMyEmailV4' test.out

#- 389 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'AdminGetMyEnabledFactorsV4' test.out

#- 390 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '6JYKhAD9xM9T3YcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'AdminMakeFactorMyDefaultV4' test.out

#- 391 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'AdminGetMyOwnMFAStatusV4' test.out

#- 392 AdminGetMyMFAStatusV4
eval_tap 0 392 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 393 AdminInviteUserV4
eval_tap 0 393 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 394 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'FOYmaaHSXapFLiHZ' \
    'fwcmqpHRQcJzso1t' \
    'goqsyjuA8sqeXbV9' \
    'I8yo0u2hT9UYbm2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'AuthenticationWithPlatformLinkV4' test.out

#- 395 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'WjzlqIA8csXOpDTl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 396 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    '6yIwkTTCLlRCEQSp' \
    '3XwOSNJT3B5f3ynP' \
    'DyKkSYIIOqTjadq7' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'Verify2faCodeV4' test.out

#- 397 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'CyzA8a5uh1LdVOaW' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 397 'PlatformTokenGrantV4' test.out

#- 398 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'epicgames' \
    'JHBnYPNYKWhYLsAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'SimultaneousLoginV4' test.out

#- 399 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 399 'TokenGrantV4' test.out

#- 400 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'RMyTZOXYRC3gIRiY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'RequestTargetTokenResponseV4' test.out

#- 401 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "FpDlAEyVuvyXITMn", "platformUserIds": ["2F86xZRHxnOP02x0", "0SvR2yNPms1DdUL5", "bc6QMB9TtHXqeaYl"]}' \
    'aYm2XGN51wxYTCHY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 402 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    'aW7BAFZnpxmzs0AQ' \
    'YJnB9w4rkop7LL7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicGetUserByPlatformUserIDV4' test.out

#- 403 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XSsR3HPQNrtkf3M9", "policyId": "oI3ymYms9fuih2WM", "policyVersionId": "LldoxYLZHiFEo5sD"}, {"isAccepted": true, "localizedPolicyVersionId": "a72ji4B86NKZ0tkE", "policyId": "WAqM0EZhtIp1XL7H", "policyVersionId": "L2nKoPXxLMtU6hLl"}, {"isAccepted": false, "localizedPolicyVersionId": "0sA87gQx9kL8a1tE", "policyId": "pNGaoJWjZSpZNjdK", "policyVersionId": "HqDX1jGg2X6VHZOu"}], "authType": "EMAILPASSWD", "country": "nMF2X9wbQz3euR4M", "dateOfBirth": "hLQs8XliOoWqixFd", "displayName": "v5aDRSnCrIQ2kChy", "emailAddress": "afmo2nIKr9krylal", "password": "bZWuO0OVwGUgR3PE", "passwordMD5Sum": "WI0N4k2W2caqaRVd", "uniqueDisplayName": "R05rSilF29Lpg0zA", "username": "Uzpliq50demc4rS3", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicCreateTestUserV4' test.out

#- 404 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2v2ibO04gNmB9r9M", "policyId": "A5lA6x0lY16PWsrs", "policyVersionId": "xYq77iFOu0ybeoER"}, {"isAccepted": true, "localizedPolicyVersionId": "zPCxvetFhAgAkkEh", "policyId": "d3Y16uyKwJ713r4F", "policyVersionId": "9WC342Uggyr64isE"}, {"isAccepted": false, "localizedPolicyVersionId": "dGGqd31L6KqJTL11", "policyId": "T4vlBRDjj3FKvRIg", "policyVersionId": "uqDEJfdxsQXLRJRO"}], "authType": "EMAILPASSWD", "code": "h0R0RXJ6anzAeqD1", "country": "HlhQ1rqjRECHyhLY", "dateOfBirth": "GnvEdCjYsnh0Y0rQ", "displayName": "luvKziVTCPTrqHc7", "emailAddress": "vqaXxxiGOrXbWC2k", "password": "23JxAI3kOXwHnS2V", "passwordMD5Sum": "OESYx49M1JdtImLI", "reachMinimumAge": true, "uniqueDisplayName": "eTuHqCNtVlNaGzoq", "username": "pAFVT8PkW7ouFIdl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicCreateUserV4' test.out

#- 405 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uousRcrhXNAh3Cu4", "policyId": "ou029lD9VLXNwkZW", "policyVersionId": "TbX0PZb0I9Qm4xKe"}, {"isAccepted": false, "localizedPolicyVersionId": "INM4zHFF9ucrEcYD", "policyId": "5hjgrxoEVEIkvpWu", "policyVersionId": "pGhtaU3oC1Ly7xHb"}, {"isAccepted": true, "localizedPolicyVersionId": "DVM8Y4PcXDH8RZqU", "policyId": "jELC82uP1nMUDAKQ", "policyVersionId": "EkOvO52VTPFFuLWL"}], "authType": "EMAILPASSWD", "code": "QkTuy4fU6Ejumf9l", "country": "tGde7x4luTsEk9TN", "dateOfBirth": "qSiFJyMByoRKUrvf", "displayName": "ixr7UFzLzGaWok21", "emailAddress": "5MnSNTPMRaYf8Chh", "password": "5tiLsXIOSE2JSDRl", "passwordMD5Sum": "SX5uOgZ3Msm86Jr3", "reachMinimumAge": false, "uniqueDisplayName": "agSwSs0ORF2pLQCq", "username": "PGUmF8pQCrEqdstm"}' \
    'oPJurb0FVZK7sonu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'CreateUserFromInvitationV4' test.out

#- 406 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "zTm1gseYPsB00G8m", "country": "oKbti7cqKdwnwTyT", "dateOfBirth": "yr1XXDYClbgXA2XA", "displayName": "TEcyKtSz6QsS6BHq", "languageTag": "s2Z5aknpCHXIr8Jn", "uniqueDisplayName": "dNzIiCZiPRCujrja", "userName": "26Ygd7A1555BielN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicUpdateUserV4' test.out

#- 407 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "g6kfRgfnBT7OdjPn", "emailAddress": "ywuIoLpkJEPfnaES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicUpdateUserEmailAddressV4' test.out

#- 408 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "uOM4olKFVsSfgNQj", "country": "KhrrrStCg99ejNAC", "dateOfBirth": "AFAJlcWkS5jnhMZs", "displayName": "Q8CVsHXHYBx7KkpR", "emailAddress": "Aaivn5yFNSoKf7td", "password": "mVppuu6acpUdn8X5", "reachMinimumAge": false, "uniqueDisplayName": "1IFRybWjjYkFvEHC", "username": "nQ2BiPScmfoBQ1VO", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 409 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "rcu36LS6o87DKPLL", "displayName": "TcjU87C2CAKbiD5P", "emailAddress": "xA5v9644D4d5jTjz", "password": "Z8KpdOxrQ8r5te5F", "uniqueDisplayName": "kJ58wQyrAb67d9kC", "username": "9MEhGrQVQ3yKCwV9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicUpgradeHeadlessAccountV4' test.out

#- 410 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "chX3evM1seGH9ZwZ", "mfaToken": "cLnJPavRNr3ysEp4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicDisableMyAuthenticatorV4' test.out

#- 411 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'sIwslUQociDSNS6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicEnableMyAuthenticatorV4' test.out

#- 412 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 413 PublicGetMyBackupCodesV4
eval_tap 0 413 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 414 PublicGenerateMyBackupCodesV4
eval_tap 0 414 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 415 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "f28TvyyZjEMbPRNK", "mfaToken": "UABS8cyK8SnSvsUG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicDisableMyBackupCodesV4' test.out

#- 416 PublicDownloadMyBackupCodesV4
eval_tap 0 416 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicEnableMyBackupCodesV4
eval_tap 0 417 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicGetBackupCodesV4' test.out

#- 419 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicGenerateBackupCodesV4' test.out

#- 420 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicEnableBackupCodesV4' test.out

#- 421 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicChallengeMyMFAV4' test.out

#- 422 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicRemoveTrustedDeviceV4' test.out

#- 423 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicSendMyMFAEmailCodeV4' test.out

#- 424 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "LqYJevKKJR5KWRgH", "mfaToken": "uLJEAS7pSDlIS4N3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicDisableMyEmailV4' test.out

#- 425 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'VRydtvWZZFDNIc86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicEnableMyEmailV4' test.out

#- 426 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetMyEnabledFactorsV4' test.out

#- 427 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'TKj3grgVdqSpg9xp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicMakeFactorMyDefaultV4' test.out

#- 428 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicGetMyOwnMFAStatusV4' test.out

#- 429 PublicGetMyMFAStatusV4
eval_tap 0 429 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 430 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'XCh79kxpJyTba2Sx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 431 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "7lPUWhfLYtrkZ2V3", "emailAddress": "jzXzilslRzP96yJ7", "languageTag": "RbX8fkG3hcRbcSuS", "namespace": "kd72wzQJjmhy4f9F", "namespaceDisplayName": "9usH1ByGD8DDRW0K"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicInviteUserV4' test.out

#- 432 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "5Ll9C3fSnntsqrUK", "policyId": "REAt8zG7Mwy6qt1K", "policyVersionId": "RlDGxhO1YbPoWmG7"}, {"isAccepted": true, "localizedPolicyVersionId": "4ZA04yxGcMcYyrom", "policyId": "MVFEaTLz3hmDX1C9", "policyVersionId": "gHM8SS73LrEja3Xl"}, {"isAccepted": false, "localizedPolicyVersionId": "I38LyDyLTQxmA6nD", "policyId": "D3EFfeJdwskeVjYA", "policyVersionId": "e1CNRQX4T37n6lgM"}], "code": "V9tMXN2kDg7INFTJ", "country": "O4FUT152zR0PBTEv", "dateOfBirth": "M3TgMsAS5t3TYXNA", "displayName": "Gl1xy1H8Ag2XY2Tn", "emailAddress": "yPCVsWzhPIeHkoUS", "password": "eT3lv51D9Vwsfzat", "reachMinimumAge": true, "uniqueDisplayName": "H001y8DGO7yuqGFa", "username": "SZmLnl13NthHP0LD", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
