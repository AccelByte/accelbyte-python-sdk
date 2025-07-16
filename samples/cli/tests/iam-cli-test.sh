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
iam-admin-create-test-users-v4 '{"count": 66, "userInfo": {"country": "HNffZENs9X0hFMdz"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OwXgKyPhXmcysae8", "policyId": "HpWH4xiz3fWthJSu", "policyVersionId": "2pUIIuPLFAtcWhjA"}, {"isAccepted": false, "localizedPolicyVersionId": "OtHlzXNHEPpzlMlx", "policyId": "7b2H2THLwZGikW7T", "policyVersionId": "FA9gE6SrYKq6lcVO"}, {"isAccepted": false, "localizedPolicyVersionId": "FR3GUxdMuvmL0UBf", "policyId": "wzaaeP3Wd0Wrb8s3", "policyVersionId": "GW0CY0vAfbq8xoCu"}], "authType": "EMAILPASSWD", "code": "PVjyOUpR3uUdgNly", "country": "U4IJnqtrjCOsE8Vj", "dateOfBirth": "vzhJwNX4bhqCjlwr", "displayName": "msSRV86iic1FIMyF", "emailAddress": "7CcNu2DYn6E9Gk51", "password": "kOTJZluTekDMCGUJ", "passwordMD5Sum": "vERxNg8djSb4Vt2v", "reachMinimumAge": true, "uniqueDisplayName": "5vlCdI519Pf2iogw", "username": "xM5DZM0dgozmco41"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["xdYQg34WUV0WpmsQ", "np1n4YGumTKOlDOy", "5vhSkxERZ2AQ1jvX"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["YBar5RMmmGdWl0wp", "j5tVfKU3D8WVPh0Z", "7YiGE2cyzTMBY7Xd"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "0OoENg2Lw7uepmah", "country": "XojVZYz2zMU9jLzN", "dateOfBirth": "V3GaG43R6nlRPrEA", "displayName": "YqRBeSc5uShoj3dG", "languageTag": "HMeoi5DBOsQ0Gax0", "skipLoginQueue": false, "tags": ["HyMEHBzArbyW10Nk", "JFQxuMHnfOlX6HYV", "EiaereFCPJU2wEzU"], "uniqueDisplayName": "YUTmZ8JSMeNmRocp", "userName": "400RZe8Bzx9aGEI2"}' '2BTCZs97TJI8GPrM' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "24F3celFgM62HQtg", "emailAddress": "zQhO3nR8j8DlP6OG"}' 'bn8vmfMYGLt1AjKh' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "h3JMX7xSrz1EH6X2", "mfaToken": "SM3xzsNrJzWBcdFl"}' 'o7oAsOlfLB1J19b5' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'rTfiL2P3r1a8KIJH' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '33aKkPuWD59MgTy1' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["HA58Jt5NaROjSKFE", "uZo2ElXYSS4ezBRS", "iOyReviDaxlPdhwm"], "roleId": "cH03yoMxzRR6xd9r"}' 'Th3ureaIbxM3Wev9' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["pZQjWAN0tny16ZHZ", "tuSJGQCrM7JEMRPk", "dTcAzkIlndN5xeay"], "roleId": "r3vUKMuIiz2MiAAK"}' 'cvAXnxnH0QIhoJRY' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["807VmBT4wZXQZZrS", "suYiIPei0pXglJYn", "KkoCAZuolAWnxkIm"], "roleId": "VbDP0QX31gI7VmnG"}' 'IRMvXe6BiphIFe2b' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "hHw3EoEEClTO9SDK"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'nMlnKW9jiNMu9QVr' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'MeD4bD8gISE34yIA' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "igiA3wBrmBYIlZeh"}' 'eP72AB8EO3YrlyrW' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 30, "resource": "2tQm307IORTyHnLY", "schedAction": 60, "schedCron": "VsG6izJZruOJvSRF", "schedRange": ["LDSdj8elbtHvDU91", "DmHzwiqVPCJ5j18O", "u3aY8nceFU5GKmcE"]}, {"action": 75, "resource": "v0RBIO2rkJGmPaK6", "schedAction": 69, "schedCron": "cMkdz6zPz3BVHAqp", "schedRange": ["4O9XSjap24esyjh6", "Wc3migf2n6iQyr5c", "b5YL6fwBiaVPmmn0"]}, {"action": 94, "resource": "eHFbiAluHv7Hssd0", "schedAction": 6, "schedCron": "pHBJX5ln8PZbYVD8", "schedRange": ["RiaTsdD4d3kSbTkH", "PMUvOAUXkw36cr2W", "JQqS7Tq4YIyZAFQ6"]}]}' 'lZfa2jdNvpWf32JS' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 1, "resource": "mPkr3tZ506ERSVy5", "schedAction": 79, "schedCron": "O1nAjY5FvADb3GUQ", "schedRange": ["gci632w6LUrHuKBo", "NTpPQXDNHto74Gcm", "Vf0fbCU9QdPuWeME"]}, {"action": 9, "resource": "m0TqBQprHn3whPKU", "schedAction": 85, "schedCron": "abnqw8fFa30pVbhr", "schedRange": ["1BHh1arZAyuLcZoE", "kPpqKhP2jWnRTglw", "0gdWoE4esuiDrquc"]}, {"action": 5, "resource": "wE0cXokXbwKDtVmr", "schedAction": 71, "schedCron": "Qu7hZvHfiT9s9pK8", "schedRange": ["HuUY1QQHQ0NCEddJ", "tx6GV01vD7lNLxlp", "vqaB9P9GaukfCEIe"]}]}' 'SBLhTfzigzHcRuJg' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["Yaj4I8Dzyh1N0JEK", "NoMtHvjM7X1fjzkn", "v2HZMIL2P2bh14Lr"]' 'oFTnAuujPeP9N0vd' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'VB5a2XkS3XQfMuzZ' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["h4AhZRe2hgU56xty", "JtnbTDXu7FbleSP5", "PcdOuq0m0rvakR8r"], "namespace": "cwojLRjhcaJ56nGl", "userId": "YZ2tod2BGBXjNyRC"}' 'tPOr1FU3QZy3gdDm' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "s3kb1htW0UGJpwQZ", "userId": "lXuzu3m9u67JjCDw"}' 'g186hGWKfO9MnoT3' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["t99HmcxzjDhTrcBK", "tU956hOg8oukDVdw", "eG0sFHxTHa2k60Sz"], "emailAddresses": ["CqUgq1gLbcIMevTm", "C631p7q794bu49lI", "NFTtERAXT2h3hcQ2"], "isAdmin": true, "isNewStudio": true, "languageTag": "V3ZbBTnNQnVUhA5W", "namespace": "nzVZdj8tsyzC4QaL", "roleId": "Xp3o4TDraEEaDNJb"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "Vd20FVHevCjthJUb", "country": "7jKuMrFaoLulzp3s", "dateOfBirth": "ZxImVK5yh2LcM8La", "displayName": "MW0ByjsRUrAHNRkI", "languageTag": "cC4wNFzsbrtYvLh5", "skipLoginQueue": true, "tags": ["AWXoMiowdWSs9DQ0", "VU1HED9CGo9aUXj3", "rh0UyqxVWlIMY5tT"], "uniqueDisplayName": "Jw4KV104MtMhKHmS", "userName": "jqPuQZX5KjdNrEwf"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "Wo2MwulLg4bsO4YH", "mfaToken": "EYLjTSNDf3zazm6p"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 '5Y1tkG9WwU4Ty6Ch' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "5QYyFjuBquE7xssm", "mfaToken": "4hxczskbSUbOZ9WN"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "l3apJmNAbl1g5ZmT", "mfaToken": "TGYRbP4QVey9pEz1"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'TV5cUtPBsw01i5Mf' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 '7WvbNSeeDNfUESLl' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'wHv3JgteOLyKp8a1' 'VqxXnRhDd9TGkO6a' 'IYqftw1SrM2nhSEa' 'nfUYrMU6A43UKGpv' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'C1cr5T1PSXhduTWc' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'hzXDv3TAtBjP4HSu' 'iYCbG0UyYUJmNL8p' '6AbdtU0CDrlQpKB8' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'WofEaKStqdKu4ROn' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'epicgames' 'NpJ849chqeiUGQMw' --login_with_auth "Bearer foo"
iam-token-grant-v4 'urn:ietf:params:oauth:grant-type:login_queue_ticket' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'URYZCeF30RT9rBgM' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "8o7lxXq7TkdM7FVD", "platformUserIds": ["CBcvVegrZddP8lLQ", "o6tHj4z4cAM4LMJf", "WNZIxAgBpeubprKX"]}' '68jTyRd3LrR1x6U1' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'v6zSLjm9zmzUW0vP' 'j90jmLTt5YQGawco' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dpdCqVeePMSqb8y8", "policyId": "qJTUQY40Zrpn0vAD", "policyVersionId": "9YsPeDWrAVQZSvgW"}, {"isAccepted": true, "localizedPolicyVersionId": "qNcig6YcDA8Z3g62", "policyId": "oGYwkrjLI4EHJEEW", "policyVersionId": "gki9fbdvUMDZeO4U"}, {"isAccepted": false, "localizedPolicyVersionId": "5wdCpVpnENiTc9NE", "policyId": "SV22eRBElD4K2Cy1", "policyVersionId": "tJcPAEkCeV29QsQk"}], "authType": "EMAILPASSWD", "country": "eu5UcxuXXpt0YSPX", "dateOfBirth": "04uEIdAwgDobopbd", "displayName": "JeVCiKs2vLyH9kcS", "emailAddress": "Bdk7MwQzn28Le5ne", "password": "ohqhCzroAzWQDve0", "passwordMD5Sum": "Z2G2N09VIbbsz24f", "uniqueDisplayName": "QKDZX6plErw0Gb0c", "username": "eCbphW4YMhJ0S50b", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "8Hxu8Ju4XSAnlXRY", "policyId": "B9BgSZBvkehRn83B", "policyVersionId": "0nrW1qx3NJTugVWX"}, {"isAccepted": true, "localizedPolicyVersionId": "Dw6mLBordrJkD6vy", "policyId": "60uRMT1Xw9K9Yb68", "policyVersionId": "a8ygYx2TqkhlqMnE"}, {"isAccepted": false, "localizedPolicyVersionId": "zXhkrN4pWryt4XTN", "policyId": "wpp0ni1YfIgLZ4YI", "policyVersionId": "zElrLZOBLHCKmLBa"}], "authType": "EMAILPASSWD", "code": "wlokbAFW8RgBUwBL", "country": "28BqM8UzvKqeoTiN", "dateOfBirth": "KGRUMrimGAz6OhmH", "displayName": "OpCdr3WzDm3hJdd6", "emailAddress": "uaO9TiTPnIh2iaIB", "password": "pYC4txul6VKYlNYY", "passwordMD5Sum": "lHPwKDpJmkeoAkp3", "reachMinimumAge": false, "uniqueDisplayName": "pgyJYwclb4gd4QgQ", "username": "ut2hiPuDdOPHcN9d"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "bHnfs4tLVOYQCWMk", "policyId": "tmiKd9vLPP0w52JR", "policyVersionId": "AZxMWdoleYNHXeOp"}, {"isAccepted": false, "localizedPolicyVersionId": "a15WVuE5cYVP9tQS", "policyId": "a27BnPyq3I1BLtGE", "policyVersionId": "ZDRNkk4DJUofJXK8"}, {"isAccepted": true, "localizedPolicyVersionId": "0zCYRVmbfzwUmsy0", "policyId": "stUmKdXiiTObNdqk", "policyVersionId": "Wa13g3pgHx6uPf6j"}], "authType": "EMAILPASSWD", "code": "gdDTDb3WdnOpzTrR", "country": "zCCafADJfWBspT3M", "dateOfBirth": "LwJZquMQSPp5XD4S", "displayName": "1ilfgff7Et4uY8nl", "emailAddress": "BwGNHgfgwZwVMvsh", "password": "Gmsg6ZJYnkHDnHTl", "passwordMD5Sum": "RugM7a2UZgeesipb", "reachMinimumAge": true, "uniqueDisplayName": "27okM5E8tAajVSvL", "username": "Rj306RDuaSixXEdl"}' 'oYZBkatNLc42eq0O' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "6VsXtOlQwj5xPvm7", "country": "c5nPR0Y1sffUaZ64", "dateOfBirth": "dFpiv8o9Gw4QtKgy", "displayName": "IeySoUxoMrj2J4JG", "languageTag": "QZAtyjTxnlmSyjEa", "uniqueDisplayName": "FH2DRN6HIEqIFEcS", "userName": "0ynIMOYWpUYUQMoo"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "iKT57rmbjEnimeR7", "emailAddress": "EFBz43E9FkOPVu2f"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "DtOjW1iSYQbcebBd", "country": "5wb5H3qppoCiHMD4", "dateOfBirth": "iBK2O7qYtOHV5hnp", "displayName": "jc5CNLnnEvo25aEt", "emailAddress": "djls5oadseJg7y4Q", "password": "9CU3fjSRaXD4HDmd", "reachMinimumAge": true, "uniqueDisplayName": "zypjJiu7BIimNuwB", "username": "3hBVhuSMHhf5R2Mk", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "WUxkBefhxRtrqbv5", "displayName": "6oqwnCLVc2qHZuue", "emailAddress": "dbBOd19DqZJRYV1o", "password": "qNLmPAUIMwa2wYq6", "uniqueDisplayName": "DsUq38bYvaWLoKzH", "username": "nngdfFnOfY9stXH6"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "LYXXMndxBPKmHVB7", "mfaToken": "cNzHhvxc4xAPZ86W"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'NnQOhusPn4466u8a' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "gb5HPsBU0Eo6QJ9v", "mfaToken": "BRJ4UP09fabC01Th"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "m9f4AWpyiKVT3OvE", "mfaToken": "ujx5yjtQSCJaOHzp"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'b623EciYoYOPVg6D' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'LEZ6DxpwBm2N8PdQ' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '5mQaGXEbnmWR0H3E' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "krHqaLNdfKszYZzO", "emailAddress": "g113h6fIaHSx5bCl", "languageTag": "xUOBmMwv5pmiIVnh", "namespace": "lLoMemsp7o3F2LQw", "namespaceDisplayName": "7Y2VdSxgXez7VvS0"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "eg6eSCypsceITTkJ", "policyId": "GGCVF6LrILDLviUC", "policyVersionId": "zmDAaW5xz1c7ZuZX"}, {"isAccepted": false, "localizedPolicyVersionId": "CBYnkY0LEBSYBdUS", "policyId": "iTOrhB8hVs29WOKm", "policyVersionId": "ZRTtgycLzXz6lUMK"}, {"isAccepted": false, "localizedPolicyVersionId": "4VPzhcH4UJrrCKvr", "policyId": "OAi7lMgkVWJYzSCI", "policyVersionId": "DxWUxgOzeRNHIqK5"}], "code": "PT404mFw4HJv5T2k", "country": "IQOecfLsYKTmUnKl", "dateOfBirth": "rOsJmEwjGYN8VNPX", "displayName": "NsmwTV8imJHNI0l6", "emailAddress": "jJVzF1Oi2sQuWUBB", "password": "HZonSmzF831vlCiZ", "reachMinimumAge": true, "uniqueDisplayName": "dHvlQKiR7SDQUDav", "username": "OlKT5EIHNhJQq94R", "validateOnly": false}' --login_with_auth "Bearer foo"
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
    '{"modules": [{"docLink": "qNZrLCRRUysya4J3", "groups": [{"group": "rvTzMTMSwrNov2GW", "groupId": "9i54JY23AUWFTLq0", "permissions": [{"allowedActions": [100, 45, 45], "resource": "JqwKs1mO80L7IOHl"}, {"allowedActions": [12, 51, 2], "resource": "j8PZOzUiQKZqz5NS"}, {"allowedActions": [31, 28, 56], "resource": "lttd21cS6IVE4fzw"}]}, {"group": "G3BHaRcZ8NK4gkLm", "groupId": "vEOaRcqTgF0xtQAX", "permissions": [{"allowedActions": [29, 60, 23], "resource": "oFkmA3fgzcwdgJMj"}, {"allowedActions": [70, 80, 51], "resource": "z9YyduMomEHcU15S"}, {"allowedActions": [39, 1, 48], "resource": "v8ry8IyqNVv0KVpX"}]}, {"group": "JTMx3Y8Um1iqehOb", "groupId": "g3OZ9j0HDtbqMFlg", "permissions": [{"allowedActions": [68, 56, 74], "resource": "Gm5Cj7RqnJUmfDmo"}, {"allowedActions": [11, 33, 48], "resource": "E7fcCAeExeQX43Lp"}, {"allowedActions": [26, 86, 7], "resource": "yq35BWDoc3qNcQFF"}]}], "module": "yHv141NPqjRUMKSQ", "moduleId": "jFdjqTaZFsWzbqwT"}, {"docLink": "ZQIN5jC6a8mEVCXH", "groups": [{"group": "mFnrSL0PJcZQaCeN", "groupId": "LYxMID9pqZ5rryiM", "permissions": [{"allowedActions": [79, 46, 39], "resource": "ZvUVInos5RK100yH"}, {"allowedActions": [88, 57, 17], "resource": "t29AiRASsuFM4ahG"}, {"allowedActions": [46, 91, 92], "resource": "XcF1Qwzz606UGXPh"}]}, {"group": "oNZlXMef7AvS3TfK", "groupId": "x6ByTygbtOtcQS4C", "permissions": [{"allowedActions": [26, 5, 13], "resource": "FeVw70xdNTuOdLKK"}, {"allowedActions": [36, 79, 17], "resource": "B2hbqJin37P69t1K"}, {"allowedActions": [34, 32, 8], "resource": "EhjTFYdzsUNvQAn2"}]}, {"group": "LuMjLqwmVz3zKsfj", "groupId": "z1mFkyxoUzfMFoXC", "permissions": [{"allowedActions": [84, 12, 7], "resource": "uSq2A4R3wDdSkNfH"}, {"allowedActions": [72, 50, 40], "resource": "NbYXmlAOi1SC3I1S"}, {"allowedActions": [19, 37, 22], "resource": "cd97A0GP6djn2Ps3"}]}], "module": "IVT5hUZ3cnDq0ddZ", "moduleId": "G0EpfGAqHKcSxUc2"}, {"docLink": "YgRpk2IFGIgIpscU", "groups": [{"group": "pVAciu2XPPUxzXHU", "groupId": "vxhvTZcvRKoaM4oz", "permissions": [{"allowedActions": [91, 68, 55], "resource": "QczI5ZoTRUkjGoRk"}, {"allowedActions": [84, 66, 37], "resource": "lPzdfxcC3rpWhSpq"}, {"allowedActions": [70, 78, 27], "resource": "wTfopqeZtHJnRgaG"}]}, {"group": "fLMFbvyI5PZGzVLc", "groupId": "mZKKKYARape2tsNc", "permissions": [{"allowedActions": [53, 19, 1], "resource": "DlUMCGnxZwak7KHn"}, {"allowedActions": [52, 23, 68], "resource": "tgq2vXtUnY6UhDJ4"}, {"allowedActions": [31, 41, 9], "resource": "XeTRyJQrNLTcqLVT"}]}, {"group": "N5Qf4tjPGpu27yxb", "groupId": "1of79zVTWIfgdNph", "permissions": [{"allowedActions": [34, 10, 9], "resource": "9fS1m77MAg4KoZQP"}, {"allowedActions": [78, 83, 15], "resource": "47XVzU7qlNVk7qnm"}, {"allowedActions": [57, 71, 91], "resource": "FgS4fLqlrKGiS3Xx"}]}], "module": "jkyNfj3XgTRTjI9o", "moduleId": "NBzgQ4CRwg0sKVeS"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "pMny0GrvKI5EVB9Z", "moduleId": "FzLNsjdCFtKY0Ksx"}' \
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
    '[{"field": "R0rCFkyiQZfMnTbK", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["aKFrTv4JWElmOCxq", "Prq9I3XJWBxTLcOe", "f8MgIwkrKFEtwESJ"], "preferRegex": true, "regex": "kvtM8ah9bPsksceG"}, "blockedWord": ["UEX8ERZcKSYLo6y7", "yJMowQ6LpHCvCYTg", "X9JQwErzjtuP9pUU"], "description": [{"language": "v7qefNMFsZAIqak1", "message": ["zi0JSa5cRn31D8ub", "fdXi7BycDPckeGJU", "gU8bD5mGFFmKTTUx"]}, {"language": "G0mpmFxxDNXGlGJv", "message": ["Hf558h1ltyhiSGhf", "qXhxBJ7zLXioAGkW", "gSDdDQvpRfGe3z2r"]}, {"language": "tjWpJAlKHF0ebxhJ", "message": ["1176CeD4dWCp4wql", "QJcZroNQiefBnPlu", "OIjZyvlGDQGv6pNN"]}], "isCustomRegex": false, "letterCase": "KAna0ji757aNDFeK", "maxLength": 27, "maxRepeatingAlphaNum": 24, "maxRepeatingSpecialCharacter": 88, "minCharType": 39, "minLength": 84, "profanityFilter": "1es7A4PFduN4gx0U", "regex": "C6eWKCFGS97Si6Xy", "specialCharacterLocation": "LVPrkUxyZ1OH5Nn4", "specialCharacters": ["nMT8QOyTuUSD9Imt", "aPAocOQcpBWSNrCj", "SNEAdojkCMmYyTGO"]}}, {"field": "07foRZ6FujpIWo0q", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["wbFPX15633pFgA7i", "9tqvfHmFvUZiUW5Y", "0CYw5OXSGwQkJuy9"], "preferRegex": false, "regex": "oaf6KlgRtwaM2Ioy"}, "blockedWord": ["Y1wpIdjcAtTj1IMu", "uhxxlulfmya73hX0", "a8Ri85PA9wNpmrK5"], "description": [{"language": "Y5heA2ewWnFcqHxX", "message": ["P3kRhtrBcBofWTGY", "x2ihgioL8VvEzHGT", "t9emdCLmzJbdkykV"]}, {"language": "AnmnRfUilcKA84d9", "message": ["pMsl7zrNJvDiP2hN", "NEI8QrQ6H1ro5CtU", "8UjgyCUpM1JBcTzf"]}, {"language": "4dz1BojPoQg97640", "message": ["9vFd5z9r4nJWUvLp", "1wxGF747468MXUq3", "uIffkIpPmrWVxNZU"]}], "isCustomRegex": true, "letterCase": "qbDWnJ2i9TRmJOqI", "maxLength": 23, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 6, "minCharType": 82, "minLength": 15, "profanityFilter": "ZGtk6EmWxC75M88T", "regex": "KhFYkA9aRNDe2IoP", "specialCharacterLocation": "MSQKcg0OTT9JA0ll", "specialCharacters": ["1RimBCiQwuyrI87u", "SyXP6C0jXS8au2wc", "WYyj3JvHqXp4JR7x"]}}, {"field": "I59Z9tfGVsglnOxO", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["yqBfgw58Hx0XYL0f", "JOPYpnPqGlPnhBDO", "WqDU8N3DjVUt0n0j"], "preferRegex": false, "regex": "zCgMMWZuD6tmIR28"}, "blockedWord": ["xVxbtpSKOfiIP3S6", "pypZqISn3msrykQF", "tW8QGKFZLrIfqrZu"], "description": [{"language": "u7IwKcT7sAsv2TKC", "message": ["bYMVkXEHmsHwIGGs", "usS0zZRODEKPdudZ", "sLaf8aZrXW84dt0T"]}, {"language": "STmy7XF26K2U7xtt", "message": ["Uz8nWKJjv06PuffH", "ghAQfAsYXVzBenLt", "aAoYyRfiCWrm3s1A"]}, {"language": "h3TII70MIcBMJ045", "message": ["08jKedx0CVRpd7Sw", "Zw2UkjDzJ4NuMMgI", "13nplXaUQV5QEvKE"]}], "isCustomRegex": false, "letterCase": "3CGwtujkzxidLcAQ", "maxLength": 100, "maxRepeatingAlphaNum": 17, "maxRepeatingSpecialCharacter": 67, "minCharType": 36, "minLength": 98, "profanityFilter": "w3iJt5iA3JS2xeaJ", "regex": "08JrSHPqdhKHn6Zj", "specialCharacterLocation": "ZMdr1C2TIQzRJY7U", "specialCharacters": ["fYSrdN0JVz4U43Ec", "V1FRyeeqehMNeRYK", "eMbL0G4v5D6ylZgu"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'O918X7rLoexHBMBM' \
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
    '{"ageRestriction": 79, "enable": false}' \
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
    '{"ageRestriction": 54}' \
    'Mfd0SQAfYIyzHL8j' \
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
    '{"ban": "xakuVu5r5B08VZxI", "comment": "4TU3apnZXoJ4gI4E", "endDate": "QKO8xC4D0FsUo3IB", "reason": "2kX5REQZsHyXzoIX", "skipNotif": false, "userIds": ["1Kajxq7lzuVRVEvh", "KIbrq1xsGpdobYun", "8hcO55hVjfWyK02w"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "5QytAmkanukAzAMa", "userId": "RvIUhUwguGgbLLN3"}, {"banId": "O7CEYjxqElP5lA2F", "userId": "J0iGLRTXGsC5mxxs"}, {"banId": "e4eeuMgEctVEux2M", "userId": "SuwsEHlwdeJyhsHS"}]}' \
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
    '{"clientIds": ["6YqPudWviQsULL1t", "xfX9tqFSkGXoIcFN", "5JL9M53Mg0MzWS9u"], "clientUpdateRequest": {"audiences": ["sxxnMhjv66DyED4p", "rRVibTATxd7Mzjv1", "gSj8kcNhoqcRZRNA"], "baseUri": "TojM7daV0VwR3yNK", "clientName": "DtMqMrAGpdyF6WDH", "clientPermissions": [{"action": 28, "resource": "WUetP7nmESQDV3BD", "schedAction": 27, "schedCron": "jhwVDsuzwJ4v50eo", "schedRange": ["aIBrTh0EKkJioUpv", "GnkcHgCfaWzPUvCn", "fqsPGgJZyRwigaMu"]}, {"action": 55, "resource": "7Zek8WObpf0FHYfV", "schedAction": 17, "schedCron": "YerrpOm4M2pM4fIf", "schedRange": ["cHBWZM50aHbPXRns", "3qwYL6LwGlZGF7XQ", "PLAcIL7FvAMWqhyy"]}, {"action": 81, "resource": "Jzf3TMhSaynVs05n", "schedAction": 66, "schedCron": "C4Os7hqIH2NgARSG", "schedRange": ["3QQNGNH2K0UuJdeG", "NquQnaXpDQ5rU2ta", "DWh9JV5oc5IFQsrw"]}], "clientPlatform": "HqFqwVA5mozeeOjI", "deletable": false, "description": "QfXV3YW3ug3nCXhD", "modulePermissions": [{"moduleId": "7FUz1iOe0pHa0Lms", "selectedGroups": [{"groupId": "eIRXeoerZAxbDPXU", "selectedActions": [48, 72, 56]}, {"groupId": "mG7uAojLYBsx8oqM", "selectedActions": [53, 19, 3]}, {"groupId": "cwAw5GdxpvLfa4b4", "selectedActions": [14, 93, 64]}]}, {"moduleId": "aZBGdX66DqPTdurR", "selectedGroups": [{"groupId": "3MYda0Y0BCO4qPnv", "selectedActions": [47, 9, 63]}, {"groupId": "SwrG2GBBEWrDbQ1Z", "selectedActions": [52, 19, 15]}, {"groupId": "nX7vDIqpcjmaq5KB", "selectedActions": [59, 37, 82]}]}, {"moduleId": "HlwNrfKJrkzwR40t", "selectedGroups": [{"groupId": "fd9GFXChtxB10d4Q", "selectedActions": [27, 28, 33]}, {"groupId": "lBthUSu4WNfTvD5U", "selectedActions": [4, 33, 62]}, {"groupId": "bTVv8BLsqQW8HSrE", "selectedActions": [25, 34, 99]}]}], "namespace": "Y7jI232SjktijiNz", "oauthAccessTokenExpiration": 93, "oauthAccessTokenExpirationTimeUnit": "6mnkYAfw61kyKk0U", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "UF2523OTvOmfVNJN", "redirectUri": "DaSO3FEkk4It6V8B", "scopes": ["u7rIjGrxUMKbv60i", "xUuUhopdqGrqRZ12", "4P7PauXTrpWAjwat"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["tPbAFn8oWQcmFkkR", "X6EqadAEIzxld80Y", "nss7hc3VUxxZIgkT"], "baseUri": "LqMeJPCbs8jWmTte", "clientId": "JhwNbwHGG39YAZJ4", "clientName": "HuLfeTfFBTOFFMJ9", "clientPermissions": [{"action": 32, "resource": "cm5igpAewbmnWk0E", "schedAction": 14, "schedCron": "YaPblcWEyNgvs5LE", "schedRange": ["ZrQXzSQRWRs9EGnR", "PgYlJElgJ8kx1WEe", "Dbql13FtQMu41rnO"]}, {"action": 53, "resource": "rnNW1Yjfn8lY4DnY", "schedAction": 89, "schedCron": "fUBMdNuTaiLxFMXR", "schedRange": ["pDP9xutntU8xHw4y", "YJOCViHwunQwpC2e", "CFUAHZaYSvsWiNJt"]}, {"action": 33, "resource": "8VxKOrfVfBRIfkSt", "schedAction": 82, "schedCron": "hXIbzWPKOkzftOgD", "schedRange": ["QAWhulbrDf7q4cAn", "pmLiEu4CNtX2lnqi", "7cHTSdGoLZbC3UJr"]}], "clientPlatform": "uU4uIXBZsEYogFWi", "deletable": true, "description": "11LLZWKgWxn9YL16", "modulePermissions": [{"moduleId": "HQdtAneXGgxNg33Z", "selectedGroups": [{"groupId": "IUrIkfmdXVvaPQzz", "selectedActions": [74, 80, 7]}, {"groupId": "L1oNrF3SmgudQusJ", "selectedActions": [78, 42, 38]}, {"groupId": "MNpKEIs3GC9VTK7t", "selectedActions": [21, 94, 73]}]}, {"moduleId": "brDzNgVEcw0lxRam", "selectedGroups": [{"groupId": "16O6v4VjJf40LjUd", "selectedActions": [84, 20, 89]}, {"groupId": "X867n9PT9fR7mMuB", "selectedActions": [49, 86, 32]}, {"groupId": "DKCriRKzTZ7TXAVR", "selectedActions": [27, 92, 95]}]}, {"moduleId": "habwyYCxTHrDel8o", "selectedGroups": [{"groupId": "Thvr8CUEzw4zL1Qe", "selectedActions": [89, 71, 62]}, {"groupId": "LaESC1GJXsoBwqh0", "selectedActions": [93, 64, 87]}, {"groupId": "i1n10vDgyoHXIlrM", "selectedActions": [23, 99, 89]}]}], "namespace": "5icIKUpXazsFrmaG", "oauthAccessTokenExpiration": 81, "oauthAccessTokenExpirationTimeUnit": "NJEkvq6SUSt8xd8E", "oauthClientType": "gE15XNuw6Y7sToQN", "oauthRefreshTokenExpiration": 21, "oauthRefreshTokenExpirationTimeUnit": "nADXC2y0DY1E1SMK", "parentNamespace": "9oA4vK56dsYI5SKV", "redirectUri": "5pDANyJ184miBhdV", "scopes": ["Jt81fmLSyGuu5rbJ", "VIwRMtwApGbXnR3y", "C6f2MHGGedk0KzXR"], "secret": "clOXdPYZQxBnttu4", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '5etl4Xk8Hd1lRtoP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'Mvsu9oswEPTvzwwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["npbx8MCIjKzylqW8", "auyseP9wEEyYAnHP", "p4XzVL5McglFCrjx"], "baseUri": "qqxAYqXG2V3baMkZ", "clientName": "9JCqBIkUID0EE9In", "clientPermissions": [{"action": 9, "resource": "NLwwAhW2b5OHKtUv", "schedAction": 5, "schedCron": "lTkQNjxhXdj1CG0E", "schedRange": ["Bgst9Qu8Ofl2oB8V", "TjF0pD3NHU8iYUOt", "G5gbQSKW2MdgCH4b"]}, {"action": 100, "resource": "cy83iXfYXNdMkdg9", "schedAction": 92, "schedCron": "p8jaJs2duQqawPrx", "schedRange": ["i6F4elhy9CZ94CAU", "VW8FoEf8tjCjWc22", "qqDfNz59jHwSDQHa"]}, {"action": 7, "resource": "k54cExxWKtdGTW4F", "schedAction": 70, "schedCron": "TLwVyE42ApAb7CKt", "schedRange": ["79wAopZL9Cw6K9h5", "5mwUvhdBOgumV4wA", "sd4ifGd0bkWrlhtf"]}], "clientPlatform": "TywRW4fmg6btk3mA", "deletable": true, "description": "4EtB0hn2x1oTOX5g", "modulePermissions": [{"moduleId": "BQlVDx9neFHWhDRJ", "selectedGroups": [{"groupId": "tyYEt7ygZleAoUuV", "selectedActions": [74, 87, 28]}, {"groupId": "BNKcqCkUXRj8gQHE", "selectedActions": [9, 29, 12]}, {"groupId": "CO370OsbzRKKPd6m", "selectedActions": [19, 62, 52]}]}, {"moduleId": "jnslEYM8ngVT1ewV", "selectedGroups": [{"groupId": "xvgAocOqsd5v5n7e", "selectedActions": [26, 59, 80]}, {"groupId": "o9gZWdxfIdW8fNAM", "selectedActions": [10, 63, 7]}, {"groupId": "VxArF7TB6A6a71zA", "selectedActions": [72, 16, 32]}]}, {"moduleId": "JMOEv5W0v25yAObZ", "selectedGroups": [{"groupId": "IbrA8XAKKWMDebeh", "selectedActions": [91, 94, 20]}, {"groupId": "uNPf5JCSDyYy4e5q", "selectedActions": [30, 30, 94]}, {"groupId": "2MFOa6xgPt69QROG", "selectedActions": [60, 100, 9]}]}], "namespace": "L3HDL4yx5I0euBsc", "oauthAccessTokenExpiration": 4, "oauthAccessTokenExpirationTimeUnit": "vs25eiQO3oWdgXdm", "oauthRefreshTokenExpiration": 24, "oauthRefreshTokenExpirationTimeUnit": "IxL1OtleUBqBO0Ze", "redirectUri": "049k9W6ZLVJzRpUs", "scopes": ["ITfVruDukun42zPZ", "vOd4yZyMKyED3qDO", "5HXp5oVkhESbHQ7h"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    'Tlzf7XwQtVIYU87N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 13, "resource": "7Bq5bcfPW4pPZB9Y"}, {"action": 60, "resource": "ltCxyztUnj17t3gH"}, {"action": 57, "resource": "5mOwPCPKVPlOGfFB"}]}' \
    'lu2ZP0IkiYXGk6Bo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 57, "resource": "RT6kulpM4SRtUE5P"}, {"action": 24, "resource": "kxmHtFbjqurHix0Q"}, {"action": 100, "resource": "ycDH5we2Mx0sYCnY"}]}' \
    'PT4i4mxc14iRfzJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '75' \
    'imghdfVhjnjd66A1' \
    'SQmWGSQLAVPAJ7zX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    '5lB80k2smdkBS2Ma' \
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
    '{"blacklist": ["IP7PjngEFggq91cp", "gvoDBgYfLBdGNAZE", "vbvxqa0K7VUbjUnz"]}' \
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
    '{"active": false, "roleIds": ["0g8HIxpzm9AcFhH4", "ZlYY3rEuHMWwQNmC", "QmGCF963CbsOawlR"]}' \
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
    'BQJH6fNekhk077gx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "aj55huTA6AvmW056", "AWSCognitoRegion": "7BFqbrPIuxKmBXLi", "AWSCognitoUserPool": "6GpnqAeMvg3w0FQ1", "AllowedClients": ["520WM3TxWXSdTiKd", "va2UREoBSFtCLy2C", "qgCG7JwJCDqkzOdF"], "AppId": "wLJpIPxzLE1V9U1N", "AuthorizationEndpoint": "gpH7Oc44yjRdfqZg", "ClientId": "v34GqqjelcN0GJmP", "EmptyStrFieldList": ["wUTWMx0MiPAjnWIh", "FrqSn4erXEtU1CaD", "8AqsMCGBNhmUt6fz"], "EnableServerLicenseValidation": true, "Environment": "Rn85brTu8F7cuCPh", "FederationMetadataURL": "1TGZJmgWNHWnvOBR", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "E2FMcKd7c94rEmIY", "JWKSEndpoint": "uAT5OAcUwYHGmG5r", "KeyID": "NDBF1oU37vjfyX5Y", "LogoURL": "LaM0wmi0i1WABBbq", "NetflixCertificates": {"encryptedPrivateKey": "8IzZsMFLX9ZhFXcF", "encryptedPrivateKeyName": "tfBS3ZIHofhwyM6B", "publicCertificate": "w2sFGQ5DQoDwzrKP", "publicCertificateName": "OZZnV3zR7YxSu6ad", "rootCertificate": "docg10Hy9jx7gBHT", "rootCertificateName": "OHHArjld0LnREsrr"}, "OrganizationId": "B2pJ7V8BSrucjO3z", "PlatformName": "vSM5KeVNHU9GcOiv", "PrivateKey": "IfcCJt4U8VSgXoi9", "RedirectUri": "Fw25b9qXzlIK2G6A", "RegisteredDomains": [{"affectedClientIDs": ["UjBCdf0Rp5e5IvFu", "N1oUsCnBmGMx5F6E", "hM3dKvIG9MR0hTIN"], "domain": "vq1VR9SJUfQEX996", "namespaces": ["Mh1sQ3Dw3uyjgQNA", "s9188Qm3W1De2McG", "d10wefF0CJlH55RL"], "roleId": "EgeAsSpQdcmGHZuR", "ssoCfg": {"googleKey": {"VQ8tzwqMayP8A3HG": {}, "NI3BfjkFd6MHo6gG": {}, "Q5mChYoKD7yqCR03": {}}, "groupConfigs": [{"assignNamespaces": ["RovQZhwfjkq9iyTb", "yD3D01tRpuuyIagS", "SzEL8H4euLufhQj2"], "group": "KP3LLxl9Hs2L2wlp", "roleId": "KBVURxHefz77a9fn"}, {"assignNamespaces": ["tCNiHBRUNCPSre5G", "mZzCQwilS3IxSjly", "vR9PxG9Lji2Vc88W"], "group": "8aLjIxVGpdOqguxv", "roleId": "RwI9ZBTipMRlhK9D"}, {"assignNamespaces": ["MMaI4ryVDvNaruZx", "wTfh9gEs6GF247cb", "BLjUr5z03wxB3E9h"], "group": "rE9f9COFrOr6wJDB", "roleId": "wIDsJHNg6TvNGjwI"}]}}, {"affectedClientIDs": ["4TbTwBufUorJoudu", "hCEJ5XiKDIE9Yugc", "upLxVBcRkfhRuqkO"], "domain": "THSia7oFd1fEmDuy", "namespaces": ["AsQGzwJR5poI718R", "Qnj4imu6XFfRcWDX", "hq1YmGeygr2S4Yw8"], "roleId": "NmPaBeryzX2hOPVV", "ssoCfg": {"googleKey": {"FqVqxjq1iG3TySOh": {}, "8SI75oXbyq8FBbur": {}, "80QwnlgAVfqz6gQJ": {}}, "groupConfigs": [{"assignNamespaces": ["h8sn0bVWRkvmAemh", "8lioBR7xTXcEIFod", "3lCzvjHzDHOrSJ1v"], "group": "bB7LRHd96dGLgkfr", "roleId": "ZveFMWAFT7l0l1ja"}, {"assignNamespaces": ["OAMCzbsoIgmKwwMD", "QPjUIosq1l6xo0D4", "JRbNqO6IuP2PY5hh"], "group": "X6uNah9JoHPj7jFW", "roleId": "xSv1lYylYAiZ8c7Z"}, {"assignNamespaces": ["d7EUoezOLw8C1c5b", "BB3XZ7ColKwlsNvt", "FuunQsvdXGlD40xx"], "group": "IyVwYjn6dlC9Kfh9", "roleId": "gHuloyce0cLJu4lj"}]}}, {"affectedClientIDs": ["PWlCWTuGO8MnfOQu", "3wdT4Aodp95o1RkX", "7iW7VpCngWAv5DAG"], "domain": "8dPdkKgQqjyzUZR2", "namespaces": ["rFIAuALNhNCyscsM", "BRLsWadk2OQ421q7", "Nb1vrKthVvU5on06"], "roleId": "5ApCkVN3QchuQ6pn", "ssoCfg": {"googleKey": {"txB648ss7rBnvQHA": {}, "M8gSdIybKUByHBzf": {}, "vgtRTPPzwJmKaLCx": {}}, "groupConfigs": [{"assignNamespaces": ["3gcidEALWe6RG5wW", "znu5AjwR1Z4fU7IC", "caQtuuKUw3dUwWHh"], "group": "QW3I1y9tjRLVOXBM", "roleId": "a0JiIe1AY0tUA7EK"}, {"assignNamespaces": ["ASk3USNLhOBlxRBL", "gohp8ByTi2F6AyUX", "8w77riPlPgJcLbeQ"], "group": "f9MICxX7xKyCfgwS", "roleId": "Pz14asyOdgn77gN8"}, {"assignNamespaces": ["K1FlNkgbFE8U4meK", "5grmPBsFH71VrhsI", "SYtegQbNA2WQrHTk"], "group": "JT1VkChD3n0c1ryA", "roleId": "kRvdPR8gx2rX5dck"}]}}], "RelyingParty": "8NFKPgT6LMehg047", "SandboxId": "axU5ktNywRIvO2Sg", "Secret": "z30hejqdktHIO1Vd", "TeamID": "tMSews1TrU4FhAfK", "TokenAuthenticationType": "DcDG5bMTba1tUlFG", "TokenClaimsMapping": {"cP6eL7EpWtPifmO0": "JK4dP1aZFiSkmhwV", "VMGkXNwMYwFyljy5": "bYQdQ87hUHA0FJZw", "P8GslMpx3m7lEXTm": "nTbtjK9RsyoqT3ad"}, "TokenEndpoint": "B48Jxp2zaItg9jTN", "UserInfoEndpoint": "ZvpFEUI21aSaIsMy", "UserInfoHTTPMethod": "LKPPIZx0zdNAagip", "googleAdminConsoleKey": "ZwiaBrFrXtGMjujf", "scopes": ["HZB1gMI1B8DXb37D", "ffTZ7yQz337LLNCj", "IySe36SA5dxATLv5"]}' \
    'PkLvraRzChdjDGdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'k2A2jHbAPNGInvbn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "f4ewKFFLoGggX4gQ", "AWSCognitoRegion": "WyZocvYfr0Rnl02R", "AWSCognitoUserPool": "1IVNnaK6KS71Xs1B", "AllowedClients": ["phA9BXpKYgF9Ouig", "DP0Vjmy7j2BrdCAm", "3slCwaBqHpE55sjx"], "AppId": "BGijw0dQtZNonMrP", "AuthorizationEndpoint": "kzUe9SglAJGyZS0I", "ClientId": "8FevJiT98HUBp56Q", "EmptyStrFieldList": ["4WETxtGMs5tPKPuK", "0K4PiMDTR7LxihuO", "n57io0d9dG3yzaNb"], "EnableServerLicenseValidation": false, "Environment": "eASX83SLiIbAP2qy", "FederationMetadataURL": "UnHnfrEdDfY4TTxu", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "ZgsX4RwfM4qnUdcQ", "JWKSEndpoint": "qZ9F1uivPob0YZEu", "KeyID": "XQACDDQryNf9VGxb", "LogoURL": "OeJe4n9eUlBQZ2UG", "NetflixCertificates": {"encryptedPrivateKey": "ePWXbAyGiXa9nUsH", "encryptedPrivateKeyName": "CVicuJ7onrUXVlB6", "publicCertificate": "xNel4Bxb9KwFYqdh", "publicCertificateName": "EVq3hbsApeASfR0l", "rootCertificate": "jKxqZcLuhwNDvVal", "rootCertificateName": "v3bkoMXNzl1ywEPi"}, "OrganizationId": "unixlEAHZzHs8x5o", "PlatformName": "PSkZFIV2feXnTRlz", "PrivateKey": "AJy9oFOHB2KEsIdt", "RedirectUri": "ozVltBhoXE4wgcYT", "RegisteredDomains": [{"affectedClientIDs": ["5CdjaJuUzFIeqaVr", "1CE1gu6cYuzC77J4", "irvZ9tktWLtDdlmV"], "domain": "GK6iolEw6IIpDc9X", "namespaces": ["5ijmtDGvd9ESdY0e", "TkBWA44Qqsi5yOjv", "l5sRN2ENn1RLi5iM"], "roleId": "Pnbg7o1zYpqUsliP", "ssoCfg": {"googleKey": {"yXZGYIW5ZDtWbdkz": {}, "PP47RcUIi2CoNj4E": {}, "G2emxKQk8cBrt5E8": {}}, "groupConfigs": [{"assignNamespaces": ["k8rzDZ08j6ICP75c", "m8YDChFi3zLvfQWC", "85MxWxvW0veFl3uU"], "group": "1aMD0mczWxc8f1s2", "roleId": "QPMMZsf2dvKZyHCh"}, {"assignNamespaces": ["RPHvdkcKW21B5EFt", "D2pYaKTz1gcE2XCw", "TkRUIX6IFHNmB9mY"], "group": "BvtOwxjqyrjDApeN", "roleId": "5eAfRqSgH5xIuBTY"}, {"assignNamespaces": ["OdsvNyk52MQFkVVE", "f36S7yPgG48bk6Pw", "H1tdEAJSqXA0Wv0z"], "group": "WGvkc6byp3mvyYT3", "roleId": "GuaZVTxBlw1IWeXK"}]}}, {"affectedClientIDs": ["FT4rfSbbSlDPGf9F", "n32SJNPZkEfkAcJT", "MS4pVRcCHIGfmCMT"], "domain": "r9ACnI2sMrEgl7ZR", "namespaces": ["1HCkf2Sw78lLGKjD", "HuXt358gzqRMuMPr", "Iekxq58fikq83hqJ"], "roleId": "7HP63Se6kVW5fkl6", "ssoCfg": {"googleKey": {"0ImLBv6nUU0r1rfX": {}, "9stpvJUuyPdzx8BM": {}, "2wEgTtLRT5stwQFU": {}}, "groupConfigs": [{"assignNamespaces": ["EbTPQ8p7VMlxEXnq", "HwMyKpwphjUXvM1G", "qMkZ44UXgdBqtJaR"], "group": "yDlP9qIZJ5Krx6Kk", "roleId": "HagEugKJxkU8Y58C"}, {"assignNamespaces": ["OtTNjnNSikJDg6uj", "Kvq0CIa1YCK9PlMe", "QprfgLGkHX1tdBjK"], "group": "mCBXETZwqdzAX28D", "roleId": "ikGk8cWiX44azSHc"}, {"assignNamespaces": ["wicUVq2XPljTZj5R", "0yZSVQ8SSeJ4qy4P", "IKleuV271bwZ4niL"], "group": "SzQnv0C00dtNGGzb", "roleId": "GYSYo9fY2EBZAHQX"}]}}, {"affectedClientIDs": ["c4Xcae7VKl0ARzGE", "ArlfE1NSmtcADoZv", "d0La7P4JI4H7uDzk"], "domain": "OHTdnUtdrRcs3GeO", "namespaces": ["sKPNlG7rEXi6LEqJ", "ERpbxEq07txnvZZe", "Af7QBuZK5GJlBncg"], "roleId": "8tQnJOKHC16xjJZ4", "ssoCfg": {"googleKey": {"kiU3N8556ll2LQWp": {}, "dESOBV7wZJsg7wSv": {}, "9lyRyTdYBUljvBzv": {}}, "groupConfigs": [{"assignNamespaces": ["YNEtfgBFikt18cQ6", "77SotDEtU2xBSEQ8", "rBKc2K6oJXxVEfna"], "group": "qX8NuZtRUTKUvR69", "roleId": "PImy6CcwlqJ4MO3L"}, {"assignNamespaces": ["8x1H5OgzHypgsSeK", "CvtPz7jagBG9a1TZ", "87ltClc3RDXF5055"], "group": "tUlenimjIbm0riCa", "roleId": "Np8dUBDinAB6HqIW"}, {"assignNamespaces": ["Ii5Bvb1rcuEtWAF7", "63kci7lT62BOHaso", "53W3U2Mu9ZGMWou1"], "group": "U0RVCf3gMWDAodCK", "roleId": "qfqzeexHA70NgJTx"}]}}], "RelyingParty": "jtzgO7W3taRvJ6lK", "SandboxId": "WJwHO65aOFDwpqy7", "Secret": "XOU3DwglyMGNll4O", "TeamID": "8ELahcNJqRjepck1", "TokenAuthenticationType": "l0qxRyQ2pi7xuAuf", "TokenClaimsMapping": {"JakIPXOQznHZTj8o": "YfWObyNJKVSQsaCo", "koGynp6xcqNKJnAh": "rSt96OaARAjHLGV3", "sNxS8uLBZiVRYIyQ": "LcslTEqgVNG8Aqkt"}, "TokenEndpoint": "gvjwNJAwIpEy2ZNp", "UserInfoEndpoint": "ojZ24I2n25smsrmJ", "UserInfoHTTPMethod": "FHGiYnyhbqxLuTZI", "googleAdminConsoleKey": "xgiUaiyy0aWrshpm", "scopes": ["b1C9Al7eWrbNRE0x", "yYPUZHyLGQ52IjGp", "RJCUJpscOTkWETSJ"]}' \
    '04c5MGInO4yznh2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["pZvvmziSSiSpXeWO", "GayfRkQvoN06SpNO", "nuSksfm7hcIFdkdr"], "assignedNamespaces": ["wAcK2lUda9h9Fgvf", "hiLEAkA7n6516ydo", "RT1qZBrdTnGrwHeW"], "domain": "oQXPFWFaKbDgrGkv", "roleId": "8SVwLyS4VbHJvD0l", "ssoCfg": {"googleKey": {"L7aZUY9d1Idud8bj": {}, "YeBVMr7zHYmRE4X3": {}, "6KUOdfEmoIYwSxxA": {}}, "groupConfigs": [{"assignNamespaces": ["sfwDMivWqHHGlnAn", "Eu6EKYceTEqYudHl", "A4AxeEIfUxJ2xMSN"], "group": "NBxCeN3pGn46fGvo", "roleId": "dt413MRdG8qAPiAN"}, {"assignNamespaces": ["v2Ar8yXV6qf6v5Sg", "cJPZPUh2nHQwpWi8", "HZ6C0VJ0fK2m6lQ5"], "group": "Ao8TITYiHSR2SEJh", "roleId": "1YDedZdNqkXPWZfT"}, {"assignNamespaces": ["8ZfdKp9q4nXuK0tJ", "AYror2XdtSCG7ZEx", "OoIpWzacOvwUsnIb"], "group": "QM3ZAtyEWKWoZRUL", "roleId": "7wS3HaMTXAX6y0ST"}]}}' \
    'TN2sBEijjjpvSzGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "ED0oweFYDBPyd1jJ", "ssoGroups": ["BxbrbuFay9PXgEQS", "4871QSmsspn5sNfi", "fK65tvaH9jwcO48p"]}' \
    'thyYpBJDHIIxTIGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["5EssYllIqjJzuQ8G", "glVgxjOGQGlHm8VT", "N56tJKwD8O07L9GG"], "assignedNamespaces": ["1uenDihceaLdgPZI", "0fKW8LeQxItaK6s3", "Hha69MgxjGJx62mk"], "domain": "fVlu4bGB1pyk0Ppx", "roleId": "XZDy5Pmbu7RrD9a5", "ssoCfg": {"googleKey": {"mdlXTCL467xHbAiD": {}, "3Pr3mXZO1PnbSlfV": {}, "RlAI8F2f3mEv09kA": {}}, "groupConfigs": [{"assignNamespaces": ["A5hnQtd4bcivHGIE", "plRpcHDWcIoJ45L0", "Ze3YamxKDSZTl4Ui"], "group": "JSCbG4UmG3TkMTzO", "roleId": "cBIciiKwRs1E7sH2"}, {"assignNamespaces": ["G9MJ6F7Rr7O15jqe", "KssQpme6eyM48tE7", "eJRsXNeveQXqnFRY"], "group": "mEIX40XOUoLOa7oD", "roleId": "z00gxcoaH6u9TVf4"}, {"assignNamespaces": ["DvEzpoPRiClZ6rlw", "X99AHMLHqguYykVW", "zNwPcvGyieBsRUdu"], "group": "W5lxSlorWEGN5bPG", "roleId": "SOSiiItrSrEJMBAI"}]}}' \
    'wTLkrMDFQfpQ9o0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'JMTfqRRaZozM8xCB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "oaS2FMwfWNCbN5Ge", "apiKey": "lVOU0hHnsCl5k6Jx", "appId": "h5mkmQzKg0jWCjpG", "federationMetadataUrl": "wh7pLAi5JmzvM6JF", "isActive": true, "redirectUri": "6xullPROSfiW9zcx", "secret": "mgNfTHu3vkZt9FgW", "ssoUrl": "ckjNpHhM2ZXp4N0R"}' \
    'OmUCTrS7Gi9Iigk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'vamO7Q2WQwSWqSs0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "5rjISy4B0X9AJdkT", "apiKey": "7UYCV8agvwOI2LlO", "appId": "QNRN132RdgwMXv9o", "federationMetadataUrl": "lKpRyWQim3qlART9", "isActive": false, "redirectUri": "mkGfPI3j4luXQuuL", "secret": "tYa86kvL6cBZQssU", "ssoUrl": "UXOsXMNdvW1hbvGe"}' \
    'nRbm3QtsY5WaKM5Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Y6pYrmeMIHLS8egV", "8XhgDjbrum8Uxcut", "mVg8APWKxoj6MF68"]}' \
    'VuKDoklYmkytCAH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'Jiqe7gfV1G6bYgIb' \
    'VKp4Kgew2mHDksA6' \
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
    '{"config": {"minimumAllowedInterval": 80}, "type": "gYDc2FMbzZoeKagn"}' \
    'country' \
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
    '{"additions": [{"actions": [7, 43, 18], "resource": "OwscICro6P8FWIPe"}, {"actions": [34, 64, 0], "resource": "XYJtHtqwoIwQBeIA"}, {"actions": [78, 72, 4], "resource": "8JNIII4jrzrPsuMz"}], "exclusions": [{"actions": [17, 55, 82], "resource": "Wdw2b031dm4N41MO"}, {"actions": [31, 41, 26], "resource": "URdMjZLYCaeklQcF"}, {"actions": [61, 88, 71], "resource": "er5mdraK47FdxXis"}], "overrides": [{"actions": [98, 18, 23], "resource": "mLu4oFlReHy0JyZv"}, {"actions": [15, 30, 18], "resource": "nqeiGTTqpgVsY1kP"}, {"actions": [81, 32, 8], "resource": "ZIzSFUZqVR5FWGfH"}], "replacements": [{"replacement": {"actions": [89, 84, 9], "resource": "0CkW1ZcgUSbbnffB"}, "target": "WRaJN1SjCFLDNJfA"}, {"replacement": {"actions": [15, 82, 73], "resource": "Ns3XdhMbQX9D1znE"}, "target": "Ww9p7g4UsQCTKDh5"}, {"replacement": {"actions": [27, 19, 50], "resource": "Qyo9tUptiyZzRX8Y"}, "target": "4rxRWZPe4ZLAQWuB"}]}' \
    'VIEW_ONLY' \
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
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'xObZqMGxhffy9cHr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'LYfftad99JDcnn7f' \
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
    '{"tagName": "2d8SOWP2dw6Uy88W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
$PYTHON -m $MODULE 'iam-admin-update-tag-v3' \
    '{"tagName": "pQalG38VOo82aLD9"}' \
    'jUjuDITjifWRbmtK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
$PYTHON -m $MODULE 'iam-admin-delete-tag-v3' \
    '7MTxcCWnMiCLsjro' \
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
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["ApA8GsGwyocvY9Ne", "PjLJQJXwUApJWohX", "n01RB7pu7BaONXyE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["5fIDbsMi48xOYVvE", "cEm53BYMBacQBIuD", "Vs7U0AJtWPRteszM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"findByPublisherNamespace": true, "userIds": ["d0R5Fsrf9xbVfgvG", "617GmxzClkR3M6Tw", "pwq3nLwxnJKjOo9f"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["vfXF1VsikD3IphQQ", "iRcOtsthUwgQzNHU", "Z0l1FRfOjJUmCbi2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
$PYTHON -m $MODULE 'iam-admin-cursor-get-user-v3' \
    '{"cursor": {"cursorTime": "llksf6GA8vTt92kl", "userId": "dCoyRdiOikUdqGoc"}, "fields": ["LYBaRC7T5qSl7WN3", "ncPkqiTKzz72PKXj", "ShM2DvesmMIbiQfa"], "limit": 69}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["YjJMVnYj2yKqavWp", "ydepM3ap069B9Okr", "0xJ5XRZVoxPGOLVB"], "isAdmin": false, "languageTag": "yJIveX52r6Inl9VT", "namespace": "JB9Al3mn2DsHDHzS", "roles": ["VJzhU5Z44zgZ1fie", "Ldl3Y82DOj5kPuNR", "ZZaUccuBYep9n7b1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    '7fsblalJrwQiU3DD' \
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
    '{"listEmailAddressRequest": ["0xZFH1fHFLSr0O4r", "EZTbFDj2L2McvCrr", "R7h9uKLXDaRf3pxK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'tJbRY5luCwKrt6wn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "3yVrRCh6j7rpv8K8", "country": "fBAeRa1R6ksxLYGk", "dateOfBirth": "OLgReff5IHxLJIem", "displayName": "NHbzgAFjtjC7suvg", "languageTag": "IUkB2PAGJqOrkdlZ", "skipLoginQueue": true, "tags": ["BYi9bBKBRpdbLCiw", "xOx2XQn94xPqXhqe", "NMDGA3O5hQAl6U2g"], "uniqueDisplayName": "9imVMh3i7j095rDL", "userName": "6lEuB1ZIMIs1dFvY"}' \
    'okH9t2u8ZZnyHKkk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    '6Gh25tEcX9GegDnr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "Yz0GFpSVdxFsXAp1", "comment": "roclyXllFitPamSK", "endDate": "RzDIZgSk6suS90Zb", "reason": "DdmjU11QIZtkSn8Q", "skipNotif": false}' \
    'eD7QJQEEVDAg045B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'vtPd7ibBA3sd51mD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'oH53vibq3Qcrtt8L' \
    '5dIebsw7EjkMnJSz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "iEA43WqIMJdrqHIs", "emailAddress": "J98WRjqYieXRthQZ", "languageTag": "vzRi7pqpajYEHs9T", "upgradeToken": "IkcnrJ64BOKqywS6"}' \
    'DKNSeb2UMWOgVeYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "Cvqq0tO15pEVG7sN", "ContactType": "ihxpuuL7DJCxvzZn", "LanguageTag": "h8oBAk1MNCAUmdnL", "validateOnly": false}' \
    'U5ty3uQa7Fl3ZhSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'LtrwnjTJVDlh112b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'yTYCDBnAvf8JpFuJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 92, "enabled": true}' \
    'ZistM75544PDlVK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'taScpV0NtCxDDz5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "xt6LflBJjokLAaL4", "country": "oAF2lqx8yneWKrOy", "dateOfBirth": "4xcg30BqC5W7g7hi", "displayName": "wumJTI3jlZPjoCdG", "emailAddress": "iIP6cB3Pj63MJXIu", "password": "LWYb2iHHVN0ZBgvr", "uniqueDisplayName": "igXUT4fRbawD5yOv", "validateOnly": false}' \
    'gvMG8QAaWUhIguMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'KDOrx0wQXKEroyKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '2reP63EVHT72Vuho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "GP2IFXGU5hujEfCM", "mfaToken": "t95DEjxqhgYqmMqI", "newPassword": "dlRrQmuILkeRUafU", "oldPassword": "DP5b6BWfm7cYCpDI"}' \
    'JG42ILhUoCh8lmKK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 30, "Resource": "ui6lsKF28n7UC7y1", "SchedAction": 79, "SchedCron": "J8WOgsAj2Rmf1DXv", "SchedRange": ["AIkzTRNRVyeEGu1I", "COCmLAmcaEFBKgy9", "2LYqtQcDN7OMCehk"]}, {"Action": 61, "Resource": "acy8wsWaPyppR3zt", "SchedAction": 84, "SchedCron": "HC2haQwVWONEpAPe", "SchedRange": ["dzI2AdlqiyEJIQcb", "ZJJ3AhkrMi0bnppE", "JFISze88rGEr3cil"]}, {"Action": 73, "Resource": "mMgoMxZZ9AutWDfV", "SchedAction": 84, "SchedCron": "6S0VmaTR7E3mkDSQ", "SchedRange": ["kgVMhLbM6H1MnNSK", "d0KStITvGQtzwjGt", "GTr238G8Aevk3k14"]}]}' \
    '782W2oNo3X4m6wms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 22, "Resource": "SPaHlqtDPry2vMON", "SchedAction": 38, "SchedCron": "IICVNNRV4lBToTcn", "SchedRange": ["1l44ebrKEKdeo779", "KG5yCz9jVs1lYK1M", "x9rEFkDqb31AZzwi"]}, {"Action": 87, "Resource": "ItUJgh74tyxkTR8Z", "SchedAction": 59, "SchedCron": "VhCbXbeBEoTlfR33", "SchedRange": ["jqIRoXcCPaLXJM2B", "9bMohkWsFKIdycYH", "Qcu7JkKBcLFRf50Y"]}, {"Action": 79, "Resource": "eLdWykhBxLFnKnSY", "SchedAction": 59, "SchedCron": "ayqmp7vhz1T6cSrZ", "SchedRange": ["L2CgHxdmYDj9vZNg", "fI1AeYHe8WPQGPcl", "ChxLfbXrH6f2GDrN"]}]}' \
    'bLOjGz34ct0ctEeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 78, "Resource": "wYuLnI7cTzIUERPl"}, {"Action": 87, "Resource": "iaM1og5rxUjGPKKL"}, {"Action": 79, "Resource": "EwbIGMGJ70P9IqAy"}]' \
    'NlZ2OwFSebBkXkax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '39' \
    'ss8b8udl6fLkxFnA' \
    'qyvjBy0NXg7zd6SF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'pkV7cAICgWFJZGnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'a5yOM68r4W1fDZL8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    '0oPQ0s7QhC8hgSgy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'tNEojK3YgWH9l7rv' \
    '6XUSINd4keCeiw7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '2PtUrPawQPaHARrh' \
    'jbEU5n0PNuFyKW95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "dJsGoBIjCKlD3axS", "platformUserId": "ivItV1txLINmdHTG"}' \
    'LtX6TN5ctYX1sZnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'F3hWmCCIrP0lJXex' \
    'seo2e6BCNJTTRIHD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'KdVfOUr14yZH00n8' \
    'MsRjaB8iurBWW5jS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'Ji0seeGJIqnatME8' \
    'GnNWfAY1yY6D1Euu' \
    'sf0eOzoSyKttYwUU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'lMRG8vO0OSsJmhOJ' \
    'DUyyag9jBDJFJGOE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'iWJ8cLrryS5a6A4t' \
    'L8YKMrUBL6dDTVwP' \
    'It1hrg2mhbI0NDsh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'b7ZzQuBPyNi1GhZH' \
    'Ej6p5grjk5wzdksO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["Uku8dtQoIrpvmM19", "X4zFOvdRTpGmBUjf", "EU9vL8H96tuVfQwY"]' \
    'IqDWqbPmwQw8J7na' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "1POTXhXLRU5prAdq", "roleId": "nnPOiTVzAeQq6rnW"}, {"namespace": "JoTpYoe2uHaWnO98", "roleId": "YwqHZnEDkfmNbDTM"}, {"namespace": "GgET2yS6C8a8L0vQ", "roleId": "DS4EVpBmsUzx64Gr"}]' \
    '4XEm0uYYuAmqhftI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'fe2zdqZ7ht1vUiJ7' \
    'jBXy8psNoHNalwgv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'ju62rPFMbE1cW57G' \
    'aNZLT1z0GqDZN7ft' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'HOhVy48YYg1AkRh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "1YMJfRiD7djt1VeO"}' \
    'FBDA3gvCRfoBijpb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "MblGWnp94a6GKY0B", "password": "rHiWs0B0RhxQtgVg"}' \
    'bN8kr872hJvrOCdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'EZ2RHt3uQ5nFrPXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "xJZQpkeDHr0hjKBp"}' \
    'DMIvK4qfQ0pQIcYM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'BktqqAAF6YG1dD1v' \
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
    '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "Bb01VFFhO5FcdTvI", "namespace": "DQI2uIi2SNZKqlJZ", "userId": "sdnY04DIyosprZPB"}, {"displayName": "aERb7U9kK4VctUmD", "namespace": "hFVNa0JYzTbdnOnE", "userId": "arWP4nrJ5fNESRVG"}, {"displayName": "eswvkzLNIITUJGj5", "namespace": "FYaSgewLWHcBxz5L", "userId": "pdkRCAU8HhmXC68J"}], "members": [{"displayName": "FPdxhvBKee6wG66Y", "namespace": "PD4vNdENY1r1rI0T", "userId": "97qA1OiblWlz2LXQ"}, {"displayName": "NqcONcJIsYRQz97f", "namespace": "RWI17eNP3Y2nWlS9", "userId": "Sfjh0htyVaGj4y9a"}, {"displayName": "hS7h7XVlmc5Rs5FV", "namespace": "QSIqObR55tV0BlN1", "userId": "iFvw0GSLBmie8SJc"}], "permissions": [{"action": 22, "resource": "dpLVTVsj9pDiyybX", "schedAction": 63, "schedCron": "4v7JRFMRaeIaQuPW", "schedRange": ["PlkxeotrNakKGvOS", "vpmZZdlNXdx2kWmS", "qodNZgfQyDVVkkqi"]}, {"action": 79, "resource": "58Othvd3jzMDAf40", "schedAction": 13, "schedCron": "bsLJ73mCPhhmUyIw", "schedRange": ["gQS9kVFUbeTeB9Kg", "nFZQ9lVMNyCiytnf", "MoO1I3KISTbn4yEa"]}, {"action": 55, "resource": "uq79Du28SRRAMaQF", "schedAction": 63, "schedCron": "aqjKzWDAauqLKarc", "schedRange": ["LQRQtC927GneBM8L", "vzgyIVzGFBLJ5vbC", "9NfLTFJGOzAIAqpm"]}], "roleName": "kDdFSs4s7u1VUuLm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'enyxTQVkEg5wouUK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'a35m8oH9zCfw7mCM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "vLoL0wwHoRMNexBO"}' \
    'ron8wIdUbp7xVMKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'bAJfW4iMIC52NUed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'hhkME18qGpSsyEPD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'WHcqfYp2EFxEaEHC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'Gtg812NQb5Glh8sr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "TlTj61WdV2XUo1BO", "namespace": "1rE7E12Fapao5jo9", "userId": "nJoKEb8tHmFwLGan"}, {"displayName": "2SrKckNxLWH6rjhR", "namespace": "L9uxoV5Oe8ktlePE", "userId": "o1xBuRSv6VizgtOX"}, {"displayName": "Zy9cQ6B074dTJZqe", "namespace": "OllKQNwJUGtC0tAh", "userId": "xn1ay6ruu7PYWHOD"}]}' \
    'Rb6skOj0lfYFGnQC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "AWidWPjYgyebU6rH", "namespace": "FirnUpZ9UJ4N78qH", "userId": "TGdn7gE4bwLzDEw2"}, {"displayName": "PYt8x9SSaOZcEvG6", "namespace": "KZh954BmtuIFllfS", "userId": "UnaUhC4x11AS2jTK"}, {"displayName": "oTYeHaCuN7zpX9vp", "namespace": "4QJdCrwkz0nw2oxK", "userId": "ye8jZqj7k0YiLqOU"}]}' \
    'SBuwR388REDRuYBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'WiEsOnDfIAN04f5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "SONmw1BDqqSctLL4", "namespace": "WfGq8JCDnwGWgccu", "userId": "zuc6QDRMGdBPbUyH"}, {"displayName": "TYPS8CGKXGon2ecc", "namespace": "65YAFLweD9Z7U2lN", "userId": "korrw9QH3rNhDepQ"}, {"displayName": "um4Dj7pR05RTGXGR", "namespace": "kYXifTd5nAOF9VV7", "userId": "JgCOm4wL729Hma0n"}]}' \
    'CdCEFcf2doBrfHiH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 34, "resource": "Xgvu496H02yOVN1h", "schedAction": 17, "schedCron": "1jIPOMXufZPWSe20", "schedRange": ["JfNvtNcWtpUkw98x", "3tMM1bFFDIqKD8HJ", "4X0DetCeJ4x0wf5m"]}, {"action": 87, "resource": "z08jh6Tyq7WUilXg", "schedAction": 40, "schedCron": "bPCJ5n5s6DODBmrq", "schedRange": ["EhGlkEmGdCbwodVR", "jZJWuCQpjuJzpPO7", "BPxVWlRFnIekrQ99"]}, {"action": 8, "resource": "Nv8FQCyQBqKxayGv", "schedAction": 45, "schedCron": "aKYAsoMlLJGMl5xF", "schedRange": ["gLj4mCShMFlbrRGj", "oBQ45Za4JR4S3iac", "6vLeoIULJlWXmQFl"]}]}' \
    'ef1tSHJf6sVpwAAK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 75, "resource": "sPt19V2FkBPk0QLu", "schedAction": 11, "schedCron": "lZMQeSnOg5gf1Swr", "schedRange": ["bpmoF4DvNA1wo9IA", "xV5C71gTw8BJPFct", "wUMCRdxXOBu3TWmH"]}, {"action": 61, "resource": "7o1z37uuqLDQF12k", "schedAction": 54, "schedCron": "fBqeQxos58kVk7F1", "schedRange": ["KKOfFFLvER3xqCwU", "gKa4oCBoJDxGa1Uu", "Sr4ehnV8Aw9m6GvD"]}, {"action": 91, "resource": "zZJsZd9sB6CV9KiW", "schedAction": 21, "schedCron": "gKKcGohdjQUwVdPs", "schedRange": ["ArkepfK0DE3IibPS", "QnphnvAWBSOr7zlj", "UKyhKkD7wAHMrv8z"]}]}' \
    'ABDhYAVxvs3ugNvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["gI2k1P9nQxzj3Anm", "pWfje5cAtTDvwFHc", "oODi5oF1pccdjjZp"]' \
    'FnVLb7xerpjVPfkt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '80' \
    'xWoH5wVHJVaEnayc' \
    'YsKkgX0RMDxvlK9R' \
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
    'nTEYv5eDhCxwy85v' \
    'lhWw1RCgHr3f6UqF' \
    'GCvsMFEFlXHBOK1R' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'qtKYVObVorIVWWLa' \
    'VJwe2KAca1aKeXUu' \
    '9hINqKvoYKio4M51' \
    'vuaFyqjQsTGmzItJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'IOkEIRsSWOV8Lyiv' \
    'YbMG9LXPbBh2E3wF' \
    'chP3zTymfVfny2M0' \
    'KsS08cY3fjI1YTT3' \
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
    'qUMd0U73RjVeYSM4' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '79gn62lizsWGrtIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'VPb7hoo8YkNPW8mW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'OJGtdXJGDsxRAR3N' \
    'ObYp43YXMHqWeVjn' \
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
    'OURxGvOhz9s7ktWk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'JDaHg6kDVjxhxRxj' \
    'eDrqCfJEjrqJkFoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'FZex0eOw31PXkVne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'tcvAuim14Wdh1qKo' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'DBbyqlJyfVgaW6zi' \
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
    'ZF6ijZzA3MkosOco' \
    'AcV0T2G3vQZNiqaX' \
    'zRBra3I4K9iBdljX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'towifBfAw30kOykB' \
    'uDJ0IPQeAL4MZwEV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'Je7waGyB6g2M5Jiw' \
    'tMOfDfoMgU2yFBTP' \
    'fnmfN5E20ORMCVBT' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'YnGcrZHMKoTcIXeK' \
    'ZzZBo6ARaQnNZQ1R' \
    '0PGBFVnc37aWVjM3' \
    'iVKjr5VDqakKdW76' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '7GAH1oiS1JuO7MNo' \
    'FPtRhYYIpNqVHbbC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'VwbitD5tWXZVvjYq' \
    'rEXKUDlmtixw9FtB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'VAWT8PxL8674KYMe' \
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
    'N2W2CNqmO8JALtCi' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'iqW7I03oSwCfYpN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'MKY09x4TKOwsyRNn' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'aLNhw0xGnXc29UDQ' \
    'xeiBo2hB9u1v1POC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'jseK1xaSbMjyFrYs' \
    'ITcyT5AhNNH0Ht1y' \
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
    'PtBwXIuYrbPUcvEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'J4PghksbaThW37NT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'bz8HiRmuknvXiTP0' \
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
    'KrWQ3pgbHM0Svy3G' \
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
    'RenDzwlTE9Czhnck' \
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
    '{"PasswordMD5Sum": "3GnyPFQHgn9jVE6Q", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "TBgYwLjPGFqkbTL8", "policyId": "ifUAMUekrD0J6iuJ", "policyVersionId": "sVjhLgaFeFJ5QRuv"}, {"isAccepted": true, "localizedPolicyVersionId": "yFeW0oNhddKrrhzw", "policyId": "z2PFXC33KjLNUFQJ", "policyVersionId": "gCWV7dj8I5eVnflH"}, {"isAccepted": false, "localizedPolicyVersionId": "vKR3ydSEb2trPjql", "policyId": "B5c8a78gp4BGN4NA", "policyVersionId": "ydb6GgyFczEOMXF1"}], "authType": "T1sU9xsmACLFHrXW", "code": "FobqnDkfPAHNgVss", "country": "4JzVKSusdLumoHh8", "dateOfBirth": "TQWYk2vD3mUDwtTF", "displayName": "1ATVQnAexrRomTZF", "emailAddress": "HX4cgtkxEx6tlxks", "password": "0yGW8qDWfr7MF8Pt", "reachMinimumAge": true, "uniqueDisplayName": "VWMnzbuNQNJxCbLE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'hfrPxIRdbUwkN6Tr' \
    '6vRneC9JYmpKyZGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "qWw67LheLDvwZjth", "languageTag": "GMOB4HFIzTlGBnpL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "Bd02br9OfMbjgS5W", "emailAddress": "jduKixzScfrHzGYC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "1TdLVDBDxK6laOke", "languageTag": "LBcprByjUr7w9w1x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "KUrLmQSkuEMRzyer", "password": "pya2oBjbgBhOdXE8", "uniqueDisplayName": "y1PNIzbnPB5wG65f", "username": "3ACfS3A8JeRMYUCg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'n7oklNewpAIwtlAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "oXZ7HDb8g2BhzW03", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2pp9qVpZbsppRsBW", "policyId": "Q7RdYqZaQ8swcFOs", "policyVersionId": "hiWEFDMG99v5LSSk"}, {"isAccepted": false, "localizedPolicyVersionId": "sYOwypw6F21uYowk", "policyId": "PNGANjli9XZkbrkh", "policyVersionId": "3dQNtIEwCcfPmWjX"}, {"isAccepted": false, "localizedPolicyVersionId": "40aN2pvOi5UG7agV", "policyId": "hXIgoHE9eEvIyV2D", "policyVersionId": "qxWhSV3r9vk4HQDi"}], "authType": "wqJUZHP7HM6JB2P6", "code": "ZjZh9eggvvmXZU7l", "country": "VGZ6lIs17PXJ8Ksg", "dateOfBirth": "qGNM6sO7IUwIv84z", "displayName": "Qjc88fKtDQSbDQN2", "emailAddress": "1JlwPxpuUZm1GVuI", "password": "2Eihx6IJwMzUqM16", "reachMinimumAge": false, "uniqueDisplayName": "2MVvo3MMCL4aV6oM"}' \
    'UzpMmsvvKTljWspM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "rC4TeRTNUYz7N4wH", "country": "LHx7FCWn7iOmKIN2", "dateOfBirth": "roJNZmgEGzqDHdLp", "displayName": "DjLIhvCNlBRcFsa0", "languageTag": "3Nqu13LgD6kOUZXQ", "uniqueDisplayName": "KRTVR95IwPCb2qOu", "userName": "IRbBL0njCbitEJNH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "wfW76v6GPVwWjIfh", "country": "OXemeTgiENbhdRoh", "dateOfBirth": "ucoiX0GAQZEbNr6V", "displayName": "tQiKwKuIHMjiIjX7", "languageTag": "Eu0WCXd8GX7ygT5q", "uniqueDisplayName": "lBekxw9pO3vyRviP", "userName": "ljDYddTDwgc6onXf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "oDvjI9jfJFTHcHvA", "emailAddress": "fosnCXqJplcwaBHI", "languageTag": "LlCC7ovjEbjKrZ2d", "upgradeToken": "6IbWTfPplY43FQpf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "FWm8VMHjC8qrxvZs", "contactType": "Jd3RBYL4PAqdviBv", "languageTag": "ToSQ7EqHUhHn1qP3", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "2kSIurSOWI2donUL", "country": "QokdCSsp87x6Jfe5", "dateOfBirth": "YAYJeb1GUdtB5G8N", "displayName": "ITA0g58cqZn79u2g", "emailAddress": "rirdqELbdqXaPlAM", "password": "Gm4h3PbLHDa7uqaa", "uniqueDisplayName": "xqXPKuNAeKKjcKgU", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "63PawPB10d4KCtC9", "password": "mqs8uXBZ2Kxk4a5F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "eKFm3raYpWl0MfF3", "mfaToken": "iAQb4Iiy26m51AwC", "newPassword": "v4UKmP7eczfnYgOq", "oldPassword": "XhJZ6DIokID1ZFk9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'fRCHfId0Dhnin8Rx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'nO0qs4FykFXDdcUu' \
    'EE9wh4CEOrPY29A1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'L1Xijb7GTIFWcZWK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'cGHG9MBp1AEcNUzf' \
    'WwpdraZO1lfHzX5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'HNiYaLYUlRZSLj5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'wmP8QMJJJn2Lqw6a' \
    'iKZbUJQ92BTViMMF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'ji1GmfmwhN25xGSR' \
    'RZnwlbMGheYVteLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "iIKPjokv6HMQOekL", "userIds": ["KHziTw5M3KvzpUEc", "p3cp4fWJlLrbVQce", "Ky5JZK1rVpGdpzlw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "FNJyyLozi8eBqPD6", "code": "pfcv9jGr7b2hHbaU", "emailAddress": "EtBnsggbEVNmymBN", "languageTag": "r5C2BOjUiOQVEbp3", "newPassword": "z13pDy371QLVtDb6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'RZXatSimmKudqURk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'yz4E3EI1bSCYaa8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'SNQdhrnvuDGFiT4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    '6WQQwsTHCgTvrGll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'rcttK4WgzdUhB2Yh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'KWidqRPQ1hSmShNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "SmVFsmFW74Dkabvm", "platformUserId": "YAT6qTg6ZOaTNC1L"}' \
    'AentTXWyBmb2Ir2y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["OaVvE1N52PwdeTQh", "Mz99aZ3fza0rlzqN", "hVNwgXBCZr4m1Upi"], "requestId": "zE7fm00IB0YnQ5xp"}' \
    'jcMxUGokG4VQKR0I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'tcCnXFRjhk7tzIHq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'ZpgJqlw441XUfp7A' \
    'Vnf8BzBBqEvMtJop' \
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
    'w2r5pKsXnIYkKH6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
$PYTHON -m $MODULE 'iam-public-forgot-password-without-namespace-v3' \
    '{"clientId": "NrEsOlIFw6Fqa6YX", "emailAddress": "BlVXOvZUgW2ZMVJh", "languageTag": "OyVaO1sgnJF31EUL"}' \
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
    '{"context": "HtVtkZrE0YPmtE6f", "emailAddress": "cv3nPROvD1FiqEUh", "languageTag": "sD6QxKzbZ7xvbLKN", "upgradeToken": "a3OJMFdrQmX2OFLw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    's9RV6lY9IGsZjUsS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["UE7NuCYEOWNkgUfe", "6pVMS5m8aRIev5s4", "q7UwwraCDr326Q66"], "oneTimeLinkCode": "cxtjNTXsCsfA2pIW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'zC6nrUavXt7t0lls' \
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
    '{"languageTag": "H39PXWtk222GY7L5"}' \
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
    '8lP7drhfBjZFgaGU' \
    'fhy5TZFoyfZ0XfCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'PDcH66JWKmTRqrvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'JIrFQWIDC6PHVsnU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'ueYd49OFDlbdIrxq' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    'xAtw8vLsYBHN6M7O' \
    'pcFqK4FBJG8BfuSz' \
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
    'ytkPE6mw3Zv0zD14' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "WsQt5oimAfS3Sh33", "deviceId": "TufYVdPwYmvZkT3z", "deviceType": "o8gxMqM1wUdXsMjU", "enabled": false, "endDate": "cx4istsfrFqHu6f5", "ext": {"4mL4hAfiqX3ThREY": {}, "kndZIrjnjuCHkx8h": {}, "m2178A4NUDAdwt7c": {}}, "reason": "j6v5DLEk9Rkumkrn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'Y4LksFD2le3UGhQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'zMMHiVQ6covYDuI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'l1d9YaLVuL1mLP65' \
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
    'pId36F25c13PNqPn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '7XRlnqiWP9WWQMGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'm0biVjE8A3EsOz8L' \
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
    '{"count": 60, "userInfo": {"country": "ilLbKzQFBHQ0FHWO"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nJcyaijSCsFa6ipR", "policyId": "u1AaFjz0yLelzMzW", "policyVersionId": "iPzugdDu6rxIv2ZM"}, {"isAccepted": true, "localizedPolicyVersionId": "dlq3Dkm52TA4zLBS", "policyId": "h2QJWgWvIZGJOPkJ", "policyVersionId": "vsZhfMwJPOcRFJTe"}, {"isAccepted": true, "localizedPolicyVersionId": "bAMIJChPyIhVPmMs", "policyId": "1zqz6exSNhnabXGs", "policyVersionId": "0qawVMpRu5wP9CTL"}], "authType": "EMAILPASSWD", "code": "xi1BjFMOIsJO7EUY", "country": "asMTHGgaQ2UErhcM", "dateOfBirth": "puZW4KtmXptKHAev", "displayName": "0UqYpD2R7YqidgD0", "emailAddress": "wxHpQyntHsI11lC6", "password": "BXyQW3eG0BvuCoP1", "passwordMD5Sum": "hIpdIWajZTyB7k7Q", "reachMinimumAge": false, "uniqueDisplayName": "zNJHkXmHB9cu1ZdR", "username": "IZ1hHCpApGunPxVv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["yQvciFGxJNOaveGz", "kTPehZVmZi1UYM7B", "ApA1YByiGkJR30lA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["inKfKXqYE8GuKFRw", "AkAyYY8hSNUTpzSm", "7jdrPdkMMoylrI7D"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "pmCIb5JWu7DAXtIe", "country": "slnM3lJQMDxu7Auj", "dateOfBirth": "8cqdtNaFO3ABy1Ae", "displayName": "DryAFewcN6U8vRJ3", "languageTag": "ebbfa3ep8cKNlb02", "skipLoginQueue": true, "tags": ["zQsBlwn2pN8vqhPm", "lYgFAu9gD8vsiDfz", "K1gMLvJ1KqSZCanZ"], "uniqueDisplayName": "aGzamJ8JZ6lV9zps", "userName": "DX7CWEoHK3yLZSpy"}' \
    'dGfNnNFMfXpIPlca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "ufemZ4xlGtWc5UcG", "emailAddress": "IGpI8YhyHkINdPYa"}' \
    'mt1NNvdmy7qa1StM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "bwcUsu3gJ0yHA6KD", "mfaToken": "H87AmGMvChuhxZJs"}' \
    'DNCQEtOnYVE7i77N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'Kczg6MaoVcixj92J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'kMWuFc2x9p8sArSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["ypvu88WyRMMRloXy", "STO9W3BEI4eB0PHo", "EfIdFP0QarAdoCQo"], "roleId": "VI26D2IdXV2RNnCR"}' \
    'n6spzE0Dj97Arjpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["7IRveArOFED1MAfV", "ZhADFM15pfl1N2CN", "Du3DpGXJrOgVnrne"], "roleId": "QPU35uuCoR3Wc6j3"}' \
    'UqRICnmZxob6vepv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["gW3Vmnz3WsgPS6R3", "Uev7bCsylPZDz1fi", "XmZReVZ4inDP7o0A"], "roleId": "eler4oEJEmHHU4T7"}' \
    '4NkroVwJFRFLnsSy' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "Apjt9Vvn7MyjPjMU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'oUC9cUOeLu9OVb7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'BijwHPyvaMEDKGCx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "GDiDmatCvCembJFN"}' \
    'yIwxPt19hjyI7ALy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 20, "resource": "HQ8V4AejtUM6llcl", "schedAction": 16, "schedCron": "Ywb6nMhhSCXGzZMd", "schedRange": ["NwUYOkFXnGtw8Auv", "UND3dJ4hbxnIuxtr", "WKvmz0RzwVRhRmll"]}, {"action": 33, "resource": "0j9IirMeP7fy5Y0R", "schedAction": 17, "schedCron": "n8IKPZ1kpSeRooa8", "schedRange": ["4wgi9Qjy4LtkYsyC", "JFj0ayzojVNIrqZC", "tbJmJSU0agO0PXHC"]}, {"action": 50, "resource": "QFxY4AHLzQnClUtk", "schedAction": 66, "schedCron": "b0SoMLqijtgLSGTn", "schedRange": ["WHCZ6XwqnOeIUKAI", "vQjUxtk82oOOkHmC", "FldZ0XAvFitLhI0s"]}]}' \
    'qjfua9x08SJmn2gM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 34, "resource": "wBmEY4lD14f0XIJh", "schedAction": 42, "schedCron": "DCVegPEDDuHxwEbP", "schedRange": ["LfnjlMfDJxP4S8TN", "hXBTiwS2sBodn1p1", "MJrZv1itpBPRbtgU"]}, {"action": 79, "resource": "AxQ8GRgWKOBJYYXg", "schedAction": 64, "schedCron": "LYQX2ryH4oq6fdhz", "schedRange": ["arU0VtmwcYLuVxqv", "aL6vdJr0yQVV1r0L", "ACcKuAd2SElOn16d"]}, {"action": 47, "resource": "8VMGk3b5E1GgAqoQ", "schedAction": 21, "schedCron": "J0Lj0VNzr8kTl05o", "schedRange": ["iubu5HHlb7VI1cHN", "U3pvbpyJTgwl3ZOM", "pzNQDtQNlDFMazvR"]}]}' \
    'X5v3UCobMU8bzcaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["0Qv0dFMnEcDHueqA", "KTjdRpgYeuitqLYJ", "7E9mP2Be9WZ9kuWM"]' \
    'nRcGzbD5iC34s0kT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'iXwPjN8E3wXz4Q1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["3hAG9xOOi4DVUYo3", "7I8Mgh1DJARpi5Kz", "pbDPfXdGvodrl6UO"], "namespace": "wYZJq3OJhzlgtX87", "userId": "XuWOIpQwptcvrooh"}' \
    'Lb6q3F16PO9YdwqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "szRnwVX2rvVr6DpL", "userId": "OyrgsLZV9arTxBgn"}' \
    'OqH9lyv8wx2JosSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["Lipk5N6e79zCfL2a", "r4zJmB2wifDA7LpN", "D5zXLhrmEeBwTzs9"], "emailAddresses": ["QmLReEZ0r6n6anry", "oVkl4tChuDibBIH1", "dyZPHtYHKqpl1Xk1"], "isAdmin": true, "isNewStudio": false, "languageTag": "dFvYqfoYzBc16XXX", "namespace": "uoJGXCyzA8a5uh1L", "roleId": "dVOaWOjRinmMTxEz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "6bdDFDqRMyTZOXYR", "country": "C3gIRiYFpDlAEyVu", "dateOfBirth": "vyXITMn2F86xZRHx", "displayName": "nOP02x00SvR2yNPm", "languageTag": "s1DdUL5bc6QMB9Tt", "skipLoginQueue": true, "tags": ["XqeaYlaYm2XGN51w", "xYTCHYaW7BAFZnpx", "mzs0AQYJnB9w4rko"], "uniqueDisplayName": "p7LL7Yqjh4lgGGsr", "userName": "Jv0EyLkZej5voHh0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "KRDJjPEF1LpvoOxT", "mfaToken": "54t5Ffna72ji4B86"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'NKZ0tkEWAqM0EZht' \
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
    '{"factor": "Ip1XL7HL2nKoPXxL", "mfaToken": "MtU6hLliy7em6ox8"}' \
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
    '{"factor": "O9f2ojEQrZ645LOp", "mfaToken": "aGFJniJl9RPULWpW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'w5UQBldfnMF2X9wb' \
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
    'Qz3euR4MhLQs8Xli' \
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
    'OoWqixFdv5aDRSnC' \
    'rIQ2kChyafmo2nIK' \
    'r9krylalbZWuO0OV' \
    'wGUgR3PEWI0N4k2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    '2caqaRVdR05rSilF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    '29Lpg0zAUzpliq50' \
    'demc4rS3d2v2ibO0' \
    '4gNmB9r9MA5lA6x0' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    '6VkZP57PyBLX7knj' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'y5qEOp7hzPCxvetF' \
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
    '1aHAuVZKYNaKhi81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "nO4RNjvO8rZ5NL7E", "platformUserIds": ["bburWcSjdGGqd31L", "6KqJTL11T4vlBRDj", "j3FKvRIguqDEJfdx"]}' \
    'sQXLRJRONKh0R0RX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    'J6anzAeqD1HlhQ1r' \
    'qjRECHyhLYGnvEdC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "4VA9ZxbKQDqG7UJE", "policyId": "MeseC0hnoI1dph0x", "policyVersionId": "gVXvWuSKhoOQCljo"}, {"isAccepted": true, "localizedPolicyVersionId": "kOXwHnS2VOESYx49", "policyId": "M1JdtImLI5eTuHqC", "policyVersionId": "NtVlNaGzoqpAFVT8"}, {"isAccepted": false, "localizedPolicyVersionId": "X3etMjv8jskCHfqF", "policyId": "5uo9BT2QqCxWZGjD", "policyVersionId": "Rc27d9a3AaZO1VcA"}], "authType": "EMAILPASSWD", "country": "0I9Qm4xKek7ZAZJC", "dateOfBirth": "k1fizRJy5JoIlHjT", "displayName": "Z4mDmXZIBTi05akx", "emailAddress": "BYozWzUW4RDVM8Y4", "password": "PcXDH8RZqUjELC82", "passwordMD5Sum": "uP1nMUDAKQEkOvO5", "uniqueDisplayName": "2VTPFFuLWL0HQkTu", "username": "y4fU6Ejumf9ltGde", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YbEZwEzBNPCCnVKY", "policyId": "p3EQx9pSofiZZNcW", "policyVersionId": "BxK2ScBMbpsjgGDm"}, {"isAccepted": true, "localizedPolicyVersionId": "RaYf8Chh5tiLsXIO", "policyId": "SE2JSDRlSX5uOgZ3", "policyVersionId": "Msm86Jr35oZQ3WcF"}, {"isAccepted": false, "localizedPolicyVersionId": "ORF2pLQCqPGUmF8p", "policyId": "QCrEqdstmoPJurb0", "policyVersionId": "FVZK7sonuzTm1gse"}], "authType": "EMAILPASSWD", "code": "PsB00G8moKbti7cq", "country": "KdwnwTyTyr1XXDYC", "dateOfBirth": "lbgXA2XATEcyKtSz", "displayName": "6QsS6BHqs2Z5aknp", "emailAddress": "CHXIr8JndNzIiCZi", "password": "PRCujrja26Ygd7A1", "passwordMD5Sum": "555BielNg6kfRgfn", "reachMinimumAge": true, "uniqueDisplayName": "0wN81CLC324P82gd", "username": "sOb5Jp6oxvvtB4ai"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "sSfgNQjKhrrrStCg", "policyId": "99ejNACAFAJlcWkS", "policyVersionId": "5jnhMZsQ8CVsHXHY"}, {"isAccepted": true, "localizedPolicyVersionId": "MVUlRoYFks2ULHoo", "policyId": "isOHhyiZyNxeNJcB", "policyVersionId": "IePMwBjK11IFRybW"}, {"isAccepted": false, "localizedPolicyVersionId": "OO0CVqXF6bMzRd2Z", "policyId": "2WjutGAptSES09Zc", "policyVersionId": "FGPCokMwrtVvGhHz"}], "authType": "EMAILPASSWD", "code": "dHMJys9gtFxWSkvz", "country": "QZjQrgnXc87G37jh", "dateOfBirth": "ABEz5T57ICJiWEPn", "displayName": "ZsQ3NsS8VgyzvujT", "emailAddress": "8aEay0LM1IpMDZuD", "password": "LXNscwbXgdwQnMuR", "passwordMD5Sum": "een3aYjhar5GRzOA", "reachMinimumAge": false, "uniqueDisplayName": "ociDSNS6hf28Tvyy", "username": "ZjEMbPRNKUABS8cy"}' \
    'K8SnSvsUGLqYJevK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "KJR5KWRgHuLJEAS7", "country": "pSDlIS4N3VRydtvW", "dateOfBirth": "ZZFDNIc86TKj3grg", "displayName": "VdqSpg9xpXCh79kx", "languageTag": "pJyTba2Sx7lPUWhf", "uniqueDisplayName": "LYtrkZ2V3jzXzils", "userName": "lRzP96yJ7RbX8fkG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "3hcRbcSuSkd72wzQ", "emailAddress": "Jjmhy4f9F9usH1By"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "GD8DDRW0KNwlKcve", "country": "utOHZ2aWSL11msU7", "dateOfBirth": "QpcpkApFODOqz4FK", "displayName": "RWcvJIwzW53tKi9m", "emailAddress": "xhR8RWtFcnNAoxNP", "password": "XPlSv6kWXBTTodpL", "reachMinimumAge": false, "uniqueDisplayName": "S73LrEja3XlbCcD2", "username": "bQLuFwHyfWs9J4Oj", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "m6OQMQgWL3hmjUyd", "displayName": "sgdt98KfbaQpgEAK", "emailAddress": "KLcKbPxGvL2c7Kal", "password": "LFWBzkHql6eJa7PZ", "uniqueDisplayName": "2MvexshOyL8KXBfL", "username": "q1zWLmtFhefMqfbE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "0DZBwK4s4YGhc9qj", "mfaToken": "sGzedPNuJ4GH001y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    '8DGO7yuqGFaSZmLn' \
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
    '{"factor": "l13NthHP0LDshHSW", "mfaToken": "tyrOFmeGGIRRLbsm"}' \
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
    '{"factor": "gDO0TIQbgg12LHWq", "mfaToken": "VdQIiLCN04Qo69tj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'PCe7O061ScAQ7gSO' \
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
    '3GHo6ESwn8otu3o1' \
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
    'B2P8cdPJAnmCFUZd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "H9CHHozRud9g15dS", "emailAddress": "BhpLRxydIE1CQFSQ", "languageTag": "S3RD8Q6YcgyTtSOU", "namespace": "4FdUceGtntm6j0Ap", "namespaceDisplayName": "yricmsku6ryZK7UK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Yw673JvA3stZ6FN0", "policyId": "omme6HiOrbuq9cXa", "policyVersionId": "r8FKACMfaESKKo0R"}, {"isAccepted": true, "localizedPolicyVersionId": "MIxqQycDpbOcYim2", "policyId": "syYc8YuKlQjnj5Qj", "policyVersionId": "rVi62ITQp6NklXSU"}, {"isAccepted": true, "localizedPolicyVersionId": "kHNYqepadIS0zRgi", "policyId": "re2ntrz0FUDXjV0G", "policyVersionId": "mcFSjmJGQU5YRHjM"}], "code": "z3bo23SF3Xkwdkge", "country": "NE7pA2BmAcotg9A9", "dateOfBirth": "VvbcAi4ZmdXz2NXf", "displayName": "bCObijIWdRSDSq6o", "emailAddress": "IY8wqc2OcvjggLVw", "password": "AQMWoB0LkwHKKIT2", "reachMinimumAge": true, "uniqueDisplayName": "nvTuTrRI8Z87U0Y5", "username": "R6IUWUGWDcgSJ29T", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
