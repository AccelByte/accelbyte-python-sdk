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
iam-admin-send-verification-code-v3 '{"context": "LddfdsUqjXVzW1Qq", "emailAddress": "xnWR5sheLgsAF4ct", "languageTag": "v5guycGiq9j2EyIk"}' 'nfLDpgHnMOn8nc3g' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "UZ8ZFyyEr0KBXuJB", "ContactType": "qK4QtEydPWLPBYiR", "LanguageTag": "3UbJc1ZYapx7C477", "validateOnly": false}' 'VwDZCIXFNEL3uWVR' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'z3V7YbJM3bNLWHAb' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'CZixe2cQ6O30lpzc' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 56, "enabled": false}' 'QMAEcNcJqrKxnMzS' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'Yoc4ZjiMY4H34B6w' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "Vd8ipcKDwQeUWtjC", "country": "C2UH6jzMO3AfmOS5", "dateOfBirth": "mQNyRPZFPNP56l1A", "displayName": "T6OLKmZhCZxxPPdP", "emailAddress": "wOtEuWBSO2jJepUn", "password": "EEgja2mIE2kLTnJw", "uniqueDisplayName": "c5XmkCuL5W4tKt6G", "validateOnly": false}' 'vVcJerTPW02PWsHi' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'KYArAxnKBfBfDlrQ' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'QuAc10DjjwMv4vrI' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "PRtvhQIyLarjaLOK", "mfaToken": "nX51yAB8Pa3uNGKh", "newPassword": "aLlJzJMSnJIIgsAV", "oldPassword": "maGYxUX1B9oVuzG2"}' 'CnYX2YBF2g7TVtzY' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 62, "Resource": "kaZP7pnnVfxPwc25", "SchedAction": 59, "SchedCron": "HF9ejHaILQruAuYy", "SchedRange": ["JLYGqMv824ouSgkp", "K70uJmUL0uzElixc", "023dIvDiA0tQWlHw"]}, {"Action": 55, "Resource": "BjnHmaAu4YK87DYA", "SchedAction": 99, "SchedCron": "ATCzUOIzVcy9k3ie", "SchedRange": ["64Vnwa0ClGQJultJ", "e32AiwKadEoIVmpr", "wPsa9YD92CX0rITa"]}, {"Action": 18, "Resource": "6rOVGcRAn51rVAQS", "SchedAction": 48, "SchedCron": "9ZFgJbQ3Fj1umx4I", "SchedRange": ["tzkMJ7cudf4r916G", "Prhn2etVIQvRkQJA", "tDUH9tx60AehGz1e"]}]}' 'rmJYXsYgL7TfyIlA' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 46, "Resource": "UlmU1unGKM0tgfeW", "SchedAction": 50, "SchedCron": "bamSCvX1nwvSWdDw", "SchedRange": ["D7WJHzgNZUKsI5y0", "mR3zMyTsftKqnsIJ", "ctAdxyZVKHA9DkaS"]}, {"Action": 82, "Resource": "7dbh2iKNUl0qJqzo", "SchedAction": 74, "SchedCron": "AqanOlscRIWw82k5", "SchedRange": ["K5VTkdubkOFldMCQ", "98JH4n0JtgqzZv5k", "Vu4S95mj8YRvae4f"]}, {"Action": 81, "Resource": "lhBPbarbWEm8bVtZ", "SchedAction": 5, "SchedCron": "K34oA1keYXJvtggD", "SchedRange": ["dXjbdjMBahFZZGMT", "cqnWrIprOv0BJ9Sg", "l7H1sdH2RIJz1eI7"]}]}' 'Q5pu9PutLf6IrvZo' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 56, "Resource": "Q9P7sYLDWAJOA75K"}, {"Action": 61, "Resource": "BYJ2fkqYJoF2FI3v"}, {"Action": 50, "Resource": "tQUvro8TWwXWsz9T"}]' 'VmdMKEohKzuMYDUT' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '78' '7Ot2DkUt3yexZBRv' 'xYnEBhXtAVxCd3me' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'TrT7cF9oVCh89wNO' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'kKYssVejcL3kR3hC' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'GNgaJmuALlMQl9RL' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'rthbfp0VgweLlT2s' 'Y3SsTnDQY7kKU2u0' --login_with_auth "Bearer foo"
iam-admin-create-justice-user '6Q4veujxtyQENvJr' 'BCqeg67d4RWOqO4U' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "0bitNQLzwRoWnR0A", "platformUserId": "bkCPY70FmvviVIBb"}' 'cujF8Vk5qb8NhWWw' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'axyMchkt8l5IPSrw' 'rJl7wYIVw13NCo9y' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'XlbQ52FTHTCj6SEA' 'zT7TOpyiuvvQUm29' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'Iacq4XRLaA643nTM' 'tXSAyejnny0Ju13b' '6o5uB2XM6IHy7EEv' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 'HyLmcvrZZOdwe1x8' 'RjU6Bi8JXE52sUBB' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'q2SimQQoLbe5YOJv' 'xGRxUzrTwagH7BMT' '1IZKTdNFVBQ1crBX' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'AupATO8uXsqVpdiW' 'o8SjDAM0Riw8wLYW' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["3n4F3LD1EDwBXw5u", "BYeQZOzATNSV9E9y", "yNb7yaLXzAVYymOu"]' 'hCkZu4htrsf8eIFS' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "ovTGXaMsq8ePN1oc", "roleId": "o2jx8Upe8SjMvpqM"}, {"namespace": "8puggOEdG47gD5i2", "roleId": "Ni6AnWn3NdEPhNHS"}, {"namespace": "H7eKDfRcngEpTnRU", "roleId": "Qr3RLOM1vEx4gqDY"}]' '6jwyKRxhkLe5zohg' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 '9s9utRQt28b6o3K0' 'COF74tz6aeXZOYwb' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'wjMNdxKWlBfnRyFS' '0Ed7gTM5AVrtBQiD' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": true, "reason": "cNnZa6Zuxk6u6HXX"}' 'diC9ZDj4E4mv12FN' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "XypoOLl13j84P0Kq", "password": "irJ4PkMFtsnFfz8E"}' 'w0X8fBuBSKLSQ4Gv' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'Ltz50D3rpBfBovqL' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "wXBuT30EYeRj17xG"}' 'haBKoUfiHjGmCyPs' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'KCJTv1ic9gvagF2c' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "ztsJ5tj64gV7nmDk", "namespace": "29mcjSuz9vbNStqP", "userId": "tQmQN6eKAGiZFCft"}, {"displayName": "T0RWECdjWYrnulxc", "namespace": "CKAru8pOaAVLDB4k", "userId": "3JwkdaxR7GJpYmuY"}, {"displayName": "CPG181q9GA5DydC2", "namespace": "D8UT6KOc4VPDUR9a", "userId": "yazqXRqegIUicYXX"}], "members": [{"displayName": "zxsBFrUs9BYp6TgC", "namespace": "ejBd5o7iTST7R3Kb", "userId": "bQGERMNpqWb51y5R"}, {"displayName": "UzvMfTkPy0fGvTGg", "namespace": "fLKsg0b1Bq78cE5O", "userId": "5pmPnbiPJ9j4vxmb"}, {"displayName": "H3rVaauufxkPHElu", "namespace": "g48TgfNu0rqXUOyT", "userId": "oLPIREGIKlJt3EP9"}], "permissions": [{"action": 22, "resource": "7NXEjrJMki8jvc3P", "schedAction": 10, "schedCron": "Gwjg3IOH0SDHgYKq", "schedRange": ["xJiFJdrmj5vhzgsJ", "wex7wq8ZPlXNaUNg", "dY2vfJuje5cPnmGj"]}, {"action": 94, "resource": "N9AWtLK9TFgi9j2X", "schedAction": 80, "schedCron": "BPAp6EPb988NzxrD", "schedRange": ["KVpULjjiw3NeVG4D", "Ji9DaMrc0WFgKjE9", "45x2CPVYYG9WvoGm"]}, {"action": 54, "resource": "vTScdbKBsAyJMz4I", "schedAction": 77, "schedCron": "7gSGhnfuF4WZiQVI", "schedRange": ["CVpWd3UM08gMXhdf", "3juXW4JprIb3CJCA", "tvSG8Cfa9dzOJDGC"]}], "roleName": "THIOFjeXbsSgR43k"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'IDzxBwqRJTzrHNZW' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'Usq5lQo2jy29EJig' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": true, "roleName": "YhyVhURx1yPeczRp"}' 'dk0HATGylx2JG2KN' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'GfhzfCTxxrsRRLee' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 '3TcJ7DQIi45aCDHN' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '9mVug2zkVf6KgpKO' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'cn3tMD9UT67bOwug' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "FDa6wUQvehKqwCh8", "namespace": "6XmRkCEcfHDCdl59", "userId": "Wp9A3tXGve6DdK6u"}, {"displayName": "vg8f2cIoByk9fxtv", "namespace": "sgeAxo57nKAbZpsb", "userId": "J4Iu5KJ0ynxGBlac"}, {"displayName": "DCdFe8ATUqVxcSth", "namespace": "rpnMUBsnUfuQIcSb", "userId": "Ut5UGkInFGpuUsdt"}]}' 'q4dOwNESzCEW9dUV' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "hZjLftC3sCS8CpLC", "namespace": "qPD9CeDEdCnnL6Kt", "userId": "1Bjj3b8QM8Rr45UL"}, {"displayName": "qXQgvwD3PsKDJiWx", "namespace": "QBwaS7rDBf2S54ph", "userId": "bdyGDt47f9GWRlE9"}, {"displayName": "hqz6rjDNo4rhjxUd", "namespace": "MM83WekqfWv04vvn", "userId": "9bk5qr8qs2mqtnGA"}]}' 'qXUjNypF6MMqWpdE' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'JsPoaIbYz8cK5jlp' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "Jdre5ur6yvWJDdvM", "namespace": "7T7PX2vamIRZHzsI", "userId": "YOCUoiCXNjrdQL2j"}, {"displayName": "dx1eIba1sB0HsJ06", "namespace": "DzfbzRYt4OVUyumB", "userId": "eIqdQGZC5kM03HHi"}, {"displayName": "jsQRj7N8IAjmsonj", "namespace": "j0ZR50BQ1U6aFD3O", "userId": "2kXQSc58zgZVl4gI"}]}' 'F7v3qbZu9M3OxqVA' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 92, "resource": "Jzvw7tnYtGfv0EJy", "schedAction": 20, "schedCron": "OtIxzPqb6n73m0ji", "schedRange": ["aDH86d9rsKgzCsMu", "lpB8HZUtVVaJCiLg", "KOwrSfWhT5B4Wedo"]}, {"action": 31, "resource": "owfNojzPXI2v0prR", "schedAction": 3, "schedCron": "OEey0MkZwS6TYwNN", "schedRange": ["3UYhic03qGEg5fNz", "BVrjo3g8CfRwtyl1", "HeT7VEPgG40QyXzs"]}, {"action": 82, "resource": "8v5peiuxoBJATauy", "schedAction": 61, "schedCron": "WAOYksczxBS0OBCa", "schedRange": ["2vWadLmQtYKmEMzi", "cbuL2S3RiW8dLTCB", "fGUdVEdvdQL7sVwc"]}]}' 'Z2PofaJoSqtrEOqx' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 69, "resource": "GZ5PKdbabJIkNnt9", "schedAction": 85, "schedCron": "74eg3Nt2c0r4GqF0", "schedRange": ["NHglOVuNZ9LzNeJn", "Burh54CWbYb0Peby", "t8b4DGscjwrizsFU"]}, {"action": 13, "resource": "UAGxHnmSxvkG9UR5", "schedAction": 33, "schedCron": "uymTBjn3d2sFzMS3", "schedRange": ["QaVjZF7Ax6115Kg9", "U8vrQJXQxoIbVi2C", "LEk277Ivjj1A647X"]}, {"action": 87, "resource": "zRJZKMavu4Ul2Iai", "schedAction": 8, "schedCron": "YN27bojDVaZLpx4k", "schedRange": ["EWYkO6KrKUMhJrAS", "Bh61hmWKSSrF35an", "DGvur19V18oIrUKX"]}]}' 'ttgAI2QdWJFLmoPE' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["gd8EMspOs8nkic9g", "j5vyUMAAmIHYbsxG", "5N066FXb88SbLOa2"]' '1DiSFsm0XXQJWszv' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '94' 'VnO2LpBU08wfnlHB' 'XFIqFUmgUSMM5au8' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'GJT0mkVPI6zUtf3Q' 'aJPGrTNcXXTUIggo' 'H89QNmI17UDb19R6' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'H7r1ta3m7jK5pxe8' '2pgFiAS6piIzmc8r' 'KrKEPGSAcong6eNE' 'RUf8kjci1Ctccv9G' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'v4tOcbnuCqf0lm6W' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'BkIzjoSV31tvmMB6' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'jzrpRGESmooHiCV4' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'GUOnXpapXQGRakUb' 'cG7PcR4eiU3Idi55' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'jNrGNT2VHTKuIT5F' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'wwHj0Ur5F2PWGTTD' '81xhNP4t6kYBUjyX' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'An3bWQF6QcAiJpXI' --login_with_auth "Bearer foo"
iam-authorize-v3 'rgroixptZhckUTGk' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'mNWVIJnhhwFDV1Vi' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'taomvWTzdsW4N70w' 'YS4Kj7Yi2VvoQNW8' 'Yc481dYdvGxJAMDR' --login_with_auth "Bearer foo"
iam-change2fa-method 'A1LF7jdWlekFwO94' 'VBCV9qJhWva2FPBu' --login_with_auth "Bearer foo"
iam-verify2fa-code 'jX0geYCpGJM4sqsP' 'NJMiZXXOFwmGWAvN' 'F0Z0GkwxUNYyNwGi' 'true' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'rknH0Y5mrQgLC6D2' 'qsFiQHglUQMZi5Wj' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'MZfOadpgegCUjTdi' '1Ehr8OtqpNJ9R8Tu' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'Ny4ejmVA3vMCsGyP' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'd12B8QNUz0hFFNbH' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'epicgames' 'u9oTc8pVkiyGsj5J' --login_with_auth "Bearer foo"
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 '5D0oiFchQnVeq3g2' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'AB2WIRUQmauIY5HX' 'CZ0W4XmWP0HzSdiy' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'lLhVYszm8xY33OQb' 'umu2QHLyZNuysyM4' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'OfCzdQCXMAWnf87Y' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'PNOe9Eevf1fhMg1E' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 '2k7QLFrVgtX7y0fP' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'OieDCow2zXyFFVpM' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv3 '87yqEwEacQMTlqN4' 'LKkxJ5v3SBafnKNi' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'MPbFkFGA85W3HJkq' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "gS2B37wwoPYOHiIs", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YRtIvQaKyevWYtZj", "policyId": "K6J29v8MpBSpo3AK", "policyVersionId": "RmnJkzJHAckUyBks"}, {"isAccepted": false, "localizedPolicyVersionId": "QfDm0RNFwiz70tRV", "policyId": "LMlHi8i9gOVqajUW", "policyVersionId": "rgEsWDtaKzn8dZwn"}, {"isAccepted": false, "localizedPolicyVersionId": "oUa83ECh1gqPeS19", "policyId": "3TNNzot3sVli3GN2", "policyVersionId": "XTrFibRAhzzEWzWl"}], "authType": "TY70qdgJRvpZrSpW", "code": "X3KEe2BjV00ReCXF", "country": "ffjJJxlgjzIhpgOo", "dateOfBirth": "IOD74V21HWDAfvXw", "displayName": "dxbyp4HAPbBbNPSt", "emailAddress": "VBUpKgOssFkz0F36", "password": "piDYXeHZ7FHls3ny", "reachMinimumAge": true, "uniqueDisplayName": "eFdFfgK46GjCWaP8"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'huTmnq3FGQn3Ahu5' 'wxq6oJq4mChmQHQh' --login_with_auth "Bearer foo"
iam-public-bulk-get-users '{"userIds": ["O9IKBXDFQfXFD58s", "G6uDhFYlrzJBYSeM", "uJfQecutjS029BiJ"]}' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "WOG1m7MKclr5igjN", "languageTag": "TVItrH2X78hxJgaV"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "fw5Vnyq8OzTE89WD", "emailAddress": "NoMcOmbfJrCJQIj1"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "haAosKglqaCXE9yt", "languageTag": "pIO8btO3OwNEGSW5"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "TaW4to7QCY2NGGvi", "password": "9kg3rMIzNmhJTNQj", "uniqueDisplayName": "KlwjfJ3TJ2xVpge7", "username": "0WsLfgbZieRvJI5s"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'T9DH3DfLCv8q4Thm' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "q09bBgPAYxrBE9jl", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "p693lRwtc43atCuC", "policyId": "Fxbfbz4aQERziPL4", "policyVersionId": "dHhOqG5KDdUvk0LE"}, {"isAccepted": false, "localizedPolicyVersionId": "Sck3ggZWJlSlCQMD", "policyId": "ji329PfVrvMEPtps", "policyVersionId": "SNcpK1QkB2Sy8Ww7"}, {"isAccepted": true, "localizedPolicyVersionId": "eVskqeUB7RSayqGF", "policyId": "guhh3bvadRthdbVA", "policyVersionId": "pebRA09rW8i8krFW"}], "authType": "Jhe03coRFok5d3Ay", "code": "GrZO8GuoXNSoVEBG", "country": "7VbBPUWipz9C05Ya", "dateOfBirth": "bFX4FCK5ucTFsAFz", "displayName": "aO3yJpA3KMxBlrRy", "emailAddress": "tER1qdTelFAadM9y", "password": "66Drf4SSGGt3MiBK", "reachMinimumAge": false, "uniqueDisplayName": "SiGUjVAw4v3q6JRH"}' 'cn7KaoCEkRdo6qHY' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "IZWnXqQ1oHFJ9Q0v", "country": "qsL9SomqWsGA76yx", "dateOfBirth": "i0QzZWfmP2sx0KO5", "displayName": "bEJaPnAFjsodyJQV", "languageTag": "VBrShGbIIuqK8C40", "uniqueDisplayName": "3HgoXCR6XOMXwKdf", "userName": "qk8T4QHK30EX0Fcl"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "pDl5HsuracO5Mnjn", "country": "xD1OXkxShFVQTRek", "dateOfBirth": "Lfjmy8zosRCRgVwb", "displayName": "rQKmb01yA7U7dGMj", "languageTag": "upZkZQY8CNyT4k3D", "uniqueDisplayName": "IbfT22G5NpE130YW", "userName": "SgxpKWtdtdtVW9an"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "ENmxb9e7vXZV3ig8", "emailAddress": "Jg5VByeI3ycMcYYB", "languageTag": "ixKJXCISQdwec1m8"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "BusV9tUh74KVo6Xq", "contactType": "jz2xUKLNWSmYyVvy", "languageTag": "elIJ8QgaLMqi836U", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "a7cfZl4VuY6rsZyo", "country": "6CBRRnoOikIxXKKI", "dateOfBirth": "R6kPmswm5TCAU1cK", "displayName": "ApdJDnE73GLmSZns", "emailAddress": "5owBhoUg4LsGP6KL", "password": "PXkvUv2XiXaBzsma", "uniqueDisplayName": "xjTZPlLitytGka7K", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "exsOZ0b2p3b63Krc", "password": "wIcXMhGy83Xit6bo"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "OLGCcg16DqwdQPQ9", "mfaToken": "HkSSV8e1MgTTLS2F", "newPassword": "garY903INGIyEfRB", "oldPassword": "Ej7qms9AGQExPhgr"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user '9gGfC0GjvpgJfuBs' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '1Vpqn47GVghTH2wT' 'oOnq9U5lyW89Xwt3' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'wmRTrDCjhnKvsHez' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'WTqgYPixtHk6lWq6' 'tEeUmU96FLEak0mJ' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'qjRYldcTpdeCD9XP' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'Ri4bAQL7VE2wL8Y4' 'JFVUdzA8bvXlDhG7' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'BrorbKIKuOXJPm5z' 'trr09CDA8Ij5bGKS' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "uopWQbaCvdPSq8Z2", "userIds": ["7GpvHCDx55JZ5z6g", "ujpFzlPspQD9IRIp", "DDubntPCFxfeoW2N"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "dSWzOXjO1NQUqWHB", "code": "W78XREZCiTNAxq26", "emailAddress": "gZrPqCsSDspvgM16", "languageTag": "sZ6rjnkH4ExObppC", "newPassword": "6CMYDm5ge659UDEO"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'F6gp5UfmjtiVbqJn' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'ZcrqrPye7fCwi7Il' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '2wIFlHm9N6owMHMt' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'Jy1Oqn59tEGm9NYe' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'UT5P0nx8TqSZdZ5C' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '8mFI9TnvzEqBNMF9' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "CZvPxT5zbreMc9fB", "platformUserId": "oU3RHNDFjLKFrepy"}' '56eW1kmb15QeIQF5' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["1c4MqJzDSvELgBe6", "dboSdhkBzAzPkt1e", "fGJeJaxyHYutgXuc"], "requestId": "x85vHA009FAb21jx"}' 'eWXk80y9uxgVLGgK' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '8aVSCN6oCETQ8gID' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'RdD2wwMXwKVXGPhE' 'Jsc7rZpxaPHc9r8e' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'ToFmkHJ6BPOKFLxI' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'wKssw647YwDudnGR' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["ufOUGfMjTU226l07", "jPlcYaqYM7YfBmhj", "I9Y28qVceS9UX48d"], "oneTimeLinkCode": "KPCFUIeyYEymNXzN"}' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "X6TGh4UdEweeBsJE"}' --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'vBbAvCmlh6Z1oz9B' 'aixUUvmzbajE2gjo' --login_with_auth "Bearer foo"
iam-login-sso-client 'oiDnc1NUb51lEgUw' --login_with_auth "Bearer foo"
iam-logout-sso-client 'Q9tkWaMOH47CAT7c' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'BP0918JaEBQBP766' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'LUnBBR84iAO7sBQt' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "6YJ2tWwF7RnP1oK3", "deviceId": "c4RVfjB0zi3XrYZU", "deviceType": "iN24ol1qqbalgizL", "enabled": true, "endDate": "7ycJV5YqE2myQzl7", "ext": {"X9fHr6WvBxmBvNj3": {}, "ktaDf9B22HGgxakP": {}, "t7IYzaZUTmvsEzLP": {}}, "reason": "nnGsnfmBerp84qjw"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'zWpCF1vyamjsEzwt' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'PxK1os4qR8LaQzEb' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 '39sZTdFfC8x5aHLs' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'XHlm1RJTTy9JrNz1' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'K5M1qgFddYvifGHa' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'wNx6yhniEHLbEQKc' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 30, "userInfo": {"country": "aUvrKXDIjYC4df9q"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JDS6T75Q4ulonMFj", "policyId": "mYqE1wJhfogWg2Ap", "policyVersionId": "m0sUy18aWn65Co0v"}, {"isAccepted": false, "localizedPolicyVersionId": "2Nd8Jpa19GJDK46E", "policyId": "ehx7xasqMY9aulsL", "policyVersionId": "6NOV5agpS6A5mkuf"}, {"isAccepted": true, "localizedPolicyVersionId": "KtE6gnYxmkmCWbs5", "policyId": "qugklBUS6uwWrCQt", "policyVersionId": "86Jrg8tLAJWpcyNk"}], "authType": "EMAILPASSWD", "code": "zKbyQk2vQTYX1xst", "country": "h28NZZgsXycuQNGI", "dateOfBirth": "DeHlf6IcX1K9JrK6", "displayName": "Or2xx7rLwrPoWiyw", "emailAddress": "nxuDLLuIaSxoloIH", "password": "1gBCWVFrvls0Zwos", "passwordMD5Sum": "KhDlLfTKxpVOXvGS", "reachMinimumAge": true, "uniqueDisplayName": "bRTI0i6dO3zkbDse", "username": "h4tJdoGcwMBmegqV"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["aWMJBjrV0p9A7tcH", "rV0MbJGr4drgkDuW", "S05m0pGzazM2BUXn"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["zUEWTiKMJAf6Agbi", "EDMfCckWogE5gcfF", "8AMGZ2FBS93Mg6TK"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "wdRMraDLrwh3d0yk", "country": "RGkgqUNIbJMJ9ABb", "dateOfBirth": "KVWO2YEDiqkwKbpd", "displayName": "k7wlDngNiPPjpSAl", "languageTag": "ZwFGpea5ObBB49Km", "skipLoginQueue": true, "uniqueDisplayName": "ekTsQxMTfaSot7ao", "userName": "hFYy4VxwHIJ9gzxq"}' 'Aw4vBGQAeh0VTiTP' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "4PSrXUS6jYI9lsQF", "emailAddress": "D43Df5qUZOFzpFd6"}' 'b5Jc5TETHcup8GG0' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "VCMTFJ6svTyo9RHg", "mfaToken": "et5hzB52BDFopxUw"}' 'kMuSqQnKzDgDAtqE' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 '3kuybwTQFYEJjIYw' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'qfSRy8GgVk77fd1G' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["S5YkyhAiAItnWUmD", "225fp1egsx3ErheN", "wqd5priclNNqLyrl"], "roleId": "zrJ4QHbfnAdtkujx"}' 'Hff7n1yaNCcjgFhS' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["0URBhl0L5FCbOn46", "W2B2uPQLrt2t6bVp", "CgKvPXSDufmKh783"], "roleId": "cV54JsVBRB0rY0xf"}' 'WddACyHSmo4KX9TP' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["O3K1k5ZM8btmGsgX", "NXbpqxh76Af5JSwj", "w2fE2g6jXV7oai2o"], "roleId": "Dm9FaP0HJ98tE4Uy"}' 'oQg0b0sGOkzxVt15' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "tADrNGBWSJ1zQKxV"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'mRTawjiZPMoZZcyG' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'EHxAKDQher3usApP' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "Bq23kyH9jQbHWkcV"}' 'k0X28GS54vl7gIKB' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 5, "resource": "IZwrMxf3EnzZVnkL", "schedAction": 93, "schedCron": "cfPl3Z2zSBbs4PAV", "schedRange": ["72u8AxE2IQeoxYV4", "UcYzswAGpXqQxctu", "VaqPJGAHEZmuQrZ8"]}, {"action": 66, "resource": "lhJNGZF07lsPP5Of", "schedAction": 70, "schedCron": "mAj6IKSYFdJwgZsR", "schedRange": ["POzwuDSdGl1A2vaN", "eDiSqTfmAVg50kOd", "JagEmTuaxlxgywkb"]}, {"action": 6, "resource": "oG1DBdoKH6sREmmf", "schedAction": 46, "schedCron": "4jyCVJ0V8obTlGVT", "schedRange": ["hz4bm41oIcV33yjP", "xibDjfF7JkjCVpZK", "MxkFkBtXMU6KRIm5"]}]}' 'xBoIi99ctgFXasxp' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 58, "resource": "h780ktjQw2yXzaQW", "schedAction": 1, "schedCron": "rDXVwCkhOQ161TFj", "schedRange": ["ROYJm75VIuCOCkt2", "W1DfI8QtgODk9K6D", "cMnyCPn1FylWdaNV"]}, {"action": 51, "resource": "VaZTkbbuWiiA4UTD", "schedAction": 13, "schedCron": "K3zIUYJmdF1YtWNS", "schedRange": ["QlcMzxfppNCrscDP", "bklTHcmgXsrVj3Mj", "ml6BpCODWGOLMmCZ"]}, {"action": 95, "resource": "VpmXqRwVjc3W2ANm", "schedAction": 62, "schedCron": "dRPRfd6mLZ0GTJwE", "schedRange": ["joZrRtaeWKMC8wsO", "ByQAMAgqFEzEt8um", "j5XhKnw7MHDwFVKU"]}]}' 'C2ecnpUDqvLQixPK' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["VSmWa8TGko16XTqH", "c0cM7ixq8Tjnxp5C", "l8ggaEmCcuK2hHvi"]' 'BEWpbusO6EyVqstp' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'gZpbz77y88rUFum2' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["ZcA8iKcF0bkfjcTE", "FXcTwEtnHxP5pVtN", "4jNVIdruEA39uCJz"], "namespace": "sE8WObt6t0w8LOBx", "userId": "E15JYj4IqWK09l4w"}' 'krzahXR1sDEDVKDI' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "NE3HjCiVR1dQ8kuh", "userId": "b4pUwnGptHUplxza"}' 'Da9PDwhu31d8eOdt' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["rfq6ECDD6OGkuLs9", "gNpNon6DKW9A6Amn", "QTNFidImWONTvCPM"], "emailAddresses": ["GLdbYEknHPKrZ7Ti", "NBE0HRsE0GHDOFjr", "fqJcyxT2a7fCFAUz"], "isAdmin": true, "isNewStudio": false, "languageTag": "iM573TdtWjfVciuL", "namespace": "nLsBKGsALPuCOyph", "roleId": "UUAV95708zaP0wpZ"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "gQEvFzox9wHocX3D", "country": "RWobEoGr8W97KBed", "dateOfBirth": "cr6PM51z7i0wQ9eg", "displayName": "K2t46EG8I2lTviKb", "languageTag": "OgVuN3nhkn6QIesN", "skipLoginQueue": false, "uniqueDisplayName": "2AGeidXRRnIAJfKV", "userName": "jOn6rtILNJVv2DLL"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "UyBt5hDs45siG30L", "mfaToken": "v9iGa5mkZjnRXVcg"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 '6AByNpBo2JYkwLdm' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "R97u9MVUii4KpYcb", "mfaToken": "1AUsESaBOTHnbX9t"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "C9PQlFAGbMtEybfc", "mfaToken": "Al0mnsAkRT2k0Azd"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'gIunRkTxsGdrpNEL' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'M8Lfkut0wnT24wh5' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 '9RGSbBMh7jpszuVk' '6iPdJ2boQqCCyJfT' 'hvCJieqRSGN8Mm74' 'HlSZzp4aEW4GkHG5' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'OIVuGv47XJpkMiop' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'QrVL3ZZTVxqa9XM2' 'gY14iWk12Jffk8dw' 'KNPUOHNZxML3yoBM' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'qxd6PWz7sVnMxge2' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'epicgames' 'vZgN5hshSe5YmZXK' --login_with_auth "Bearer foo"
iam-token-grant-v4 'refresh_token' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 '8d3o7cTS9OIIMErn' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "NTLXHrsOFsbhRow4", "platformUserIds": ["iaYKy0IjsDgbJ37D", "N2lDvdh7okHl1wMh", "t2Izq7TCUJhDsDef"]}' 'AS09VyQB1vR1mx6K' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7GL1CrO4ZuoGZSxT", "policyId": "zm8oMSPIHPtqzIWI", "policyVersionId": "zg8pbjnt1iBV8Dpb"}, {"isAccepted": false, "localizedPolicyVersionId": "B96ndlO6iPGC9Rhz", "policyId": "MC7V8BEphnRXnSpC", "policyVersionId": "zyb8FkoxQbrPngi8"}, {"isAccepted": false, "localizedPolicyVersionId": "58pQswqKLutINusO", "policyId": "sa92F6iwkJIYOLar", "policyVersionId": "mpWyvib9CDW21ANr"}], "authType": "EMAILPASSWD", "country": "PmPXC2LfL2m5rP2A", "dateOfBirth": "20t6foPPH94SUinY", "displayName": "5diUlqgvY7dPPyah", "emailAddress": "ppgxJhk4EdTZ000r", "password": "S92594HLvWFsXHtM", "passwordMD5Sum": "P0k9L5dREQbCqfh0", "uniqueDisplayName": "gpABFBER6WNcDOsR", "username": "zBkf9A6HjCnFRdSi", "verified": false}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "cvszzQLZBktk0siM", "policyId": "up01kyaFwwD7wecu", "policyVersionId": "Qb4GNQHVZMKGBnzh"}, {"isAccepted": false, "localizedPolicyVersionId": "suaGIzttTncVBf5g", "policyId": "3oeuHiNyLkfPQPmj", "policyVersionId": "UkvSs5YmIejozmG5"}, {"isAccepted": false, "localizedPolicyVersionId": "SGcMuV5phhU315LU", "policyId": "C6HSMQ32UznXNd6v", "policyVersionId": "e29lqqtcLJW9eTJv"}], "authType": "EMAILPASSWD", "code": "NDFrx6LabyDnqXjX", "country": "KPIcxh0x7T6RQGnn", "dateOfBirth": "W4ugGX6mKBbgTD9x", "displayName": "L07ZzzIs3Jke34ZA", "emailAddress": "UuLP897ooMLnemwK", "password": "AvgDXNrFEE4Jf4hQ", "passwordMD5Sum": "psLOcLtZw0efmEVc", "reachMinimumAge": false, "uniqueDisplayName": "shbnQ3bVvuvpsDJX", "username": "PCWkX4Kpi8CJ88aM"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FFAQZbfbmVTEbiRq", "policyId": "5Juikmpat75rVbN9", "policyVersionId": "ZBtzJ33tCwv8H1f4"}, {"isAccepted": true, "localizedPolicyVersionId": "30HNBYZSrz7pMjES", "policyId": "LLMPKDXLki6Oz5By", "policyVersionId": "gt8Q0RjSf1srB7hG"}, {"isAccepted": true, "localizedPolicyVersionId": "UFqTooGGnPEgY0t7", "policyId": "QQWl42byOwXgKyPh", "policyVersionId": "Xmcysae8HpWH4xiz"}], "authType": "EMAILPASSWD", "code": "fWthJSu2pUIIuPLF", "country": "AtcWhjAP57QbWvSS", "dateOfBirth": "p71zEPPfmAQiqRRC", "displayName": "2caquMRtQOILcaDq", "emailAddress": "UITBHQR5ISNoFR3G", "password": "UxdMuvmL0UBfwzaa", "passwordMD5Sum": "eP3Wd0Wrb8s3GW0C", "reachMinimumAge": true, "uniqueDisplayName": "0vAfbq8xoCurq4lp", "username": "HXrbVBh60NUA2aKQ"}' 'wnXrmi6ya8u4sQPv' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "af1AcweR7tJW3MLM", "country": "ob1hUnIzIpUM8KK1", "dateOfBirth": "kGFN0NUNGKxdlAUD", "displayName": "FQuGPzAuT7M6OBrN", "languageTag": "wioKnXPVZaDcXsV1", "uniqueDisplayName": "TnsZioDiBgprzahP", "userName": "B0FKMa0YeyNBQWUH"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "DBnBeePkqg6Zt1Lr", "emailAddress": "5BlO8K6LH4dSaa8X"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "YHug51ZTogG0N7Hv", "country": "nuq1kJ1kpHcQtnIc", "dateOfBirth": "9z70LFQMI0oZuEjY", "displayName": "0rNBbbB9txAvtRQv", "emailAddress": "qJacXR2Rf4noXDFa", "password": "EUkPUBnB0ZEJH3eb", "reachMinimumAge": false, "uniqueDisplayName": "g922xiBgHSka0Pz7", "username": "I1WkIa0oZ1nXpW1l", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "0pcZgIn4lPghHyME", "displayName": "HBzArbyW10NkJFQx", "emailAddress": "uMHnfOlX6HYVEiae", "password": "reFCPJU2wEzUYUTm", "uniqueDisplayName": "Z8JSMeNmRocp400R", "username": "Ze8Bzx9aGEI22BTC"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "Zs97TJI8GPrM24F3", "mfaToken": "celFgM62HQtgzQhO"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 '3nR8j8DlP6OGbn8v' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "mfMYGLt1AjKhh3JM", "mfaToken": "X7xSrz1EH6X2SM3x"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "zsNrJzWBcdFlo7oA", "mfaToken": "sOlfLB1J19b5rTfi"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'L2P3r1a8KIJH33aK' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'kPuWD59MgTy1HA58' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'Jt5NaROjSKFEuZo2' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "ElXYSS4ezBRSiOyR", "emailAddress": "eviDaxlPdhwmcH03", "languageTag": "yoMxzRR6xd9rTh3u", "namespace": "reaIbxM3Wev9pZQj", "namespaceDisplayName": "WAN0tny16ZHZtuSJ"}' --login_with_auth "Bearer foo"
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
echo "1..418"

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
    '{"modules": [{"docLink": "GQCrM7JEMRPkdTcA", "groups": [{"group": "zkIlndN5xeayr3vU", "groupId": "KMuIiz2MiAAKcvAX", "permissions": [{"allowedActions": [27, 47, 32], "resource": "nH0QIhoJRY807VmB"}, {"allowedActions": [93, 34, 41], "resource": "wZXQZZrSsuYiIPei"}, {"allowedActions": [32, 5, 13], "resource": "ZS1NMkrnHs1Iyhwq"}]}, {"group": "k140MolIrnlkRVbc", "groupId": "X435TDYpkk2Gza6D", "permissions": [{"allowedActions": [37, 64, 91], "resource": "e2bzr6qQw6fSESkM"}, {"allowedActions": [90, 83, 60], "resource": "PMBb12gpmShlmIt2"}, {"allowedActions": [27, 36, 10], "resource": "MeD4bD8gISE34yIA"}]}, {"group": "ZQeigiA3wBrmBYIl", "groupId": "ZeheP72AB8EO3Yrl", "permissions": [{"allowedActions": [50, 36, 95], "resource": "WowUpUDVLlTtuJJs"}, {"allowedActions": [69, 60, 99], "resource": "AAg1YA4kZURmoGgx"}, {"allowedActions": [97, 60, 89], "resource": "Sdj8elbtHvDU91Dm"}]}], "module": "HzwiqVPCJ5j18Ou3", "moduleId": "aY8nceFU5GKmcEKp"}, {"docLink": "8AQwqgJs6O0Qj0cc", "groups": [{"group": "Mkdz6zPz3BVHAqp4", "groupId": "O9XSjap24esyjh6W", "permissions": [{"allowedActions": [5, 63, 16], "resource": "migf2n6iQyr5cb5Y"}, {"allowedActions": [77, 5, 64], "resource": "fwBiaVPmmn0T5uzl"}, {"allowedActions": [26, 54, 17], "resource": "luHv7Hssd05pHBJX"}]}, {"group": "5ln8PZbYVD8RiaTs", "groupId": "dD4d3kSbTkHPMUvO", "permissions": [{"allowedActions": [54, 96, 85], "resource": "Xkw36cr2WJQqS7Tq"}, {"allowedActions": [73, 49, 72], "resource": "6yCSXBqJqjAbVwSa"}, {"allowedActions": [30, 99, 20], "resource": "f32JS1av9VNpVLT0"}]}, {"group": "LvqcfSdO1nAjY5Fv", "groupId": "ADb3GUQgci632w6L", "permissions": [{"allowedActions": [95, 73, 35], "resource": "6JXSh0Z3SWISs1dY"}, {"allowedActions": [36, 73, 75], "resource": "GcmVf0fbCU9QdPuW"}, {"allowedActions": [10, 64, 79], "resource": "2hm0TqBQprHn3whP"}]}], "module": "KU5abnqw8fFa30pV", "moduleId": "bhr1BHh1arZAyuLc"}, {"docLink": "ZoEkPpqKhP2jWnRT", "groups": [{"group": "glw0gdWoE4esuiDr", "groupId": "quccz4J6fFQezJ5E", "permissions": [{"allowedActions": [98, 17, 26], "resource": "YHIknvPcJkjRevVY"}, {"allowedActions": [10, 76, 17], "resource": "8HuUY1QQHQ0NCEdd"}, {"allowedActions": [72, 2, 40], "resource": "JFDEBEOOvJ5BKeip"}]}, {"group": "IldsgB4hOxb88WgK", "groupId": "SLIpneDQCfwucHRL", "permissions": [{"allowedActions": [0, 30, 19], "resource": "2NstrL6TsJeRcE7G"}, {"allowedActions": [41, 39, 47], "resource": "HvjM7X1fjzknv2HZ"}, {"allowedActions": [79, 74, 72], "resource": "GOTvKKRTHDntaFiu"}]}, {"group": "fH2YR6QU7fj6w17a", "groupId": "rNs12hOoLVM7UFnu", "permissions": [{"allowedActions": [74, 9, 61], "resource": "2hgU56xtyJtnbTDX"}, {"allowedActions": [43, 84, 64], "resource": "W4Zw5QwVKWNy2tnF"}, {"allowedActions": [45, 80, 1], "resource": "ifJR4hr4gdJDujYn"}]}], "module": "VnFK6gB6ZxC6yYUV", "moduleId": "UJYnQ3jOGmROIqxq"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "Q0gcNeTflyvUh3w5", "moduleId": "ZtfwmOCKpFSMF0tf"}' \
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
    '[{"field": "GIZCTNiIRc9fEjkZ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["T3t99HmcxzjDhTrc", "BKtU956hOg8oukDV", "dweG0sFHxTHa2k60"], "preferRegex": false, "regex": "zCqUgq1gLbcIMevT"}, "blockedWord": ["mC631p7q794bu49l", "INFTtERAXT2h3hcQ", "2wV3ZbBTnNQnVUhA"], "description": [{"language": "5WnzVZdj8tsyzC4Q", "message": ["aLXp3o4TDraEEaDN", "JbVd20FVHevCjthJ", "Ub7jKuMrFaoLulzp"]}, {"language": "3sZxImVK5yh2LcM8", "message": ["LaMW0ByjsRUrAHNR", "kIcC4wNFzsbrtYvL", "h56AWXoMiowdWSs9"]}, {"language": "DQ0VU1HED9CGo9aU", "message": ["Xj3rh0UyqxVWlIMY", "5tTJw4KV104MtMhK", "HmSjqPuQZX5KjdNr"]}], "isCustomRegex": true, "letterCase": "9DJ4V97SJLlrwXmI", "maxLength": 67, "maxRepeatingAlphaNum": 0, "maxRepeatingSpecialCharacter": 68, "minCharType": 26, "minLength": 63, "profanityFilter": "RCARuFLx4rV4CXVM", "regex": "rDYKe2eTf1axo16G", "specialCharacterLocation": "qT2vSLLiMvcu39YZ", "specialCharacters": ["JypWzpNXgnoKIz8O", "8NglJtZTh280vflF", "MxIhlIT8AgyZJ16M"]}}, {"field": "Md2bzOrTn2huwPgy", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["eeDNfUESLlwHv3Jg", "teOLyKp8a1VqxXnR", "hDd9TGkO6aIYqftw"], "preferRegex": false, "regex": "rM2nhSEanfUYrMU6"}, "blockedWord": ["A43UKGpvC1cr5T1P", "SXhduTWchzXDv3TA", "tBjP4HSuiYCbG0Uy"], "description": [{"language": "YUJmNL8p6AbdtU0C", "message": ["DrlQpKB8qoel2QK3", "aSOYdmMDikc3Fjm9", "HoQDemtiQvURYZCe"]}, {"language": "F30RT9rBgM8o7lxX", "message": ["q7TkdM7FVDCBcvVe", "grZddP8lLQo6tHj4", "z4cAM4LMJfWNZIxA"]}, {"language": "gBpeubprKX68jTyR", "message": ["d3LrR1x6U1v6zSLj", "m9zmzUW0vPj90jmL", "Tt5YQGawcomPoiYo"]}], "isCustomRegex": false, "letterCase": "1f1AYq306Pysv4VP", "maxLength": 1, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 36, "minCharType": 29, "minLength": 31, "profanityFilter": "lXypwucUqqqff2iW", "regex": "i4yP3uqNcig6YcDA", "specialCharacterLocation": "8Z3g62oGYwkrjLI4", "specialCharacters": ["EHJEEWgki9fbdvUM", "DZeO4U55wdCpVpnE", "NiTc9NESV22eRBEl"]}}, {"field": "D4K2Cy1tJcPAEkCe", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["rN5bEhmuHgKeWizE", "pw1zN0mOYgGhHMz9", "dddLWJWDuSYtCaIv"], "preferRegex": false, "regex": "Lp91wYUJPbvzn8TY"}, "blockedWord": ["oMDAaUXSuBQdvdhJ", "oT0WK5ngNUxDKfZY", "ofPGUbSaA00nKxQj"], "description": [{"language": "YU6KlavIiLxU2I1G", "message": ["yJS48Hxu8Ju4XSAn", "lXRYB9BgSZBvkehR", "n83B0nrW1qx3NJTu"]}, {"language": "gVWXz8dv7BiEUqnz", "message": ["xs2deMF8UAJIHEZv", "5zyUUyNJkvA5xF3z", "HtZSd3QzXhkrN4pW"]}, {"language": "ryt4XTNwpp0ni1Yf", "message": ["IgLZ4YIzElrLZOBL", "HCKmLBaIwlokbAFW", "8RgBUwBL28BqM8Uz"]}], "isCustomRegex": true, "letterCase": "s0dFYRSa2OULZ0iO", "maxLength": 55, "maxRepeatingAlphaNum": 73, "maxRepeatingSpecialCharacter": 53, "minCharType": 16, "minLength": 83, "profanityFilter": "OhmHOpCdr3WzDm3h", "regex": "Jdd6uaO9TiTPnIh2", "specialCharacterLocation": "iaIBpYC4txul6VKY", "specialCharacters": ["lNYYlHPwKDpJmkeo", "Akp3Z4pgyJYwclb4", "gd4QgQut2hiPuDdO"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'PHcN9drwqytieXpI' \
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
    '{"ageRestriction": 11, "enable": true}' \
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
    '{"ageRestriction": 58}' \
    '5XDq9dGLHjtgE2bT' \
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
    '{"ban": "XJxCCFqPNDqWrpkW", "comment": "nnova15WVuE5cYVP", "endDate": "9tQSa27BnPyq3I1B", "reason": "LtGEZDRNkk4DJUof", "skipNotif": false, "userIds": ["K8RGS0zCYRVmbfzw", "Umsy0stUmKdXiiTO", "bNdqkWa13g3pgHx6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "uPf6jQZcYerH933X", "userId": "7iXEEM2KOusNEHcI"}, {"banId": "95GGdJvucDbs6Udc", "userId": "cuM2ykRj3WnyAaUa"}, {"banId": "QBKFedL2uduXvZUb", "userId": "QQ13FhD3NExUFipJ"}]}' \
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
    '{"clientIds": ["sUiDawAjgHFQk0Vz", "WRNFNiUn2yXMSCcH", "ADYpS861c0CJ7Lzp"], "clientUpdateRequest": {"audiences": ["FvOSF6xKA6yrnvXY", "5dDwneac75C6S2eH", "sH4Y84hL75QboMHC"], "baseUri": "tzEF9FSeg6WYgtfu", "clientName": "qJHrs4e3RnWR30Md", "clientPermissions": [{"action": 56, "resource": "oMrj2J4JGQZAtyjT", "schedAction": 49, "schedCron": "Lj8aGsH0qE5p601a", "schedRange": ["k59yFSfdZIv8oYWP", "US4Zu0SbTt6M2Xiz", "ikCh6q0yq2WAHtL7"]}, {"action": 70, "resource": "FkOPVu2fDtOjW1iS", "schedAction": 86, "schedCron": "rDlEX42U0syrGNhB", "schedRange": ["mgT2q0kIbrJ2S5Pf", "1Lvg8kYEVylINJpx", "FY8E6pU8eHjh0aTj"]}, {"action": 71, "resource": "Jg7y4Q9CU3fjSRaX", "schedAction": 61, "schedCron": "TJ9uB0zypjJiu7BI", "schedRange": ["imNuwB3hBVhuSMHh", "f5R2MkxQTAYGfE6h", "XZ7XLoWCGf0dZEeX"]}], "clientPlatform": "Bd6mGG6SHcZbX2wN", "deletable": false, "description": "JRYV1oqNLmPAUIMw", "modulePermissions": [{"moduleId": "a2wYq6DsUq38bYva", "selectedGroups": [{"groupId": "WLoKzHnngdfFnOfY", "selectedActions": [37, 41, 69]}, {"groupId": "XH6LYXXMndxBPKmH", "selectedActions": [98, 54, 57]}, {"groupId": "vvpEeHhXiJcJqYSx", "selectedActions": [98, 99, 75]}]}, {"moduleId": "NnQOhusPn4466u8a", "selectedGroups": [{"groupId": "gb5HPsBU0Eo6QJ9v", "selectedActions": [56, 51, 89]}, {"groupId": "dOB0MThZW6LwcAg5", "selectedActions": [10, 57, 55]}, {"groupId": "BVCbi0ifdPyKf3Sw", "selectedActions": [68, 19, 9]}]}, {"moduleId": "tQSCJaOHzpb623Ec", "selectedGroups": [{"groupId": "iYoYOPVg6DLEZ6Dx", "selectedActions": [31, 45, 9]}, {"groupId": "Bm2N8PdQ5mQaGXEb", "selectedActions": [27, 26, 100]}, {"groupId": "WR0H3EkrHqaLNdfK", "selectedActions": [37, 61, 53]}]}], "namespace": "DgX49n1xTDFcmOm1", "oauthAccessTokenExpiration": 38, "oauthAccessTokenExpirationTimeUnit": "5bClxUOBmMwv5pmi", "oauthRefreshTokenExpiration": 71, "oauthRefreshTokenExpirationTimeUnit": "XMrPoYSohfrLyXMS", "redirectUri": "rC62xYtDwflNGfuf", "scopes": ["W5cWeg6eSCypsceI", "TTkJGGCVF6LrILDL", "viUCzmDAaW5xz1c7"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["UCBYnkY0LEBSYBdU", "SiTOrhB8hVs29WOK", "mZRTtgycLzXz6lUM"], "baseUri": "Ki5mweMEZo2ZnL1Z", "clientId": "g2JfH4f73jAevOnE", "clientName": "S6YJLlb2AfUEEBbq", "clientPermissions": [{"action": 78, "resource": "5PT404mFw4HJv5T2", "schedAction": 22, "schedCron": "MOFES2J2OzNlJE3u", "schedRange": ["qZz574g31cA0PwZx", "TIZVSGQyTzhs9Asy", "4d629N4YnolVWA2d"]}, {"action": 99, "resource": "HZonSmzF831vlCiZ", "schedAction": 54, "schedCron": "dHvlQKiR7SDQUDav", "schedRange": ["OlKT5EIHNhJQq94R", "e5IM1akNKz9IltQU", "ku3n32atB0QPQPEp"]}, {"action": 95, "resource": "i54JY23AUWFTLq0W", "schedAction": 45, "schedCron": "JqwKs1mO80L7IOHl", "schedRange": ["f6j8PZOzUiQKZqz5", "NSp0B7LODN3Boi2s", "SAO2n4MZQt753XQB"]}], "clientPlatform": "93rOW0guPoQbYzc1", "deletable": true, "description": "DVhs2lhdzxxgibuq", "modulePermissions": [{"moduleId": "UuyW3cMz9YyduMom", "selectedGroups": [{"groupId": "EHcU15St4v8ry8Iy", "selectedActions": [33, 82, 2]}, {"groupId": "Vv0KVpXJTMx3Y8Um", "selectedActions": [67, 18, 8]}, {"groupId": "qehObg3OZ9j0HDtb", "selectedActions": [34, 68, 79]}]}, {"moduleId": "D6iKBGm5Cj7RqnJU", "selectedGroups": [{"groupId": "mfDmofxvN8pRGoUt", "selectedActions": [24, 88, 2]}, {"groupId": "X43LpmdMiZeyIrA4", "selectedActions": [87, 34, 95]}, {"groupId": "NcQFFyHv141NPqjR", "selectedActions": [95, 36, 78]}]}, {"moduleId": "u7ry3AQ2sEHvSxjW", "selectedGroups": [{"groupId": "oM1rNJLM0OOVG5cG", "selectedActions": [58, 47, 68]}, {"groupId": "ENbWqlX7idzjpKDf", "selectedActions": [47, 76, 24]}, {"groupId": "YxMID9pqZ5rryiMM", "selectedActions": [39, 43, 11]}]}], "namespace": "UVInos5RK100yH89", "oauthAccessTokenExpiration": 17, "oauthAccessTokenExpirationTimeUnit": "t29AiRASsuFM4ahG", "oauthClientType": "w7XcF1Qwzz606UGX", "oauthRefreshTokenExpiration": 86, "oauthRefreshTokenExpirationTimeUnit": "5BtKcwj6PqqOgCim", "parentNamespace": "r3ZQNBBkrXu9czsY", "redirectUri": "r3cFeVw70xdNTuOd", "scopes": ["LKK0M2B2hbqJin37", "P69t1KqeGz7qbPnX", "EuOzzkoBmMR9C4qP"], "secret": "qJrAdh1HIk7vCEq7", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '2S5VeW9ddxzLPV8w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'DjsnyPh5yNbYXmlA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["Oi1SC3I1SjkH42Lt", "yZKrTJo0L5sHil4Q", "0mqa8GatrjbJ5YT7"], "baseUri": "uvqarTvrG1DXZAWl", "clientName": "vz3c3XALMresGFfs", "clientPermissions": [{"action": 68, "resource": "2XPPUxzXHUvxhvTZ", "schedAction": 6, "schedCron": "50nyihcUVGHQczI5", "schedRange": ["ZoTRUkjGoRkPs2SO", "9XrgXNIaU11cBXLw", "TfopqeZtHJnRgaGf"]}, {"action": 77, "resource": "5WcQ99M1yuXeqV31", "schedAction": 77, "schedCron": "KKKYARape2tsNcza", "schedRange": ["m4Cdd1QYvww4XDok", "ltgq2vXtUnY6UhDJ", "4pe0s0Cuhl3dU9b4"]}, {"action": 38, "resource": "VTN5Qf4tjPGpu27y", "schedAction": 47, "schedCron": "8wTi1v2abpCWytPE", "schedRange": ["i9Ze0hL9rPkV5GkS", "rcl2O47XVzU7qlNV", "k7qnmBS3XKDhp1Ok"]}], "clientPlatform": "McErmeH0lX1hj0La", "deletable": false, "description": "TjI9oNBzgQ4CRwg0", "modulePermissions": [{"moduleId": "sKVeSpMny0GrvKI5", "selectedGroups": [{"groupId": "EVB9ZFzLNsjdCFtK", "selectedActions": [77, 75, 2]}, {"groupId": "sxR0rCFkyiQZfMnT", "selectedActions": [4, 81, 75]}, {"groupId": "4UWbQaKFrTv4JWEl", "selectedActions": [24, 64, 84]}]}, {"moduleId": "QnVco2oCn1KvJmbj", "selectedGroups": [{"groupId": "apW9UlEqtzDd7Sgx", "selectedActions": [6, 63, 48]}, {"groupId": "SJCe2ksG3nZE13H2", "selectedActions": [10, 10, 70]}, {"groupId": "GUEX8ERZcKSYLo6y", "selectedActions": [100, 51, 69]}]}, {"moduleId": "JMowQ6LpHCvCYTgX", "selectedGroups": [{"groupId": "9JQwErzjtuP9pUUv", "selectedActions": [33, 80, 8]}, {"groupId": "NfQSYLFKSl3FNFFJ", "selectedActions": [27, 91, 41]}, {"groupId": "a5cRn31D8ubfdXi7", "selectedActions": [56, 51, 5]}]}], "namespace": "6aH6gOBUIMeL0GL3", "oauthAccessTokenExpiration": 0, "oauthAccessTokenExpirationTimeUnit": "FFmKTTUxG0mpmFxx", "oauthRefreshTokenExpiration": 61, "oauthRefreshTokenExpirationTimeUnit": "BJMPkZmay4Csye3i", "redirectUri": "JLtjsu6ZJRCoDq3g", "scopes": ["euHFFaZzPIjETqcK", "N1gaQ4Bn0cPPtKaJ", "lw31pdDrXQ47WSGy"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    'Cp4wqlQJcZroNQie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 10, "resource": "j2XoFug8BUQUmPHn"}, {"action": 86, "resource": "v6pNNowEuVVZM28w"}, {"action": 81, "resource": "mnYvvlt1es7A4PFd"}]}' \
    'uN4gx0UC6eWKCFGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 58, "resource": "7Si6XyLVPrkUxyZ1"}, {"action": 84, "resource": "6kx0adnimPyyzezs"}, {"action": 69, "resource": "D9ImtaPAocOQcpBW"}]}' \
    'SNrCjSNEAdojkCMm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '35' \
    'yTGO07foRZ6FujpI' \
    'Wo0qJtqp4Q6XgICL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'gMHcP1eE6sjWQllY' \
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
    '{"blacklist": ["sONpp6QGW56CNisz", "HE69D1MMoaf6KlgR", "twaM2IoyY1wpIdjc"]}' \
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
    '{"active": true, "roleIds": ["Ysii3fCh7sieJjZP", "AkiWumllU31uXPwY", "xedGHCIkmt4bfJOh"]}' \
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
    'NaIT0pv7XeqO8gY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "c4SryWB4yRaDxvxw", "AWSCognitoRegion": "aLM8HkVOW8PnLkgq", "AWSCognitoUserPool": "kqYZWPZTgKagTzdc", "AllowedClients": ["Ycko7U3gH239LhRx", "2Laa2RdtVb6VgA5y", "FIH3s9UyeaFi8OE7"], "AppId": "BCK4FeVGrl5NpUG9", "AuthorizationEndpoint": "zblWEiHaUjyTHb0s", "ClientId": "Slstb3slUe94NxhX", "EmptyStrFieldList": ["sVcqTYi1TMBMzaOr", "xuKvtUVtqbDWnJ2i", "9TRmJOqIl7U12hO5"], "EnableServerLicenseValidation": true, "Environment": "k6EmWxC75M88TKhF", "FederationMetadataURL": "YkA9aRNDe2IoPMSQ", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "g0OTT9JA0ll1RimB", "JWKSEndpoint": "CiQwuyrI87uSyXP6", "KeyID": "C0jXS8au2wcWYyj3", "LogoURL": "JvHqXp4JR7xI59Z9", "NetflixCertificates": {"encryptedPrivateKey": "tfGVsglnOxOXBfgB", "encryptedPrivateKeyName": "Luglkd9LIoshGnFS", "publicCertificate": "uHmrqej8PRppYY1v", "publicCertificateName": "lV0M2g6oreqyBzWz", "rootCertificate": "CgMMWZuD6tmIR28x", "rootCertificateName": "VxbtpSKOfiIP3S6p"}, "OrganizationId": "ypZqISn3msrykQFt", "PlatformName": "W8QGKFZLrIfqrZuu", "RedirectUri": "7IwKcT7sAsv2TKCb", "RegisteredDomains": [{"affectedClientIDs": ["YMVkXEHmsHwIGGsu", "sS0zZRODEKPdudZs", "Laf8aZrXW84dt0TS"], "domain": "Tmy7XF26K2U7xttU", "namespaces": ["z8nWKJjv06PuffHg", "hAQfAsYXVzBenLta", "AoYyRfiCWrm3s1Ah"], "roleId": "3TII70MIcBMJ0450"}, {"affectedClientIDs": ["8jKedx0CVRpd7SwZ", "w2UkjDzJ4NuMMgI1", "3nplXaUQV5QEvKEl"], "domain": "LfbB7gwwAR1xFrny", "namespaces": ["irw3iJt5iA3JS2xe", "aJ08JrSHPqdhKHn6", "ZjZMdr1C2TIQzRJY"], "roleId": "7UfYSrdN0JVz4U43"}, {"affectedClientIDs": ["EcV1FRyeeqehMNeR", "YKeMbL0G4v5D6ylZ", "guO918X7rLoexHBM"], "domain": "BMMAYokSWFwajRGU", "namespaces": ["yklfLVY6g3PO4hKA", "eF4GUV5m96qcCJsV", "OWtu5RPsqd66ImBE"], "roleId": "uhnaxZVf6MD9r1y5"}], "Secret": "Ihr531Kajxq7lzuV", "TeamID": "RVEvhKIbrq1xsGpd", "TokenAuthenticationType": "obYun8hcO55hVjfW", "TokenClaimsMapping": {"yK02w5QytAmkanuk": "AzAMaRvIUhUwguGg", "bLLN3O7CEYjxqElP": "5lA2FJ0iGLRTXGsC", "5mxxse4eeuMgEctV": "Eux2MSuwsEHlwdeJ"}, "TokenEndpoint": "yhsHS6YqPudWviQs", "UserInfoEndpoint": "ULL1txfX9tqFSkGX", "UserInfoHTTPMethod": "oIcFN5JL9M53Mg0M", "scopes": ["zWS9usxxnMhjv66D", "yED4prRVibTATxd7", "Mzjv1gSj8kcNhoqc"]}' \
    'RZRNATojM7daV0Vw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'R3yNKDtMqMrAGpdy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "F6WDHn3ePBxQNz2I", "AWSCognitoRegion": "UEHMzl5jhwVDsuzw", "AWSCognitoUserPool": "J4v50eoaIBrTh0EK", "AllowedClients": ["kJioUpvGnkcHgCfa", "WzPUvCnfqsPGgJZy", "RwigaMu07Zek8WOb"], "AppId": "pf0FHYfViEj70KYK", "AuthorizationEndpoint": "IfFt4GYjUt4F1ZVy", "ClientId": "2qFfSr3psWjOyHLy", "EmptyStrFieldList": ["Ke2foqsVIfgBTr8R", "cxRQR0NYdJzf3TMh", "SaynVs05nZC4Os7h"], "EnableServerLicenseValidation": true, "Environment": "eKEabfVXBJPIZqZC", "FederationMetadataURL": "5d6JuFdcfiNf0DOH", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "xDF5GJhCjVHiCn2h", "JWKSEndpoint": "TefT8gPFJ4WndMpQ", "KeyID": "hcLK0WTZbtmQkwC8", "LogoURL": "azx3IRWme3C6p2r4", "NetflixCertificates": {"encryptedPrivateKey": "D3NQdjrjkX3AMgK3", "encryptedPrivateKeyName": "JgZufzssA284mG7u", "publicCertificate": "AojLYBsx8oqMzbE0", "publicCertificateName": "ljQaBtb47V691j0F", "rootCertificate": "Zp2vjOXptxzx6kka", "rootCertificateName": "ZYpl52sQR9Znp5d1"}, "OrganizationId": "eSwrG2GBBEWrDbQ1", "PlatformName": "ZzhDuLHq9LTBstgu", "RedirectUri": "OdN0O7l3GbKPHdDT", "RegisteredDomains": [{"affectedClientIDs": ["QDEEE2mTsn1NwJ71", "szsNmnqZSWdEyOVY", "rTdDq7IqbTVv8BLs"], "domain": "qQW8HSrEm5Y7jI23", "namespaces": ["2SjktijiNzTUe8Kd", "izXmrmK0sCUsqxKo", "cHomtjoU1kUqRedw"], "roleId": "Iu1TSRr6r8mzfMed"}, {"affectedClientIDs": ["pcKhvHPlvYanGqEk", "n9OEVwLWGT4MXhmz", "vRQb7c0vmjWq9fQq"], "domain": "zulLGfQMqSLQDlRF", "namespaces": ["YMVfiAMa6Pco7Mfv", "ikslpyL9BYLVVznF", "6hMYfksp8VQhYSFe"], "roleId": "BOp0ilGQFwHUtZug"}, {"affectedClientIDs": ["blT3aIDKn9qJXncm", "5igpAewbmnWk0E7Y", "aPblcWEyNgvs5LEZ"], "domain": "rQXzSQRWRs9EGnRP", "namespaces": ["gYlJElgJ8kx1WEeD", "bql13FtQMu41rnOz", "bsFBqg6dziWvdNcw"], "roleId": "fUBMdNuTaiLxFMXR"}], "Secret": "pDP9xutntU8xHw4y", "TeamID": "YJOCViHwunQwpC2e", "TokenAuthenticationType": "CFUAHZaYSvsWiNJt", "TokenClaimsMapping": {"qXltZF6aSRmHU5iR": "3hXIbzWPKOkzftOg", "DQAWhulbrDf7q4cA": "npmLiEu4CNtX2lnq", "i7cHTSdGoLZbC3UJ": "ruU4uIXBZsEYogFW"}, "TokenEndpoint": "iH9z4E8zmaZ5cg0R", "UserInfoEndpoint": "EtUWY4fVIdqwCWF5", "UserInfoHTTPMethod": "wmbOubTxAAeDCowR", "scopes": ["3MeCNL1oNrF3Smgu", "dQusJLsPlW7ZyORF", "kN9EbKbTbrDzNgVE"]}' \
    'cw0lxRam16O6v4Vj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["Jf40LjUdORELVXUF", "QyVlt9jmxmxpfp41", "k1uDg59PhdUXShab"], "assignedNamespaces": ["wyYCxTHrDel8oThv", "r8CUEzw4zL1QeR3E", "YXBFpUX9y4tY7o5F"], "domain": "Fi1n10vDgyoHXIlr", "roleId": "Ml2RAukCL26ihdMy"}' \
    '9YCLNJEkvq6SUSt8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "xd8EgE15XNuw6Y7s"}' \
    'ToQNkuZzJ1XBxw01' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'iBBQukgQ94ZvPCWc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "MX0ov3U2sKjIeyFS", "apiKey": "97dYD7LkcTKYpCfl", "appId": "6HPy5cJfAV5iOfzw", "federationMetadataUrl": "t3bpxRNt6lKoMjCP", "isActive": true, "redirectUri": "KzXRclOXdPYZQxBn", "secret": "ttu4yW5etl4Xk8Hd", "ssoUrl": "1lRtoPMvsu9oswEP"}' \
    'TvzwwGnpbx8MCIjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'zylqW8auyseP9wEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "yYAnHPp4XzVL5Mcg", "apiKey": "lFCrjxqqxAYqXG2V", "appId": "3baMkZ9JCqBIkUID", "federationMetadataUrl": "0EE9InZNLwwAhW2b", "isActive": false, "redirectUri": "OHKtUv4lTkQNjxhX", "secret": "dj1CG0EBgst9Qu8O", "ssoUrl": "fl2oB8VTjF0pD3NH"}' \
    'U8iYUOtG5gbQSKW2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["MdgCH4bWxRF6fBPa", "6GOuV5z0p8jaJs2d", "uQqawPrxi6F4elhy"]}' \
    '9CZ94CAUVW8FoEf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'tjCjWc22qqDfNz59' \
    'jHwSDQHadmAo0lzh' \
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
    '{"config": {"minimumAllowedInterval": 84}, "type": "KtdGTW4FILotv5yc"}' \
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
    '{"additions": [{"actions": [31, 54, 18], "resource": "b7CKt79wAopZL9Cw"}, {"actions": [74, 34, 15], "resource": "A4g9OGoWw1qnCAvd"}, {"actions": [28, 54, 54], "resource": "sd4ifGd0bkWrlhtf"}], "exclusions": [{"actions": [94, 16, 49], "resource": "FDxclBXap6j73doC"}, {"actions": [99, 62, 48], "resource": "tB0hn2x1oTOX5gBQ"}, {"actions": [23, 98, 43], "resource": "Dx9neFHWhDRJtyYE"}], "overrides": [{"actions": [41, 40, 35], "resource": "ygZleAoUuVKneoO1"}, {"actions": [59, 50, 20], "resource": "tPdJ8SY3qoogOxoP"}, {"actions": [82, 43, 37], "resource": "dIBJYyGURjEjnslE"}], "replacements": [{"replacement": {"actions": [35, 80, 65], "resource": "8ngVT1ewVxvgAocO"}, "target": "qsd5v5n7eXCo9gZW"}, {"replacement": {"actions": [7, 47, 21], "resource": "fIdW8fNAM5YdHivK"}, "target": "2Q0WwolQy037hJMO"}, {"replacement": {"actions": [63, 43, 44], "resource": "dUtKPJUmAvxBxJNP"}, "target": "lvvYZw4MWzWFTuNP"}]}' \
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
    'VIEW_ONLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'fWPXaI1Jb75o2MFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'a6xgPt69QROGDeJC' \
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
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["DL4yx5I0euBsccHP", "A2v9XP9enfEX7llo", "LgIYqxFfSNJlHCjx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["LNnYUlGQsFpy9ZVl", "LIFwLgT78nootfUs", "9559ilm3cauhrw9Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["n2z5cnbm7z2Aa24y", "BTw3wfNGyWf3VujS", "7Bq5bcfPW4pPZB9Y"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["XltCxyztUnj17t3g", "HBXvjvziexzOLbOW", "btcJUxM3AWyDkA5L"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["mART6kulpM4SRtUE", "5P4kxmHtFbjqurHi", "x0QYycDH5we2Mx0s"], "isAdmin": true, "languageTag": "VhxCVdjPutJ8dkAV", "namespace": "OJ5imghdfVhjnjd6", "roles": ["6A1SQmWGSQLAVPAJ", "7zX5lB80k2smdkBS", "2MaIP7PjngEFggq9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    '1cpgvoDBgYfLBdGN' \
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
    '{"listEmailAddressRequest": ["AZEvbvxqa0K7VUbj", "UnzirnEsxSE4vBzG", "7VK8sWEshmZf5fEd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'vjbyJPQ1qdRcJjsm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "e1OukIfIZVH8q8sv", "country": "V5hMOSfpyJkJlmJm", "dateOfBirth": "TkFvB7wkY6nuUEGJ", "displayName": "3k0HGtpK43uORGRE", "languageTag": "OOwTuY8dhNCDWWpN", "skipLoginQueue": false, "uniqueDisplayName": "B6tedgFUzBm5vGA3", "userName": "itKaF9z3WWuv3j8T"}' \
    '9g1f6P3D3rVcC2g6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    't42jE1Wad232YV7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "2zHFGbN8AQaCaw9U", "comment": "F7cdSDd99DQZ7vnT", "endDate": "x8HDXTJWiyw17ogz", "reason": "mbj4SLYDrZJvDLGv", "skipNotif": false}' \
    'fzYRn85brTu8F7cu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'CPh1TGZJmgWNHWnv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'vSdE2FMcKd7c94rE' \
    'mIYuAT5OAcUwYHGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "G5rNDBF1oU37vjfy", "emailAddress": "X5YLaM0wmi0i1WAB", "languageTag": "Bbq8IzZsMFLX9ZhF"}' \
    'XcFtfBS3ZIHofhwy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "M6Bw2sFGQ5DQoDwz", "ContactType": "rKPOZZnV3zR7YxSu", "LanguageTag": "6addocg10Hy9jx7g", "validateOnly": true}' \
    'D0iVxzrec5kNwJAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'm0Rdm9l6nIhG5Sil' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'DDIsmj4h625dIsMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 100, "enabled": false}' \
    'BxF9RAIrI81ZR2kN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'zh60RQNaTEhMXMep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "gzY9jLiAdMiQ7eDM", "country": "keBRMur18nCxiV9b", "dateOfBirth": "QMHpPbvflI3LkRc1", "displayName": "NgZaoYAaCCeRgtst", "emailAddress": "sU3Qecxo4bQZO3P2", "password": "f8TTOVf6jrr1OL60", "uniqueDisplayName": "6QpqCgxt0NgDSj1T", "validateOnly": true}' \
    'EgeAsSpQdcmGHZuR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'VQ8tzwqMayP8A3HG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'NI3BfjkFd6MHo6gG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "Q5mChYoKD7yqCR03", "mfaToken": "RovQZhwfjkq9iyTb", "newPassword": "yD3D01tRpuuyIagS", "oldPassword": "SzEL8H4euLufhQj2"}' \
    'KP3LLxl9Hs2L2wlp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 75, "Resource": "harfqaoMsGyv1RuS", "SchedAction": 82, "SchedCron": "CNiHBRUNCPSre5Gm", "SchedRange": ["ZzCQwilS3IxSjlyv", "R9PxG9Lji2Vc88W8", "aLjIxVGpdOqguxvR"]}, {"Action": 45, "Resource": "2mGUUpq3ix7Am7W1", "SchedAction": 11, "SchedCron": "aI4ryVDvNaruZxwT", "SchedRange": ["fh9gEs6GF247cbBL", "jUr5z03wxB3E9hrE", "9f9COFrOr6wJDBwI"]}, {"Action": 61, "Resource": "CvjRKKX1brmkJDfd", "SchedAction": 28, "SchedCron": "TwBufUorJouduhCE", "SchedRange": ["J5XiKDIE9YugcupL", "xVBcRkfhRuqkOTHS", "ia7oFd1fEmDuyAsQ"]}]}' \
    'GzwJR5poI718RQnj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 57, "Resource": "imu6XFfRcWDXhq1Y", "SchedAction": 26, "SchedCron": "G1LxLdySvyVqY8nx", "SchedRange": ["BZbHcPHEFuEVP9bF", "07gnWDULkJPQR0UJ", "Mr8ouccGH0B4LCe2"]}, {"Action": 15, "Resource": "lgAVfqz6gQJh8sn0", "SchedAction": 2, "SchedCron": "9A88GDOUClGyzYgn", "SchedRange": ["YTdim6PkRoq5TO65", "KWh8ztRJkXxUAj3j", "zZvEaY103YUIMuSj"]}, {"Action": 60, "Resource": "AFT7l0l1jaOAMCzb", "SchedAction": 37, "SchedCron": "qhISTBT1Gofv4Sua", "SchedRange": ["Z8yCB9TVZnuzgvAZ", "JRm71EC3ENuvD8OP", "sp5Z3ez84KVB7HeW"]}]}' \
    'PnVeFdy5ezlCU6SG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 53, "Resource": "OLw8C1c5bBB3XZ7C"}, {"Action": 30, "Resource": "qEmXn6U2VeV2emK3"}, {"Action": 73, "Resource": "XGlD40xxIyVwYjn6"}]' \
    'dlC9Kfh9gHuloyce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '35' \
    'cLJu4ljPWlCWTuGO' \
    '8MnfOQu3wdT4Aodp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    '95o1RkX7iW7VpCng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'WAv5DAG8dPdkKgQq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'jyzUZR2rFIAuALNh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'NCyscsMBRLsWadk2' \
    'OQ421q7Nb1vrKthV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'vU5on065ApCkVN3Q' \
    'chuQ6pntxB648ss7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "rBnvQHAM8gSdIybK", "platformUserId": "UByHBzfvgtRTPPzw"}' \
    'JmKaLCx3gcidEALW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'e6RG5wWznu5AjwR1' \
    'Z4fU7ICcaQtuuKUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    '3dUwWHhQW3I1y9tj' \
    'RLVOXBMa0JiIe1AY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    '0tUA7EKASk3USNLh' \
    'OBlxRBLgohp8ByTi' \
    '2F6AyUX8w77riPlP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'gJcLbeQf9MICxX7x' \
    'KyCfgwSPz14asyOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'gn77gN8K1FlNkgbF' \
    'E8U4meK5grmPBsFH' \
    '71VrhsISYtegQbNA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    '2WQrHTkJT1VkChD3' \
    'n0c1ryAkRvdPR8gx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["2rX5dck8NFKPgT6L", "Mehg047axU5ktNyw", "RIvO2Sgz30hejqdk"]' \
    'tHIO1VdtMSews1Tr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "U4FhAfKDcDG5bMTb", "roleId": "a1tUlFGcP6eL7EpW"}, {"namespace": "tPifmO0JK4dP1aZF", "roleId": "iSkmhwVVMGkXNwMY"}, {"namespace": "wFyljy5bYQdQ87hU", "roleId": "HA0FJZwP8GslMpx3"}]' \
    'm7lEXTmnTbtjK9Rs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'yoqT3adB48Jxp2za' \
    'Itg9jTNZvpFEUI21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'aSaIsMyLKPPIZx0z' \
    'dNAagipZwiaBrFrX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "zWIZWJTDzWguhujw"}' \
    '1EoR58uCVldefonH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "JZAiX4abmqqi90KT", "password": "WwZk0HGeJNaBjVdM"}' \
    'B5kMzKycYrhr4FnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'zdT4pWwIVXp9avUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "6IydpXW0MO0eT9ok"}' \
    'l6MlWOl9feWO2bmO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'ikTBJHTEm5PSeyod' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "oYoQn9iHEqWO1cVC", "namespace": "UIOx90FQdwLi3GOQ", "userId": "kLtpuRNeT1CULEMP"}, {"displayName": "aOU5nukycAUlkUSZ", "namespace": "KUrsxNRzF3NaUuCy", "userId": "Qyze6zPKu5sE89JW"}, {"displayName": "8UU0RsB6dvrpmInh", "namespace": "HYzVVlHGFSwjby6r", "userId": "MYkVQnZDUAbINRKQ"}], "members": [{"displayName": "sxUO1YMxAndOj5O6", "namespace": "IBwXJjgQjgLoJyqw", "userId": "FVBd1ZjaRXEdWgS1"}, {"displayName": "2bSbPgOCWUogizeW", "namespace": "OPUMrqgEIsMwNbft", "userId": "i0LoTBcNzyoCSw1t"}, {"displayName": "653G3ydYmGzvx9bS", "namespace": "qqyAPha5b6PQTPTy", "userId": "tHeeXo7gOFVLZCBW"}], "permissions": [{"action": 43, "resource": "SfR0ljKxqZcLuhwN", "schedAction": 60, "schedCron": "8VtLNkaIQJfkFDhS", "schedRange": ["eSGXtZU5SuIhMSaD", "Rp17dUWHcjrb6qNe", "KpOxPrlG9svdqsiV"]}, {"action": 93, "resource": "sIdtozVltBhoXE4w", "schedAction": 13, "schedCron": "PO6KwlJQlj9Ii2jA", "schedRange": ["Rwzowk9OoiPdnq9K", "BqBwiNCsnK8CcO1O", "HbpQZtwW3EwLre1b"]}, {"action": 77, "resource": "c9X5ijmtDGvd9ESd", "schedAction": 42, "schedCron": "0eTkBWA44Qqsi5yO", "schedRange": ["jvl5sRN2ENn1RLi5", "iMPnbg7o1zYpqUsl", "iPyXZGYIW5ZDtWbd"]}], "roleName": "kzPP47RcUIi2CoNj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    '4EG2emxKQk8cBrt5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'E8k8rzDZ08j6ICP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "gNCDd6jW6fjtBcO3"}' \
    'fWq9qfmBv0XgJB6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '7uykADFpinFcH2ZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'SYijqEuMfuYFUS07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    '9tOpZYM1XV0Op0da' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'mycnTUOoMkOppZNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "kqxc42HKv5wvtPJV", "namespace": "suzaBciSxwzuIpGB", "userId": "YHTHoSVxgQCbpZx5"}, {"displayName": "yMGIQ1ZxVIefYlKB", "namespace": "JyQMqUEfDikX6yOl", "userId": "gZrn0I6T0hvcAFTa"}, {"displayName": "SWR4VOGIY7hM6uho", "namespace": "nkAe0FdTSSEluBxM", "userId": "47BTww3nBTVmBFZ6"}]}' \
    'TIs9bTi2m7eNsYEq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "KkeuLWDfeFeExlOF", "namespace": "jRh8mLFTJLveQSDW", "userId": "nMQGaYRxFWia7yJ2"}, {"displayName": "d87XjA0ajvb7JcGU", "namespace": "Fgp6LkyXpxJeFxhg", "userId": "TwyO51CUpcdxL0a9"}, {"displayName": "VDhrqWCTXOxQUpyF", "namespace": "gZhNpOTE4toH57yr", "userId": "01N33p1Gha8Hwpag"}]}' \
    'vERZI6CqhcknhecN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'v2Tw6YKhVrYkMqXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "Q7qlaJjSYEseBYCF", "namespace": "GoKpXx60GmEX9x2B", "userId": "YpyKEBQ7TW7lZvDb"}, {"displayName": "wFJJhBRdq8BgAI81", "namespace": "k4Gr7jVVx5l3yrH9", "userId": "HR4reG0HwUXxQTf5"}, {"displayName": "YpDUGYsJBEkYUrLv", "namespace": "4qUiTkFcLBrg2JB0", "userId": "WiCpVBwvAffJ3btt"}]}' \
    '0PpQY3Pnnic80yEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 71, "resource": "dL6Jh10XMUGeDavC", "schedAction": 75, "schedCron": "zQnv0C00dtNGGzbG", "schedRange": ["YSYo9fY2EBZAHQXc", "4Xcae7VKl0ARzGEA", "rlfE1NSmtcADoZvd"]}, {"action": 14, "resource": "La7P4JI4H7uDzkOH", "schedAction": 92, "schedCron": "LC3iqrkyJFOVaewF", "schedRange": ["cv9h31YxuZnoSesW", "pLUHjGaIcZN28gH4", "Cd9xTdt2K1CzpQWs"]}, {"action": 22, "resource": "nJOKHC16xjJZ4kiU", "schedAction": 53, "schedCron": "N8556ll2LQWpdESO", "schedRange": ["BV7wZJsg7wSv9lyR", "yTdYBUljvBzvYNEt", "fgBFikt18cQ677So"]}]}' \
    'tDEtU2xBSEQ8rBKc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 62, "resource": "K6oJXxVEfnaqX8Nu", "schedAction": 81, "schedCron": "tRUTKUvR69PImy6C", "schedRange": ["cwlqJ4MO3L8x1H5O", "gzHypgsSeKCvtPz7", "jagBG9a1TZ87ltCl"]}, {"action": 5, "resource": "yGuS0OG7ohiL2943", "schedAction": 59, "schedCron": "jIbm0riCaNp8dUBD", "schedRange": ["inAB6HqIWIi5Bvb1", "rcuEtWAF763kci7l", "T62BOHaso53W3U2M"]}, {"action": 42, "resource": "p7lUfQqXrqGadwvK", "schedAction": 23, "schedCron": "MWDAodCKqfqzeexH", "schedRange": ["A70NgJTxjtzgO7W3", "taRvJ6lKWJwHO65a", "OFDwpqy7XOU3Dwgl"]}]}' \
    'yMGNll4O8ELahcNJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["qRjepck1l0qxRyQ2", "pi7xuAufJakIPXOQ", "znHZTj8oYfWObyNJ"]' \
    'KVSQsaCokoGynp6x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '4' \
    'h1YtTY4AejyQc5Da' \
    'c7hSLldWx5DyniVE' \
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
    'SUgrROrP1ip3jNG6' \
    '8DByf2UMPtigq9zO' \
    'QOcAqBj0bXhOr9OH' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    't6zx1i2W3GY7tdh8' \
    'hHlQyMlgfkTsAThL' \
    'yflAqqAP4M78smYd' \
    'yge6DroOywOxI4G6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'jZzoYIFAvYfT8XQw' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 236 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 237 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '2EOq6BFjmN4OqKGL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RequestOneTimeLinkingCodeV3' test.out

#- 238 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'RpNWzKZtZnxgywmr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ValidateOneTimeLinkingCodeV3' test.out

#- 239 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '4CYNGm7Tk1mMyeNR' \
    'sjQuDEgO3MEQNL6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 240 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'GetCountryLocationV3' test.out

#- 241 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'Logout' test.out

#- 242 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'jLRvQOgoaBooTawH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenExchangeCodeV3' test.out

#- 243 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'LMxhx9nC3o6pXU5M' \
    'DJLCB6WbXWIRpgjo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 244 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'oaBVemsbkaXZQ6nT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserV3' test.out

#- 245 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'j9rZpkSntuOeaPAy' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'AuthorizeV3' test.out

#- 246 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'eEGBepK1Ix4SwjCY' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 246 'TokenIntrospectionV3' test.out

#- 247 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'GetJWKSV3' test.out

#- 248 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    'jCHniVSn1gYGal5N' \
    'rBtT0om9OlGzpF25' \
    'qu98RhktX6qwkXbC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'SendMFAAuthenticationCode' test.out

#- 249 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'Lbh8t0zPkQWRUlgE' \
    '0kxzFMq9ttbEHAEV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'Change2faMethod' test.out

#- 250 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '7C65Ans9SquNSJIa' \
    'y5VdUdYy9Y9OCSmm' \
    'T3WKijbqhT3uyQRX' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'Verify2faCode' test.out

#- 251 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'f6v5SgcJPZPUh2nH' \
    'QwpWi8HZ6C0VJ0fK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 252 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '2m6lQ5Ao8TITYiHS' \
    'R2SEJh1YDedZdNqk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AuthCodeRequestV3' test.out

#- 253 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'XPWZfT8ZfdKp9q4n' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 253 'PlatformTokenGrantV3' test.out

#- 254 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 254 'GetRevocationListV3' test.out

#- 255 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'XuK0tJAYror2XdtS' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 255 'TokenRevocationV3' test.out

#- 256 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    '6KrVcNz83J57t6Oc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'SimultaneousLoginV3' test.out

#- 257 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 257 'TokenGrantV3' test.out

#- 258 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'Q5bk5IeuAi3zWFGo' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 258 'VerifyTokenV3' test.out

#- 259 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'rCbncoj5RvEtXiKy' \
    'UGdNfMiwgSvsTRmJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PlatformAuthenticationV3' test.out

#- 260 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'sOm0wVFyHvFhRMCF' \
    'JuA0DEMgykqqjoHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'PlatformTokenRefreshV3' test.out

#- 261 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 261 'PublicGetInputValidations' test.out

#- 262 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'pIPMSRAuPI7mSZQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetInputValidationByField' test.out

#- 263 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'UDm1q51PlW2HG8LA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetCountryAgeRestrictionV3' test.out

#- 264 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'iIzuo321Ll90IBFs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PublicGetConfigValueV3' test.out

#- 265 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryListV3' test.out

#- 266 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 267 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'Sb3FsV2PnCs9R0D5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 268 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 268 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 269 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'jZEwxcow6L7c3COE' \
    'P4AZx70uwV4XgvGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserByPlatformUserIDV3' test.out

#- 270 PublicGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-public-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'PublicGetProfileUpdateStrategyV3' test.out

#- 271 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'MHkXeEwuFJf7tbq5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'PublicGetAsyncStatus' test.out

#- 272 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 272 'PublicSearchUserV3' test.out

#- 273 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "KikDE7hWvT5bzcfz", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "s3Hha69MgxjGJx62", "policyId": "mkfVlu4bGB1pyk0P", "policyVersionId": "pxXZDy5Pmbu7RrD9"}, {"isAccepted": false, "localizedPolicyVersionId": "eiujtv2NdQTYoHZo", "policyId": "gW8lBvniHdARadfS", "policyVersionId": "octA3GYO94ZOo94g"}, {"isAccepted": true, "localizedPolicyVersionId": "5DHLB65fxQ06GwTm", "policyId": "obiBnfrnq9kOFBWh", "policyVersionId": "UTPiKR3qcbHLGplY"}], "authType": "sS3jsRZffCd00Vrg", "code": "PuNtOv3jbhGBuW8K", "country": "cyPMfDWSEEpKoJlm", "dateOfBirth": "hMQUCx70QjYbzemO", "displayName": "TURzzAOIBarB7kce", "emailAddress": "r5SvPLeQZIpKFXgn", "password": "sxx3c2bUsO7FP8Rm", "reachMinimumAge": true, "uniqueDisplayName": "stZAGDgiVsV2Ottw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicCreateUserV3' test.out

#- 274 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'JaMxPDIJ5hFQHumF' \
    'vPKqupHj72TlLs96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'CheckUserAvailability' test.out

#- 275 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["4iABOgTKtnaA7O35", "Iaytd9CsAMTZC37x", "PXxnfggnZ3EZp6wS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetUsers' test.out

#- 276 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "AufwYirs9lwvPKd9", "languageTag": "25u3fFLV0YeMrVaY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicSendRegistrationCode' test.out

#- 277 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "STRYGFzgLZ7gEypQ", "emailAddress": "f2Pn9A4gcbDJ0Lmd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyRegistrationCode' test.out

#- 278 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "nOPkIT1C6KGTpA7J", "languageTag": "Z6xullPROSfiW9zc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicForgotPasswordV3' test.out

#- 279 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "xmgNfTHu3vkZt9Fg", "password": "WckjNpHhM2ZXp4N0", "uniqueDisplayName": "ROmUCTrS7Gi9Iigk", "username": "9vamO7Q2WQwSWqSs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicValidateUserInput' test.out

#- 280 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '05rjISy4B0X9AJdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetAdminInvitationV3' test.out

#- 281 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "T7UYCV8agvwOI2Ll", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "NRN132RdgwMXv9ol", "policyId": "KpRyWQim3qlART9m", "policyVersionId": "PPmYUvlkBGPJFaFz"}, {"isAccepted": false, "localizedPolicyVersionId": "Ya86kvL6cBZQssUU", "policyId": "XOsXMNdvW1hbvGen", "policyVersionId": "Rbm3QtsY5WaKM5YY"}, {"isAccepted": false, "localizedPolicyVersionId": "pYrmeMIHLS8egV8X", "policyId": "hgDjbrum8UxcutmV", "policyVersionId": "g8APWKxoj6MF68Vu"}], "authType": "KDoklYmkytCAH8Ji", "code": "qe7gfV1G6bYgIbVK", "country": "p4Kgew2mHDksA6Mv", "dateOfBirth": "9Nzs19eBq9a1L8S1", "displayName": "yduOwscICro6P8FW", "emailAddress": "IPeqaBeD2uBAvIXE", "password": "c2CCgYcFo9A93o22", "reachMinimumAge": true, "uniqueDisplayName": "gObCOiBWdw2b031d"}' \
    'm4N41MOpmm04BlZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'CreateUserFromInvitationV3' test.out

#- 282 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "AlYnCT11qD03er5m", "country": "draK47FdxXisVlo3", "dateOfBirth": "aVOGARFDJcGWy826", "displayName": "ilCxAxQUM5DyrPfB", "languageTag": "mpZIzSFUZqVR5FWG", "uniqueDisplayName": "fH66eFCMTsLA8vYV", "userName": "vrIAEehUV0jsjAyV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'UpdateUserV3' test.out

#- 283 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "gxS54NNs3XdhMbQX", "country": "9D1znEWw9p7g4UsQ", "dateOfBirth": "CTKDh5n9yc34xF8q", "displayName": "FllM1LTrl4MP3Nl4", "languageTag": "T3ujvV7W6ADLtn7o", "uniqueDisplayName": "Inn1Bz3wM3BI51et", "userName": "n17OcmSVHZ6wtPVA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicPartialUpdateUserV3' test.out

#- 284 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "wgvxYxXJTduZp1nN", "emailAddress": "YHREmm1cBuaRaGeM", "languageTag": "8yxRfejqSbVgLd1F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicSendVerificationCodeV3' test.out

#- 285 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "oyNFGpu5r2K0IvVg", "contactType": "5LwUygH98dzTL8az", "languageTag": "KCCNBZpwRFNYxx2d", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicUserVerificationV3' test.out

#- 286 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "RB7pu7BaONXyE5fI", "country": "DbsMi48xOYVvEcEm", "dateOfBirth": "53BYMBacQBIuDVs7", "displayName": "U0AJtWPRteszMTd0", "emailAddress": "R5Fsrf9xbVfgvG61", "password": "7GmxzClkR3M6Twpw", "uniqueDisplayName": "q3nLwxnJKjOo9fvf", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicUpgradeHeadlessAccountV3' test.out

#- 287 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "F1VsikD3IphQQiRc", "password": "OtsthUwgQzNHUZ0l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyHeadlessAccountV3' test.out

#- 288 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "1FRfOjJUmCbi2llk", "mfaToken": "sf6GA8vTt92kldCo", "newPassword": "yRdiOikUdqGocLYB", "oldPassword": "aRC7T5qSl7WN3ncP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicUpdatePasswordV3' test.out

#- 289 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'kqiTKzz72PKXjShM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateJusticeUser' test.out

#- 290 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '2DvesmMIbiQfaHxl' \
    '2YUNRLRjgKqSSYgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicPlatformLinkV3' test.out

#- 291 PublicPlatformUnlinkV3
eval_tap 0 291 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 292 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'nVfa8govttlpFAq8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformUnlinkAllV3' test.out

#- 293 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'oebnS4Y2zkGYTr9y' \
    'JIveX52r6Inl9VTJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicForcePlatformLinkV3' test.out

#- 294 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'B9Al3mn2DsHDHzSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicWebLinkPlatform' test.out

#- 295 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'JzhU5Z44zgZ1fieL' \
    'dl3Y82DOj5kPuNRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicWebLinkPlatformEstablish' test.out

#- 296 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'ZaUccuBYep9n7b17' \
    'fsblalJrwQiU3DD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicProcessWebLinkPlatformV3' test.out

#- 297 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "xZFH1fHFLSr0O4rE", "userIds": ["ZTbFDj2L2McvCrrR", "7h9uKLXDaRf3pxKt", "JbRY5luCwKrt6wn3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUsersPlatformInfosV3' test.out

#- 298 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "yVrRCh6j7rpv8K8f", "code": "BAeRa1R6ksxLYGkO", "emailAddress": "LgReff5IHxLJIemN", "languageTag": "HbzgAFjtjC7suvgI", "newPassword": "UkB2PAGJqOrkdlZB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ResetPasswordV3' test.out

#- 299 PublicGetUserByUserIdV3
eval_tap 0 299 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 300 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    '246OY0dPVMd2WDUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserBanHistoryV3' test.out

#- 301 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'EQTpfyAIoF7qsANB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 302 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'bEKQrgocpjGNenRl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserInformationV3' test.out

#- 303 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'DORLvP7ynTuXzafC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserLoginHistoriesV3' test.out

#- 304 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'qlMrrVIehVCf3AwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserPlatformAccountsV3' test.out

#- 305 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'zUdQ6sTrUg7Z0SLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicListJusticePlatformAccountsV3' test.out

#- 306 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "ZraV3NLBUSrFnzE6", "platformUserId": "yR1wLTgjsnB2LFVr"}' \
    'ZRrOntm2KjbfCOuW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicLinkPlatformAccount' test.out

#- 307 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["3dBmFwUO7Y0xhMLw", "xgRpTSUppvO3QG68", "KeD7QJQEEVDAg045"], "requestId": "BvtPd7ibBA3sd51m"}' \
    'DooH53vibq3Qcrtt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicForceLinkPlatformWithProgression' test.out

#- 308 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    '8L5dIebsw7EjkMnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetPublisherUserV3' test.out

#- 309 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'SziEA43WqIMJdrqH' \
    'IsJ98WRjqYieXRth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 310 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicGetRolesV3' test.out

#- 311 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'QZvzRi7pqpajYEHs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRoleV3' test.out

#- 312 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyUserV3' test.out

#- 313 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    '9TIkcnrJ64BOKqyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 314 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["S6DKNSeb2UMWOgVe", "YkCvqq0tO15pEVG7", "sNihxpuuL7DJCxvz"], "oneTimeLinkCode": "Znh8oBAk1MNCAUmd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'LinkHeadlessAccountToMyAccountV3' test.out

#- 315 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 316 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "nLaVRUu5VbjwPa9r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicSendVerificationLinkV3' test.out

#- 317 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicVerifyUserByLinkV3' test.out

#- 318 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'YgHaxeTT3ebuaYPN' \
    'Bp9wA4LxO2n7WJQF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PlatformAuthenticateSAMLV3Handler' test.out

#- 319 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'zBCD9S03D7JLsIM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'LoginSSOClient' test.out

#- 320 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'VOMRvvqkXDMPzOB0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'LogoutSSOClient' test.out

#- 321 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '8tpk0qhZath4b4Ht' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 321 'RequestTargetTokenResponseV3' test.out

#- 322 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'AdminListInvitationHistoriesV4' test.out

#- 323 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'AdminGetDevicesByUserV4' test.out

#- 324 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'AdminGetBannedDevicesV4' test.out

#- 325 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'wEYX55pJNTX1sDjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGetUserDeviceBansV4' test.out

#- 326 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "WiSXsV5rJ8eZXZ1T", "deviceId": "LMZnNL3DQK45IAtb", "deviceType": "yUDDSJSV8pzl1lfI", "enabled": false, "endDate": "uLWYb2iHHVN0ZBgv", "ext": {"rigXUT4fRbawD5yO": {}, "vjgOopQfbXmtF0WF": {}, "H7F2InhxtynUjuBC": {}}, "reason": "xkb2oF99xI1VVtVr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminBanDeviceV4' test.out

#- 327 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'VT6Hn8B2d1hZUnoQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminGetDeviceBanV4' test.out

#- 328 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'Mt95DEjxqhgYqmMq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateDeviceBanV4' test.out

#- 329 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'IdlRrQmuILkeRUaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateReportV4' test.out

#- 330 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminGetDeviceTypesV4' test.out

#- 331 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'UDP5b6BWfm7cYCpD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDeviceBansV4' test.out

#- 332 AdminDecryptDeviceV4
eval_tap 0 332 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 333 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'IJG42ILhUoCh8lmK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminUnbanDeviceV4' test.out

#- 334 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'KocC5Ea29JhfFGN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminGetUsersByDeviceV4' test.out

#- 335 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 336 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 337 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 79, "userInfo": {"country": "J8WOgsAj2Rmf1DXv"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminCreateTestUsersV4' test.out

#- 338 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "iE7YgEZspOJ0NiZl", "policyId": "6OVLxKtkBpaCG8Nu", "policyVersionId": "5m4ctwUNV8ncebaJ"}, {"isAccepted": true, "localizedPolicyVersionId": "acy8wsWaPyppR3zt", "policyId": "PSALA8LlV2sccbVr", "policyVersionId": "6HSiXVzrG4EdKn8e"}, {"isAccepted": true, "localizedPolicyVersionId": "ZJJ3AhkrMi0bnppE", "policyId": "JFISze88rGEr3cil", "policyVersionId": "JWhaW6jNsM94E2FQ"}], "authType": "EMAILPASSWD", "code": "OINhql9CdDX4xiHp", "country": "dfKH35RWUUVEHCB5", "dateOfBirth": "wzF6oLIrAwjAsgo5", "displayName": "1XHJBG2PmyeFaBiT", "emailAddress": "3SyLHXZSyfjukWmk", "password": "fkiF2GZPuyWBVH66", "passwordMD5Sum": "JU1IICVNNRV4lBTo", "reachMinimumAge": false, "uniqueDisplayName": "rYtGfCZCcrvsV2I4", "username": "X26p21iDBZGJ8ZML"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateUserV4' test.out

#- 339 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["Mx9rEFkDqb31AZzw", "iQBaGdS41VRIyAHj", "YxVhCbXbeBEoTlfR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 340 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["33jqIRoXcCPaLXJM", "2B9bMohkWsFKIdyc", "YHQcu7JkKBcLFRf5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminBulkCheckValidUserIDV4' test.out

#- 341 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "0Y7ME2QmYiYqap7m", "country": "asUcayqmp7vhz1T6", "dateOfBirth": "cSrZL2CgHxdmYDj9", "displayName": "vZNgfI1AeYHe8WPQ", "languageTag": "GPclChxLfbXrH6f2", "skipLoginQueue": false, "uniqueDisplayName": "DrNbLOjGz34ct0ct", "userName": "EeH43wYuLnI7cTzI"}' \
    'UERPlQI99hMc4Nbi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateUserV4' test.out

#- 342 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "JWP5r9EwbIGMGJ70", "emailAddress": "P9IqAyNlZ2OwFSeb"}' \
    'BkXkaxtY97TMJH8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateUserEmailAddressV4' test.out

#- 343 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "O4GDHT6ZaUUkvlTK", "mfaToken": "AhrxqHw7f813qNjz"}' \
    'lcxXsmGGcJhauxfh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminDisableUserMFAV4' test.out

#- 344 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'VKIbRvUnyElHPuQE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminGetUserMFAStatusV4' test.out

#- 345 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    '3Gc8bY4IH0OXHZP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminListUserRolesV4' test.out

#- 346 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["VVB7qjDHMS49dkv8", "vxyg6giNKzeFnlgG", "RgYK3SeYvULYNIhs"], "roleId": "5PZGTJmgofq7nlF5"}' \
    'Ch8J2Qs990APOU4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateUserRoleV4' test.out

#- 347 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["cdwlnsTap2RJpHtn", "cLywP3WlLmNdQGk6", "vneHoB1PXO1vT1Ao"], "roleId": "nFO3syvkYd78GsJG"}' \
    'Lbnb4Nvw7fnm4MnO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminAddUserRoleV4' test.out

#- 348 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["qnqNerQoHiDIJayv", "SNt8EQXsMbYi1yEI", "9ychtyhjZSeDCKT4"], "roleId": "ilZB8apDTR3aL9su"}' \
    'nWp7V1s8LmXm0FaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminRemoveUserRoleV4' test.out

#- 349 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminGetRolesV4' test.out

#- 350 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "OEiWJ8cLrryS5a6A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateRoleV4' test.out

#- 351 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    '4tL8YKMrUBL6dDTV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminGetRoleV4' test.out

#- 352 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'wPIt1hrg2mhbI0ND' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminDeleteRoleV4' test.out

#- 353 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "b7ZzQuBPyNi1GhZH"}' \
    'Ej6p5grjk5wzdksO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateRoleV4' test.out

#- 354 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 96, "resource": "TTkL8cmpA0sZ0tge", "schedAction": 89, "schedCron": "4zFOvdRTpGmBUjfE", "schedRange": ["U9vL8H96tuVfQwYI", "qDWqbPmwQw8J7na1", "POTXhXLRU5prAdqn"]}, {"action": 28, "resource": "dAezedcppbujZh1f", "schedAction": 93, "schedCron": "XF6R9Rz3HVP2Y9Wq", "schedRange": ["SRiwV3UZg0UJLPMk", "eUwa6OVKxCMxuf0P", "9r5f6fdmyi4kQnOF"]}, {"action": 2, "resource": "m0uYYuAmqhftIfe2", "schedAction": 51, "schedCron": "Z2rkomSj52mAIMo6", "schedRange": ["EW9QhzU8FwQtZpfU", "oyoiUjmqOyQ7ammF", "gHprdM9viFWmezrQ"]}]}' \
    'OWH03zyr7kRbC31Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateRolePermissionsV4' test.out

#- 355 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 78, "resource": "hMxKeIgwq1NZmxa0", "schedAction": 13, "schedCron": "A3gvCRfoBijpbMbl", "schedRange": ["GWnp94a6GKY0BrHi", "Ws0B0RhxQtgVgbN8", "kr872hJvrOCdAEZ2"]}, {"action": 90, "resource": "YoLva2c4JscEQfBF", "schedAction": 32, "schedCron": "XcSXpU81S5H9XsZy", "schedRange": ["vZOFJ5RrFZYcwfQ1", "Q2BbcjSpv6Nt1oz4", "tdgfKu4bmK8kOKcE"]}, {"action": 30, "resource": "2uIi2SNZKqlJZsdn", "schedAction": 68, "schedCron": "04DIyosprZPBaERb", "schedRange": ["7U9kK4VctUmDhFVN", "a0JYzTbdnOnEarWP", "4nrJ5fNESRVGeswv"]}]}' \
    'kzLNIITUJGj5FYaS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminAddRolePermissionsV4' test.out

#- 356 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["gewLWHcBxz5LpdkR", "CAU8HhmXC68JFPdx", "hvBKee6wG66YPD4v"]' \
    'NdENY1r1rI0T97qA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminDeleteRolePermissionsV4' test.out

#- 357 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '1OiblWlz2LXQNqcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminListAssignedUsersV4' test.out

#- 358 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["NcJIsYRQz97fRWI1", "7eNP3Y2nWlS9Sfjh", "0htyVaGj4y9ahS7h"], "namespace": "7XVlmc5Rs5FVQSIq", "userId": "ObR55tV0BlN1iFvw"}' \
    '0GSLBmie8SJckSRb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminAssignUserToRoleV4' test.out

#- 359 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "u7hgmUm7RVCUREDd", "userId": "oGatGQ1SeOXsg4jo"}' \
    'fp9PvlQ1xdmr4JDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminRevokeUserFromRoleV4' test.out

#- 360 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["vZgvPGHjV7MNTpM7", "fSods1zdVT0aWj58", "Othvd3jzMDAf40gK"], "emailAddresses": ["Sizvmxts5HSQvRAP", "G9JoVSLrbs5niXkj", "pkOgRCC7qfz5jV7N"], "isAdmin": false, "isNewStudio": false, "languageTag": "KISTbn4yEa2AaBRa", "namespace": "lz5HEm4Gant6aqjK", "roleId": "zWDAauqLKarcLQRQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminInviteUserNewV4' test.out

#- 361 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "tC927GneBM8Lvzgy", "country": "IVzGFBLJ5vbC9NfL", "dateOfBirth": "TFJGOzAIAqpmkDdF", "displayName": "Ss4s7u1VUuLmenyx", "languageTag": "TQVkEg5wouUKa35m", "skipLoginQueue": false, "uniqueDisplayName": "oH9zCfw7mCMkbvSI", "userName": "m7JROcwVmGyrBpnT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateMyUserV4' test.out

#- 362 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "PF4VrRiFSPs2ZMcV", "mfaToken": "FcrixULzSeTnUWGx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminDisableMyAuthenticatorV4' test.out

#- 363 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'xfnMIDSCPr1m1Fg6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminEnableMyAuthenticatorV4' test.out

#- 364 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 365 AdminGetMyBackupCodesV4
eval_tap 0 365 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 AdminGenerateMyBackupCodesV4
eval_tap 0 366 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 367 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "tc250c2okDTem6o6", "mfaToken": "2xFY6TNqoLFFS4wB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableMyBackupCodesV4' test.out

#- 368 AdminDownloadMyBackupCodesV4
eval_tap 0 368 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 369 AdminEnableMyBackupCodesV4
eval_tap 0 369 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 370 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminGetBackupCodesV4' test.out

#- 371 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminGenerateBackupCodesV4' test.out

#- 372 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminEnableBackupCodesV4' test.out

#- 373 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminChallengeMyMFAV4' test.out

#- 374 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminSendMyMFAEmailCodeV4' test.out

#- 375 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "6Um7ir0n6O3vbYVj", "mfaToken": "rcErgoApAxyDnHjA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyEmailV4' test.out

#- 376 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'x7rZTvew0WVDSMNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminEnableMyEmailV4' test.out

#- 377 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminGetMyEnabledFactorsV4' test.out

#- 378 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    '23LV7xZEEv7O1lwx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'AdminMakeFactorMyDefaultV4' test.out

#- 379 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminGetMyOwnMFAStatusV4' test.out

#- 380 AdminGetMyMFAStatusV4
eval_tap 0 380 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 381 AdminInviteUserV4
eval_tap 0 381 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 382 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'VTRll0GIEUJtMC8N' \
    'yV2HLHZT3oYJlC4i' \
    'e3InnSA22NHTb4qX' \
    'YyJUAlKlTwdJEPoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AuthenticationWithPlatformLinkV4' test.out

#- 383 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'mVtmVXTs3tCu4F9I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 384 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'gDT2tq2V2lMzfIQH' \
    'CZ90DqQgP6ynrQjY' \
    'H0N2loTnRa0KiQWP' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'Verify2faCodeV4' test.out

#- 385 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    '7gE4bwLzDEw2PYt8' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 385 'PlatformTokenGrantV4' test.out

#- 386 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'tCkIgcwiDWQFghmI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SimultaneousLoginV4' test.out

#- 387 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 387 'TokenGrantV4' test.out

#- 388 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    '4BmtuIFllfSUnaUh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'RequestTargetTokenResponseV4' test.out

#- 389 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "C4x11AS2jTKoTYeH", "platformUserIds": ["aCuN7zpX9vp4QJdC", "rwkz0nw2oxKye8jZ", "qj7k0YiLqOUSBuwR"]}' \
    '388REDRuYBnWiEsO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 390 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "E5yIvijq9ix16vo6", "policyId": "0jgvwV3C9hJ1kSZo", "policyVersionId": "nK02WHGVKDcKulj3"}, {"isAccepted": false, "localizedPolicyVersionId": "MGdBPbUyHTYPS8CG", "policyId": "KXGon2ecc65YAFLw", "policyVersionId": "eD9Z7U2lNkorrw9Q"}, {"isAccepted": true, "localizedPolicyVersionId": "3rNhDepQum4Dj7pR", "policyId": "05RTGXGRkYXifTd5", "policyVersionId": "nAOF9VV7JgCOm4wL"}], "authType": "EMAILPASSWD", "country": "29Hma0nCdCEFcf2d", "dateOfBirth": "oBrfHiHXXgvu496H", "displayName": "02yOVN1h41jIPOMX", "emailAddress": "ufZPWSe20JfNvtNc", "password": "WtpUkw98x3tMM1bF", "passwordMD5Sum": "FDIqKD8HJ4X0DetC", "uniqueDisplayName": "eJ4x0wf5mQx6Hs7M", "username": "5apPMc8ZR3bPCJ5n", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateTestUserV4' test.out

#- 391 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DODBmrqEhGlkEmGd", "policyId": "CbwodVRjZJWuCQpj", "policyVersionId": "uJzpPO7BPxVWlRFn"}, {"isAccepted": false, "localizedPolicyVersionId": "arKxCcNv8FQCyQBq", "policyId": "KxayGvw7MqOsypCJ", "policyVersionId": "mfRnW0spgvjt7eCL"}, {"isAccepted": true, "localizedPolicyVersionId": "lbrRGjoBQ45Za4JR", "policyId": "4S3iac6vLeoIULJl", "policyVersionId": "WXmQFlef1tSHJf6s"}], "authType": "EMAILPASSWD", "code": "pwAAKKqmTy0ZSyJ7", "country": "IIUXlBlZMQeSnOg5", "dateOfBirth": "gf1SwrbpmoF4DvNA", "displayName": "1wo9IAxV5C71gTw8", "emailAddress": "BJPFctwUMCRdxXOB", "password": "u3TWmHDVmCGFoD7a", "passwordMD5Sum": "NFj9wORAVqRuNsXx", "reachMinimumAge": true, "uniqueDisplayName": "kVk7F1KKOfFFLvER", "username": "3xqCwUgKa4oCBoJD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicCreateUserV4' test.out

#- 392 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "1BinZ4ULwAKO8n42", "policyId": "UuxEyfzZJsZd9sB6", "policyVersionId": "CV9KiWkbdpGqWQIP"}, {"isAccepted": true, "localizedPolicyVersionId": "mVytM5mBRT39gKYL", "policyId": "k9DmjJh6PnpTXWAU", "policyVersionId": "t8lgqNM4poGEvIKC"}, {"isAccepted": false, "localizedPolicyVersionId": "rv8zABDhYAVxvs3u", "policyId": "gNvvgI2k1P9nQxzj", "policyVersionId": "3AnmpWfje5cAtTDv"}], "authType": "EMAILPASSWD", "code": "y16ShGomFzUappaa", "country": "ODZaZ6Vzztnntoxw", "dateOfBirth": "sNtNxWoH5wVHJVaE", "displayName": "naycYsKkgX0RMDxv", "emailAddress": "lK9RnTEYv5eDhCxw", "password": "y85vlhWw1RCgHr3f", "passwordMD5Sum": "6UqFGCvsMFEFlXHB", "reachMinimumAge": false, "uniqueDisplayName": "K1RqtKYVObVorIVW", "username": "WLaVJwe2KAca1aKe"}' \
    'XUu9hINqKvoYKio4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'CreateUserFromInvitationV4' test.out

#- 393 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "M51vuaFyqjQsTGmz", "country": "ItJIOkEIRsSWOV8L", "dateOfBirth": "yivYbMG9LXPbBh2E", "displayName": "3wFchP3zTymfVfny", "languageTag": "2M0KsS08cY3fjI1Y", "uniqueDisplayName": "TT3qUMd0U73RjVeY", "userName": "SM479gn62lizsWGr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicUpdateUserV4' test.out

#- 394 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "tIgVPb7hoo8YkNPW", "emailAddress": "8mWOJGtdXJGDsxRA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicUpdateUserEmailAddressV4' test.out

#- 395 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "R3NObYp43YXMHqWe", "country": "VjnOURxGvOhz9s7k", "dateOfBirth": "tWkJDaHg6kDVjxhx", "displayName": "RxjeDrqCfJEjrqJk", "emailAddress": "FoZFZex0eOw31PXk", "password": "VnetcvAuim14Wdh1", "reachMinimumAge": true, "uniqueDisplayName": "z0hsW0IHIYvJ7PPg", "username": "VaFwGhl5zqkzEu41", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 396 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "OcoAcV0T2G3vQZNi", "displayName": "qaXzRBra3I4K9iBd", "emailAddress": "ljXtowifBfAw30kO", "password": "ykBuDJ0IPQeAL4MZ", "uniqueDisplayName": "wEVJe7waGyB6g2M5", "username": "JiwtMOfDfoMgU2yF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicUpgradeHeadlessAccountV4' test.out

#- 397 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "BTPfnmfN5E20ORMC", "mfaToken": "VBTrkvObsiHQgt7O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicDisableMyAuthenticatorV4' test.out

#- 398 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'fL6AcBPjUYURB3Rs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicEnableMyAuthenticatorV4' test.out

#- 399 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 400 PublicGetMyBackupCodesV4
eval_tap 0 400 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 401 PublicGenerateMyBackupCodesV4
eval_tap 0 401 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 402 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "rc0qvV8Gq1cw3ytG", "mfaToken": "WVKPoA1aKRZM1Ot0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicDisableMyBackupCodesV4' test.out

#- 403 PublicDownloadMyBackupCodesV4
eval_tap 0 403 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 404 PublicEnableMyBackupCodesV4
eval_tap 0 404 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 405 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicGetBackupCodesV4' test.out

#- 406 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicGenerateBackupCodesV4' test.out

#- 407 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableBackupCodesV4' test.out

#- 408 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicChallengeMyMFAV4' test.out

#- 409 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'PublicRemoveTrustedDeviceV4' test.out

#- 410 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'PublicSendMyMFAEmailCodeV4' test.out

#- 411 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "PWppB2H0G8Xko9l5", "mfaToken": "J0IOZmnpzwHhig9d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyEmailV4' test.out

#- 412 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '6vdgfrNiGrH0hDjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'PublicEnableMyEmailV4' test.out

#- 413 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEnabledFactorsV4' test.out

#- 414 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '6IYpfINzNjk5V8T9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicMakeFactorMyDefaultV4' test.out

#- 415 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyOwnMFAStatusV4' test.out

#- 416 PublicGetMyMFAStatusV4
eval_tap 0 416 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 417 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'pQjnGB83yonudf21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 418 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "g0NhuYvwCATIUep6", "emailAddress": "1ZsSiqW7I03oSwCf", "languageTag": "YpN9jkLCsMYyyhEy", "namespace": "BfFFZwkC1PRjBWzT", "namespaceDisplayName": "uXttDREDWbOM3xQa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
