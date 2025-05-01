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
iam-admin-list-user-id-by-user-i-ds-v3 '{"findByPublisherNamespace": true, "userIds": ["BqQsBpCJBIXLGYcw", "WVRK6UKk5ozrXA4H", "ZHNyq9odanhR1Zrm"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["3thUvV87yfkycLSV", "dleSaAylsmLYe2ph", "YOgT5kDTyPl3dKF7"]}' --login_with_auth "Bearer foo"
iam-admin-cursor-get-user-v3 '{"cursor": {"cursorTime": "NXEjrJMki8jvc3P8", "userId": "Gwjg3IOH0SDHgYKq"}, "fields": ["xJiFJdrmj5vhzgsJ", "wex7wq8ZPlXNaUNg", "dY2vfJuje5cPnmGj"], "limit": 94}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["N9AWtLK9TFgi9j2X", "Mh9WpifqjNjLOtNQ", "ts2yxf6MLZJ2jZfZ"], "isAdmin": false, "languageTag": "Ji9DaMrc0WFgKjE9", "namespace": "45x2CPVYYG9WvoGm", "roles": ["AmvaVV5YfxnUNcwj", "r7gSGhnfuF4WZiQV", "ICVpWd3UM08gMXhd"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'f3juXW4JprIb3CJC' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["AtvSG8Cfa9dzOJDG", "CTHIOFjeXbsSgR43", "kIDzxBwqRJTzrHNZ"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'WUsq5lQo2jy29EJi' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "gqYhyVhURx1yPecz", "country": "Rpdk0HATGylx2JG2", "dateOfBirth": "KNGfhzfCTxxrsRRL", "displayName": "ee3TcJ7DQIi45aCD", "languageTag": "HN9mVug2zkVf6Kgp", "skipLoginQueue": false, "tags": ["lbYHtbPtaxvagSlp", "GgVTF6VeDAPOGBww", "eyFfXEOEAEtbag82"], "uniqueDisplayName": "KgBgyCd5vjkfz3eR", "userName": "4DtNp129hzBw3xLU"}' 'cCEt0DzmkJq1sml5' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'bYt76BNsi4giR943' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "4WpKKdzxoufCNlFo", "comment": "OcWQQy4bjmQeEweo", "endDate": "BHTdwAk7ZQnbqY1c", "reason": "QwVEtAr5kKKAo9MM", "skipNotif": true}' 'jLftC3sCS8CpLCqP' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'D9CeDEdCnnL6Kt1B' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' 'r8CDapjwNOl4k8rV' 'Nrm8drv8QD2JOe2N' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "tz7EFvowPgIGuetx", "emailAddress": "FMqXCQMAqQ2ZRGzN", "languageTag": "trThFa9XU8moslui", "upgradeToken": "HZJ7O8sAQ32wj9ua"}' 'Dzsr9xYiWRuuzQJi' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "Lc1eI9w3JEhxPGbE", "ContactType": "k7s7gw07FlounC3v", "LanguageTag": "JKBC7SwgoViPeIB4", "validateOnly": true}' 'X2vamIRZHzsIYOCU' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'oiCXNjrdQL2jdx1e' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'Iba1sB0HsJ06Dzfb' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 51, "enabled": false}' 'Yt4OVUyumBeIqdQG' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'ZC5kM03HHijsQRj7' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "N8IAjmsonjj0ZR50", "country": "BQ1U6aFD3O2kXQSc", "dateOfBirth": "58zgZVl4gIF7v3qb", "displayName": "Zu9M3OxqVAT4H1lR", "emailAddress": "Z9Z1JBrHRzEOtIxz", "password": "Pqb6n73m0jiaDH86", "uniqueDisplayName": "d9rsKgzCsMulpB8H", "validateOnly": true}' 'UtVVaJCiLgKOwrSf' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'WhT5B4WedopzwSlu' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'BtRFPKThyGnbjmPD' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "KFS6u9FHuv1M3qfc", "mfaToken": "h4SqIV6LQPHlaeYl", "newPassword": "4csFq65cU66yJaj4", "oldPassword": "ovoKWE4EW0sw8v5p"}' 'eiuxoBJATauyD3XC' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 20, "Resource": "VMiyEvMf9yilUEuj", "SchedAction": 22, "SchedCron": "LmQtYKmEMzicbuL2", "SchedRange": ["S3RiW8dLTCBfGUdV", "EdvdQL7sVwcZ2Pof", "aJoSqtrEOqxH46fR"]}, {"Action": 93, "Resource": "dbabJIkNnt9P1Tkm", "SchedAction": 81, "SchedCron": "8luh4dpPRMDbUXBW", "SchedRange": ["TbpAogG2wlZkLhuU", "5FI8NijFI0GKwJ3v", "fXlsAMy2Zp2UAGxH"]}, {"Action": 28, "Resource": "vqvQ2NbmDITuymTB", "SchedAction": 18, "SchedCron": "6JBcGp9Rx2RfcRhX", "SchedRange": ["pmeeHdvphas9S7iv", "HEoLbUMM47f1UreU", "pxEkXIbE1ETzRJZK"]}]}' 'Mavu4Ul2IaieEbPS' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 63, "Resource": "ojDVaZLpx4kEWYkO", "SchedAction": 31, "SchedCron": "KrKUMhJrASBh61hm", "SchedRange": ["WKSSrF35anDGvur1", "9V18oIrUKXttgAI2", "QdWJFLmoPEgd8EMs"]}, {"Action": 32, "Resource": "2HEHvVevhISjbtBJ", "SchedAction": 96, "SchedCron": "AmIHYbsxG5N066FX", "SchedRange": ["b88SbLOa21DiSFsm", "0XXQJWszvTQEuALz", "DNp1SZ58aDllwzTR"]}, {"Action": 68, "Resource": "gUSMM5au8GJT0mkV", "SchedAction": 85, "SchedCron": "nml5BidsK9dCEzhV", "SchedRange": ["nOv0PQbVIaKiHfoe", "orY7A1otGFyv2SMj", "bEr50qGdCZIc6EFq"]}]}' 'BKxbS7Q2OgRucL1j' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 45, "Resource": "cong6eNERUf8kjci"}, {"Action": 25, "Resource": "Ctccv9Gv4tOcbnuC"}, {"Action": 33, "Resource": "l5XCbkOfHaGr5kda"}]' 'zlypvt6lSLfU7HBy' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '68' 'oHiCV4GUOnXpapXQ' 'GRakUbcG7PcR4eiU' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '3Idi55jNrGNT2VHT' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'KuIT5FwwHj0Ur5F2' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'PWGTTD81xhNP4t6k' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'YBUjyXAn3bWQF6Qc' 'AiJpXIrgroixptZh' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'ckUTGkcBOE4qMcH1' 'Kyi8ZFvGcV8DY0XO' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "kDstxZcY1HgAnZV4", "platformUserId": "IOglVLqb9lGAJUg2"}' '1Lt7JwgwMUSuC3Ba' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'jy3BcEMCtQs2FcEc' 'vVAyId6Cp85HVDsZ' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'BQgOnXuXsGThYZrm' 'm0wrFMnPpWgrQD4h' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'Ek0OLjYsnignE7Kc' 'MF7fuDbzRRYMNXWU' 'sp1tOibJY9aL9ie6' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 'vvMbiNURrlm88QlK' 'yuoya4JgakZyUV7t' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 '73VnSFbuxd4KYZ0j' 'k0UZdhtnKu9oTc8p' 'VkiyGsj5JdXzRxfN' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'EjUMTs8WIObJBTsv' 'sw76uISRX0bKVoWt' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["oUW1P7ocuBAldDSU", "S7Haa6unq1yQOSRv", "yiLBRVtIDi2piIQF"]' 'VmzMidw70KSahpYZ' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "dKZRyR9AX7JjxvNZ", "roleId": "hM84DiZk6ySrB9SV"}, {"namespace": "FctW7YS0OkL78XeE", "roleId": "AtALFI3v8yha4pd5"}, {"namespace": "A7MYcpBD6lKNb8Rx", "roleId": "vN2u5J7baOeLH19f"}]' 'qBwNbNe1ffYRtIvQ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'aKyevWYtZjK6J29v' '8MpBSpo3AKRmnJkz' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'JHAckUyBksYQfDm0' 'RNFwiz70tRVLMlHi' --login_with_auth "Bearer foo"
iam-admin-get-user-state-by-user-id-v3 '8i9gOVqajUWrgEsW' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "TZkil67kRngoUa83"}' 'ECh1gqPeS193TNNz' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "ot3sVli3GN2XTrFi", "password": "bRAhzzEWzWlTY70q"}' 'dgJRvpZrSpWX3KEe' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '2BjV00ReCXFffjJJ' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "xlgjzIhpgOoIOD74"}' 'V21HWDAfvXwdxbyp' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 '4HAPbBbNPStVBUpK' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "A2ODiZhbfb8QqCyK", "namespace": "1XH9D6vl5eFdFfgK", "userId": "46GjCWaP8huTmnq3"}, {"displayName": "FGQn3Ahu5wxq6oJq", "namespace": "4mChmQHQhO9IKBXD", "userId": "FQfXFD58sG6uDhFY"}, {"displayName": "lrzJBYSeMuJfQecu", "namespace": "tjS029BiJWOG1m7M", "userId": "Kclr5igjNTVItrH2"}], "members": [{"displayName": "X78hxJgaVfw5Vnyq", "namespace": "8OzTE89WDNoMcOmb", "userId": "fJrCJQIj1haAosKg"}, {"displayName": "lqaCXE9ytpIO8btO", "namespace": "3OwNEGSW5TaW4to7", "userId": "QCY2NGGvi9kg3rMI"}, {"displayName": "zNmhJTNQjKlwjfJ3", "namespace": "TJ2xVpge70WsLfgb", "userId": "ZieRvJI5sT9DH3Df"}], "permissions": [{"action": 77, "resource": "zbrddqcKLa7LevxN", "schedAction": 69, "schedCron": "YxrBE9jlnTgtgW33", "schedRange": ["wDwD9RKvQX4yFQFd", "rRoM6FoqCYw7AlxO", "6qdFpc71sSck3ggZ"]}, {"action": 100, "resource": "RxNmvvNtjJNQepUT", "schedAction": 66, "schedCron": "rvMEPtpsSNcpK1Qk", "schedRange": ["B2Sy8Ww79LVeVskq", "eUB7RSayqGFguhh3", "bvadRthdbVApebRA"]}, {"action": 52, "resource": "9rW8i8krFWJhe03c", "schedAction": 30, "schedCron": "ZOzx6iCJTu60Iifz", "schedRange": ["Mhkk5PxsjqbCKpMv", "2Yky9DYkD2sIllFt", "BtXJKG3rqBmILhtW"]}], "roleName": "m8RQvRUbUDSiefGE"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'dLucrtO2gCQD057D' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'rDlgC2nzS9SiGUjV' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "w4v3q6JRHcn7KaoC"}' 'EkRdo6qHYIZWnXqQ' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 '1oHFJ9Q0vqsL9Som' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'qWsGA76yxi0QzZWf' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'mP2sx0KO5bEJaPnA' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'FjsodyJQVVBrShGb' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "IIuqK8C403HgoXCR", "namespace": "6XOMXwKdfqk8T4QH", "userId": "K30EX0FclpDl5Hsu"}, {"displayName": "racO5MnjnxD1OXkx", "namespace": "ShFVQTRekLfjmy8z", "userId": "osRCRgVwbrQKmb01"}, {"displayName": "yA7U7dGMjupZkZQY", "namespace": "8CNyT4k3DIbfT22G", "userId": "5NpE130YWSgxpKWt"}]}' 'dtdtVW9anENmxb9e' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "7vXZV3ig8Jg5VBye", "namespace": "I3ycMcYYBixKJXCI", "userId": "SQdwec1m8BusV9tU"}, {"displayName": "h74KVo6Xqjz2xUKL", "namespace": "NWSmYyVvyelIJ8Qg", "userId": "aLMqi836ULa7cfZl"}, {"displayName": "4VuY6rsZyo6CBRRn", "namespace": "oOikIxXKKIR6kPms", "userId": "wm5TCAU1cKApdJDn"}]}' 'E73GLmSZns5owBho' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'Ug4LsGP6KLPXkvUv' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "2XiXaBzsmaxjTZPl", "namespace": "LitytGka7Kv5TacQ", "userId": "KF4OlRGdmXxETLEQ"}, {"displayName": "rr3KCAV9alq3hK1G", "namespace": "4kKooSNNUZuiynZ6", "userId": "4IwncZPk82GF3eTC"}, {"displayName": "0vzZUDj9dzGgGVxo", "namespace": "9OHgfHumyfuBNise", "userId": "cYbcOpR45VDlvSc0"}]}' 'Mr7ImwCwGqOf0bNs' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 23, "resource": "KvKyj3MqS7Dcmtfh", "schedAction": 14, "schedCron": "0eObbrmgjhWK0x0Z", "schedRange": ["idAJ1CU1eD1La16B", "w3JbUnUDh5yGjjv4", "Mwrv2vancmR6Z7rb"]}, {"action": 62, "resource": "1A2E9pX0BWCMqPsR", "schedAction": 21, "schedCron": "XlDhG7BrorbKIKuO", "schedRange": ["XJPm5ztrr09CDA8I", "j5bGKSuopWQbaCvd", "PSq8Z27GpvHCDx55"]}, {"action": 73, "resource": "cnGkXk17QPkJHRhm", "schedAction": 76, "schedCron": "9IRIpDDubntPCFxf", "schedRange": ["eoW2NdSWzOXjO1NQ", "UqWHBW78XREZCiTN", "Axq26gZrPqCsSDsp"]}]}' 'vgM16sZ6rjnkH4Ex' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 83, "resource": "rbmoRvWnfmGFy0eU", "schedAction": 28, "schedCron": "UDEOF6gp5UfmjtiV", "schedRange": ["bqJnZcrqrPye7fCw", "i7Il2wIFlHm9N6ow", "MHMtJy1Oqn59tEGm"]}, {"action": 41, "resource": "NYeUT5P0nx8TqSZd", "schedAction": 1, "schedCron": "5C8mFI9TnvzEqBNM", "schedRange": ["F9CZvPxT5zbreMc9", "fBoU3RHNDFjLKFre", "py56eW1kmb15QeIQ"]}, {"action": 64, "resource": "kP9U53z6joBAhAlJ", "schedAction": 66, "schedCron": "6dboSdhkBzAzPkt1", "schedRange": ["efGJeJaxyHYutgXu", "cx85vHA009FAb21j", "xeWXk80y9uxgVLGg"]}]}' 'K8aVSCN6oCETQ8gI' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["DRdD2wwMXwKVXGPh", "EJsc7rZpxaPHc9r8", "eToFmkHJ6BPOKFLx"]' 'IwKssw647YwDudnG' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '89' 'w9zIWsiP2JQ24meD' 'rwEuTyM2qohglzO8' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'AEl6A9sh2x2ur2cc' 'p7R7OqPqIjS4i0N9' 'ytb3c8pVZ8GlU896' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 '2e6gtn5pUARJM1T8' 'QwMNOAzXmyHEV4g9' 'P6a280S5RNB5dVCs' 'B7xL4axSPgPCiwLx' --login_with_auth "Bearer foo"
iam-authenticate-and-link-forward-v3 'CFLDixZwVtt3RVTl' '0tR00oQgcHdGGK3x' '76U1EIcklttmrpgF' '5szl0sMY8es36r1F' --login_with_auth "Bearer foo"
iam-public-get-system-config-v3 --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'gR70eNLHkVrEFd8x' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'ArWJuCAIfNBSHgpF' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'Nw9K9pmAIc6VSfE9' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'nbE2PMv12ZSRJkuj' 'xbCu1HFaj6Vxs3Gu' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'A4S1dS7H7yIS7b5T' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'SDRIoMg7Dc5APzfz' 'XDELJFaIaEMW5bhJ' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'yL72WDyhBsCCbnfi' --login_with_auth "Bearer foo"
iam-authorize-v3 'hnXKxGxaupnTTq9i' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'z1K5M1qgFddYvifG' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'HawNx6yhniEHLbEQ' 'Kc0aUvrKXDIjYC4d' 'f9qswSlpCI8Dhjlx' --login_with_auth "Bearer foo"
iam-change2fa-method 'Uyrs3OSesE5p0DwU' 'j2HKUvPYUcQBxMSd' --login_with_auth "Bearer foo"
iam-verify2fa-code 'OOsn2Nd8Jpa19GJD' 'K46Eehx7xasqMY9a' 'ulsL6NOV5agpS6A5' 'false' --login_with_auth "Bearer foo"
iam-verify2fa-code-forward 'KKlPKtE6gnYxmkmC' 'Wbs5qugklBUS6uwW' 'rCQt86Jrg8tLAJWp' 'cyNkUvqn6eXr6FNb' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'KJ05Orya6LSSUlug' 'IAknXcSaVYcAYp7q' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'SiDvsfMUOpWv46sX' 'vpOjrpRo4mYrCeQU' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'nYoID2UqO0iAXA9d' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'B4ib8HDOJ8TNiP8K' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' 'OXvGSrdkqddI3ezq' --login_with_auth "Bearer foo"
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'kbDseh4tJdoGcwMB' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'megqVUaWMJBjrV0p' '9A7tcHrV0MbJGr4d' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'rgkDuWS05m0pGzaz' 'M2BUXnzUEWTiKMJA' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'f6AgbiEDMfCckWog' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'E5gcfF8AMGZ2FBS9' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 '3Mg6TKwdRMraDLrw' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'h3d0ykRGkgqUNIbJ' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'MJ9ABbKVWO2YEDiq' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "kwKbpdk7wlDngNiP", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "foL7JCcMo7GxxXdb", "policyId": "YCRexPekTsQxMTfa", "policyVersionId": "Sot7aohFYy4VxwHI"}, {"isAccepted": false, "localizedPolicyVersionId": "pJZPHCMqvcYmeDLY", "policyId": "Ezs2SQUdKr6vgqkj", "policyVersionId": "ycqclNlBORlC8Zkj"}, {"isAccepted": true, "localizedPolicyVersionId": "Fd6b5Jc5TETHcup8", "policyId": "GG0VCMTFJ6svTyo9", "policyVersionId": "RHget5hzB52BDFop"}], "authType": "xUwkMuSqQnKzDgDA", "code": "tqE3kuybwTQFYEJj", "country": "IYwqfSRy8GgVk77f", "dateOfBirth": "d1GS5YkyhAiAItnW", "displayName": "UmD225fp1egsx3Er", "emailAddress": "heNwqd5priclNNqL", "password": "yrlzrJ4QHbfnAdtk", "reachMinimumAge": true, "uniqueDisplayName": "6jLF9DIW2ncJJKpq"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'mgvUTr8XAtpOqUQx' 'zqJZiWi3KQffT5Tn' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "61A1xW6okIqmd87i", "languageTag": "r9op4YfGTno5oHzq"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "Y3DgykA8zBJX0rkO", "emailAddress": "HUkY5aSlqhYoSXbn"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "6l5xAzc1nc3eFm95", "languageTag": "0dtVAo7w4e3v5mh6"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "Rum5pbgEt39uJQpg", "password": "EtchTe3nt7t9ztpr", "uniqueDisplayName": "SfW9OutADrNGBWSJ", "username": "1zQKxVmRTawjiZPM"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'oZZcyGEHxAKDQher' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "3usApPdJPn9eIdhI", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9jQbHWkcVk0X28GS", "policyId": "54vl7gIKBc7OYTyl", "policyVersionId": "FRAJKySnC0cfPl3Z"}, {"isAccepted": false, "localizedPolicyVersionId": "zSBbs4PAV72u8AxE", "policyId": "2IQeoxYV4UcYzswA", "policyVersionId": "GpXqQxctuVaqPJGA"}, {"isAccepted": false, "localizedPolicyVersionId": "EZmuQrZ8GaQ4OZ2n", "policyId": "Dodm4TNs8mAj6IKS", "policyVersionId": "YFdJwgZsRPOzwuDS"}], "authType": "dGl1A2vaNeDiSqTf", "code": "mAVg50kOdJagEmTu", "country": "axlxgywkbdOsyxX1", "dateOfBirth": "tfW488oYUT4jyCVJ", "displayName": "0V8obTlGVThz4bm4", "emailAddress": "1oIcV33yjPxibDjf", "password": "F7JkjCVpZKMxkFkB", "reachMinimumAge": true, "uniqueDisplayName": "CODZ0mnOpPTVxEgB"}' 'FzG8tlkxWKCU1XN4' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "gl7yHvEqpJSrDXVw", "country": "CkhOQ161TFjROYJm", "dateOfBirth": "75VIuCOCkt2W1DfI", "displayName": "8QtgODk9K6DcMnyC", "languageTag": "Pn1FylWdaNV1VaZT", "uniqueDisplayName": "kbbuWiiA4UTDgS2S", "userName": "VEo5M80LLbku9GYH"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "4ijqOVM50tCqkZfs", "country": "SxAbDJ7sHCLup8pm", "dateOfBirth": "EosOXglQwwdeLVpm", "displayName": "XqRwVjc3W2ANmE3V", "languageTag": "VsQ1fm9EUdiaRjuL", "uniqueDisplayName": "sKZoqnpKwhpZVdw5", "userName": "UMa8ymxtEFLwELCY"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "2vIddlxnA1VynioJ", "emailAddress": "cAPwVHUGcs1ACMvo", "languageTag": "Y4jWH9dFmOHW0j9s", "upgradeToken": "uukPE4JwQONQ2vCb"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "Mn0Oia336uiiMTAd", "contactType": "uctvUfVwLahtRedh", "languageTag": "1SiZlOpIQ8GL7jBF", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "5OexAPzCG6ZKQClG", "country": "c1636nbfM3J9G40Y", "dateOfBirth": "62bCo941ALznQuHV", "displayName": "skfCjUK8GeX4Q0B2", "emailAddress": "Cj0oOmBmXu1KiTTi", "password": "z7yrIvQj2isN7bRw", "uniqueDisplayName": "cr16lW5YwgZpjlMM", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "nGptHUplxzaDa9PD", "password": "whu31d8eOdtrfq6E"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "CDD6OGkuLs9gNpNo", "mfaToken": "n6DKW9A6AmnQTNFi", "newPassword": "dImWONTvCPMGLdbY", "oldPassword": "EknHPKrZ7TiNBE0H"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'RsE0GHDOFjrfqJcy' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'xT2a7fCFAUzLELiM' '573TdtWjfVciuLnL' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'sBKGsALPuCOyphUU' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'AV95708zaP0wpZgQ' 'EvFzox9wHocX3DRW' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'obEoGr8W97KBedcr' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish '6PM51z7i0wQ9egK2' 't46EG8I2lTviKbOg' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'VuN3nhkn6QIesNoY' 'qvVsakylHikKkpOj' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "qwgKvfXXs8pDqm31", "userIds": ["AZSRkuw6q8FgqG46", "RsFK7eYlSU3vYcHZ", "ZjFegVnZOn0tk4IA"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "TSIefcqNEn4IZ0Dv", "code": "6b8WtaMVvLbG04KK", "emailAddress": "nh3jvW0Qp3kTyL4C", "languageTag": "sLwiWUMcpxn4B6Xo", "newPassword": "TNMuqZTHwo1IAJQp"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'b6r8ZeaSHwQuiH3O' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'zu4G6bXxp0gYZyF9' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'fJBJkSOrF9Dg4FcD' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'wBGyBiHewZkwEeuz' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'BBRSknxyWkZObuvi' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'g8sMuss76ezTrsDZ' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "NYUV48Oh6I45X7Hv", "platformUserId": "UtPYONZdFk75lkjQ"}' 'NHrjaboGomguUqeu' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["Zh5qtrRbNnGejdTG", "vZgN5hshSe5YmZXK", "EQLkM6o3eGSP4Htm"], "requestId": "r90TqGf0OyqJ9ibJ"}' 'MmRgoxNwp1lGkYoq' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '8HP1TM0tefVQPWX1' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'NPO5Wn7rNG8rGp7F' 'advo5EzpX0IttsRe' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'zyY9GB5sf94ALBmv' --login_with_auth "Bearer foo"
iam-public-forgot-password-without-namespace-v3 '{"clientId": "dncQkcZb8cWdVH9b", "emailAddress": "ww15zZsaYrJAe5Kd", "languageTag": "5QB96ndlO6iPGC9R"}' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "hzMC7V8BEphnRXnS", "emailAddress": "pCzyb8FkoxQbrPng", "languageTag": "i87K58pQswqKLutI", "upgradeToken": "NusOsa92F6iwkJIY"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'OLarmpWyvib9CDW2' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["1ANrlpuXD9H1u1Cv", "zWPcZwkj1l6bf2F9", "EXOBj7v8LHYivmD0"], "oneTimeLinkCode": "ekycMKlwJTNL2UCW"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'UtaAD7ZZx1iefATW' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "cDSqGYRMdz07xEJ4"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '0epssgJJC3CX0hpB' '1ZGMMo5DSozCuFsr' --login_with_auth "Bearer foo"
iam-login-sso-client 'BMtoOeLfMCYxSeeJ' --login_with_auth "Bearer foo"
iam-logout-sso-client 'Olxa395rghZwGhdZ' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'JkkGhYvXYMIyaEME' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 'qOpwetb82b96rsH7' '3hRfDgl29GWKpItM' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 't4GszRufkDFLYyNB' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "PlMrkse9SGcMuV5p", "deviceId": "hhU315LUC6HSMQ32", "deviceType": "UznXNd6ve29lqqtc", "enabled": false, "endDate": "bYWpqeXjaf1f5fjN", "ext": {"MZjKJ05puX3197Wr": {}, "MnJtovSMFw8X4zxb": {}, "dfXgunt1oMNZ68eo": {}}, "reason": "vHSH3xV3URIRVDYB"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'd6hMB0l7sg7IfMH5' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'u1ky1ZYvyeHmfoFk' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'UDP864shbnQ3bVvu' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'vpsDJXPCWkX4Kpi8' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'CJ88aMPGFFAQZbfb' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'mVTEbiRq5Juikmpa' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 39, "userInfo": {"country": "YQi9cfMCeNnu6OIG"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "PPLRDEXLXZWXvqNC", "policyId": "HvNpeMjMzguq6HFI", "policyVersionId": "qaqwH9J6JLb5f3SB"}, {"isAccepted": true, "localizedPolicyVersionId": "RjSf1srB7hGwGbUm", "policyId": "QmJHNffZENs9X0hF", "policyVersionId": "Mdzryvhc1YjHmmul"}, {"isAccepted": false, "localizedPolicyVersionId": "BIElc2CdRvBb0aGn", "policyId": "Mt625bWHb5sbX6as", "policyVersionId": "rjV7XJUOtHlzXNHE"}], "authType": "EMAILPASSWD", "code": "PfmAQiqRRC2caquM", "country": "RtQOILcaDqUITBHQ", "dateOfBirth": "R5ISNoFR3GUxdMuv", "displayName": "mL0UBfwzaaeP3Wd0", "emailAddress": "Wrb8s3GW0CY0vAfb", "password": "q8xoCurq4lpHXrbV", "passwordMD5Sum": "Bh60NUA2aKQwnXrm", "reachMinimumAge": false, "uniqueDisplayName": "OsE8VjvzhJwNX4bh", "username": "qCjlwrmsSRV86iic"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["IMyF7CcNu2DYn6E9", "Gk51kOTJZluTekDM", "CGUJvERxNg8djSb4"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["Vt2vKQ5vlCdI519P", "f2iogwxM5DZM0dgo", "zmco41750xdYQg34"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "WUV0WpmsQnp1n4YG", "country": "umTKOlDOy5vhSkxE", "dateOfBirth": "RZ2AQ1jvXYBar5RM", "displayName": "mmGdWl0wpj5tVfKU", "languageTag": "3D8WVPh0Z7YiGE2c", "skipLoginQueue": true, "tags": ["txAvtRQvqJacXR2R", "f4noXDFaEUkPUBnB", "0ZEJH3ebM71Tg922"], "uniqueDisplayName": "xiBgHSka0Pz7I1Wk", "userName": "Ia0oZ1nXpW1l70pc"}' 'ZgIn4lPghHyMEHBz' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "ArbyW10NkJFQxuMH", "emailAddress": "nfOlX6HYVEiaereF"}' 'CPJU2wEzUYUTmZ8J' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "SMeNmRocp400RZe8", "mfaToken": "Bzx9aGEI22BTCZs9"}' '7TJI8GPrM24F3cel' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'FgM62HQtgzQhO3nR' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '8j8DlP6OGbn8vmfM' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["YGLt1AjKhh3JMX7x", "Srz1EH6X2SM3xzsN", "rJzWBcdFlo7oAsOl"], "roleId": "fLB1J19b5rTfiL2P"}' '3r1a8KIJH33aKkPu' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["WD59MgTy1HA58Jt5", "NaROjSKFEuZo2ElX", "YSS4ezBRSiOyRevi"], "roleId": "DaxlPdhwmcH03yoM"}' 'xzRR6xd9rTh3urea' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["IbxM3Wev9pZQjWAN", "0tny16ZHZtuSJGQC", "rM7JEMRPkdTcAzkI"], "roleId": "lndN5xeayr3vUKMu"}' 'Iiz2MiAAKcvAXnxn' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "HerzO87cg7TqtMiQ"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'gi7Aj28qCRbwwZc4' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'ZS1NMkrnHs1Iyhwq' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "40MolIrnlkRVbcX4"}' '35TDYpkk2Gza6DrS' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 50, "resource": "2bzr6qQw6fSESkM1", "schedAction": 90, "schedCron": "OPMBb12gpmShlmIt", "schedRange": ["2nfhUaZGqjslu59G", "T2E6AacmZRXZm626", "POXWVj3KP1mX0iYH"]}, {"action": 37, "resource": "BU3Uk2tQm307IORT", "schedAction": 50, "schedCron": "JJsHZVsG6izJZruO", "schedRange": ["JvSRFLDSdj8elbtH", "vDU91DmHzwiqVPCJ", "5j18Ou3aY8nceFU5"]}, {"action": 66, "resource": "Lhjz1v0RBIO2rkJG", "schedAction": 25, "schedCron": "0Qj0ccMkdz6zPz3B", "schedRange": ["VHAqp4O9XSjap24e", "syjh6Wc3migf2n6i", "Qyr5cb5YL6fwBiaV"]}]}' 'Pmmn0T5uzlmi2NY2' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 69, "resource": "xrkPPdg3pXjmtpNf", "schedAction": 58, "schedCron": "bYVD8RiaTsdD4d3k", "schedRange": ["SbTkHPMUvOAUXkw3", "6cr2WJQqS7Tq4YIy", "ZAFQ6lZfa2jdNvpW"]}, {"action": 10, "resource": "1ugjr8mPkr3tZ506", "schedAction": 63, "schedCron": "vqcfSdO1nAjY5FvA", "schedRange": ["Db3GUQgci632w6LU", "rHuKBoNTpPQXDNHt", "o74GcmVf0fbCU9Qd"]}, {"action": 84, "resource": "ZJNF2hm0TqBQprHn", "schedAction": 47, "schedCron": "eAmDxP23qstMuikK", "schedRange": ["c6VNU8570siWm3V9", "sirE0JOQxWeHypqC", "WMDPRI2cCk8zHR8V"]}]}' 'yCC0EQwE0cXokXbw' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["KDtVmrYQu7hZvHfi", "T9s9pK8HuUY1QQHQ", "0NCEddJtx6GV01vD"]' '7lNLxlpvqaB9P9Ga' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'ukfCEIeSBLhTfzig' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["zHcRuJgYaj4I8Dzy", "h1N0JEKNoMtHvjM7", "X1fjzknv2HZMIL2P"], "namespace": "2bh14LroFTnAuujP", "userId": "eP9N0vdVB5a2XkS3"}' 'XQfMuzZh4AhZRe2h' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "gU56xtyJtnbTDXu7", "userId": "FbleSP5PcdOuq0m0"}' 'rvakR8rcwojLRjhc' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["aJ56nGlYZ2tod2BG", "BXjNyRCtPOr1FU3Q", "Zy3gdDms3kb1htW0"], "emailAddresses": ["UGJpwQZlXuzu3m9u", "67JjCDwg186hGWKf", "O9MnoT3t99Hmcxzj"], "isAdmin": true, "isNewStudio": true, "languageTag": "hTrcBKtU956hOg8o", "namespace": "ukDVdweG0sFHxTHa", "roleId": "2k60SzCqUgq1gLbc"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "IMevTmC631p7q794", "country": "bu49lINFTtERAXT2", "dateOfBirth": "h3hcQ2wV3ZbBTnNQ", "displayName": "nVUhA5WnzVZdj8ts", "languageTag": "yzC4QaLXp3o4TDra", "skipLoginQueue": true, "tags": ["4lwXqwPfq3VzHQjt", "olx64w1gyvjacKtG", "qxMnoAXRlcq0mYWK"], "uniqueDisplayName": "QYlqMmu2pvF6rP03", "userName": "bQaq1cT88H6RCW8g"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "JmGzDlqxtLsR2AGO", "mfaToken": "iPhNt2IdH8aYYUT6"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'mma833TDzk66ix88' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "sAUrXr7MXxCvyy7c", "mfaToken": "axz4MQrODLNlxiEj"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "QBCZx9DJ4V97SJLl", "mfaToken": "rwXmIGamRCARuFLx"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 '4rV4CXVMrDYKe2eT' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'f1axo16GqT2vSLLi' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'Mvcu39YZJypWzpNX' 'gnoKIz8O8NglJtZT' 'h280vflFMxIhlIT8' 'AgyZJ16MMd2bzOrT' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'n2huwPgyUzBUWiKo' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'NGtvyk5xEfrJDxKs' 'w5Xl7ZZrDZdbuvCF' 'BaVcohewKkVuGv9f' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'nhSEanfUYrMU6A43' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' 'pvC1cr5T1PSXhduT' --login_with_auth "Bearer foo"
iam-token-grant-v4 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'chzXDv3TAtBjP4HS' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "uiYCbG0UyYUJmNL8", "platformUserIds": ["p6AbdtU0CDrlQpKB", "8qoel2QK3aSOYdmM", "Dikc3Fjm9HoQDemt"]}' 'iQvURYZCeF30RT9r' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'BgM8o7lxXq7TkdM7' 'FVDCBcvVegrZddP8' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "cCEPjbUy7F82Adu9", "policyId": "BYRHrVTehrqgvEtE", "policyVersionId": "s2LpE0qfbvdU8hlD"}, {"isAccepted": false, "localizedPolicyVersionId": "U1v6zSLjm9zmzUW0", "policyId": "vPj90jmLTt5YQGaw", "policyVersionId": "comPoiYoQ1f1AYq3"}, {"isAccepted": true, "localizedPolicyVersionId": "6Pysv4VPaZWolXyp", "policyId": "wucUqqqff2iWi4yP", "policyVersionId": "3uqNcig6YcDA8Z3g"}], "authType": "EMAILPASSWD", "country": "uQHKersDmJLUHAKt", "dateOfBirth": "fXCKOna8DdjtZhh6", "displayName": "ofsUoRh6r0e0J6vy", "emailAddress": "qPw7YlmV3kES0Hi8", "password": "8UYgSV40OvY7apPC", "passwordMD5Sum": "rN5bEhmuHgKeWizE", "uniqueDisplayName": "pw1zN0mOYgGhHMz9", "username": "dddLWJWDuSYtCaIv", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "p91wYUJPbvzn8TYo", "policyId": "MDAaUXSuBQdvdhJo", "policyVersionId": "T0WK5ngNUxDKfZYo"}, {"isAccepted": false, "localizedPolicyVersionId": "fQKDZX6plErw0Gb0", "policyId": "ceCbphW4YMhJ0S50", "policyVersionId": "bez9ZLHW882riiPf"}, {"isAccepted": true, "localizedPolicyVersionId": "rJ0f5lwXvRNDBnmL", "policyId": "1KQn77hiP1lzkzjY", "policyVersionId": "Dw6mLBordrJkD6vy"}], "authType": "EMAILPASSWD", "code": "8UAJIHEZv5zyUUyN", "country": "JkvA5xF3zHtZSd3Q", "dateOfBirth": "zXhkrN4pWryt4XTN", "displayName": "wpp0ni1YfIgLZ4YI", "emailAddress": "zElrLZOBLHCKmLBa", "password": "IwlokbAFW8RgBUwB", "passwordMD5Sum": "L28BqM8UzvKqeoTi", "reachMinimumAge": false, "uniqueDisplayName": "KGRUMrimGAz6OhmH", "username": "OpCdr3WzDm3hJdd6"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "XCRz8KgqgwijYxpG", "policyId": "hsFArq6lolbj7QKv", "policyVersionId": "tVRCPMjr5M3vw1Gq"}, {"isAccepted": false, "localizedPolicyVersionId": "pgyJYwclb4gd4QgQ", "policyId": "ut2hiPuDdOPHcN9d", "policyVersionId": "rwqytieXpIZfr5XD"}, {"isAccepted": true, "localizedPolicyVersionId": "tmiKd9vLPP0w52JR", "policyId": "AZxMWdoleYNHXeOp", "policyVersionId": "aRDwYLge851PbK2M"}], "authType": "EMAILPASSWD", "code": "Kvw5TWjAh4gy41LL", "country": "zQ2IjY5PeNr4JmYx", "dateOfBirth": "H2qs28hePJjMp0TK", "displayName": "KUBfPNI9f2oLWDPS", "emailAddress": "ZexfKVxqdxmh5QWx", "password": "uQuI7gdDTDb3WdnO", "passwordMD5Sum": "pzTrRzCCafADJfWB", "reachMinimumAge": true, "uniqueDisplayName": "GdJvucDbs6UdccuM", "username": "2ykRj3WnyAaUaQBK"}' 'FedL2uduXvZUbQQ1' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "3FhD3NExUFipJsUi", "country": "DawAjgHFQk0VzWRN", "dateOfBirth": "FNiUn2yXMSCcHADY", "displayName": "pS861c0CJ7LzpFvO", "languageTag": "SF6xKA6yrnvXY5dD", "uniqueDisplayName": "wneac75C6S2eHsH4", "userName": "Y84hL75QboMHCtzE"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "F9FSeg6WYgtfuqJH", "emailAddress": "rs4e3RnWR30MdBZe"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "zfwc3H0qSbMq4GLj", "country": "8aGsH0qE5p601ak5", "dateOfBirth": "9yFSfdZIv8oYWPUS", "displayName": "4Zu0SbTt6M2Xizik", "emailAddress": "Ch6q0yq2WAHtL7IW", "password": "E3MFqvfDG5jvMOaX", "reachMinimumAge": true, "uniqueDisplayName": "bcebBd5wb5H3qppo", "username": "CiHMD4iBK2O7qYtO", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "5hnpjc5CNLnnEvo2", "displayName": "5aEtdjls5oadseJg", "emailAddress": "7y4Q9CU3fjSRaXD4", "password": "HDmdvhMXxiKR29LK", "uniqueDisplayName": "IhNU43K8bihdw3pr", "username": "p0UHlWUxkBefhxRt"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "rqbv56oqwnCLVc2q", "mfaToken": "HZuuedbBOd19DqZJ"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'RYV1oqNLmPAUIMwa' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "2wYq6DsUq38bYvaW", "mfaToken": "LoKzHnngdfFnOfY9"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "stXH6LYXXMndxBPK", "mfaToken": "mHVB7cNzHhvxc4xA"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'PZ86WNnQOhusPn44' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 '66u8agb5HPsBU0Eo' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '6QJ9vBRJ4UP09fab' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "C01Thm9f4AWpyiKV", "emailAddress": "T3OvEujx5yjtQSCJ", "languageTag": "aOHzpb623EciYoYO", "namespace": "PVg6DLEZ6DxpwBm2", "namespaceDisplayName": "N8PdQ5mQaGXEbnmW"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "EkrHqaLNdfKszYZz", "policyId": "Og113h6fIaHSx5bC", "policyVersionId": "lxUOBmMwv5pmiIVn"}, {"isAccepted": false, "localizedPolicyVersionId": "PoYSohfrLyXMSrC6", "policyId": "2xYtDwflNGfufW5c", "policyVersionId": "Weg6eSCypsceITTk"}, {"isAccepted": false, "localizedPolicyVersionId": "CVF6LrILDLviUCzm", "policyId": "DAaW5xz1c7ZuZXUC", "policyVersionId": "BYnkY0LEBSYBdUSi"}], "code": "TOrhB8hVs29WOKmZ", "country": "RTtgycLzXz6lUMKi", "dateOfBirth": "5mweMEZo2ZnL1Zg2", "displayName": "JfH4f73jAevOnES6", "emailAddress": "YJLlb2AfUEEBbqMM", "password": "KvkOsR1fHUyirMVM", "reachMinimumAge": true, "uniqueDisplayName": "ecfLsYKTmUnKlrOs", "username": "JmEwjGYN8VNPXNsm", "validateOnly": true}' --login_with_auth "Bearer foo"
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
    '{"modules": [{"docLink": "SGQyTzhs9Asy4d62", "groups": [{"group": "9N4YnolVWA2dWxBs", "groupId": "056jkPCUuE1pgdHv", "permissions": [{"allowedActions": [24, 100, 87], "resource": "MXxVh8HTrKqVwnpP"}, {"allowedActions": [28, 62, 70], "resource": "N5xMRgU7cPqNZrLC"}, {"allowedActions": [88, 82, 89], "resource": "Kz9IltQUku3n32at"}]}, {"group": "B0QPQPEp5UtwUWGt", "groupId": "6tooHP5kAww01zal", "permissions": [{"allowedActions": [93, 24, 6], "resource": "O80L7IOHlf6j8PZO"}, {"allowedActions": [53, 41, 96], "resource": "lmeegRwPPbn7lttd"}, {"allowedActions": [82, 4, 57], "resource": "S6IVE4fzwG3BHaRc"}]}, {"group": "Z8NK4gkLmvEOaRcq", "groupId": "TgF0xtQAXoDoFkmA", "permissions": [{"allowedActions": [13, 10, 17], "resource": "gzcwdgJMjIyGfiNB"}, {"allowedActions": [87, 78, 51], "resource": "omEHcU15St4v8ry8"}, {"allowedActions": [70, 3, 51], "resource": "E4bbDU4FMTbQaANJ"}]}], "module": "OODGerDCWcl3VSJE", "moduleId": "NQopeHD6iKBGm5Cj"}, {"docLink": "7RqnJUmfDmofxvN8", "groups": [{"group": "pRGoUtmbWZbEjPyq", "groupId": "35BWDoc3qNcQFFyH", "permissions": [{"allowedActions": [44, 45, 0], "resource": "41NPqjRUMKSQjFdj"}, {"allowedActions": [34, 37, 94], "resource": "EHvSxjWoM1rNJLM0"}, {"allowedActions": [82, 58, 83], "resource": "6a8mEVCXHmFnrSL0"}]}, {"group": "PJcZQaCeNLYxMID9", "groupId": "pqZ5rryiMMt6fQtL", "permissions": [{"allowedActions": [15, 29, 52], "resource": "s5RK100yH89i8ZDP"}, {"allowedActions": [89, 90, 54], "resource": "L8cbTAntB1STaab1"}, {"allowedActions": [95, 45, 9], "resource": "zz606UGXPhoNZlXM"}]}, {"group": "ef7AvS3TfKx6ByTy", "groupId": "gbtOtcQS4Cmgw1wR", "permissions": [{"allowedActions": [95, 28, 48], "resource": "IVYxY6OhdkrYiCin"}, {"allowedActions": [30, 33, 98], "resource": "Jin37P69t1KqeGz7"}, {"allowedActions": [34, 65, 3], "resource": "YdzsUNvQAn2LuMjL"}]}], "module": "qwmVz3zKsfjz1mFk", "moduleId": "yxoUzfMFoXCOguSq"}, {"docLink": "2A4R3wDdSkNfHJtA", "groups": [{"group": "3QiX9ZvtydbaVb0s", "groupId": "cd97A0GP6djn2Ps3", "permissions": [{"allowedActions": [70, 69, 98], "resource": "il4Q0mqa8GatrjbJ"}, {"allowedActions": [63, 31, 94], "resource": "fGAqHKcSxUc2YgRp"}, {"allowedActions": [22, 23, 44], "resource": "IFGIgIpscUpVAciu"}]}, {"group": "2XPPUxzXHUvxhvTZ", "groupId": "cvRKoaM4ozSAg8FT", "permissions": [{"allowedActions": [77, 35, 30], "resource": "ByWOJhbocoGlPzdf"}, {"allowedActions": [49, 35, 5], "resource": "gXNIaU11cBXLwTfo"}, {"allowedActions": [31, 85, 34], "resource": "7n7M3JXjEvsj5WcQ"}]}, {"group": "99M1yuXeqV31LX2e", "groupId": "hcMnM6QtjzQjDlUM", "permissions": [{"allowedActions": [59, 6, 68], "resource": "1QYvww4XDokltgq2"}, {"allowedActions": [44, 53, 9], "resource": "tUnY6UhDJ4pe0s0C"}, {"allowedActions": [41, 74, 14], "resource": "QrNLTcqLVTN5Qf4t"}]}], "module": "jPGpu27yxb1of79z", "moduleId": "VTWIfgdNphqe9fS1"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "m77MAg4KoZQPLhDS", "moduleId": "Jx9jzxaRKph4kiIF"}' \
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
    '[{"field": "gS4fLqlrKGiS3Xxj", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["j3XgTRTjI9oNBzgQ", "4CRwg0sKVeSpMny0", "GrvKI5EVB9ZFzLNs"], "preferRegex": false, "regex": "yIiAmCL8bNTTfqLC"}, "blockedWord": ["v9DYBOProN4UWbQa", "KFrTv4JWElmOCxqP", "rq9I3XJWBxTLcOef"], "description": [{"language": "8MgIwkrKFEtwESJC", "message": ["e2ksG3nZE13H2fIL", "FzOlAZbDQAEJLbVW", "H2XLIg3MgmdSvWp3"]}, {"language": "h0xPsVY8qNwB2TY4", "message": ["v9NNfQSYLFKSl3FN", "FFJnt3rIwZdW02Su", "6aCnL816aH6gOBUI"]}, {"language": "MeL0GL3aefSDME8X", "message": ["2MxILI42BJMPkZma", "y4Csye3iJLtjsu6Z", "JRCoDq3geuHFFaZz"]}], "isCustomRegex": true, "letterCase": "jETqcKN1gaQ4Bn0c", "maxLength": 85, "maxRepeatingAlphaNum": 32, "maxRepeatingSpecialCharacter": 86, "minCharType": 72, "minLength": 40, "profanityFilter": "AlKHF0ebxhJ1176C", "regex": "eD4dWCp4wqlQJcZr", "specialCharacterLocation": "oNQiefBnPluOIjZy", "specialCharacters": ["vlGDQGv6pNNowEuV", "VZM28w4mnYvvlt1e", "s7A4PFduN4gx0UC6"]}}, {"field": "eWKCFGS97Si6XyLV", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Z1OH5Nn4nMT8QOyT", "uUSD9ImtaPAocOQc", "pBWSNrCjSNEAdojk"], "preferRegex": true, "regex": "vCPrrZCTU5WUJizF"}, "blockedWord": ["69PSsquWUafwbFPX", "15633pFgA7i9tqvf", "HmFvUZiUW5Y0CYw5"], "description": [{"language": "OXSGwQkJuy9oLFcH", "message": ["HcraLXR2n9JQvq7N", "KWIHYsii3fCh7sie", "JjZPAkiWumllU31u"]}, {"language": "XPwYxedGHCIkmt4b", "message": ["fJOhNaIT0pv7XeqO", "8gY3c4SryWB4yRaD", "xvxwaLM8HkVOW8Pn"]}, {"language": "LkgqkqYZWPZTgKag", "message": ["TzdcYcko7U3gH239", "LhRx2Laa2RdtVb6V", "gA5yFIH3s9UyeaFi"]}], "isCustomRegex": true, "letterCase": "OE7BCK4FeVGrl5Np", "maxLength": 95, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 68, "minCharType": 85, "minLength": 30, "profanityFilter": "zblWEiHaUjyTHb0s", "regex": "Slstb3slUe94NxhX", "specialCharacterLocation": "sVcqTYi1TMBMzaOr", "specialCharacters": ["xuKvtUVtqbDWnJ2i", "9TRmJOqIl7U12hO5", "vpk9DOSgbsdGVPLD"]}}, {"field": "9A5NmuZDUV3yHurg", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["0OTT9JA0ll1RimBC", "iQwuyrI87uSyXP6C", "0jXS8au2wcWYyj3J"], "preferRegex": true, "regex": "mH3oYfPK2QiAUhIf"}, "blockedWord": ["i17YrkWHNxiaNyqB", "fgw58Hx0XYL0fJOP", "YpnPqGlPnhBDOWqD"], "description": [{"language": "U8N3DjVUt0n0jfyD", "message": ["btIXICLkK8ZvbnTg", "3znlg8nmzQx1RsYh", "cRlv16Wwe8YK3lZF"]}, {"language": "slECI9QzuQcsjFeh", "message": ["D6uTDYnqyNgN7Goe", "MsezFZsTBHkgcJ0D", "cEt23pci6xEljer6"]}, {"language": "aGJx5OFp3jKEx4aS", "message": ["GdwTPX4ig3NVFFkP", "7O3F4vsohRWDyGYI", "VFDbTvRYfpJ4wM9W"]}], "isCustomRegex": false, "letterCase": "yRfiCWrm3s1Ah3TI", "maxLength": 70, "maxRepeatingAlphaNum": 91, "maxRepeatingSpecialCharacter": 80, "minCharType": 57, "minLength": 79, "profanityFilter": "aOlXfgsgBd7MYLLo", "regex": "PZrkjRm5Ki0orhXr", "specialCharacterLocation": "ISEaPZHLQkTHvndQ", "specialCharacters": ["sCKAO2JRz3CGwtuj", "kzxidLcAQWGVRg6D", "Vso5TJCSugdo4XTm"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    '8t1YTWqItjNWXm9s' \
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
    '{"ageRestriction": 36, "enable": true}' \
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
    '{"ageRestriction": 0}' \
    '2TIQzRJY7UfYSrdN' \
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
    '{"ban": "0JVz4U43EcV1FRye", "comment": "eqehMNeRYKeMbL0G", "endDate": "4v5D6ylZguO918X7", "reason": "rLoexHBMBMMAYokS", "skipNotif": true, "userIds": ["wajRGUyklfLVY6g3", "PO4hKAeF4GUV5m96", "qcCJsVOWtu5RPsqd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "66ImBEuhnaxZVf6M", "userId": "D9r1y5Ihr531Kajx"}, {"banId": "q7lzuVRVEvhKIbrq", "userId": "1xsGpdobYun8hcO5"}, {"banId": "5hVjfWyK02w5QytA", "userId": "mkanukAzAMaRvIUh"}]}' \
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
    '{"clientIds": ["UwguGgbLLN3O7CEY", "jxqElP5lA2FJ0iGL", "RTXGsC5mxxse4eeu"], "clientUpdateRequest": {"audiences": ["MgEctVEux2MSuwsE", "HlwdeJyhsHS6YqPu", "dWviQsULL1txfX9t"], "baseUri": "qFSkGXoIcFN5JL9M", "clientName": "53Mg0MzWS9usxxnM", "clientPermissions": [{"action": 15, "resource": "fEDE4TrtIHyyMq79", "schedAction": 62, "schedCron": "ATxd7Mzjv1gSj8kc", "schedRange": ["NhoqcRZRNATojM7d", "aV0VwR3yNKDtMqMr", "AGpdyF6WDHn3ePBx"]}, {"action": 87, "resource": "nmESQDV3BD1nnEzo", "schedAction": 95, "schedCron": "suzwJ4v50eoaIBrT", "schedRange": ["h0EKkJioUpvGnkcH", "gCfaWzPUvCnfqsPG", "gJZyRwigaMu07Zek"]}, {"action": 73, "resource": "WObpf0FHYfViEj70", "schedAction": 74, "schedCron": "Om4M2pM4fIfcHBWZ", "schedRange": ["M50aHbPXRns3qwYL", "6LwGlZGF7XQPLAcI", "L7FvAMWqhyyNZH1C"]}], "clientPlatform": "ducB5y5iMdeBG7RE", "deletable": false, "description": "meKEabfVXBJPIZqZ", "modulePermissions": [{"moduleId": "C5d6JuFdcfiNf0DO", "selectedGroups": [{"groupId": "HKwxDF5GJhCjVHiC", "selectedActions": [27, 30, 14]}, {"groupId": "c5IFQsrwHqFqwVA5", "selectedActions": [25, 16, 29]}, {"groupId": "cLK0WTZbtmQkwC8a", "selectedActions": [53, 12, 48]}]}, {"moduleId": "3nCXhD7FUz1iOe0p", "selectedGroups": [{"groupId": "Ha0LmseIRXeoerZA", "selectedActions": [49, 42, 2]}, {"groupId": "fzssA284mG7uAojL", "selectedActions": [31, 55, 37]}, {"groupId": "CmSiKPjcwAw5Gdxp", "selectedActions": [43, 78, 11]}]}, {"moduleId": "V691j0FZp2vjOXpt", "selectedGroups": [{"groupId": "xzx6kkaZYpl52sQR", "selectedActions": [84, 28, 33]}, {"groupId": "p5d1eSwrG2GBBEWr", "selectedActions": [61, 41, 2]}, {"groupId": "ZNwKjnX7vDIqpcjm", "selectedActions": [1, 13, 33]}]}], "namespace": "uOdN0O7l3GbKPHdD", "oauthAccessTokenExpiration": 93, "oauthAccessTokenExpirationTimeUnit": "wR40tfd9GFXChtxB", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "0d4Q8nlBthUSu4WN", "redirectUri": "fTvD5UcES1eLMZs9", "scopes": ["lSQVDp16qVIqXCK9", "dS5JTbdJEe6mnkYA", "fw61kyKk0UXUF252"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["vOmfVNJNDaSO3FEk", "k4It6V8Bu7rIjGrx", "UMKbv60ixUuUhopd"], "baseUri": "qGrqRZ124P7PauXT", "clientId": "rpWAjwatSvtPbAFn", "clientName": "8oWQcmFkkRX6Eqad", "clientPermissions": [{"action": 54, "resource": "iAMa6Pco7Mfviksl", "schedAction": 32, "schedCron": "VUxxZIgkTLqMeJPC", "schedRange": ["bs8jWmTteJhwNbwH", "GG39YAZJ4HuLfeTf", "FBTOFFMJ9pq511jZ"]}, {"action": 4, "resource": "ewbmnWk0E7YaPblc", "schedAction": 100, "schedCron": "AFVo85r1b8Yp2Qnu", "schedRange": ["hQuIdvZdj6AspWBf", "RnLcLbp7OmcrDJ7u", "1rrRPcnG89rnNW1Y"]}, {"action": 19, "resource": "6dziWvdNcwfUBMdN", "schedAction": 41, "schedCron": "eb0CaPFDjrSotKnp", "schedRange": ["JWALpToj9rgr5Rff", "M5JXvPdzEpDln04F", "8BQjzobhDa8VxKOr"]}], "clientPlatform": "fVfBRIfkStOqdXqh", "deletable": true, "description": "PKOkzftOgDQAWhul", "modulePermissions": [{"moduleId": "brDf7q4cAnpmLiEu", "selectedGroups": [{"groupId": "4CNtX2lnqi7cHTSd", "selectedActions": [68, 29, 29]}, {"groupId": "RIplY0DIzRCNAO6Z", "selectedActions": [32, 38, 34]}, {"groupId": "EYogFWiH9z4E8zma", "selectedActions": [14, 100, 4]}]}, {"moduleId": "xn9YL16HQdtAneXG", "selectedGroups": [{"groupId": "gxNg33ZIUrIkfmdX", "selectedActions": [97, 29, 44]}, {"groupId": "wR3MeCNL1oNrF3Sm", "selectedActions": [13, 97, 42]}, {"groupId": "crXLZnuMNpKEIs3G", "selectedActions": [58, 21, 80]}]}, {"moduleId": "VTK7tkJWFpHt7MdK", "selectedGroups": [{"groupId": "u9Xwn5GHJDGatrYO", "selectedActions": [78, 83, 76]}, {"groupId": "1CYEjX867n9PT9fR", "selectedActions": [25, 20, 78]}, {"groupId": "mxmxpfp41k1uDg59", "selectedActions": [86, 14, 55]}]}], "namespace": "dUXShabwyYCxTHrD", "oauthAccessTokenExpiration": 8, "oauthAccessTokenExpirationTimeUnit": "EwhQfxFKIOGT1WKS", "oauthClientType": "mLoA0ILaESC1GJXs", "oauthRefreshTokenExpiration": 30, "oauthRefreshTokenExpirationTimeUnit": "tY7o5FFi1n10vDgy", "parentNamespace": "oHXIlrMl2RAukCL2", "redirectUri": "6ihdMy9YCLNJEkvq", "scopes": ["6SUSt8xd8EgE15XN", "uw6Y7sToQNkuZzJ1", "XBxw01iBBQukgQ94"], "secret": "ZvPCWcMX0ov3U2sK", "skipLoginQueue": false, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '84miBhdVJt81fmLS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'yGuu5rbJVIwRMtwA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["pGbXnR3yC6f2MHGG", "edk0KzXRclOXdPYZ", "QxBnttu4yW5etl4X"], "baseUri": "k8Hd1lRtoPMvsu9o", "clientName": "swEPTvzwwGnpbx8M", "clientPermissions": [{"action": 58, "resource": "gsVbG6TUe3jbuQ7H", "schedAction": 79, "schedCron": "wEEyYAnHPp4XzVL5", "schedRange": ["McglFCrjxqqxAYqX", "G2V3baMkZ9JCqBIk", "UID0EE9InZNLwwAh"]}, {"action": 100, "resource": "k4UnUEOyP0cPZf5O", "schedAction": 44, "schedCron": "xhXdj1CG0EBgst9Q", "schedRange": ["u8Ofl2oB8VTjF0pD", "3NHU8iYUOtG5gbQS", "KW2MdgCH4bWxRF6f"]}, {"action": 57, "resource": "fYXNdMkdg9TMwxNc", "schedAction": 86, "schedCron": "2duQqawPrxi6F4el", "schedRange": ["hy9CZ94CAUVW8FoE", "f8tjCjWc22qqDfNz", "59jHwSDQHadmAo0l"]}], "clientPlatform": "zhPm7RmaOr6TLwVy", "deletable": true, "description": "ycTa0i6ifYP1zfgj", "modulePermissions": [{"moduleId": "sy3VRjX4qA4g9OGo", "selectedGroups": [{"groupId": "Ww1qnCAvdnAcokJ0", "selectedActions": [37, 7, 52]}, {"groupId": "0bkWrlhtfTywRW4f", "selectedActions": [26, 12, 0]}, {"groupId": "6btk3mAO4EtB0hn2", "selectedActions": [48, 49, 80]}]}, {"moduleId": "oTOX5gBQlVDx9neF", "selectedGroups": [{"groupId": "HWhDRJtyYEt7ygZl", "selectedActions": [9, 55, 29]}, {"groupId": "551nQBNKcqCkUXRj", "selectedActions": [92, 13, 88]}, {"groupId": "3qoogOxoPYvdIBJY", "selectedActions": [49, 85, 67]}]}, {"moduleId": "d6mjzLxllUrFYn7c", "selectedGroups": [{"groupId": "SuO7NxKHUHg0c4X7", "selectedActions": [10, 69, 27]}, {"groupId": "dITmN9opaF0kh3pC", "selectedActions": [89, 11, 56]}, {"groupId": "NAM5YdHivK2Q0Wwo", "selectedActions": [23, 1, 87]}]}], "namespace": "71zAJpaPeudUtKPJ", "oauthAccessTokenExpiration": 96, "oauthAccessTokenExpirationTimeUnit": "yAObZIbrA8XAKKWM", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "MWzWFTuNPf5JCSDy", "redirectUri": "Yy4e5qoTZxSoZbQU", "scopes": ["nUxS6m68WL3HDL4y", "x5I0euBsccHPA2v9", "XP9enfEX7lloLgIY"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    'xFfSNJlHCjxLNnYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 23, "resource": "ZLVJzRpUsITfVruD"}, {"action": 42, "resource": "T78nootfUs9559il"}, {"action": 25, "resource": "KyED3qDO5HXp5oVk"}]}' \
    'hESbHQ7hvTlzf7Xw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 88, "resource": "GyWf3VujS7Bq5bcf"}, {"action": 84, "resource": "MfYFlt3JvDgMiyBG"}, {"action": 49, "resource": "Unj17t3gHBXvjvzi"}]}' \
    'exzOLbOWbtcJUxM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '54' \
    'kiYXGk6BoBmSLi0R' \
    '7zDFMoNTQmlS8lMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'Y8UjprhCxhzW6ZM7' \
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
    '{"blacklist": ["LkTVrtVJZVhxCVdj", "PutJ8dkAVOJ5imgh", "dfVhjnjd66A1SQmW"]}' \
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
    '{"active": false, "roleIds": ["SQLAVPAJ7zX5lB80", "k2smdkBS2MaIP7Pj", "ngEFggq91cpgvoDB"]}' \
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
    'gYfLBdGNAZEvbvxq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "a0K7VUbjUnzirnEs", "AWSCognitoRegion": "xSE4vBzG7VK8sWEs", "AWSCognitoUserPool": "hmZf5fEdvjbyJPQ1", "AllowedClients": ["qdRcJjsme1OukIfI", "ZVH8q8svV5hMOSfp", "yJkJlmJmTkFvB7wk"], "AppId": "Y6nuUEGJ3k0HGtpK", "AuthorizationEndpoint": "43uORGREOOwTuY8d", "ClientId": "hNCDWWpN3B6tedgF", "EmptyStrFieldList": ["UzBm5vGA3itKaF9z", "3WWuv3j8T9g1f6P3", "D3rVcC2g6t42jE1W"], "EnableServerLicenseValidation": false, "Environment": "c44yjRdfqZgv34Gq", "FederationMetadataURL": "qjelcN0GJmPwUTWM", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "Z7vnTx8HDXTJWiyw", "JWKSEndpoint": "17ogzmbj4SLYDrZJ", "KeyID": "vDLGvn6qtroZcp16", "LogoURL": "HKXX1ft5nBA9xNIJ", "NetflixCertificates": {"encryptedPrivateKey": "VuMz04evSdE2FMcK", "encryptedPrivateKeyName": "d7c94rEmIYuAT5OA", "publicCertificate": "cUwYHGmG5rNDBF1o", "publicCertificateName": "U37vjfyX5YLaM0wm", "rootCertificate": "i0i1WABBbq8IzZsM", "rootCertificateName": "FLX9ZhFXcFtfBS3Z"}, "OrganizationId": "IHofhwyM6Bw2sFGQ", "PlatformName": "5DQoDwzrKPOZZnV3", "RedirectUri": "zR7YxSu6addocg10", "RegisteredDomains": [{"affectedClientIDs": ["Hy9jx7gBHTOHHArj", "ld0LnREsrrB2pJ7V", "8BSrucjO3zvSM5Ke"], "domain": "VNHU9GcOivIfcCJt", "namespaces": ["4U8VSgXoi9Fw25b9", "qXzlIK2G6AUjBCdf", "0Rp5e5IvFuN1oUsC"], "roleId": "nBmGMx5F6EhM3dKv", "ssoCfg": {"googleKey": {"IG9MR0hTINvq1VR9": {}, "SJUfQEX996Mh1sQ3": {}, "Dw3uyjgQNAs9188Q": {}}, "groupConfigs": [{"assignNamespaces": ["m3W1De2McGd10wef", "F0CJlH55RLEgeAsS", "pQdcmGHZuRVQ8tzw"], "group": "qMayP8A3HGNI3Bfj", "roleId": "kFd6MHo6gGQ5mChY"}, {"assignNamespaces": ["oKD7yqCR03RovQZh", "wfjkq9iyTbyD3D01", "tRpuuyIagSSzEL8H"], "group": "4euLufhQj2KP3LLx", "roleId": "l9Hs2L2wlpKBVURx"}, {"assignNamespaces": ["Hefz77a9fntCNiHB", "RUNCPSre5GmZzCQw", "ilS3IxSjlyvR9PxG"], "group": "9Lji2Vc88W8aLjIx", "roleId": "VGpdOqguxvRwI9ZB"}]}}, {"affectedClientIDs": ["TipMRlhK9DMMaI4r", "yVDvNaruZxwTfh9g", "Es6GF247cbBLjUr5"], "domain": "z03wxB3E9hrE9f9C", "namespaces": ["OFrOr6wJDBwIDsJH", "Ng6TvNGjwI4TbTwB", "ufUorJouduhCEJ5X"], "roleId": "iKDIE9YugcupLxVB", "ssoCfg": {"googleKey": {"cRkfhRuqkOTHSia7": {}, "oFd1fEmDuyAsQGzw": {}, "JR5poI718RQnj4im": {}}, "groupConfigs": [{"assignNamespaces": ["u6XFfRcWDXhq1YmG", "eygr2S4Yw8NmPaBe", "ryzX2hOPVVFqVqxj"], "group": "q1iG3TySOh8SI75o", "roleId": "Xbyq8FBbur80Qwnl"}, {"assignNamespaces": ["gAVfqz6gQJh8sn0b", "VWRkvmAemh8lioBR", "7xTXcEIFod3lCzvj"], "group": "HzDHOrSJ1vbB7LRH", "roleId": "d96dGLgkfrZveFMW"}, {"assignNamespaces": ["AFT7l0l1jaOAMCzb", "soIgmKwwMDQPjUIo", "sq1l6xo0D4JRbNqO"], "group": "6IuP2PY5hhX6uNah", "roleId": "9JoHPj7jFWxSv1lY"}]}}, {"affectedClientIDs": ["ylYAiZ8c7Zd7EUoe", "zOLw8C1c5bBB3XZ7", "ColKwlsNvtFuunQs"], "domain": "vdXGlD40xxIyVwYj", "namespaces": ["n6dlC9Kfh9gHuloy", "ce0cLJu4ljPWlCWT", "uGO8MnfOQu3wdT4A"], "roleId": "odp95o1RkX7iW7Vp", "ssoCfg": {"googleKey": {"CngWAv5DAG8dPdkK": {}, "gQqjyzUZR2rFIAuA": {}, "LNhNCyscsMBRLsWa": {}}, "groupConfigs": [{"assignNamespaces": ["dk2OQ421q7Nb1vrK", "thVvU5on065ApCkV", "N3QchuQ6pntxB648"], "group": "ss7rBnvQHAM8gSdI", "roleId": "ybKUByHBzfvgtRTP"}, {"assignNamespaces": ["PzwJmKaLCx3gcidE", "ALWe6RG5wWznu5Aj", "wR1Z4fU7ICcaQtuu"], "group": "KUw3dUwWHhQW3I1y", "roleId": "9tjRLVOXBMa0JiIe"}, {"assignNamespaces": ["1AY0tUA7EKASk3US", "NLhOBlxRBLgohp8B", "yTi2F6AyUX8w77ri"], "group": "PlPgJcLbeQf9MICx", "roleId": "X7xKyCfgwSPz14as"}]}}], "Secret": "yOdgn77gN8K1FlNk", "TeamID": "gbFE8U4meK5grmPB", "TokenAuthenticationType": "sFH71VrhsISYtegQ", "TokenClaimsMapping": {"bNA2WQrHTkJT1VkC": "hD3n0c1ryAkRvdPR", "8gx2rX5dck8NFKPg": "T6LMehg047axU5kt", "NywRIvO2Sgz30hej": "qdktHIO1VdtMSews"}, "TokenEndpoint": "1TrU4FhAfKDcDG5b", "UserInfoEndpoint": "MTba1tUlFGcP6eL7", "UserInfoHTTPMethod": "EpWtPifmO0JK4dP1", "googleAdminConsoleKey": "aZFiSkmhwVVMGkXN", "scopes": ["wMYwFyljy5bYQdQ8", "7hUHA0FJZwP8GslM", "px3m7lEXTmnTbtjK"]}' \
    '9RsyoqT3adB48Jxp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '2zaItg9jTNZvpFEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "I21aSaIsMyLKPPIZ", "AWSCognitoRegion": "x0zdNAagipZwiaBr", "AWSCognitoUserPool": "FrXtGMjujfHZB1gM", "AllowedClients": ["I1B8DXb37DffTZ7y", "Qz337LLNCjIySe36", "SA5dxATLv5PkLvra"], "AppId": "RzChdjDGdlk2A2jH", "AuthorizationEndpoint": "bAPNGInvbnf4ewKF", "ClientId": "FLoGggX4gQWyZocv", "EmptyStrFieldList": ["Yfr0Rnl02R1IVNna", "K6KS71Xs1BphA9BX", "pKYgF9OuigDP0Vjm"], "EnableServerLicenseValidation": true, "Environment": "EqWO1cVCUIOx90FQ", "FederationMetadataURL": "dwLi3GOQkLtpuRNe", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "EMPaOU5nukycAUlk", "JWKSEndpoint": "USZKUrsxNRzF3NaU", "KeyID": "uCyQyze6zPKu5sE8", "LogoURL": "9JW8UU0RsB6dvrpm", "NetflixCertificates": {"encryptedPrivateKey": "InhHYzVVlHGFSwjb", "encryptedPrivateKeyName": "y6rMYkVQnZDUAbIN", "publicCertificate": "RKQsxUO1YMxAndOj", "publicCertificateName": "5O6IBwXJjgQjgLoJ", "rootCertificate": "yqwFVBd1ZjaRXEdW", "rootCertificateName": "gS12bSbPgOCWUogi"}, "OrganizationId": "zeWOPUMrqgEIsMwN", "PlatformName": "bfti0LoTBcNzyoCS", "RedirectUri": "w1t653G3ydYmGzvx", "RegisteredDomains": [{"affectedClientIDs": ["9bSqqyAPha5b6PQT", "PTytHeeXo7gOFVLZ", "CBWuVIROZuqdJBi8"], "domain": "pkn98VtLNkaIQJfk", "namespaces": ["FDhSeSGXtZU5SuIh", "MSaDRp17dUWHcjrb", "6qNeKpOxPrlG9svd"], "roleId": "qsiVTqPbzY1yxl7z", "ssoCfg": {"googleKey": {"eEpmSPO6KwlJQlj9": {}, "Ii2jARwzowk9OoiP": {}, "dnq9KBqBwiNCsnK8": {}}, "groupConfigs": [{"assignNamespaces": ["CcO1OHbpQZtwW3Ew", "Lre1bL4dJnkRLJbM", "vOGSd7uMrmQ2SaLd"], "group": "6M7TM3wnJyExuo5z", "roleId": "9RAcYgYZb7cAakJp"}, {"assignNamespaces": ["qN6eubdp49JFwXG0", "EvoSHNC97eEyhnL1", "QH5AlYRAqCAC2gy1"], "group": "WF9QLNgDxAkwgfB8", "roleId": "jIecOx5ugNCDd6jW"}, {"assignNamespaces": ["6fjtBcO3fWq9qfmB", "v0XgJB6a7uykADFp", "inFcH2ZMSYijqEuM"], "group": "fuYFUS079tOpZYM1", "roleId": "XV0Op0damycnTUOo"}]}}, {"affectedClientIDs": ["MkOppZNOkqxc42HK", "v5wvtPJVsuzaBciS", "xwzuIpGBYHTHoSVx"], "domain": "gQCbpZx5yMGIQ1Zx", "namespaces": ["VIefYlKBJyQMqUEf", "DikX6yOlgZrn0I6T", "0hvcAFTaSWR4VOGI"], "roleId": "Y7hM6uhonkAe0FdT", "ssoCfg": {"googleKey": {"SSEluBxM47BTww3n": {}, "BTVmBFZ6TIs9bTi2": {}, "m7eNsYEqKkeuLWDf": {}}, "groupConfigs": [{"assignNamespaces": ["eFeExlOFjRh8mLFT", "JLveQSDWnMQGaYRx", "FWia7yJ2d87XjA0a"], "group": "jvb7JcGUFgp6LkyX", "roleId": "pxJeFxhgTwyO51CU"}, {"assignNamespaces": ["pcdxL0a9VDhrqWCT", "XOxQUpyFgZhNpOTE", "4toH57yr01N33p1G"], "group": "ha8HwpagvERZI6Cq", "roleId": "hcknhecNv2Tw6YKh"}, {"assignNamespaces": ["VrYkMqXkQ7qlaJjS", "YEseBYCFGoKpXx60", "GmEX9x2BYpyKEBQ7"], "group": "TW7lZvDbwFJJhBRd", "roleId": "q8BgAI81k4Gr7jVV"}]}}, {"affectedClientIDs": ["x5l3yrH9HR4reG0H", "wUXxQTf5YpDUGYsJ", "BEkYUrLv4qUiTkFc"], "domain": "LBrg2JB0WiCpVBwv", "namespaces": ["AffJ3btt0PpQY3Pn", "nic80yEO8dL6Jh10", "XMUGeDavCKradJmJ"], "roleId": "FUsU418vAlmfGg9N", "ssoCfg": {"googleKey": {"O1Z2DvnAxH3pS3jy": {}, "CkGKltBNE2UbhNtH": {}, "3yYg4Qnn2uhdw7C9": {}}, "groupConfigs": [{"assignNamespaces": ["Bx1LQOTCbAPLC3iq", "rkyJFOVaewFcv9h3", "1YxuZnoSesWpLUHj"], "group": "GaIcZN28gH4Cd9xT", "roleId": "dt2K1CzpQWslNGnL"}, {"assignNamespaces": ["YUYR0yOvJhUjzcMt", "wINUlrhIpnlam2Ee", "fVopbpPhsana0uXG"], "group": "7GUTV1BwgkLDj4pj", "roleId": "VktyoNSsEHlzyd0S"}, {"assignNamespaces": ["arkhltUxgbN5eElQ", "NESFLD8hCc9onSNj", "bQEqFGwnDG8kz4kv"], "group": "Ev6tNjGRhrmRAxRG", "roleId": "eIKGlCJmDXpjyvLS"}]}}], "Secret": "HB1y3klHuAGnidOy", "TeamID": "GuS0OG7ohiL2943C", "TokenAuthenticationType": "lrNhEdxd24ZKfvMf", "TokenClaimsMapping": {"1T5FzYMf1jaCgZos": "ntPzP1vXXB92q150", "WEIetOXMt37MXy7F": "p7lUfQqXrqGadwvK", "lJFX1ZHV9yo9Ur1h": "fhmGEKuVUZdCacRG"}, "TokenEndpoint": "ataPrcgTcA71dtqt", "UserInfoEndpoint": "SUN4zvBzGh3mhIDN", "UserInfoHTTPMethod": "uMBZegHtB9uTCiiI", "googleAdminConsoleKey": "oMZCjGiOZJpUf9Rp", "scopes": ["cfEQn0O6D8PGQuaz", "AypgWhTED5YmPTBU", "km2FyvdguCYVqFyI"]}' \
    'Kh1YtTY4AejyQc5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["ac7hSLldWx5DyniV", "ESUgrROrP1ip3jNG", "68DByf2UMPtigq9z"], "assignedNamespaces": ["OQOcAqBj0bXhOr9O", "Ht6zx1i2W3GY7tdh", "8hHlQyMlgfkTsATh"], "domain": "LyflAqqAP4M78smY", "roleId": "dyge6DroOywOxI4G", "ssoCfg": {"googleKey": {"6jZzoYIFAvYfT8XQ": {}, "w2EOq6BFjmN4OqKG": {}, "LRpNWzKZtZnxgywm": {}}, "groupConfigs": [{"assignNamespaces": ["r4CYNGm7Tk1mMyeN", "RsjQuDEgO3MEQNL6", "ijLRvQOgoaBooTaw"], "group": "HLMxhx9nC3o6pXU5", "roleId": "MDJLCB6WbXWIRpgj"}, {"assignNamespaces": ["ooaBVemsbkaXZQ6n", "Tj9rZpkSntuOeaPA", "yPeEGBepK1Ix4Swj"], "group": "CYjCHniVSn1gYGal", "roleId": "5NrBtT0om9OlGzpF"}, {"assignNamespaces": ["25qu98RhktX6qwkX", "bCLbh8t0zPkQWRUl", "gE0kxzFMq9ttbEHA"], "group": "EV7C65Ans9SquNSJ", "roleId": "Iay5VdUdYy9Y9OCS"}]}}' \
    'mmT3WKijbqhT3uyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "RXvvcUYDeWPZ8yhw", "ssoGroups": ["Q0gIdj1lTJdNLmAv", "EdEBVAU3rbkv8V98", "cupW0L5WsiuITRMS"]}' \
    'POUfWQwr4PYf48r6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["6MaToxBiliy2vtRk", "pqL6KrVcNz83J57t", "6OcYPQ5bk5IeuAi3"], "assignedNamespaces": ["zWFGorCbncoj5RvE", "tXiKyUGdNfMiwgSv", "sTRmJsOm0wVFyHvF"], "domain": "hRMCFJuA0DEMgykq", "roleId": "qjoHTpIPMSRAuPI7", "ssoCfg": {"googleKey": {"mSZQ5UDm1q51PlW2": {}, "HG8LAiIzuo321Ll9": {}, "0IBFsSb3FsV2PnCs": {}}, "groupConfigs": [{"assignNamespaces": ["9R0D5jZEwxcow6L7", "c3COEP4AZx70uwV4", "XgvGTMHkXeEwuFJf"], "group": "7tbq5KikDE7hWvT5", "roleId": "bzcfzIpL2pWB4Xsd"}, {"assignNamespaces": ["rxIF6kEAmKGNEmFP", "cUALNziO9Bz2wx4k", "DAm8XIleiujtv2Nd"], "group": "QTYoHZogW8lBvniH", "roleId": "dARadfSoctA3GYO9"}, {"assignNamespaces": ["4ZOo94gS5DHLB65f", "xQ06GwTmobiBnfrn", "q9kOFBWhUTPiKR3q"], "group": "cbHLGplYsS3jsRZf", "roleId": "fCd00VrgPuNtOv3j"}]}}' \
    'bhGBuW8KcyPMfDWS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'EEpKoJlmhMQUCx70' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "QjYbzemOTURzzAOI", "apiKey": "BarB7kcer5SvPLeQ", "appId": "ZIpKFXgnsxx3c2bU", "federationMetadataUrl": "sO7FP8RmOstZAGDg", "isActive": false, "redirectUri": "iClZ6rlwX99AHMLH", "secret": "qguYykVWzNwPcvGy", "ssoUrl": "ieBsRUduW5lxSlor"}' \
    'WEGN5bPGSOSiiItr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'SrEJMBAIwTLkrMDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "QfpQ9o0GJMTfqRRa", "apiKey": "ZozM8xCBoaS2FMwf", "appId": "WNCbN5GelVOU0hHn", "federationMetadataUrl": "sCl5k6Jxh5mkmQzK", "isActive": false, "redirectUri": "cbDJ0LmdnOPkIT1C", "secret": "6KGTpA7JZ6xullPR", "ssoUrl": "OSfiW9zcxmgNfTHu"}' \
    '3vkZt9FgWckjNpHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["M2ZXp4N0ROmUCTrS", "7Gi9Iigk9vamO7Q2", "WQwSWqSs05rjISy4"]}' \
    'B0X9AJdkT7UYCV8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'gvwOI2LlOQNRN132' \
    'RdgwMXv9olKpRyWQ' \
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
    '{"config": {"minimumAllowedInterval": 17}, "type": "5BGRJhFwxmkGfPI3"}' \
    'display_name' \
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
    '{"additions": [{"actions": [57, 24, 67], "resource": "uXQuuLtYa86kvL6c"}, {"actions": [55, 99, 87], "resource": "iRrw32FRg8y4rOuj"}, {"actions": [44, 72, 66], "resource": "6ijJbcycXmBcrJLb"}], "exclusions": [{"actions": [23, 1, 3], "resource": "pYrmeMIHLS8egV8X"}, {"actions": [15, 59, 13], "resource": "EDTVSjINYeKLowG7"}, {"actions": [96, 54, 88], "resource": "PWKxoj6MF68VuKDo"}], "overrides": [{"actions": [22, 1, 22], "resource": "xixm9X9TXNhN8y1P"}, {"actions": [98, 97, 36], "resource": "1G6bYgIbVKp4Kgew"}, {"actions": [9, 25, 40], "resource": "HDksA6Mv9Nzs19eB"}], "replacements": [{"replacement": {"actions": [34, 30, 9], "resource": "a1L8S1yduOwscICr"}, "target": "o6P8FWIPeqaBeD2u"}, {"replacement": {"actions": [56, 33, 54], "resource": "woIwQBeIALI8JNII"}, "target": "I4jrzrPsuMziNM8A"}, {"replacement": {"actions": [57, 3, 88], "resource": "31dm4N41MOpmm04B"}, "target": "lZUAlYnCT11qD03e"}]}' \
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
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'EKvMGd6hQ2mHjmLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '4oFlReHy0JyZv7ho' \
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
    '{"tagName": "nqeiGTTqpgVsY1kP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
$PYTHON -m $MODULE 'iam-admin-update-tag-v3' \
    '{"tagName": "NdJiJXB3yjNUPIfv"}' \
    'oXRO0CkW1ZcgUSbb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
$PYTHON -m $MODULE 'iam-admin-delete-tag-v3' \
    'nffBWRaJN1SjCFLD' \
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
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["JfAhJGwSYEZjEb0P", "v35fEk9s11bFXkf7", "rQJ4Kj7Qyo9tUpti"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["yZzRX8Y4rxRWZPe4", "ZLAQWuBJwxObZqMG", "xhffy9cHrLYfftad"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"findByPublisherNamespace": false, "userIds": ["Dcnn7f2d8SOWP2dw", "6Uy88WpQalG38VOo", "82aLD9jUjuDITjif"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["WRbmtK7MTxcCWnMi", "CLsjroKHPApA8GsG", "wyocvY9NePjLJQJX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
$PYTHON -m $MODULE 'iam-admin-cursor-get-user-v3' \
    '{"cursor": {"cursorTime": "wUApJWohXn01RB7p", "userId": "u7BaONXyE5fIDbsM"}, "fields": ["i48xOYVvEcEm53BY", "MBacQBIuDVs7U0AJ", "tWPRteszMTd0R5Fs"], "limit": 35}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["pIbfxVFfdvKQVgPQ", "w3MVXe4xBPDWHRHC", "CVDBRjPUQWYVxGQV"], "isAdmin": false, "languageTag": "JlDDJ7z4Pb5jyGID", "namespace": "39Ung1D57FjYKlJi", "roles": ["RIvhej77OSPwdzMS", "mrSvQdsAdTUGpd8K", "FrXKFA2gdjQCYoE8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'b0CZetLfpFNyp737' \
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
    '{"listEmailAddressRequest": ["5rhOmR4zFjoJZVKZ", "jOD2ePKAKYjJMVnY", "j2yKqavWpydepM3a"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'p069B9Okr0xJ5XRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "VoxPGOLVBIlFgTAs", "country": "Xgqx3mfB5ZwV25N7", "dateOfBirth": "NAvZdGuyYEYZE3Ka", "displayName": "GSdhEGKcp6g1A8O9", "languageTag": "N9cbYBK6XOBDpR7S", "skipLoginQueue": true, "tags": ["93AE1Toj5vygVvLS", "JvdsGpmmUeMikW3s", "54zffAL2DZ7gBhy7"], "uniqueDisplayName": "7iRVFfFvWenMNV00", "userName": "KVuLF9WDnGO3bpQW"}' \
    'mnS52ZuuuI7F1xpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'rcoXzSOEGEDYfiGP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "Yo2K3dN3YBOJfvV6", "comment": "SuHovoQlk5wL2oXD", "endDate": "Z20Bw2H4tz6KUC4j", "reason": "XGj2G0GZ3JBYi9bB", "skipNotif": false}' \
    'BRpdbLCiwxOx2XQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    '94xPqXhqeNMDGA3O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'pjGNenRlDORLvP7y' \
    'nTuXzafCqlMrrVIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "hVCf3AwIzUdQ6sTr", "emailAddress": "Ug7Z0SLrZraV3NLB", "languageTag": "USrFnzE6yR1wLTgj", "upgradeToken": "snB2LFVrZRrOntm2"}' \
    'KjbfCOuW3dBmFwUO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "7Y0xhMLwxgRpTSUp", "ContactType": "pvO3QG68KeD7QJQE", "LanguageTag": "EVDAg045BvtPd7ib", "validateOnly": true}' \
    'H8GScnP5QzRBY1Ur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'efgmVFBVz4KRCU0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    '4jIt01gzH17IcfJy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 66, "enabled": true}' \
    'MJdrqHIsJ98WRjqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'ieXRthQZvzRi7pqp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "ajYEHs9TIkcnrJ64", "country": "BOKqywS6DKNSeb2U", "dateOfBirth": "MWOgVeYkCvqq0tO1", "displayName": "5pEVG7sNihxpuuL7", "emailAddress": "DJCxvzZnh8oBAk1M", "password": "NCAUmdnLaVRUu5Vb", "uniqueDisplayName": "jwPa9rYgHaxeTT3e", "validateOnly": false}' \
    'VDlh112byTYCDBnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'vf8JpFuJSZistM75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '544PDlVK8taScpV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "NtCxDDz5rxt6LflB", "mfaToken": "JjokLAaL4oAF2lqx", "newPassword": "8yneWKrOy4xcg30B", "oldPassword": "qC5W7g7hiwumJTI3"}' \
    'jlZPjoCdGiIP6cB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 85, "Resource": "l1lfIR7jnetIJPGO", "SchedAction": 3, "SchedCron": "VN0ZBgvrigXUT4fR", "SchedRange": ["bawD5yOvjgOopQfb", "XmtF0WFH7F2Inhxt", "ynUjuBCxkb2oF99x"]}, {"Action": 70, "Resource": "HT72VuhoGP2IFXGU", "SchedAction": 14, "SchedCron": "hujEfCMt95DEjxqh", "SchedRange": ["gYqmMqIdlRrQmuIL", "keRUafUDP5b6BWfm", "7cYCpDIJG42ILhUo"]}, {"Action": 59, "Resource": "KQytQagui6lsKF28", "SchedAction": 28, "SchedCron": "fFGN964J8WOgsAj2", "SchedRange": ["Rmf1DXvAIkzTRNRV", "yeEGu1ICOCmLAmca", "EFBKgy92LYqtQcDN"]}]}' \
    '7OMCehk42acy8wsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 1, "Resource": "t3PbyctX7HC2haQw", "SchedAction": 98, "SchedCron": "V2sccbVr6HSiXVzr", "SchedRange": ["G4EdKn8eypTzI497", "DG0ZNoJvvi4Ys50i", "E7IjZoDzMmMgoMxZ"]}, {"Action": 38, "Resource": "9AutWDfVOINhql9C", "SchedAction": 6, "SchedCron": "7E3mkDSQkgVMhLbM", "SchedRange": ["6H1MnNSKd0KStITv", "GQtzwjGtGTr238G8", "Aevk3k14782W2oNo"]}, {"Action": 11, "Resource": "X4m6wms9SPaHlqtD", "SchedAction": 85, "SchedCron": "WBVH66JU1IICVNNR", "SchedRange": ["V4lBToTcn1l44ebr", "KEKdeo779KG5yCz9", "jVs1lYK1Mx9rEFkD"]}]}' \
    'qb31AZzwiQBaGdS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 97, "Resource": "tyxkTR8ZCVJtkxjB"}, {"Action": 72, "Resource": "EoTlfR33jqIRoXcC"}, {"Action": 85, "Resource": "y4KSA5UtSXWjANSW"}]' \
    'IT9TLnuMLNJAEk3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '76' \
    'A6rYiIu8eLdWykhB' \
    'xLFnKnSYC9yyBYep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'IqtrikdAbdOT6iSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'dEg8NYuc4q5sJVza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'KGDOULJbjHphqjHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'GAhfWaXqkA5fuVYO' \
    'sMFo9tnqa4LEWGg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'r4nW4pBcPPaiaM1o' \
    'g5rxUjGPKKLMoAy1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "stmxPFz0i1IK3Qzk", "platformUserId": "cRwFPpXGlKR9ss8b"}' \
    '8udl6fLkxFnAqyvj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'By0NXg7zd6SFpkV7' \
    'cAICgWFJZGnNa5yO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'M68r4W1fDZL80oPQ' \
    '0s7QhC8hgSgytNEo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'jK3YgWH9l7rv6XUS' \
    'INd4keCeiw7P2PtU' \
    'rPawQPaHARrhjbEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    '5n0PNuFyKW95dJsG' \
    'oBIjCKlD3axSivIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'V1txLINmdHTGLtX6' \
    'TN5ctYX1sZnYF3hW' \
    'mCCIrP0lJXexseo2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'e6BCNJTTRIHDKdVf' \
    'OUr14yZH00n8MsRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["aB8iurBWW5jSJi0s", "eeGJIqnatME8GnNW", "fAY1yY6D1Euusf0e"]' \
    'OzoSyKttYwUUlMRG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "8vO0OSsJmhOJDUyy", "roleId": "ag9jBDJFJGOEiWJ8"}, {"namespace": "cLrryS5a6A4tL8YK", "roleId": "MrUBL6dDTVwPIt1h"}, {"namespace": "rg2mhbI0NDshb7Zz", "roleId": "QuBPyNi1GhZHEj6p"}]' \
    '5grjk5wzdksOUku8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'dtQoIrpvmM19X4zF' \
    'OvdRTpGmBUjfEU9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'L8H96tuVfQwYIqDW' \
    'qbPmwQw8J7na1POT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'XhXLRU5prAdqnnPO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "zedcppbujZh1fYXF"}' \
    '6R9Rz3HVP2Y9WqSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "iwV3UZg0UJLPMkeU", "password": "wa6OVKxCMxuf0P9r"}' \
    '5f6fdmyi4kQnOFbB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'tvBw81hUgtONCIoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "2rkomSj52mAIMo6E"}' \
    'W9QhzU8FwQtZpfUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'yoiUjmqOyQ7ammFg' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "0GqDZN7ftHOhVy48", "namespace": "YYg1AkRh3NmbRhMx", "userId": "KeIgwq1NZmxa0ghR"}, {"displayName": "G020QpWTNKsVyK8E", "namespace": "U8JYc00PA2ef1jFe", "userId": "qQ8mBpTuvLTJUzwX"}, {"displayName": "JFaWW3JVdYpfHOYo", "namespace": "Lva2c4JscEQfBFZX", "userId": "cSXpU81S5H9XsZyv"}], "members": [{"displayName": "ZOFJ5RrFZYcwfQ1Q", "namespace": "2BbcjSpv6Nt1oz4t", "userId": "dgfKu4bmK8kOKcEo"}, {"displayName": "CRjQJlPY3p42OS9i", "namespace": "GNElTpMlvRDZSIuM", "userId": "0OXOHPluvsry8AKS"}, {"displayName": "ZxOhUhl3Y0EshaG0", "namespace": "uDiJNUuxK22saWaG", "userId": "vrzBdLvFUBZDnVrc"}], "permissions": [{"action": 46, "resource": "gewLWHcBxz5LpdkR", "schedAction": 59, "schedCron": "V8E1xQZLa7Kw77Up", "schedRange": ["CxNyx1jjdxNePPAJ", "6Z9UzqIhZZiK0QEG", "6C9w4lVRNOF1Bg6O"]}, {"action": 69, "resource": "cJIsYRQz97fRWI17", "schedAction": 10, "schedCron": "NIQGFxGwgnSiZtCh", "schedRange": ["E0uof77AAPI5tdPe", "Fz9pGYsLNEGrfy9q", "HKufJfk0MeG3qYJr"]}, {"action": 92, "resource": "PuCVK9WmDAdpLVTV", "schedAction": 37, "schedCron": "gmUm7RVCUREDdoGa", "schedRange": ["tGQ1SeOXsg4jofp9", "PvlQ1xdmr4JDpvZg", "vPGHjV7MNTpM7fSo"]}], "roleName": "ds1zdVT0aWj58Oth"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'vd3jzMDAf40gKSiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'vmxts5HSQvRAPG9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "rbs5niXkjpkOgRCC"}' \
    '7qfz5jV7NTRYld9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'JJ10goNq8uq79Du2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    '8SRRAMaQFEzppeti' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'cckSUon7awfol076' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '96uxp5ieMjjOfFSx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "3AJN97kUjwiCmWQv", "namespace": "brxQpUSnos6QiHyr", "userId": "cGeRv27hj73EtufH"}, {"displayName": "uNIp0GXpM4nbG7aw", "namespace": "w2TANW1Or7TvLoL0", "userId": "wwHoRMNexBOron8w"}, {"displayName": "IdUbp7xVMKfbAJfW", "namespace": "4iMIC52NUedhhkME", "userId": "18qGpSsyEPDWHcqf"}]}' \
    'Yp2EFxEaEHCGtg81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "2NQb5Glh8srTlTj6", "namespace": "1WdV2XUo1BO1rE7E", "userId": "12Fapao5jo9nJoKE"}, {"displayName": "b8tHmFwLGan2SrKc", "namespace": "kNxLWH6rjhRL9uxo", "userId": "V5Oe8ktlePEo1xBu"}, {"displayName": "RSv6VizgtOXZy9cQ", "namespace": "6B074dTJZqeOllKQ", "userId": "NwJUGtC0tAhxn1ay"}]}' \
    '6ruu7PYWHODRb6sk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'Oj0lfYFGnQCAWidW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "PjYgyebU6rHFirnU", "namespace": "pZ9UJ4N78qHTGdn7", "userId": "gE4bwLzDEw2PYt8x"}, {"displayName": "9SSaOZcEvG6KZh95", "namespace": "4BmtuIFllfSUnaUh", "userId": "C4x11AS2jTKoTYeH"}, {"displayName": "aCuN7zpX9vp4QJdC", "namespace": "rwkz0nw2oxKye8jZ", "userId": "qj7k0YiLqOUSBuwR"}]}' \
    '388REDRuYBnWiEsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 27, "resource": "E5yIvijq9ix16vo6", "schedAction": 57, "schedCron": "jgvwV3C9hJ1kSZon", "schedRange": ["K02WHGVKDcKulj3P", "degy4G6LOpak8CYp", "6DPdukc04j6rbfBu"]}, {"action": 75, "resource": "eD9Z7U2lNkorrw9Q", "schedAction": 69, "schedCron": "uekeBe4Tvb3fHCIJ", "schedRange": ["ZkwEcCRi2U7s2ZQA", "arwH0c87v0PwZjyd", "yzGDZM4zTTYI6O8c"]}, {"action": 30, "resource": "doBrfHiHXXgvu496", "schedAction": 68, "schedCron": "qeW5BxVe8iW7sGEL", "schedRange": ["nMdXRqdGPzxXvZPt", "rhjeVBnTrsYihhgb", "eAZoFncMUdmf8hD3"]}]}' \
    'nL1saQxLYrz08jh6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 93, "resource": "5apPMc8ZR3bPCJ5n", "schedAction": 98, "schedCron": "s6DODBmrqEhGlkEm", "schedRange": ["GdCbwodVRjZJWuCQ", "pjuJzpPO7BPxVWlR", "FnIekrQ99ecmenxg"]}, {"action": 41, "resource": "QBqKxayGvw7MqOsy", "schedAction": 32, "schedCron": "lLJGMl5xFgLj4mCS", "schedRange": ["hMFlbrRGjoBQ45Za", "4JR4S3iac6vLeoIU", "LJlWXmQFlef1tSHJ"]}, {"action": 11, "resource": "F5DvveMdBsPt19V2", "schedAction": 65, "schedCron": "yJ7IIUXlBlZMQeSn", "schedRange": ["Og5gf1SwrbpmoF4D", "vNA1wo9IAxV5C71g", "Tw8BJPFctwUMCRdx"]}]}' \
    'XOBu3TWmHDVmCGFo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["D7aNFj9wORAVqRuN", "sXxRu4EQqR3KbYWt", "FzplXVk36IpbGquP"]' \
    'nIPwR1BinZ4ULwAK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '84' \
    'V8Aw9m6GvDSE2F7A' \
    'd69Dln4mqFhgKKcG' \
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
    'ohdjQUwVdPsArkep' \
    'fK0DE3IibPSQnphn' \
    'vAWBSOr7zljUKyhK' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'kD7wAHMrv8zABDhY' \
    'AVxvs3ugNvvgI2k1' \
    'P9nQxzj3AnmpWfje' \
    '5cAtTDvwFHcoODi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'oF1pccdjjZpFnVLb' \
    '7xerpjVPfktNnl8U' \
    'YH5kesuOtYHLqcdy' \
    '05YrqdFn8sQ7yc8x' \
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
    'LKyBfGLHEAKhp612' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'Y2ncRf7tEGzYqRoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'm6EtyXqQbKWMJ0aO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'DiWn6bPmSa85Riu1' \
    'alaVEhjJZbwMHkFW' \
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
    'LSzmAXAruYrVjX4H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'RTvm3Qr9IkuW6jjo' \
    'fc6itDEsq0dHfYG6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'k853GERdJdphepF9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'dfsng9FGGjJ0hRPU' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'cY3fjI1YTT3qUMd0' \
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
    'U73RjVeYSM479gn6' \
    '2lizsWGrtIgVPb7h' \
    'oo8YkNPW8mWOJGtd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'XJGDsxRAR3NObYp4' \
    '3YXMHqWeVjnOURxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'vOhz9s7ktWkJDaHg' \
    '6kDVjxhxRxjeDrqC' \
    'fJEjrqJkFoZFZex0' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'itevmjTJjj5tfFQv' \
    '384ri6A7z0hsW0IH' \
    'IYvJ7PPgVaFwGhl5' \
    'zqkzEu41hVfVC7eL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'VWGk0GjYReIZaDC2' \
    'Au2bEpymbJ4dPJmk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'dvyuDHFFstLhZzle' \
    'tCqa3lJMQ1sGlfqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'DBzOjNeq8JJhbi7Q' \
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
    'D0RW0qgxO0Y6TFpF' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'E20ORMCVBTrkvObs' \
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
    'HMKoTcIXeKZzZBo6' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'ARaQnNZQ1R0PGBFV' \
    'nc37aWVjM3iVKjr5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'VDqakKdW767GAH1o' \
    'iS1JuO7MNoFPtRhY' \
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
    'YIpNqVHbbCVwbitD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    '5tWXZVvjYqrEXKUD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'lmtixw9FtBVAWT8P' \
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
    'xL8674KYMeN2W2CN' \
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
    'qmO8JALtCiDuGQQs' \
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
    '{"PasswordMD5Sum": "vWV3NSjXUXSMKY09", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YyyhEyBfFFZwkC1P", "policyId": "RjBWzTuXttDREDWb", "policyVersionId": "OM3xQaraaEVt3vsB"}, {"isAccepted": true, "localizedPolicyVersionId": "aSbMjyFrYsITcyT5", "policyId": "AhNNH0Ht1yPtBwXI", "policyVersionId": "uYrbPUcvEOJ4Pghk"}, {"isAccepted": true, "localizedPolicyVersionId": "JZK5gFHyIOnLu9WB", "policyId": "AS0qUswy0AnJZJdK", "policyVersionId": "rIn9hHHGg1cTZsJp"}], "authType": "1b5yB8c9gCPFDZh6", "code": "JfJfg4X1dZOTBgYw", "country": "LjPGFqkbTL8ifUAM", "dateOfBirth": "UekrD0J6iuJsVjhL", "displayName": "gaFeFJ5QRuvEsU5Q", "emailAddress": "kmsmfFhPTfXVzS3h", "password": "FUXbdYU08BQZXTcZ", "reachMinimumAge": false, "uniqueDisplayName": "dj8I5eVnflH2hnMV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '6Yxtl5DKUhjBy9oW' \
    'PcMIQc5lRQojhJgp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "XVCubdw0sPrgDKqH", "languageTag": "Cs5GTdTLCxJqK7dg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "sgrnpVE1acxZoDXd", "emailAddress": "PORkWkyTcJzvDUlh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "TlBNpvkjg48iVKCq", "languageTag": "EqeZP1CFaMkJVBkZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "U3qtk0dM4GZGiSut", "password": "b6wUxEikRyHC9VWM", "uniqueDisplayName": "nzbuNQNJxCbLEhfr", "username": "PxIRdbUwkN6Tr6vR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'neC9JYmpKyZGtqWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "67LheLDvwZjthGMO", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VyknpOhuGhAnlnjy", "policyId": "PBj7h3hncU5vgL62", "policyVersionId": "RA2BI7knizQ4Jx8I"}, {"isAccepted": false, "localizedPolicyVersionId": "VDBDxK6laOkeLBcp", "policyId": "rByjUr7w9w1xKUrL", "policyVersionId": "mQSkuEMRzyerpya2"}, {"isAccepted": false, "localizedPolicyVersionId": "9M22gRLsc6Jwt190", "policyId": "s6yFiDZs0wyldbDD", "policyVersionId": "ntsSQ8DEsKT6Mw5x"}], "authType": "Dz8asARtI3TVV2Qm", "code": "lqRK5roG1oZArFJB", "country": "UmMx7nzK8rRAYvvy", "dateOfBirth": "nDPJ9SMRzSo0RzUo", "displayName": "Sen8CjEhtRcnVsYO", "emailAddress": "wypw6F21uYowkPNG", "password": "ANjli9XZkbrkh3dQ", "reachMinimumAge": false, "uniqueDisplayName": "tIEwCcfPmWjX540a"}' \
    'N2pvOi5UG7agVhXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "goHE9eEvIyV2DqxW", "country": "hSV3r9vk4HQDiwqJ", "dateOfBirth": "UZHP7HM6JB2P6ZjZ", "displayName": "h9eggvvmXZU7lVGZ", "languageTag": "6lIs17PXJ8KsgqGN", "uniqueDisplayName": "M6sO7IUwIv84zQjc", "userName": "88fKtDQSbDQN21Jl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "wPxpuUZm1GVuI2Ei", "country": "hx6IJwMzUqM16MYY", "dateOfBirth": "2MVvo3MMCL4aV6oM", "displayName": "UzpMmsvvKTljWspM", "languageTag": "rC4TeRTNUYz7N4wH", "uniqueDisplayName": "LHx7FCWn7iOmKIN2", "userName": "roJNZmgEGzqDHdLp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "DjLIhvCNlBRcFsa0", "emailAddress": "3Nqu13LgD6kOUZXQ", "languageTag": "KRTVR95IwPCb2qOu", "upgradeToken": "IRbBL0njCbitEJNH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "wfW76v6GPVwWjIfh", "contactType": "OXemeTgiENbhdRoh", "languageTag": "ucoiX0GAQZEbNr6V", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "4PYToJAMgJkC8UGl", "country": "qb7cexeEhHz7OKYN", "dateOfBirth": "IMPTFnrbysdru1Po", "displayName": "tArVtIQyxp17b8SH", "emailAddress": "vRIiJgGrdz6Ar6ZM", "password": "GUI9Z0Fol65yD1dL", "uniqueDisplayName": "BQJcBsvUaK2iHOkg", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "IbWTfPplY43FQpfF", "password": "Wm8VMHjC8qrxvZsJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "d3RBYL4PAqdviBvT", "mfaToken": "oSQ7EqHUhHn1qP3G", "newPassword": "2kSIurSOWI2donUL", "oldPassword": "QokdCSsp87x6Jfe5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'YAYJeb1GUdtB5G8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'ITA0g58cqZn79u2g' \
    'rirdqELbdqXaPlAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'Gm4h3PbLHDa7uqaa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'xqXPKuNAeKKjcKgU' \
    '263PawPB10d4KCtC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    '9mqs8uXBZ2Kxk4a5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'FeKFm3raYpWl0MfF' \
    '3iAQb4Iiy26m51Aw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'Cv4UKmP7eczfnYgO' \
    'qXhJZ6DIokID1ZFk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "9fRCHfId0Dhnin8R", "userIds": ["xnO0qs4FykFXDdcU", "uEE9wh4CEOrPY29A", "1L1Xijb7GTIFWcZW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "KcGHG9MBp1AEcNUz", "code": "fWwpdraZO1lfHzX5", "emailAddress": "CHNiYaLYUlRZSLj5", "languageTag": "xwmP8QMJJJn2Lqw6", "newPassword": "aiKZbUJQ92BTViMM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'Fji1GmfmwhN25xGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'RRZnwlbMGheYVteL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'iiIKPjokv6HMQOek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'LKHziTw5M3KvzpUE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'cp3cp4fWJlLrbVQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'eKy5JZK1rVpGdpzl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "wFNJyyLozi8eBqPD", "platformUserId": "6pfcv9jGr7b2hHba"}' \
    'UEtBnsggbEVNmymB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["Nr5C2BOjUiOQVEbp", "3z13pDy371QLVtDb", "6RZXatSimmKudqUR"], "requestId": "kyz4E3EI1bSCYaa8"}' \
    'JSNQdhrnvuDGFiT4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'U6WQQwsTHCgTvrGl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'lrcttK4WgzdUhB2Y' \
    'hKWidqRPQ1hSmShN' \
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
    'aSmVFsmFW74Dkabv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
$PYTHON -m $MODULE 'iam-public-forgot-password-without-namespace-v3' \
    '{"clientId": "mYAT6qTg6ZOaTNC1", "emailAddress": "LAentTXWyBmb2Ir2", "languageTag": "yOaVvE1N52PwdeTQ"}' \
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
    '{"context": "hMz99aZ3fza0rlzq", "emailAddress": "NhVNwgXBCZr4m1Up", "languageTag": "izE7fm00IB0YnQ5x", "upgradeToken": "pjcMxUGokG4VQKR0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'ItcCnXFRjhk7tzIH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["qZpgJqlw441XUfp7", "AVnf8BzBBqEvMtJo", "pw2r5pKsXnIYkKH6"], "oneTimeLinkCode": "MNrEsOlIFw6Fqa6Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'XBlVXOvZUgW2ZMVJ' \
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
    '{"languageTag": "hOyVaO1sgnJF31EU"}' \
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
    'LHtVtkZrE0YPmtE6' \
    'fcv3nPROvD1FiqEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'hsD6QxKzbZ7xvbLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'Na3OJMFdrQmX2OFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'ws9RV6lY9IGsZjUs' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    'SUE7NuCYEOWNkgUf' \
    'e6pVMS5m8aRIev5s' \
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
    '4q7UwwraCDr326Q6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "6cxtjNTXsCsfA2pI", "deviceId": "WzC6nrUavXt7t0ll", "deviceType": "sH39PXWtk222GY7L", "enabled": true, "endDate": "8lP7drhfBjZFgaGU", "ext": {"fhy5TZFoyfZ0XfCx": {}, "PDcH66JWKmTRqrvf": {}, "JIrFQWIDC6PHVsnU": {}}, "reason": "ueYd49OFDlbdIrxq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'xAtw8vLsYBHN6M7O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'yxizWKQdVExukcKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'UzhKKARjqJSWImXv' \
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
    'aLXkvZvwk0v0OKy4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '5dqId3gXUWVAmaDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'rn0iZsIfqeLfl0wa' \
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
    '{"count": 4, "userInfo": {"country": "hRjnDrYWlRfPpgHg"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "6d9NP5nNvzIlwtYI", "policyId": "9wKX9V1XxF2CFfEp", "policyVersionId": "f0qN2twLYXq4HSEG"}, {"isAccepted": false, "localizedPolicyVersionId": "v5DLEk9RkumkrnY4", "policyId": "LksFD2le3UGhQnnm", "policyVersionId": "Mgk0WYv2NTpSejfb"}, {"isAccepted": false, "localizedPolicyVersionId": "niLmi1GQTjQVaJ9i", "policyId": "oRZ1HvMCIXTQG7AU", "policyVersionId": "UES36bRVaiOL6Q5N"}], "authType": "EMAILPASSWD", "code": "egLXRiNNV5Fy4ilL", "country": "bKzQFBHQ0FHWOul5", "dateOfBirth": "WKkzjzRnLLFKGFSU", "displayName": "C1sZtVitkoRyEXWr", "emailAddress": "hLNPUvlrOA50xGdl", "password": "q3Dkm52TA4zLBSh2", "passwordMD5Sum": "QJWgWvIZGJOPkJvs", "reachMinimumAge": true, "uniqueDisplayName": "hfMwJPOcRFJTeKbA", "username": "MIJChPyIhVPmMs1z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["NKAVWv5cGRm3WTx0", "oyOrycewrnLBAZlv", "nOJeNxZdT1fZJTut"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["ZpZZn6egDbFDXW3N", "42ccGURTnJUdR3MU", "QnEeANANjqBdfMMU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "89e6CIBWn2Q3kMtF", "country": "5tiwPCAxM9oFcQUp", "dateOfBirth": "7hrvKVNdGrr2TTTi", "displayName": "Tt8oRoQRf0A1eAJU", "languageTag": "ZSjWUPA9vXrqLxUC", "skipLoginQueue": true, "tags": ["yQvciFGxJNOaveGz", "kTPehZVmZi1UYM7B", "ApA1YByiGkJR30lA"], "uniqueDisplayName": "inKfKXqYE8GuKFRw", "userName": "AkAyYY8hSNUTpzSm"}' \
    '7jdrPdkMMoylrI7D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "pmCIb5JWu7DAXtIe", "emailAddress": "slnM3lJQMDxu7Auj"}' \
    '8cqdtNaFO3ABy1Ae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "DryAFewcN6U8vRJ3", "mfaToken": "ebbfa3ep8cKNlb02"}' \
    '4FzQsBlwn2pN8vqh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'PmlYgFAu9gD8vsiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'fzK1gMLvJ1KqSZCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["nZaGzamJ8JZ6lV9z", "psDX7CWEoHK3yLZS", "pydGfNnNFMfXpIPl"], "roleId": "caufemZ4xlGtWc5U"}' \
    'cGIGpI8YhyHkINdP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["Yamt1NNvdmy7qa1S", "tMbwcUsu3gJ0yHA6", "KDH87AmGMvChuhxZ"], "roleId": "JsDNCQEtOnYVE7i7"}' \
    '7NKczg6MaoVcixj9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["2JkMWuFc2x9p8sAr", "SRypvu88WyRMMRlo", "XySTO9W3BEI4eB0P"], "roleId": "HoEfIdFP0QarAdoC"}' \
    'QoVI26D2IdXV2RNn' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "AlN2mJeW1LQJ8A7N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'ZLQPAny29oO2B8os' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'fAcB6Pd2uPwzliHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "wUtR55gCTACz3aLd"}' \
    '0f0QGkwoIQo88hLx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 13, "resource": "CnmZxob6vepvgW3V", "schedAction": 26, "schedCron": "Ls6LbIwwxFBW1RyU", "schedRange": ["yU8GVL2TVivHbcJX", "1mqJ4BtZCHdlmOzx", "9DrwT5dJMDgZPQtu"]}, {"action": 89, "resource": "VwJFRFLnsSyJhQAp", "schedAction": 20, "schedCron": "idBVB2vTyC482FeT", "schedRange": ["76mWyDrmG0FHQOjt", "Rg7ST2UVRJN0qFJa", "GDiDmatCvCembJFN"]}, {"action": 51, "resource": "GM14H49GbRHeTMH4", "schedAction": 20, "schedCron": "HQ8V4AejtUM6llcl", "schedRange": ["5hdZoPhVcQ4wXeAr", "Pe089cqMuV8MLxiT", "O3GhLJ2qx2h93yz3"]}]}' \
    'Y7YtgdQMhzpcpwaw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 79, "resource": "lqqWYgDWbrtw6qiR", "schedAction": 95, "schedCron": "RiyzWJZAZHklGmHH", "schedRange": ["8I1l3xgoVyEemJDv", "okY7UUVCHGWcVrHG", "4ehIhJk597xUXpiO"]}, {"action": 78, "resource": "Cyo70kyuutjjQDfd", "schedAction": 36, "schedCron": "kXb0SoMLqijtgLSG", "schedRange": ["TnWHCZ6XwqnOeIUK", "AIvQjUxtk82oOOkH", "mCFldZ0XAvFitLhI"]}, {"action": 60, "resource": "sqjfua9x08SJmn2g", "schedAction": 79, "schedCron": "K7wBmEY4lD14f0XI", "schedRange": ["Jh3uxrBGEumeTG43", "4DmlbwWuZpKPB4rz", "vo2R5Q7tM4YbPsF3"]}]}' \
    '3KhfoL7PlFt47mQA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["QQzQAxQ8GRgWKOBJ", "YYXgFmEZ8kWtzrSI", "fMjxzBwWKzJldpqt"]' \
    'AlzVR0WqkbKYSr7I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'Vc2WJyX67v7JTcrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["pNGl78VMGk3b5E1G", "gAqoQkgiht0lsg1U", "1DExMK4z32P13aQR"], "namespace": "TMzFLsBDzdO8IwGd", "userId": "LKPo5zR4q58Tka2q"}' \
    'Lo5spq850ZKnX3In' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "v5lG8WEklkFFkJPn", "userId": "2yomTQth1iJOyDZJ"}' \
    'CwufYAURyXVoJ9qE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["el6x5O5otpujfw64", "GJDWklFkqhGFAoxf", "L2vrevlUaCgxl01o"], "emailAddresses": ["VwoWAbcskuBfcvco", "AMPzCXwpgD8MOfYX", "cljy6EB8dB8wCiYq"], "isAdmin": false, "isNewStudio": true, "languageTag": "tX87XuWOIpQwptcv", "namespace": "roohLb6q3F16PO9Y", "roleId": "dwqEszRnwVX2rvVr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "6DpLOyrgsLZV9arT", "country": "xBgnOqH9lyv8wx2J", "dateOfBirth": "osSHLipk5N6e79zC", "displayName": "fL2ar4zJmB2wifDA", "languageTag": "7LpND5zXLhrmEeBw", "skipLoginQueue": false, "tags": ["zs9QmLReEZ0r6n6a", "nryoVkl4tChuDibB", "IH1dyZPHtYHKqpl1"], "uniqueDisplayName": "Xk1CdFvYqfoYzBc1", "userName": "6XXXuoJGXCyzA8a5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "uh1LdVOaWOjRinmM", "mfaToken": "TxEz6bdDFDqRMyTZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'OXYRC3gIRiYFpDlA' \
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
    '{"factor": "EyVuvyXITMn2F86x", "mfaToken": "ZRHxnOP02x00SvR2"}' \
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
    '{"factor": "yNPms1DdUL5bc6QM", "mfaToken": "B9TtHXqeaYlaYm2X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'GN51wxYTCHYaW7BA' \
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
    'FZnpxmzs0AQYJnB9' \
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
    'w4rkop7LL7Yqjh4l' \
    'gGGsrJv0EyLkZej5' \
    'voHh0KRDJjPEF1Lp' \
    'voOxT54t5Ffna72j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'i4B86NKZ0tkEWAqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    '0EZhtIp1XL7HL2nK' \
    'oPXxLMtU6hLliy7e' \
    'm6ox8O9f2ojEQrZ6' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    '5LOpaGFJniJl9RPU' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'epicgames' \
    'WpWw5UQBldfnMF2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'wbQz3euR4MhLQs8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "liOoWqixFdv5aDRS", "platformUserIds": ["nCrIQ2kChyafmo2n", "IKr9krylalbZWuO0", "OVwGUgR3PEWI0N4k"]}' \
    '2W2caqaRVdR05rSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    'lF29Lpg0zAUzpliq' \
    '50demc4rS3d2v2ib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4gNmB9r9MA5lA6x0", "policyId": "lY16PWsrsxYq77iF", "policyVersionId": "Ou0ybeoERsKMCPmt"}, {"isAccepted": false, "localizedPolicyVersionId": "FhAgAkkEhd3Y16uy", "policyId": "KwJ713r4F9WC342U", "policyVersionId": "ggyr64isEfxbFEab"}, {"isAccepted": false, "localizedPolicyVersionId": "L6KqJTL11T4vlBRD", "policyId": "jj3FKvRIguqDEJfd", "policyVersionId": "xsQXLRJRONKh0R0R"}], "authType": "EMAILPASSWD", "country": "6anzAeqD1HlhQ1rq", "dateOfBirth": "jRECHyhLYGnvEdCj", "displayName": "Ysnh0Y0rQluvKziV", "emailAddress": "TCPTrqHc7vqaXxxi", "password": "GOrXbWC2k23JxAI3", "passwordMD5Sum": "kOXwHnS2VOESYx49", "uniqueDisplayName": "M1JdtImLI5eTuHqC", "username": "NtVlNaGzoqpAFVT8", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ouFIdlTuousRcrhX", "policyId": "NAh3Cu4ou029lD9V", "policyVersionId": "LXNwkZWTbX0PZb0I"}, {"isAccepted": true, "localizedPolicyVersionId": "m4xKek7ZAZJCk1fi", "policyId": "zRJy5JoIlHjTZ4mD", "policyVersionId": "mXZIBTi05akxBYoz"}, {"isAccepted": true, "localizedPolicyVersionId": "zUW4RDVM8Y4PcXDH", "policyId": "8RZqUjELC82uP1nM", "policyVersionId": "UDAKQEkOvO52VTPF"}], "authType": "EMAILPASSWD", "code": "CMgN7rU1yiWEODov", "country": "RwzU7QiANYIF1YbE", "dateOfBirth": "ZwEzBNPCCnVKYp3E", "displayName": "Qx9pSofiZZNcWBxK", "emailAddress": "2ScBMbpsjgGDmxpN", "password": "0sNW3RHxioyNedQ1", "passwordMD5Sum": "E2lQg6rSZj7yw7aP", "reachMinimumAge": true, "uniqueDisplayName": "Jr35oZQ3WcFld5DK", "username": "wJoCrYrlOXZN7MoQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DN1sjuHXDU9ZFHIS", "policyId": "uKMr6e9VKi3lHZdn", "policyVersionId": "YzFYEnOA6gFO3zfS"}, {"isAccepted": true, "localizedPolicyVersionId": "TyTyr1XXDYClbgXA", "policyId": "2XATEcyKtSz6QsS6", "policyVersionId": "BHqs2Z5aknpCHXIr"}, {"isAccepted": true, "localizedPolicyVersionId": "ndNzIiCZiPRCujrj", "policyId": "a26Ygd7A1555Biel", "policyVersionId": "Ng6kfRgfnBT7OdjP"}], "authType": "EMAILPASSWD", "code": "C324P82gdsOb5Jp6", "country": "oxvvtB4aireJSZc7", "dateOfBirth": "Cojp07DFR7IvEhnK", "displayName": "AMSw1WGHPO22mCj7", "emailAddress": "yFmbpItmTcMVUlRo", "password": "YFks2ULHooisOHhy", "passwordMD5Sum": "iZyNxeNJcBIePMwB", "reachMinimumAge": false, "uniqueDisplayName": "IZjtFT6Bs8OO0CVq", "username": "XF6bMzRd2Z2WjutG"}' \
    'AptSES09ZcFGPCok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "MwrtVvGhHzNdHMJy", "country": "s9gtFxWSkvzQZjQr", "dateOfBirth": "gnXc87G37jhABEz5", "displayName": "T57ICJiWEPnZsQ3N", "languageTag": "sS8VgyzvujT8aEay", "uniqueDisplayName": "0LM1IpMDZuDLXNsc", "userName": "wbXgdwQnMuReen3a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "Yjhar5GRzOAfOXba", "emailAddress": "EHFX0sySxhkhCpV5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "A2ZLHG60X6LS9dYe", "country": "42oicsvoF2EgsoZS", "dateOfBirth": "KOzQIDAf44vyeNIf", "displayName": "F5Ri6ydoL4tB0FUp", "emailAddress": "x5TLiooOqRm1Mxf3", "password": "NfjnW9axvejxDQgd", "reachMinimumAge": true, "uniqueDisplayName": "a2Sx7lPUWhfLYtrk", "username": "Z2V3jzXzilslRzP9", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "HlsxNkfgF88XOEWI", "displayName": "4jARIQkIiA44zjyR", "emailAddress": "qefUM764xXmCkJL9", "password": "p2OQ5Ll9C3fSnnts", "uniqueDisplayName": "qrUKREAt8zG7Mwy6", "username": "qt1KRlDGxhO1YbPo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "WmG714ZA04yxGcMc", "mfaToken": "YyromMVFEaTLz3hm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'DX1C9gHM8SS73LrE' \
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
    '{"factor": "ja3XlbCcD2bQLuFw", "mfaToken": "HyfWs9J4OjFm6OQM"}' \
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
    '{"factor": "QgWL3hmjUydsgdt9", "mfaToken": "8KfbaQpgEAKKLcKb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'PxGvL2c7KalLFWBz' \
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
    'kHql6eJa7PZ2Mvex' \
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
    'shOyL8KXBfLq1zWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "mtFhefMqfbE0DZBw", "emailAddress": "K4s4YGhc9qjsGzed", "languageTag": "PNuJ4GH001y8DGO7", "namespace": "yuqGFaSZmLnl13Nt", "namespaceDisplayName": "hHP0LDshHSWtyrOF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8HZNLJ7aPbRMRrbK", "policyId": "joifZAWt13ISgdwA", "policyVersionId": "um4b3t1Ph8xHfEAl"}, {"isAccepted": true, "localizedPolicyVersionId": "61ScAQ7gSO3GHo6E", "policyId": "Swn8otu3o1B2P8cd", "policyVersionId": "PJAnmCFUZdH9CHHo"}, {"isAccepted": true, "localizedPolicyVersionId": "yZ7fYvmiZxdNpmib", "policyId": "PCLiJaHXEyuLQOO6", "policyVersionId": "qVUihFznsLFP3013"}], "code": "gsIOArelbYwYTtGs", "country": "RNij1bUAIrKYw673", "dateOfBirth": "JvA3stZ6FN0omme6", "displayName": "HiOrbuq9cXar8FKA", "emailAddress": "CMfaESKKo0RBtKDj", "password": "9PgWnODMMswus0yk", "reachMinimumAge": true, "uniqueDisplayName": "uKlQjnj5QjrVi62I", "username": "TQp6NklXSUYkHNYq", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
