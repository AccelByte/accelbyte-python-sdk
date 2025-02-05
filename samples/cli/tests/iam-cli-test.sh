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
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["PtQmQN6eKAGiZFCf", "tT0RWECdjWYrnulx", "cCKAru8pOaAVLDB4"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["k3JwkdaxR7GJpYmu", "YCPG181q9GA5DydC", "2D8UT6KOc4VPDUR9"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"userIds": ["ayazqXRqegIUicYX", "XzxsBFrUs9BYp6Tg", "CejBd5o7iTST7R3K"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["bbQGERMNpqWb51y5", "RUzvMfTkPy0fGvTG", "gfLKsg0b1Bq78cE5"]}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["O5pmPnbiPJ9j4vxm", "bH3rVaauufxkPHEl", "ug48TgfNu0rqXUOy"], "isAdmin": true, "languageTag": "oLPIREGIKlJt3EP9", "namespace": "kKwkENQ8VOHGwbAD", "roles": ["MfuOmh0lciRhVZ2D", "eoODXMzLSrzoiBnY", "i5UWs3tYlYeMoCim"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'JySocRvUWDOrFZKP' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["NoN9AWtLK9TFgi9j", "2XMh9WpifqjNjLOt", "NQts2yxf6MLZJ2jZ"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 'fZbpTJezzriCDWXT' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "59SRu0YqUxKDc84O", "country": "MIzvTScdbKBsAyJM", "dateOfBirth": "z4ILNDvhB4Eoes9a", "displayName": "6XaJeRbzTPwD3jxF", "languageTag": "7vxRUY0ilrNoFT98", "skipLoginQueue": false, "uniqueDisplayName": "CAtvSG8Cfa9dzOJD", "userName": "GCTHIOFjeXbsSgR4"}' '3kIDzxBwqRJTzrHN' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'ZWUsq5lQo2jy29EJ' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "igqYhyVhURx1yPec", "comment": "zRpdk0HATGylx2JG", "endDate": "2KNGfhzfCTxxrsRR", "reason": "Lee3TcJ7DQIi45aC", "skipNotif": true}' 'p3uOQIybqWfG9BJ6' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'FVKlbYHtbPtaxvag' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": true, "skipNotif": false}' 'gFDa6wUQvehKqwCh' '86XmRkCEcfHDCdl5' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "9Wp9A3tXGve6DdK6", "emailAddress": "uvg8f2cIoByk9fxt", "languageTag": "vsgeAxo57nKAbZps", "upgradeToken": "bJ4Iu5KJ0ynxGBla"}' 'cDCdFe8ATUqVxcSt' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "hrpnMUBsnUfuQIcS", "ContactType": "bUt5UGkInFGpuUsd", "LanguageTag": "tq4dOwNESzCEW9dU", "validateOnly": false}' '2Cqm84jVi9kIpqgr' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'zpUkNOBWydXV0Fi0' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 '2aFr8CDapjwNOl4k' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 36, "enabled": false}' 'Nrm8drv8QD2JOe2N' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'tz7EFvowPgIGuetx' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "FMqXCQMAqQ2ZRGzN", "country": "trThFa9XU8moslui", "dateOfBirth": "HZJ7O8sAQ32wj9ua", "displayName": "Dzsr9xYiWRuuzQJi", "emailAddress": "Lc1eI9w3JEhxPGbE", "password": "k7s7gw07FlounC3v", "uniqueDisplayName": "JKBC7SwgoViPeIB4", "validateOnly": true}' 'X2vamIRZHzsIYOCU' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'oiCXNjrdQL2jdx1e' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'Iba1sB0HsJ06Dzfb' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "zRYt4OVUyumBeIqd", "mfaToken": "QGZC5kM03HHijsQR", "newPassword": "j7N8IAjmsonjj0ZR", "oldPassword": "50BQ1U6aFD3O2kXQ"}' 'Sc58zgZVl4gIF7v3' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 34, "Resource": "MgZWAU6E92nHJzvw", "SchedAction": 90, "SchedCron": "tnYtGfv0EJyjBu4E", "SchedRange": ["zwRjD7jmQJeFPghq", "amSc5y0X48eT7Mlu", "exk87b9Z5BTsEA3E"]}, {"Action": 7, "Resource": "fWhT5B4WedopzwSl", "SchedAction": 41, "SchedCron": "jzPXI2v0prR3OEey", "SchedRange": ["0MkZwS6TYwNN3UYh", "ic03qGEg5fNzBVrj", "o3g8CfRwtyl1HeT7"]}, {"Action": 99, "Resource": "ovoKWE4EW0sw8v5p", "SchedAction": 8, "SchedCron": "078IghoQBp2mWAOY", "SchedRange": ["ksczxBS0OBCa2vWa", "dLmQtYKmEMzicbuL", "2S3RiW8dLTCBfGUd"]}]}' 'VEdvdQL7sVwcZ2Po' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 11, "Resource": "ykH4RpfmjIXFGZ5P", "SchedAction": 75, "SchedCron": "TSZoDdT0fefo74eg", "SchedRange": ["3Nt2c0r4GqF0NHgl", "OVuNZ9LzNeJnBurh", "54CWbYb0Pebyt8b4"]}, {"Action": 60, "Resource": "vfXlsAMy2Zp2UAGx", "SchedAction": 69, "SchedCron": "LvqvQ2NbmDITuymT", "SchedRange": ["Bjn3d2sFzMS3QaVj", "ZF7Ax6115Kg9U8vr", "QJXQxoIbVi2CLEk2"]}, {"Action": 95, "Resource": "7Ivjj1A647XQ3koa", "SchedAction": 55, "SchedCron": "Mavu4Ul2IaieEbPS", "SchedRange": ["E7TGkeHsYsW9oGBN", "1pYMBwbPZTlMlUvF", "EiGprcNSQ9kEeXBZ"]}]}' '6FVrBzyhyhoS6a9o' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 8, "Resource": "2QdWJFLmoPEgd8EM"}, {"Action": 37, "Resource": "f2HEHvVevhISjbtB"}, {"Action": 73, "Resource": "AAmIHYbsxG5N066F"}]' 'Xb88SbLOa21DiSFs' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '25' 'IedV3HyoX4VnO2Lp' 'BU08wfnlHBXFIqFU' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 'mgUSMM5au8GJT0mk' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'VPI6zUtf3QaJPGrT' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'NcXXTUIggoH89QNm' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'I17UDb19R6H7r1ta' '3m7jK5pxe82pgFiA' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'S6piIzmc8rKrKEPG' 'SAcong6eNERUf8kj' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "ci1Ctccv9Gv4tOcb", "platformUserId": "nuCqf0lm6WBkIzjo"}' 'SV31tvmMB6jzrpRG' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'ESmooHiCV4GUOnXp' 'apXQGRakUbcG7PcR' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 '4eiU3Idi55jNrGNT' '2VHTKuIT5FwwHj0U' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 'r5F2PWGTTD81xhNP' '4t6kYBUjyXAn3bWQ' 'F6QcAiJpXIrgroix' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 'ptZhckUTGkcBOE4q' 'McH1Kyi8ZFvGcV8D' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'Y0XOkDstxZcY1HgA' 'nZV4IOglVLqb9lGA' 'JUg21Lt7JwgwMUSu' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'C3Bajy3BcEMCtQs2' 'FcEcvVAyId6Cp85H' --login_with_auth "Bearer foo"
iam-admin-delete-user-roles-v3 '["VDsZBQgOnXuXsGTh", "YZrmm0wrFMnPpWgr", "QD4hEk0OLjYsnign"]' 'E7KcMF7fuDbzRRYM' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "NXWUsp1tOibJY9aL", "roleId": "9ie6vvMbiNURrlm8"}, {"namespace": "8QlKyuoya4JgakZy", "roleId": "UV7t73VnSFbuxd4K"}, {"namespace": "YZ0jk0UZdhtnKu9o", "roleId": "Tc8pVkiyGsj5JdXz"}]' 'RxfNEjUMTs8WIObJ' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v3 'BTsvsw76uISRX0bK' 'VoWtoUW1P7ocuBAl' --login_with_auth "Bearer foo"
iam-admin-delete-user-role-v3 'dDSUS7Haa6unq1yQ' 'OSRvyiLBRVtIDi2p' --login_with_auth "Bearer foo"
iam-admin-get-user-state-by-user-id-v3 'iIQFVmzMidw70KSa' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "e9Eevf1fhMg1E2k7"}' 'QLFrVgtX7y0fPOie' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "DCow2zXyFFVpM87y", "password": "qEwEacQMTlqN4LKk"}' 'xJ5v3SBafnKNiMPb' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 'FkFGA85W3HJkqgS2' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "B37wwoPYOHiIsxms"}' 'LBPBJuNLnWRrtW87' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 '0qD88ZcduZSe7W20' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "Daiq0nEZ7PyhqFJk", "namespace": "DClOsKmfsgJdmzsD", "userId": "PsWh1k0cQ08NG6dX"}, {"displayName": "2TZkil67kRngoUa8", "namespace": "3ECh1gqPeS193TNN", "userId": "zot3sVli3GN2XTrF"}, {"displayName": "ibRAhzzEWzWlTY70", "namespace": "qdgJRvpZrSpWX3KE", "userId": "e2BjV00ReCXFffjJ"}], "members": [{"displayName": "JxlgjzIhpgOoIOD7", "namespace": "4V21HWDAfvXwdxby", "userId": "p4HAPbBbNPStVBUp"}, {"displayName": "KgOssFkz0F36piDY", "namespace": "XeHZ7FHls3nyvcon", "userId": "qbHQqKLQKe3xmj6s"}, {"displayName": "0GqsWncp5LrqbiKu", "namespace": "dv9z75SzoCV8ZMi2", "userId": "o1nR482D6gNClk9c"}], "permissions": [{"action": 14, "resource": "7hosaPFC5zBW3ZgV", "schedAction": 5, "schedCron": "Cj9ObVGT0Scwl4kN", "schedRange": ["mCi15XTJTgCNNH7R", "tG5Xmo9Q0Wb07N17", "fkxZSc6VbE0AGcek"]}, {"action": 20, "resource": "bfJrCJQIj1haAosK", "schedAction": 12, "schedCron": "fMUguyDoN91uc28H", "schedRange": ["oSpGt1g0GGbT4Hf2", "PPKOldkbgX9CWJKw", "XXSbv5eg9q86IaDF"]}, {"action": 18, "resource": "TJ2xVpge70WsLfgb", "schedAction": 90, "schedCron": "ieRvJI5sT9DH3DfL", "schedRange": ["Cv8q4Thmq09bBgPA", "YxrBE9jlnTgtgW33", "wDwD9RKvQX4yFQFd"]}], "roleName": "rRoM6FoqCYw7AlxO"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 '6qdFpc71sSck3ggZ' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'WJlSlCQMDji329Pf' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": true, "isWildcard": false, "roleName": "vMEPtpsSNcpK1QkB"}' '2Sy8Ww79LVeVskqe' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'UB7RSayqGFguhh3b' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'vadRthdbVApebRA0' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 '9rW8i8krFWJhe03c' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'oRFok5d3AyGrZO8G' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "uoXNSoVEBG7VbBPU", "namespace": "Wipz9C05YabFX4FC", "userId": "K5ucTFsAFzaO3yJp"}, {"displayName": "A3KMxBlrRytER1qd", "namespace": "TelFAadM9y66Drf4", "userId": "SSGGt3MiBKohow3k"}, {"displayName": "KoaP1K4CDuH1mMIf", "namespace": "OCDyVAHrHncR5dSh", "userId": "qiBUI9esSsXegSEh"}]}' 'rPpK2q8kxR4BuEks' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "S2A9VOA8H9VeHv0L", "namespace": "2Acm960EYQEuGJVl", "userId": "8xs1WId9WlalqshF"}, {"displayName": "9Rh2o7GCQGPCxwEd", "namespace": "kyuT3MgzReRq0112", "userId": "ISArROIodcmM6v2A"}, {"displayName": "EozWWaYvBLE46bpu", "namespace": "Jip8JyxJ39vrtuWW", "userId": "rqTZbSqBSKp8Amgw"}]}' 'hYzk33J34fiTxK63' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'OHpnUCGBVfpctNFU' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "sUQ6ZXQcb2o1J5eu", "namespace": "LAbBgejqc0apxqZ2", "userId": "09BySn8aUaGlAyvI"}, {"displayName": "slt7N1qcxKs4nlf1", "namespace": "MfqUZXkjHvcUOTlx", "userId": "Nf09pefgFIiJssSh"}, {"displayName": "BKsQjXvfQgQDt6ce", "namespace": "8NDMErA82FrR1GSo", "userId": "gkewIzTOqKkcjRh3"}]}' 'l2gAJOTCbx7J3gNL' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 71, "resource": "nE73GLmSZns5owBh", "schedAction": 29, "schedCron": "znIKzAEAHQpBOgHE", "schedRange": ["P5l94s7CbIJ7eHnV", "WOboMkyB7FTexsOZ", "0b2p3b63KrcwIcXM"]}, {"action": 15, "resource": "rr3KCAV9alq3hK1G", "schedAction": 21, "schedCron": "6DqwdQPQ9HkSSV8e", "schedRange": ["1MgTTLS2FgarY903", "INGIyEfRBEj7qms9", "AGQExPhgr9gGfC0G"]}, {"action": 20, "resource": "bcOpR45VDlvSc0Mr", "schedAction": 98, "schedCron": "ImwCwGqOf0bNs97K", "schedRange": ["vKyj3MqS7Dcmtfh5", "0eObbrmgjhWK0x0Z", "idAJ1CU1eD1La16B"]}]}' 'w3JbUnUDh5yGjjv4' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 79, "resource": "deCD9XPRi4bAQL7V", "schedAction": 62, "schedCron": "1A2E9pX0BWCMqPsR", "schedRange": ["k5htdM5T3fDSrSHr", "koqv2mM6soMaTvQq", "2a9YdFNtRVSO0js0"]}, {"action": 16, "resource": "PSq8Z27GpvHCDx55", "schedAction": 73, "schedCron": "cnGkXk17QPkJHRhm", "schedRange": ["LKQuQVFSKiXl8G2u", "f6E8EajXLSAS8MKM", "axQ1QyJCpKedhuzI"]}, {"action": 55, "resource": "G9NCKKXu1bqI2M5P", "schedAction": 25, "schedCron": "gM16sZ6rjnkH4ExO", "schedRange": ["bppC6CMYDm5ge659", "UDEOF6gp5UfmjtiV", "bqJnZcrqrPye7fCw"]}]}' 'i7Il2wIFlHm9N6ow' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["MHMtJy1Oqn59tEGm", "9NYeUT5P0nx8TqSZ", "dZ5C8mFI9TnvzEqB"]' 'NMF9CZvPxT5zbreM' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '6' 'v3kMiuQ3DhsKLxjt' '5srPFxBgpFtDBmTL' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'H9kP9U53z6joBAhA' 'lJGI2YYb6ajBjgq6' 'eY4PBNHKPx62tHxD' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 'b06ZFy3uglSp2Uxv' 'F2uLXWilRD7HD6LC' 'gdFxRGj00RT6Lvcn' 'GMJbJIYLssMvy9gk' --login_with_auth "Bearer foo"
iam-authenticate-and-link-forward-v3 'fTMRrXVRcAVRDX6g' 'mDfNfPGYYSTunMgt' '3C8hEguCqlMHiQN3' 'HWJw9zIWsiP2JQ24' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'meDrwEuTyM2qohgl' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'zO8AEl6A9sh2x2ur' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 '2ccp7R7OqPqIjS4i' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 '0N9ytb3c8pVZ8GlU' '8962e6gtn5pUARJM' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 '1T8QwMNOAzXmyHEV' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 '4g9P6a280S5RNB5d' 'VCsB7xL4axSPgPCi' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'wLxCFLDixZwVtt3R' --login_with_auth "Bearer foo"
iam-authorize-v3 'VTl0tR00oQgcHdGG' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 '3x76U1EIcklttmrp' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'gF5szl0sMY8es36r' '1FgR70eNLHkVrEFd' '8xArWJuCAIfNBSHg' --login_with_auth "Bearer foo"
iam-change2fa-method 'pFNw9K9pmAIc6VSf' 'E9nbE2PMv12ZSRJk' --login_with_auth "Bearer foo"
iam-verify2fa-code 'ujxbCu1HFaj6Vxs3' 'GuA4S1dS7H7yIS7b' '5TSDRIoMg7Dc5APz' 'false' --login_with_auth "Bearer foo"
iam-verify2fa-code-forward 'zwtLPxK1os4qR8La' 'QzEb39sZTdFfC8x5' 'aHLsXHlm1RJTTy9J' 'rNz1K5M1qgFddYvi' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 'fGHawNx6yhniEHLb' 'EQKc0aUvrKXDIjYC' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 '4df9qswSlpCI8Dhj' 'lxUyrs3OSesE5p0D' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'wUj2HKUvPYUcQBxM' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'SdOOsn2Nd8Jpa19G' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' 'DK46Eehx7xasqMY9' --login_with_auth "Bearer foo"
iam-token-grant-v3 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'dN2tmGuX6r0gBVUU' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'eKKlPKtE6gnYxmkm' 'CWbs5qugklBUS6uw' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'WrCQt86Jrg8tLAJW' 'pcyNkUvqn6eXr6FN' --login_with_auth "Bearer foo"
iam-public-get-input-validations --login_with_auth "Bearer foo"
iam-public-get-input-validation-by-field 'bKJ05Orya6LSSUlu' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'gIAknXcSaVYcAYp7' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'qSiDvsfMUOpWv46s' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'XvpOjrpRo4mYrCeQ' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'UnYoID2UqO0iAXA9' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "dB4ib8HDOJ8TNiP8", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "OXvGSrdkqddI3ezq", "policyId": "u6FB0sL2xt6fX9j7", "policyVersionId": "rhZCAlDlVKBsLZiB"}, {"isAccepted": true, "localizedPolicyVersionId": "szE7CL1cQCSoqHvH", "policyId": "7g63cOx6yrIw37pK", "policyVersionId": "OLrF5i3gr3Cc4M2O"}, {"isAccepted": true, "localizedPolicyVersionId": "NrTQO7KLdZDGwqx7", "policyId": "T3l1ut2oyolliYsT", "policyVersionId": "JUmpscwLcUml3Kuo"}], "authType": "MKh7tprnacA34xmI", "code": "OjFLgKR4LjEWhOSc", "country": "vtQ92iD02YMvEUNf", "dateOfBirth": "oL7JCcMo7GxxXdbY", "displayName": "CRexPekTsQxMTfaS", "emailAddress": "ot7aohFYy4VxwHIJ", "password": "9gzxqAw4vBGQAeh0", "reachMinimumAge": true, "uniqueDisplayName": "iTP4PSrXUS6jYI9l"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'sQFD43Df5qUZOFzp' 'Fd6b5Jc5TETHcup8' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "GG0VCMTFJ6svTyo9", "languageTag": "RHget5hzB52BDFop"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "xUwkMuSqQnKzDgDA", "emailAddress": "tqE3kuybwTQFYEJj"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "IYwqfSRy8GgVk77f", "languageTag": "d1GS5YkyhAiAItnW"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "UmD225fp1egsx3Er", "password": "heNwqd5priclNNqL", "uniqueDisplayName": "yrlzrJ4QHbfnAdtk", "username": "ujxHff7n1yaNCcjg"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'FhS0URBhl0L5FCbO' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "n46W2B2uPQLrt2t6", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "61A1xW6okIqmd87i", "policyId": "r9op4YfGTno5oHzq", "policyVersionId": "Y3DgykA8zBJX0rkO"}, {"isAccepted": false, "localizedPolicyVersionId": "O3K1k5ZM8btmGsgX", "policyId": "NXbpqxh76Af5JSwj", "policyVersionId": "w2fE2g6jXV7oai2o"}, {"isAccepted": true, "localizedPolicyVersionId": "5pbgEt39uJQpgEtc", "policyId": "hTe3nt7t9ztprSfW", "policyVersionId": "9OutADrNGBWSJ1zQ"}], "authType": "KxVmRTawjiZPMoZZ", "code": "cyGEHxAKDQher3us", "country": "ApPdJPn9eIdhIBvT", "dateOfBirth": "TupABJ4RwH3EdKmY", "displayName": "tbqQHNfIZwrMxf3E", "emailAddress": "nzZVnkLT0Lb85nmp", "password": "dN26BY5YI0jeO2zM", "reachMinimumAge": true, "uniqueDisplayName": "QeoxYV4UcYzswAGp"}' 'XqQxctuVaqPJGAHE' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "ZmuQrZ8GaQ4OZ2nD", "country": "odm4TNs8mAj6IKSY", "dateOfBirth": "FdJwgZsRPOzwuDSd", "displayName": "Gl1A2vaNeDiSqTfm", "languageTag": "AVg50kOdJagEmTua", "uniqueDisplayName": "xlxgywkbdOsyxX1t", "userName": "fW488oYUT4jyCVJ0"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "V8obTlGVThz4bm41", "country": "oIcV33yjPxibDjfF", "dateOfBirth": "7JkjCVpZKMxkFkBt", "displayName": "XMU6KRIm5xBoIi99", "languageTag": "ctgFXasxp5h780kt", "uniqueDisplayName": "jQw2yXzaQWaF2PqU", "userName": "fbpMpRl6xRyV19cb"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "orUHeCpqnZ5NW623", "emailAddress": "WWn2ZJY3QvRa7CDR", "languageTag": "TcsAHzD3dZyyWbUQ", "upgradeToken": "pbcv3IwmL7a1K3zI"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "UYJmdF1YtWNSQlcM", "contactType": "zxfppNCrscDPbklT", "languageTag": "HcmgXsrVj3Mjml6B", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "osOXglQwwdeLVpmX", "country": "qRwVjc3W2ANmE3VV", "dateOfBirth": "sQ1fm9EUdiaRjuLs", "displayName": "KZoqnpKwhpZVdw5U", "emailAddress": "Ma8ymxtEFLwELCY2", "password": "vIddlxnA1VynioJc", "uniqueDisplayName": "APwVHUGcs1ACMvoY", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "jWH9dFmOHW0j9suu", "password": "kPE4JwQONQ2vCbMn"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "0Oia336uiiMTAduc", "mfaToken": "tvUfVwLahtRedh1S", "newPassword": "iZlOpIQ8GL7jBF1R", "oldPassword": "5OexAPzCG6ZKQClG"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'c1636nbfM3J9G40Y' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 '62bCo941ALznQuHV' 'skfCjUK8GeX4Q0B2' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 'Cj0oOmBmXu1KiTTi' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'z7yrIvQj2isN7bRw' 'cr16lW5YwgZpjlMM' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'tPWg8217m7qNkQiK' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'p2oac8QTNEuBbeuQ' 'qm9wM7mgTtUdPVcQ' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'ijMBhs0kDP6d3nuU' 'Z41mSeS9SnGqhJOv' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "ykBcDpzD9zh6dtPK", "userIds": ["4fVHLMvrCsH3RYxH", "2Up9VthPjFrK7Hip", "0eONFDgUPShG8wwF"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "KY9AMpcwJd4SrigI", "code": "xAhbFMZfxaznlDQb", "emailAddress": "zTiFrQB1yUonirH4", "languageTag": "URx3NkKQBYrlUaMi", "newPassword": "FEWUT8cAFO5zEw8G"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'ENEJYPKxxOw7xNQ9' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 '8IEbc9YITN98j4P2' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'AGeidXRRnIAJfKVj' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'On6rtILNJVv2DLLU' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'yBt5hDs45siG30Lv' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '9iGa5mkZjnRXVcg6' --login_with_auth "Bearer foo"
iam-public-link-platform-account '{"platformId": "AByNpBo2JYkwLdmR", "platformUserId": "97u9MVUii4KpYcb1"}' 'AUsESaBOTHnbX9tC' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["9PQlFAGbMtEybfcA", "l0mnsAkRT2k0Azdg", "IunRkTxsGdrpNELM"], "requestId": "8Lfkut0wnT24wh59"}' 'RGSbBMh7jpszuVk6' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'iPdJ2boQqCCyJfTh' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'vCJieqRSGN8Mm74H' 'lSZzp4aEW4GkHG5O' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'IVuGv47XJpkMiopQ' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "rVL3ZZTVxqa9XM2g", "emailAddress": "Y14iWk12Jffk8dwK", "languageTag": "NPUOHNZxML3yoBM9", "upgradeToken": "qxd6PWz7sVnMxge2"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'inL8fBFP1ABaIKrE' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["t8d3o7cTS9OIIMEr", "nNTLXHrsOFsbhRow", "4iaYKy0IjsDgbJ37"], "oneTimeLinkCode": "DN2lDvdh7okHl1wM"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'ht2Izq7TCUJhDsDe' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "fAS09VyQB1vR1mx6"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'K17GL1CrO4ZuoGZS' 'xTzm8oMSPIHPtqzI' --login_with_auth "Bearer foo"
iam-login-sso-client 'WIzg8pbjnt1iBV8D' --login_with_auth "Bearer foo"
iam-logout-sso-client 'pbjGts4UZDTfhAyZ' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'Khqilty9NVlgxUmn' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 'fdOAmu1dX1NqD20R' 'UvvYeJZw6QZFN7wF' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'CnqpvNesGiVnt9p2' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "to7Yja1soDE1K0Sv", "deviceId": "GrMYwPmPXC2LfL2m", "deviceType": "5rP2A20t6foPPH94", "enabled": true, "endDate": "UinY5diUlqgvY7dP", "ext": {"PyahppgxJhk4EdTZ": {}, "000rS92594HLvWFs": {}, "XHtMP0k9L5dREQbC": {}}, "reason": "qfh0gpABFBER6WNc"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'DOsRzBkf9A6HjCnF' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'toOeLfMCYxSeeJOl' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'xa395rghZwGhdZJk' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'kGhYvXYMIyaEMEqO' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'pwetb82b96rsH73h' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'RfDgl29GWKpItMt4' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"count": 67, "userInfo": {"country": "QPmjUkvSs5YmIejo"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rkse9SGcMuV5phhU", "policyId": "315LUC6HSMQ32Uzn", "policyVersionId": "XNd6ve29lqqtcLJW"}, {"isAccepted": false, "localizedPolicyVersionId": "bYWpqeXjaf1f5fjN", "policyId": "MZjKJ05puX3197Wr", "policyVersionId": "MnJtovSMFw8X4zxb"}, {"isAccepted": false, "localizedPolicyVersionId": "TD9xL07ZzzIs3Jke", "policyId": "34ZAUuLP897ooMLn", "policyVersionId": "emwKAvgDXNrFEE4J"}], "authType": "EMAILPASSWD", "code": "u1ky1ZYvyeHmfoFk", "country": "UDP864shbnQ3bVvu", "dateOfBirth": "vpsDJXPCWkX4Kpi8", "displayName": "CJ88aMPGFFAQZbfb", "emailAddress": "mVTEbiRq5Juikmpa", "password": "t75rVbN9ZBtzJ33t", "passwordMD5Sum": "Cwv8H1f451FVZ630", "reachMinimumAge": true, "uniqueDisplayName": "NBYZSrz7pMjESLLM", "username": "PKDXLki6Oz5Bygt8"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["RjSf1srB7hGwGbUm", "QmJHNffZENs9X0hF", "Mdzryvhc1YjHmmul"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["SBIElc2CdRvBb0aG", "nMt625bWHb5sbX6a", "srjV7XJUOtHlzXNH"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "EPpzlMlx7b2H2THL", "country": "wZGikW7TFA9gE6Sr", "dateOfBirth": "YKq6lcVOhPJIcEHb", "displayName": "iKHW7flVolAWEMmQ", "languageTag": "SPDTRqjlvwnnCA5t", "skipLoginQueue": false, "uniqueDisplayName": "fbq8xoCurq4lpHXr", "userName": "bVBh60NUA2aKQwnX"}' 'rmi6ya8u4sQPvaf1' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "AcweR7tJW3MLMob1", "emailAddress": "hUnIzIpUM8KK1kGF"}' 'N0NUNGKxdlAUDFQu' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "GPzAuT7M6OBrNwio", "mfaToken": "KnXPVZaDcXsV1Tns"}' 'ZioDiBgprzahPB0F' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'KMa0YeyNBQWUHDBn' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'BeePkqg6Zt1Lr5Bl' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["O8K6LH4dSaa8XYHu", "g51ZTogG0N7Hvnuq", "1kJ1kpHcQtnIc9z7"], "roleId": "0LFQMI0oZuEjY0rN"}' 'BbbB9txAvtRQvqJa' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["cXR2Rf4noXDFaEUk", "PUBnB0ZEJH3ebM71", "Tg922xiBgHSka0Pz"], "roleId": "7I1WkIa0oZ1nXpW1"}' 'l70pcZgIn4lPghHy' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["MEHBzArbyW10NkJF", "QxuMHnfOlX6HYVEi", "aereFCPJU2wEzUYU"], "roleId": "TmZ8JSMeNmRocp40"}' '0RZe8Bzx9aGEI22B' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "s97TJI8GPrM24F3c"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'elFgM62HQtgzQhO3' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'nR8j8DlP6OGbn8vm' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "GLt1AjKhh3JMX7xS"}' 'rz1EH6X2SM3xzsNr' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 73, "resource": "lKNh6GTzKjsCqxx2", "schedAction": 56, "schedCron": "QM35bSkFrvGciNHb", "schedRange": ["7OY5YIpOLJW52uz3", "c8pz63M0g4xXT5Ts", "4e0uR47OzUGHeBKt"]}, {"action": 32, "resource": "4ezBRSiOyReviDax", "schedAction": 23, "schedCron": "UiDGXgh8BKcLqtRZ", "schedRange": ["93LuR8OEyICvwgwB", "FehwtdJLdn3R2wo8", "beVQvgeP9qOHaLwY"]}, {"action": 28, "resource": "EMRPkdTcAzkIlndN", "schedAction": 49, "schedCron": "JA27Qz5SjzQfOLYu", "schedRange": ["9O46OOzz9p57qSpH", "erzO87cg7TqtMiQg", "i7Aj28qCRbwwZc4Z"]}]}' 'S1NMkrnHs1Iyhwqk' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 21, "resource": "40MolIrnlkRVbcX4", "schedAction": 27, "schedCron": "5TDYpkk2Gza6DrSy", "schedRange": ["cophHw3EoEEClTO9", "SDKnMlnKW9jiNMu9", "QVrMeD4bD8gISE34"]}, {"action": 50, "resource": "T2E6AacmZRXZm626", "schedAction": 86, "schedCron": "IlZeheP72AB8EO3Y", "schedRange": ["rlyrWowUpUDVLlTt", "uJJsHZVsG6izJZru", "OJvSRFLDSdj8elbt"]}, {"action": 70, "resource": "hfIMStMnSqrKWYOu", "schedAction": 70, "schedCron": "5j18Ou3aY8nceFU5", "schedRange": ["GKmcEKp8AQwqgJs6", "O0Qj0ccMkdz6zPz3", "BVHAqp4O9XSjap24"]}]}' 'esyjh6Wc3migf2n6' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["iQyr5cb5YL6fwBia", "VPmmn0T5uzlmi2NY", "26xrkPPdg3pXjmtp"]' 'NfCrIj9ntYo3dupU' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'HNu8abrVVOKxr9Pa' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["315FKDjG2ApSV94J", "y6yCSXBqJqjAbVwS", "aoj1ugjr8mPkr3tZ"], "namespace": "506ERSVy5M3rrkxu", "userId": "0U9h9gCNVZxHGxhZ"}' 'qNXJ6JXSh0Z3SWIS' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "s1dYrJKmx1BT6iLF", "userId": "QejNZJNF2hm0TqBQ"}' 'prHn3whPKU5abnqw' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["8fFa30pVbhr1BHh1", "arZAyuLcZoEkPpqK", "hP2jWnRTglw0gdWo"], "emailAddresses": ["E4esuiDrquccz4J6", "fFQezJ5E3iYHIknv", "PcJkjRevVYfiExpA"], "isAdmin": false, "isNewStudio": false, "languageTag": "QQHQ0NCEddJtx6GV", "namespace": "01vD7lNLxlpvqaB9", "roleId": "P9GaukfCEIeSBLhT"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "fzigzHcRuJgYaj4I", "country": "8Dzyh1N0JEKNoMtH", "dateOfBirth": "vjM7X1fjzknv2HZM", "displayName": "IL2P2bh14LroFTnA", "languageTag": "uujPeP9N0vdVB5a2", "skipLoginQueue": true, "uniqueDisplayName": "kS3XQfMuzZh4AhZR", "userName": "e2hgU56xtyJtnbTD"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "Xu7FbleSP5PcdOuq", "mfaToken": "0m0rvakR8rcwojLR"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'jhcaJ56nGlYZ2tod' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "2BGBXjNyRCtPOr1F", "mfaToken": "U3QZy3gdDms3kb1h"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "tW0UGJpwQZlXuzu3", "mfaToken": "m9u67JjCDwg186hG"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'WKfO9MnoT3t99Hmc' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'xzjDhTrcBKtU956h' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 'Og8oukDVdweG0sFH' 'xTHa2k60SzCqUgq1' 'gLbcIMevTmC631p7' 'q794bu49lINFTtER' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'AXT2h3hcQ2wV3ZbB' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'TnNQnVUhA5WnzVZd' 'j8tsyzC4QaLXp3o4' 'TDraEEaDNJbVd20F' 'false' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'jtolx64w1gyvjacK' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' 'oLulzp3sZxImVK5y' --login_with_auth "Bearer foo"
iam-token-grant-v4 'authorization_code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'KQYlqMmu2pvF6rP0' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "3bQaq1cT88H6RCW8", "platformUserIds": ["gJmGzDlqxtLsR2AG", "OiPhNt2IdH8aYYUT", "6mma833TDzk66ix8"]}' '8sAUrXr7MXxCvyy7' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'caxz4MQrODLNlxiE' 'jQBCZx9DJ4V97SJL' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "g4bsO4YHEYLjTSND", "policyId": "f3zazm6p5Y1tkG9W", "policyVersionId": "wU4Ty6Ch5QYyFjuB"}, {"isAccepted": true, "localizedPolicyVersionId": "Mvcu39YZJypWzpNX", "policyId": "gnoKIz8O8NglJtZT", "policyVersionId": "h280vflFMxIhlIT8"}, {"isAccepted": true, "localizedPolicyVersionId": "ey9pEz1TV5cUtPBs", "policyId": "w01i5Mf7WvbNSeeD", "policyVersionId": "NfUESLlwHv3JgteO"}], "authType": "EMAILPASSWD", "country": "Xl7ZZrDZdbuvCFBa", "dateOfBirth": "VcohewKkVuGv9fQX", "displayName": "kErF0drbYrrFQP6r", "emailAddress": "W62CtetBW3pvAJJi", "password": "eHhveGg97PY0txzv", "passwordMD5Sum": "Ywv7atn9EQv2Oj8T", "uniqueDisplayName": "FNeGtJGjKbMgCeuA", "username": "YuzrmbWofEaKStqd", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "4ROnONpJ849chqei", "policyId": "UGQMwNwDlYSli3p8", "policyVersionId": "YaAdel3hHMSLAisc"}, {"isAccepted": true, "localizedPolicyVersionId": "VDCBcvVegrZddP8l", "policyId": "LQo6tHj4z4cAM4LM", "policyVersionId": "JfWNZIxAgBpeubpr"}, {"isAccepted": false, "localizedPolicyVersionId": "8jTyRd3LrR1x6U1v", "policyId": "6zSLjm9zmzUW0vPj", "policyVersionId": "90jmLTt5YQGawcom"}], "authType": "EMAILPASSWD", "code": "oiYoQ1f1AYq306Py", "country": "sv4VPaZWolXypwuc", "dateOfBirth": "Uqqqff2iWi4yP3uq", "displayName": "Ncig6YcDA8Z3g62o", "emailAddress": "GYwkrjLI4EHJEEWg", "password": "ki9fbdvUMDZeO4U5", "passwordMD5Sum": "5wdCpVpnENiTc9NE", "reachMinimumAge": true, "uniqueDisplayName": "22eRBElD4K2Cy1tJ", "username": "cPAEkCeV29QsQk10"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "eu5UcxuXXpt0YSPX", "policyId": "04uEIdAwgDobopbd", "policyVersionId": "JeVCiKs2vLyH9kcS"}, {"isAccepted": true, "localizedPolicyVersionId": "1wYUJPbvzn8TYoMD", "policyId": "AaUXSuBQdvdhJoT0", "policyVersionId": "WK5ngNUxDKfZYofP"}, {"isAccepted": true, "localizedPolicyVersionId": "bSaA00nKxQjYU6Kl", "policyId": "avIiLxU2I1GyJS48", "policyVersionId": "Hxu8Ju4XSAnlXRYB"}], "authType": "EMAILPASSWD", "code": "0f5lwXvRNDBnmL1K", "country": "Qn77hiP1lzkzjYDw", "dateOfBirth": "6mLBordrJkD6vy60", "displayName": "uRMT1Xw9K9Yb68a8", "emailAddress": "ygYx2TqkhlqMnE9W", "password": "j90EQzOidrWnLrXq", "passwordMD5Sum": "ImgDf3GaJsdCZND0", "reachMinimumAge": true, "uniqueDisplayName": "zElrLZOBLHCKmLBa", "username": "IwlokbAFW8RgBUwB"}' 'L28BqM8UzvKqeoTi' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "NKGRUMrimGAz6Ohm", "country": "HOpCdr3WzDm3hJdd", "dateOfBirth": "6uaO9TiTPnIh2iaI", "displayName": "BpYC4txul6VKYlNY", "languageTag": "YlHPwKDpJmkeoAkp", "uniqueDisplayName": "3Z4pgyJYwclb4gd4", "userName": "QgQut2hiPuDdOPHc"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "N9drwqytieXpIZfr", "emailAddress": "5XDq9dGLHjtgE2bT"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "XJxCCFqPNDqWrpkW", "country": "nnova15WVuE5cYVP", "dateOfBirth": "9tQSa27BnPyq3I1B", "displayName": "LtGEZDRNkk4DJUof", "emailAddress": "JXK8RGS0zCYRVmbf", "password": "zwUmsy0stUmKdXii", "reachMinimumAge": true, "uniqueDisplayName": "bNdqkWa13g3pgHx6", "username": "uPf6jQZcYerH933X", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "iXEEM2KOusNEHcI9", "displayName": "5GGdJvucDbs6Udcc", "emailAddress": "uM2ykRj3WnyAaUaQ", "password": "BKFedL2uduXvZUbQ", "uniqueDisplayName": "Q13FhD3NExUFipJs", "username": "UiDawAjgHFQk0VzW"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "RNFNiUn2yXMSCcHA", "mfaToken": "DYpS861c0CJ7LzpF"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'vOSF6xKA6yrnvXY5' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "dDwneac75C6S2eHs", "mfaToken": "H4Y84hL75QboMHCt"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "zEF9FSeg6WYgtfuq", "mfaToken": "JHrs4e3RnWR30MdB"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'Zezfwc3H0qSbMq4G' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'Lj8aGsH0qE5p601a' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'k59yFSfdZIv8oYWP' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "US4Zu0SbTt6M2Xiz", "emailAddress": "ikCh6q0yq2WAHtL7", "languageTag": "IWE3MFqvfDG5jvMO", "namespace": "aXrDlEX42U0syrGN", "namespaceDisplayName": "hBmgT2q0kIbrJ2S5"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "f1Lvg8kYEVylINJp", "policyId": "xFY8E6pU8eHjh0aT", "policyVersionId": "jIOaQt0snbE0yMvq"}, {"isAccepted": true, "localizedPolicyVersionId": "TJ9uB0zypjJiu7BI", "policyId": "imNuwB3hBVhuSMHh", "policyVersionId": "f5R2MkxQTAYGfE6h"}, {"isAccepted": true, "localizedPolicyVersionId": "Z7XLoWCGf0dZEeXB", "policyId": "d6mGG6SHcZbX2wNn", "policyVersionId": "T6A9zosmDnXoncy7"}], "code": "NZQ4PkAPXBCfkE1F", "country": "b0y94eP7yh0zsKhR", "dateOfBirth": "60HZwUwk48XK7MXH", "displayName": "bEwAvvpEeHhXiJcJ", "emailAddress": "qYSxVKUYMimVLzAP", "password": "6aOzsTqEFXUhGAwp", "reachMinimumAge": true, "uniqueDisplayName": "QJ9vBRJ4UP09fabC", "username": "01Thm9f4AWpyiKVT", "validateOnly": false}' --login_with_auth "Bearer foo"
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
echo "1..428"

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
    '{"modules": [{"docLink": "OvEujx5yjtQSCJaO", "groups": [{"group": "Hzpb623EciYoYOPV", "groupId": "g6DLEZ6DxpwBm2N8", "permissions": [{"allowedActions": [85, 49, 6], "resource": "SYnVwXqF6K0WA76K"}, {"allowedActions": [24, 63, 21], "resource": "mHHoz6qBQnEDgX49"}, {"allowedActions": [27, 49, 93], "resource": "h6fIaHSx5bClxUOB"}]}, {"group": "mMwv5pmiIVnhlLoM", "groupId": "emsp7o3F2LQw7Y2V", "permissions": [{"allowedActions": [7, 46, 91], "resource": "flNGfufW5cWeg6eS"}, {"allowedActions": [58, 87, 49], "resource": "Pa7PPx4Zi6WaC8wk"}, {"allowedActions": [36, 69, 70], "resource": "MbJhNwZgf5nlMDOR"}]}, {"group": "YuXnPNJgayPFcyUn", "groupId": "KXA3mcyMmX6WF8jt", "permissions": [{"allowedActions": [81, 98, 55], "resource": "s29WOKmZRTtgycLz"}, {"allowedActions": [67, 53, 55], "resource": "6lUMKi5mweMEZo2Z"}, {"allowedActions": [27, 35, 78], "resource": "CKvrOAi7lMgkVWJY"}]}], "module": "zSCIDxWUxgOzeRNH", "moduleId": "IqK5PT404mFw4HJv"}, {"docLink": "5T2kIQOecfLsYKTm", "groups": [{"group": "UnKlrOsJmEwjGYN8", "groupId": "VNPXNsmwTV8imJHN", "permissions": [{"allowedActions": [72, 54, 38], "resource": "l6jJVzF1Oi2sQuWU"}, {"allowedActions": [56, 8, 56], "resource": "WxBs056jkPCUuE1p"}, {"allowedActions": [13, 54, 7], "resource": "ZHCWMXxVh8HTrKqV"}]}, {"group": "wnpPn8N5xMRgU7cP", "groupId": "qNZrLCRRUysya4J3", "permissions": [{"allowedActions": [36, 41, 43], "resource": "3n32atB0QPQPEp5U"}, {"allowedActions": [41, 47, 96], "resource": "JY23AUWFTLq0W1Jq"}, {"allowedActions": [45, 53, 74], "resource": "alTddhAQ1pwqnybv"}]}, {"group": "UIfuulmeegRwPPbn", "groupId": "7lttd21cS6IVE4fz", "permissions": [{"allowedActions": [47, 27, 66], "resource": "4MZQt753XQB93rOW"}, {"allowedActions": [62, 12, 84], "resource": "uPoQbYzc1RDVhs2l"}, {"allowedActions": [15, 64, 7], "resource": "kmA3fgzcwdgJMjIy"}]}], "module": "GfiNBQy41M1gzGCb", "moduleId": "axw33rNbE4bbDU4F"}, {"docLink": "MTbQaANJOODGerDC", "groups": [{"group": "Wcl3VSJENQopeHD6", "groupId": "iKBGm5Cj7RqnJUmf", "permissions": [{"allowedActions": [61, 29, 26], "resource": "OeqE7fcCAeExeQX4"}, {"allowedActions": [2, 76, 62], "resource": "pmdMiZeyIrA4QUKS"}, {"allowedActions": [74, 64, 13], "resource": "FyHv141NPqjRUMKS"}]}, {"group": "QjFdjqTaZFsWzbqw", "groupId": "TZQIN5jC6a8mEVCX", "permissions": [{"allowedActions": [68, 62, 26], "resource": "NbWqlX7idzjpKDfw"}, {"allowedActions": [24, 47, 80], "resource": "lCF6YxFMD8tJQwZv"}, {"allowedActions": [96, 88, 97], "resource": "tLhzylaquioT3QBt"}]}, {"group": "29AiRASsuFM4ahGw", "groupId": "7XcF1Qwzz606UGXP", "permissions": [{"allowedActions": [14, 57, 29], "resource": "tKcwj6PqqOgCimr3"}, {"allowedActions": [88, 57, 81], "resource": "yTygbtOtcQS4Cmgw"}, {"allowedActions": [97, 46, 47], "resource": "RUnIVYxY6OhdkrYi"}]}], "module": "CinoVOzo4Plv1IlT", "moduleId": "pEhjTFYdzsUNvQAn"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "2LuMjLqwmVz3zKsf", "moduleId": "jz1mFkyxoUzfMFoX"}' \
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
    '[{"field": "COguSq2A4R3wDdSk", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["bYXmlAOi1SC3I1Sj", "kH42LtyZKrTJo0L5", "sHil4Q0mqa8Gatrj"], "preferRegex": false, "regex": "G0EpfGAqHKcSxUc2"}, "blockedWord": ["YgRpk2IFGIgIpscU", "pVAciu2XPPUxzXHU", "vxhvTZcvRKoaM4oz"], "description": [{"language": "SAg8FTLrByWOJhbo", "message": ["coGlPzdfxcC3rpWh", "Spq0InxMLpP7n7M3", "JXjEvsj5WcQ99M1y"]}, {"language": "uXeqV31LX2ehcMnM", "message": ["6QtjzQjDlUMCGnxZ", "wak7KHnzGASmVzeP", "Iroz41oQCuXeTRyJ"]}, {"language": "QrNLTcqLVTN5Qf4t", "message": ["jPGpu27yxb1of79z", "VTWIfgdNphqe9fS1", "m77MAg4KoZQPLhDS"]}], "isCustomRegex": true, "letterCase": "zU7qlNVk7qnmBS3X", "maxLength": 74, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 11, "minCharType": 15, "minLength": 78, "profanityFilter": "p1OkMcErmeH0lX1h", "regex": "j0LaXgQ94flh775A", "specialCharacterLocation": "QfzNjQ7IuMSY2epR", "specialCharacters": ["DJjDyMDKQhuTjtQZ", "yIiAmCL8bNTTfqLC", "v9DYBOProN4UWbQa"]}}, {"field": "KFrTv4JWElmOCxqP", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["3XJWBxTLcOef8MgI", "wkrKFEtwESJCe2ks", "G3nZE13H2fILFzOl"], "preferRegex": true, "regex": "RZcKSYLo6y7yJMow"}, "blockedWord": ["Q6LpHCvCYTgX9JQw", "ErzjtuP9pUUv7qef", "NMFsZAIqak1zi0JS"], "description": [{"language": "a5cRn31D8ubfdXi7", "message": ["BycDPckeGJUgU8bD", "5mGFFmKTTUxG0mpm", "FxxDNXGlGJvHf558"]}, {"language": "h1ltyhiSGhfqXhxB", "message": ["J7zLXioAGkWgSDdD", "QvpRfGe3z2rtjWpJ", "AlKHF0ebxhJ1176C"]}, {"language": "eD4dWCp4wqlQJcZr", "message": ["oNQiefBnPluOIjZy", "vlGDQGv6pNNowEuV", "VZM28w4mnYvvlt1e"]}], "isCustomRegex": true, "letterCase": "2WsQImTwYkiuxzLr", "maxLength": 2, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 73, "minCharType": 75, "minLength": 58, "profanityFilter": "BkGzCNgesQlZZHIZ", "regex": "H0iks6kx0adnimPy", "specialCharacterLocation": "yzezsHdFftHHR6xb", "specialCharacters": ["cVVonwz27DWfGRVh", "bZTvCPrrZCTU5WUJ", "izF69PSsquWUafwb"]}}, {"field": "FPX15633pFgA7i9t", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["mFvUZiUW5Y0CYw5O", "XSGwQkJuy9oLFcHH", "craLXR2n9JQvq7NK"], "preferRegex": false, "regex": "IHYsii3fCh7sieJj"}, "blockedWord": ["ZPAkiWumllU31uXP", "wYxedGHCIkmt4bfJ", "OhNaIT0pv7XeqO8g"], "description": [{"language": "Y3c4SryWB4yRaDxv", "message": ["xwaLM8HkVOW8PnLk", "gqkqYZWPZTgKagTz", "dcYcko7U3gH239Lh"]}, {"language": "Rx2Laa2RdtVb6VgA", "message": ["5yFIH3s9UyeaFi8O", "E7BCK4FeVGrl5NpU", "G9zblWEiHaUjyTHb"]}, {"language": "0sSlstb3slUe94Nx", "message": ["hXsVcqTYi1TMBMza", "OrxuKvtUVtqbDWnJ", "2i9TRmJOqIl7U12h"]}], "isCustomRegex": true, "letterCase": "vpk9DOSgbsdGVPLD", "maxLength": 55, "maxRepeatingAlphaNum": 20, "maxRepeatingSpecialCharacter": 55, "minCharType": 81, "minLength": 25, "profanityFilter": "aRNDe2IoPMSQKcg0", "regex": "OTT9JA0ll1RimBCi", "specialCharacterLocation": "QwuyrI87uSyXP6C0", "specialCharacters": ["jXS8au2wcWYyj3Jv", "HqXp4JR7xI59Z9tf", "GVsglnOxOXBfgBLu"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'glkd9LIoshGnFSuH' \
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
    '{"ageRestriction": 26, "enable": true}' \
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
    '{"ageRestriction": 37}' \
    'nPqGlPnhBDOWqDU8' \
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
    '{"ban": "N3DjVUt0n0jfyDbt", "comment": "IXICLkK8ZvbnTg3z", "endDate": "nlg8nmzQx1RsYhcR", "reason": "lv16Wwe8YK3lZFsl", "skipNotif": true, "userIds": ["KFZLrIfqrZuu7IwK", "cT7sAsv2TKCbYMVk", "XEHmsHwIGGsusS0z"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "ZRODEKPdudZsLaf8", "userId": "aZrXW84dt0TSTmy7"}, {"banId": "XF26K2U7xttUz8nW", "userId": "KJjv06PuffHghAQf"}, {"banId": "AsYXVzBenLtaAoYy", "userId": "RfiCWrm3s1Ah3TII"}]}' \
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
    '{"clientIds": ["70MIcBMJ04508jKe", "dx0CVRpd7SwZw2Uk", "jDzJ4NuMMgI13npl"], "clientUpdateRequest": {"audiences": ["XaUQV5QEvKElLfbB", "7gwwAR1xFrnyirw3", "iJt5iA3JS2xeaJ08"], "baseUri": "JrSHPqdhKHn6ZjZM", "clientName": "dr1C2TIQzRJY7UfY", "clientPermissions": [{"action": 91, "resource": "y5fpbbbMIu9lu18j", "schedAction": 70, "schedCron": "RyeeqehMNeRYKeMb", "schedRange": ["L0G4v5D6ylZguO91", "8X7rLoexHBMBMMAY", "okSWFwajRGUyklfL"]}, {"action": 97, "resource": "kuVu5r5B08VZxI4T", "schedAction": 95, "schedCron": "5m96qcCJsVOWtu5R", "schedRange": ["Psqd66ImBEuhnaxZ", "Vf6MD9r1y5Ihr531", "Kajxq7lzuVRVEvhK"]}, {"action": 70, "resource": "ummpllnV6B62P1Ka", "schedAction": 53, "schedCron": "cO55hVjfWyK02w5Q", "schedRange": ["ytAmkanukAzAMaRv", "IUhUwguGgbLLN3O7", "CEYjxqElP5lA2FJ0"]}], "clientPlatform": "iGLRTXGsC5mxxse4", "deletable": false, "description": "ey2BqOxgwCymCDYs", "modulePermissions": [{"moduleId": "uff3b7G5FDX4mu0q", "selectedGroups": [{"groupId": "PHb9Ll2EFEb8Gnst", "selectedActions": [16, 25, 40]}, {"groupId": "Q2Y6ZGOiqrg3lpqN", "selectedActions": [3, 82, 79]}, {"groupId": "fnqJ5bzDRzbhMxfE", "selectedActions": [61, 62, 60]}]}, {"moduleId": "TrtIHyyMq79EdB9M", "selectedGroups": [{"groupId": "xaF8QHGM2IuQYBO8", "selectedActions": [26, 88, 68]}, {"groupId": "RNATojM7daV0VwR3", "selectedActions": [51, 90, 81]}, {"groupId": "WgTNHCka3Wb5kH1B", "selectedActions": [35, 68, 78]}]}, {"moduleId": "n3ePBxQNz2IUEHMz", "selectedGroups": [{"groupId": "l5jhwVDsuzwJ4v50", "selectedActions": [9, 78, 30]}, {"groupId": "44KEm3uHBMCP5ckj", "selectedActions": [32, 66, 15]}, {"groupId": "nkcHgCfaWzPUvCnf", "selectedActions": [33, 46, 39]}]}], "namespace": "wu8W1zvrKMRPvwA9", "oauthAccessTokenExpiration": 22, "oauthAccessTokenExpirationTimeUnit": "ek8WObpf0FHYfViE", "oauthRefreshTokenExpiration": 19, "oauthRefreshTokenExpirationTimeUnit": "rrpOm4M2pM4fIfcH", "redirectUri": "BWZM50aHbPXRns3q", "scopes": ["wYL6LwGlZGF7XQPL", "AcIL7FvAMWqhyyNZ", "H1CducB5y5iMdeBG"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["G4meKEabfVXBJPIZ", "qZC5d6JuFdcfiNf0", "DOHKwxDF5GJhCjVH"], "baseUri": "iCn2hTefT8gPFJ4W", "clientId": "ndMpQhcLK0WTZbtm", "clientName": "QkwC8azx3IRWme3C", "clientPermissions": [{"action": 52, "resource": "p2r4D3NQdjrjkX3A", "schedAction": 79, "schedCron": "eoerZAxbDPXU5xJB", "schedRange": ["hIpJ9b0Ap7CmSiKP", "jcwAw5GdxpvLfa4b", "4hTaZBGdX66DqPTd"]}, {"action": 42, "resource": "kkaZYpl52sQR9Znp", "schedAction": 28, "schedCron": "d1eSwrG2GBBEWrDb", "schedRange": ["Q1ZzhDuLHq9LTBst", "guOdN0O7l3GbKPHd", "DTQDEEE2mTsn1NwJ"]}, {"action": 56, "resource": "1szsNmnqZSWdEyOV", "schedAction": 80, "schedCron": "rTdDq7IqbTVv8BLs", "schedRange": ["qQW8HSrEm5Y7jI23", "2SjktijiNzTUe8Kd", "izXmrmK0sCUsqxKo"]}], "clientPlatform": "cHomtjoU1kUqRedw", "deletable": true, "description": "Ekk4It6V8Bu7rIjG", "modulePermissions": [{"moduleId": "rxUMKbv60ixUuUho", "selectedGroups": [{"groupId": "pdqGrqRZ124P7Pau", "selectedActions": [87, 94, 2]}, {"groupId": "rpWAjwatSvtPbAFn", "selectedActions": [66, 30, 12]}, {"groupId": "WQcmFkkRX6EqadAE", "selectedActions": [71, 79, 52]}]}, {"moduleId": "a6Pco7MfvikslpyL", "selectedGroups": [{"groupId": "9BYLVVznF6hMYfks", "selectedActions": [31, 19, 100]}, {"groupId": "VQhYSFeBOp0ilGQF", "selectedActions": [46, 54, 70]}, {"groupId": "ZJ4HuLfeTfFBTOFF", "selectedActions": [80, 73, 72]}]}, {"moduleId": "Xncm5igpAewbmnWk", "selectedGroups": [{"groupId": "0E7YaPblcWEyNgvs", "selectedActions": [77, 3, 63]}, {"groupId": "8Yp2QnuhQuIdvZdj", "selectedActions": [85, 54, 13]}, {"groupId": "spWBfRnLcLbp7Omc", "selectedActions": [36, 34, 60]}]}], "namespace": "l13FtQMu41rnOzbs", "oauthAccessTokenExpiration": 65, "oauthAccessTokenExpirationTimeUnit": "W1Yjfn8lY4DnYRxY", "oauthClientType": "8ZhHeb0CaPFDjrSo", "oauthRefreshTokenExpiration": 40, "oauthRefreshTokenExpirationTimeUnit": "9xutntU8xHw4yYJO", "parentNamespace": "CViHwunQwpC2eCFU", "redirectUri": "AHZaYSvsWiNJtqXl", "scopes": ["tZF6aSRmHU5iR3hX", "IbzWPKOkzftOgDQA", "WhulbrDf7q4cAnpm"], "secret": "LiEu4CNtX2lnqi7c", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'SdGoLZbC3UJruU4u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'IXBZsEYogFWiH9z4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["E8zmaZ5cg0REtUWY", "4fVIdqwCWF5wmbOu", "bTxAAeDCowR3MeCN"], "baseUri": "L1oNrF3SmgudQusJ", "clientName": "LsPlW7ZyORFkN9Eb", "clientPermissions": [{"action": 75, "resource": "tkJWFpHt7MdKu9Xw", "schedAction": 27, "schedCron": "am16O6v4VjJf40Lj", "schedRange": ["UdORELVXUFQyVlt9", "jmxmxpfp41k1uDg5", "9PhdUXShabwyYCxT"]}, {"action": 68, "resource": "764EwhQfxFKIOGT1", "schedAction": 99, "schedCron": "4zL1QeR3EYXBFpUX", "schedRange": ["9y4tY7o5FFi1n10v", "DgyoHXIlrMl2RAuk", "CL26ihdMy9YCLNJE"]}, {"action": 21, "resource": "RPTgWotLNz0u8ySx", "schedAction": 54, "schedCron": "XNuw6Y7sToQNkuZz", "schedRange": ["J1XBxw01iBBQukgQ", "94ZvPCWcMX0ov3U2", "sKjIeyFS97dYD7Lk"]}], "clientPlatform": "cTKYpCfl6HPy5cJf", "deletable": true, "description": "MtwApGbXnR3yC6f2", "modulePermissions": [{"moduleId": "MHGGedk0KzXRclOX", "selectedGroups": [{"groupId": "dPYZQxBnttu4yW5e", "selectedActions": [39, 97, 23]}, {"groupId": "PX6r5ZTcnVVOKMAp", "selectedActions": [93, 4, 30]}, {"groupId": "WsFRUlWBp4gBs9Uu", "selectedActions": [11, 58, 13]}]}, {"moduleId": "IjKzylqW8auyseP9", "selectedGroups": [{"groupId": "wEEyYAnHPp4XzVL5", "selectedActions": [79, 5, 13]}, {"groupId": "glFCrjxqqxAYqXG2", "selectedActions": [98, 48, 55]}, {"groupId": "baMkZ9JCqBIkUID0", "selectedActions": [62, 21, 62]}]}, {"moduleId": "pEdBe8bYWdok4UnU", "selectedGroups": [{"groupId": "EOyP0cPZf5OvolfI", "selectedActions": [25, 59, 33]}, {"groupId": "G0EBgst9Qu8Ofl2o", "selectedActions": [55, 100, 98]}, {"groupId": "B7jHZro4hhwnANAG", "selectedActions": [31, 67, 52]}]}], "namespace": "gbQSKW2MdgCH4bWx", "oauthAccessTokenExpiration": 88, "oauthAccessTokenExpirationTimeUnit": "83iXfYXNdMkdg9TM", "oauthRefreshTokenExpiration": 46, "oauthRefreshTokenExpirationTimeUnit": "jaJs2duQqawPrxi6", "redirectUri": "F4elhy9CZ94CAUVW", "scopes": ["8FoEf8tjCjWc22qq", "DfNz59jHwSDQHadm", "Ao0lzhPm7RmaOr6T"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'tv5ycTa0i6ifYP1z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 10, "resource": "AopZL9Cw6K9h55mw"}, {"action": 96, "resource": "GoWw1qnCAvdnAcok"}, {"action": 73, "resource": "fGd0bkWrlhtfTywR"}]}' \
    'W4fmg6btk3mAO4Et' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 56, "resource": "ubMXbxNvT6wAffv4"}, {"action": 43, "resource": "Dx9neFHWhDRJtyYE"}, {"action": 41, "resource": "trxWu293551nQBNK"}]}' \
    'cqCkUXRj8gQHEe4C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '83' \
    'xoPYvdIBJYyGURjE' \
    'jnslEYM8ngVT1ewV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    'xvgAocOqsd5v5n7e' \
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
    '{"blacklist": ["XCo9gZWdxfIdW8fN", "AM5YdHivK2Q0Wwol", "Qy037hJMOEv5W0v2"]}' \
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
    '{"active": true, "roleIds": ["mAvxBxJNPlvvYZw4", "MWzWFTuNPf5JCSDy", "Yy4e5qoTZxSoZbQU"]}' \
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
    'nUxS6m68WL3HDL4y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "x5I0euBsccHPA2v9", "AWSCognitoRegion": "XP9enfEX7lloLgIY", "AWSCognitoUserPool": "qxFfSNJlHCjxLNnY", "AllowedClients": ["UlGQsFpy9ZVlLIFw", "LgT78nootfUs9559", "ilm3cauhrw9Yn2z5"], "AppId": "cnbm7z2Aa24yBTw3", "AuthorizationEndpoint": "wfNGyWf3VujS7Bq5", "ClientId": "bcfPW4pPZB9YXltC", "EmptyStrFieldList": ["xyztUnj17t3gHBXv", "jvziexzOLbOWbtcJ", "UxM3AWyDkA5LmART"], "EnableServerLicenseValidation": false, "Environment": "i0R7zDFMoNTQmlS8", "FederationMetadataURL": "lMlY8UjprhCxhzW6", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "e2Mx0sYCnYPT4i4m", "JWKSEndpoint": "xc14iRfzJwKuc7Ep", "KeyID": "iQEzz5N5osRYO7wb", "LogoURL": "Yh7q02W8tkTURUFm", "NetflixCertificates": {"encryptedPrivateKey": "qNc8xhQqptccNorR", "encryptedPrivateKeyName": "ls7EC3nDnhFvDlFd", "publicCertificate": "7iyZpvWVJFK6Zuvl", "publicCertificateName": "zGCII156hIg0g8HI", "rootCertificate": "xpzm9AcFhH4ZlYY3", "rootCertificateName": "rEuHMWwQNmCQmGCF"}, "OrganizationId": "963CbsOawlRBQJH6", "PlatformName": "fNekhk077gxaj55h", "RedirectUri": "uTA6AvmW0567BFqb", "RegisteredDomains": [{"affectedClientIDs": ["rPIuxKmBXLi6Gpnq", "AeMvg3w0FQ1520WM", "3TxWXSdTiKdva2UR"], "domain": "EoBSFtCLy2CqgCG7", "namespaces": ["JwJCDqkzOdFwLJpI", "PxzLE1V9U1NgpH7O", "c44yjRdfqZgv34Gq"], "roleId": "qjelcN0GJmPwUTWM", "ssoCfg": {"googleKey": {"x0MiPAjnWIhFrqSn": {}, "4erXEtU1CaD8AqsM": {}, "CGBNhmUt6fzYRn85": {}}, "groupConfigs": [{"assignNamespaces": ["brTu8F7cuCPh1TGZ", "JmgWNHWnvOBRCt4o", "nqRo2PnMSRarKg4c"], "group": "oy3AFpULIn21Nf2F", "roleId": "NgDWNC6yh7kgTHlr"}, {"assignNamespaces": ["xKbsV4XtrI7SFBEg", "kwHifMHYI581HbF7", "fMX9lDXYxGRJM92e"], "group": "X42WW2WKf5urEOpA", "roleId": "SBicX3ZwzZ7aVhrk"}, {"assignNamespaces": ["mhSOEozGOv8D0iVx", "zrec5kNwJAxm0Rdm", "9l6nIhG5SilDDIsm"], "group": "j4h625dIsMKWBxF9", "roleId": "RAIrI81ZR2kNzh60"}]}}, {"affectedClientIDs": ["RQNaTEhMXMepgzY9", "jLiAdMiQ7eDMkeBR", "Mur18nCxiV9bQMHp"], "domain": "PbvflI3LkRc1NgZa", "namespaces": ["oYAaCCeRgtstsU3Q", "ecxo4bQZO3P2f8TT", "OVf6jrr1OL606Qpq"], "roleId": "Cgxt0NgDSj1T6Ede", "ssoCfg": {"googleKey": {"YFmrLT0HbvS4kSSt": {}, "3CyDgf6eFAiqSkHi": {}, "0BR2ElF6z6eJKuOW": {}}, "groupConfigs": [{"assignNamespaces": ["61akRFizqxCmudSX", "ivAL3n478mhb2I2y", "BJeCJghTrk68FWFz"], "group": "uLBdlrKjUbgZQfw6", "roleId": "Zys3mN8fIcC9Ckha"}, {"assignNamespaces": ["rfqaoMsGyv1RuSNd", "ycDssUeHiVDXzSJ8", "kbFAyidbnXdMSwmk"], "group": "BkKC1h6h45u0wuh9", "roleId": "pY0011jSmHFTtfM2"}, {"assignNamespaces": ["mGUUpq3ix7Am7W1f", "wJnV94BrMSP31wAk", "VH75UcmNXK5RqcIo"], "group": "9lpz9oM52vHPlwVV", "roleId": "3jlPKDEYahnlLJaL"}]}}, {"affectedClientIDs": ["CvjRKKX1brmkJDfd", "ngbQD3pO8U3W94Z8", "IW2MAL9gYHEV3wnT"], "domain": "ZTvYYf4ZFuV6L2Al", "namespaces": ["doWWRN5wNYlFiliY", "mBrqrOc0NIligBrO", "kBljwRENjt04ZpyT"], "roleId": "TZG1LxLdySvyVqY8", "ssoCfg": {"googleKey": {"nxBZbHcPHEFuEVP9": {}, "bF07gnWDULkJPQR0": {}, "UJMr8ouccGH0B4LC": {}}, "groupConfigs": [{"assignNamespaces": ["e2h0iFCCZgFWs5s0", "nT89A88GDOUClGyz", "YgnYTdim6PkRoq5T"], "group": "O65KWh8ztRJkXxUA", "roleId": "j3jzZvEaY103YUIM"}, {"assignNamespaces": ["uSjDHz0zPWMZQNNP", "2JqQqhISTBT1Gofv", "4SuaZ8yCB9TVZnuz"], "group": "gvAZJRm71EC3ENuv", "roleId": "D8OPsp5Z3ez84KVB"}, {"assignNamespaces": ["7HeWPnVeFdy5ezlC", "U6SGzkMpTL2wxobj", "xAbagqEmXn6U2VeV"], "group": "2emK3JecJA4skqCb", "roleId": "PxRkIAFQh9yDdoLE"}]}}], "Secret": "2s7mrVrmTJwtBTzQ", "TeamID": "TrNo1LcWNf7xHpi1", "TokenAuthenticationType": "JZJjIRtCfqDHSlo5", "TokenClaimsMapping": {"4zSnRN0zGMworzym": "1z3ZdetOic9AQOFW", "pdItLBhvKJq9tWz9": "yui8a6jOflFJlZEh", "z1QDeh05hj92bwVV": "xJ62Q5AOAOyL65cP"}, "TokenEndpoint": "aOZA8BG8KcVWOX9n", "UserInfoEndpoint": "3YsjJexnFA9Umz3K", "UserInfoHTTPMethod": "PICya5Fk5TPaEbX2", "googleAdminConsoleKey": "9cV8v7MXctihtxMn", "scopes": ["Ir4b7jyfL3zMkklG", "CPISlsnVA6z0uSfN", "NpJUYzJxnOyvqmsw"]}' \
    'rToyBIQumxDfAxNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'CUtizYM97ebZcYqw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "fIHPWMkOmrT5HL16", "AWSCognitoRegion": "jMwECnmwJv4rpqtz", "AWSCognitoUserPool": "Daz0WUJlBCHzJ2v9", "AllowedClients": ["K8c1zOlZg30pagfP", "0FfOMBOpeQT4zYIb", "U4i9mLyX46Alt08r"], "AppId": "rnG8y2ScXkwjpAp8", "AuthorizationEndpoint": "2pGcxvXaG9LzHpMS", "ClientId": "53jllopwirRo3A8W", "EmptyStrFieldList": ["xnR0YaMsF3f5KLtp", "TSsPMGDZTOwEP5Bh", "h0NStWIggmhfAzVd"], "EnableServerLicenseValidation": false, "Environment": "YP7Ao1z7FeJM2fWX", "FederationMetadataURL": "Gk7JObSHksRkabpm", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "c7ZYvXCT6m6mRZAl", "JWKSEndpoint": "LBczJVeil7GbG1IS", "KeyID": "BCkcnpxKUxLjmxhB", "LogoURL": "S6YypRW7fNntaIEt", "NetflixCertificates": {"encryptedPrivateKey": "DI6MbhxkQdezbmf3", "encryptedPrivateKeyName": "92ersoZ2KbMb5jal", "publicCertificate": "0ruZmBXlGSp85q6f", "publicCertificateName": "uGfo5wSDHnyabk49", "rootCertificate": "3I3pvHKDaWhTN1qy", "rootCertificateName": "xpUzWIZWJTDzWguh"}, "OrganizationId": "ujw1EoR58uCVldef", "PlatformName": "onHJZAiX4abmqqi9", "RedirectUri": "0KTWwZk0HGeJNaBj", "RegisteredDomains": [{"affectedClientIDs": ["VdMB5kMzKycYrhr4", "FnNzdT4pWwIVXp9a", "vUr6IydpXW0MO0eT"], "domain": "9okl6MlWOl9feWO2", "namespaces": ["bmOikTBJHTEm5PSe", "yod5L6OooYoQn9iH", "EqWO1cVCUIOx90FQ"], "roleId": "dwLi3GOQkLtpuRNe", "ssoCfg": {"googleKey": {"T1CULEMPaOU5nuky": {}, "cAUlkUSZKUrsxNRz": {}, "F3NaUuCyQyze6zPK": {}}, "groupConfigs": [{"assignNamespaces": ["u5sE89JW8UU0RsB6", "dvrpmInhHYzVVlHG", "FSwjby6rMYkVQnZD"], "group": "UAbINRKQsxUO1YMx", "roleId": "AndOj5O6IBwXJjgQ"}, {"assignNamespaces": ["jgLoJyqwFVBd1Zja", "RXEdWgS12bSbPgOC", "WUogizeWOPUMrqgE"], "group": "IsMwNbfti0LoTBcN", "roleId": "zyoCSw1t653G3ydY"}, {"assignNamespaces": ["mGzvx9bSqqyAPha5", "b6PQTPTytHeeXo7g", "OFVLZCBWuVIROZuq"], "group": "dJBi8pkn98VtLNka", "roleId": "IQJfkFDhSeSGXtZU"}]}}, {"affectedClientIDs": ["5SuIhMSaDRp17dUW", "Hcjrb6qNeKpOxPrl", "G9svdqsiVTqPbzY1"], "domain": "yxl7zeEpmSPO6Kwl", "namespaces": ["JQlj9Ii2jARwzowk", "9OoiPdnq9KBqBwiN", "CsnK8CcO1OHbpQZt"], "roleId": "wW3EwLre1bL4dJnk", "ssoCfg": {"googleKey": {"RLJbMvOGSd7uMrmQ": {}, "2SaLd6M7TM3wnJyE": {}, "xuo5z9RAcYgYZb7c": {}}, "groupConfigs": [{"assignNamespaces": ["AakJpqN6eubdp49J", "FwXG0EvoSHNC97eE", "yhnL1QH5AlYRAqCA"], "group": "C2gy1WF9QLNgDxAk", "roleId": "wgfB8jIecOx5ugNC"}, {"assignNamespaces": ["Dd6jW6fjtBcO3fWq", "9qfmBv0XgJB6a7uy", "kADFpinFcH2ZMSYi"], "group": "jqEuMfuYFUS079tO", "roleId": "pZYM1XV0Op0damyc"}, {"assignNamespaces": ["nTUOoMkOppZNOkqx", "c42HKv5wvtPJVsuz", "aBciSxwzuIpGBYHT"], "group": "HoSVxgQCbpZx5yMG", "roleId": "IQ1ZxVIefYlKBJyQ"}]}}, {"affectedClientIDs": ["MqUEfDikX6yOlgZr", "n0I6T0hvcAFTaSWR", "4VOGIY7hM6uhonkA"], "domain": "e0FdTSSEluBxM47B", "namespaces": ["Tww3nBTVmBFZ6TIs", "9bTi2m7eNsYEqKke", "uLWDfeFeExlOFjRh"], "roleId": "8mLFTJLveQSDWnMQ", "ssoCfg": {"googleKey": {"GaYRxFWia7yJ2d87": {}, "XjA0ajvb7JcGUFgp": {}, "6LkyXpxJeFxhgTwy": {}}, "groupConfigs": [{"assignNamespaces": ["O51CUpcdxL0a9VDh", "rqWCTXOxQUpyFgZh", "NpOTE4toH57yr01N"], "group": "33p1Gha8HwpagvER", "roleId": "ZI6CqhcknhecNv2T"}, {"assignNamespaces": ["w6YKhVrYkMqXkQ7q", "laJjSYEseBYCFGoK", "pXx60GmEX9x2BYpy"], "group": "KEBQ7TW7lZvDbwFJ", "roleId": "JhBRdq8BgAI81k4G"}, {"assignNamespaces": ["r7jVVx5l3yrH9HR4", "reG0HwUXxQTf5YpD", "UGYsJBEkYUrLv4qU"], "group": "iTkFcLBrg2JB0WiC", "roleId": "pVBwvAffJ3btt0Pp"}]}}], "Secret": "QY3Pnnic80yEO8dL", "TeamID": "6Jh10XMUGeDavCKr", "TokenAuthenticationType": "adJmJFUsU418vAlm", "TokenClaimsMapping": {"fGg9NO1Z2DvnAxH3": "pS3jyCkGKltBNE2U", "bhNtH3yYg4Qnn2uh": "dw7C9Bx1LQOTCbAP", "LC3iqrkyJFOVaewF": "cv9h31YxuZnoSesW"}, "TokenEndpoint": "pLUHjGaIcZN28gH4", "UserInfoEndpoint": "Cd9xTdt2K1CzpQWs", "UserInfoHTTPMethod": "lNGnLYUYR0yOvJhU", "googleAdminConsoleKey": "jzcMtwINUlrhIpnl", "scopes": ["am2EefVopbpPhsan", "a0uXG7GUTV1BwgkL", "Dj4pjVktyoNSsEHl"]}' \
    'zyd0SarkhltUxgbN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["5eElQNESFLD8hCc9", "onSNjbQEqFGwnDG8", "kz4kvEv6tNjGRhrm"], "assignedNamespaces": ["RAxRGeIKGlCJmDXp", "jyvLSHB1y3klHuAG", "nidOyGuS0OG7ohiL"], "domain": "2943ClrNhEdxd24Z", "roleId": "KfvMf1T5FzYMf1ja", "ssoCfg": {"googleKey": {"CgZosntPzP1vXXB9": {}, "2q150WEIetOXMt37": {}, "MXy7Fp7lUfQqXrqG": {}}, "groupConfigs": [{"assignNamespaces": ["adwvKlJFX1ZHV9yo", "9Ur1hfhmGEKuVUZd", "CacRGataPrcgTcA7"], "group": "1dtqtSUN4zvBzGh3", "roleId": "mhIDNuMBZegHtB9u"}, {"assignNamespaces": ["TCiiIoMZCjGiOZJp", "Uf9RpcfEQn0O6D8P", "GQuazAypgWhTED5Y"], "group": "mPTBUkm2FyvdguCY", "roleId": "VqFyIKh1YtTY4Aej"}, {"assignNamespaces": ["yQc5Dac7hSLldWx5", "DyniVESUgrROrP1i", "p3jNG68DByf2UMPt"], "group": "igq9zOQOcAqBj0bX", "roleId": "hOr9OHt6zx1i2W3G"}]}}' \
    'Y7tdh8hHlQyMlgfk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "TsAThLyflAqqAP4M", "ssoGroups": ["78smYdyge6DroOyw", "OxI4G6jZzoYIFAvY", "fT8XQw2EOq6BFjmN"]}' \
    '4OqKGLRpNWzKZtZn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["xgywmr4CYNGm7Tk1", "mMyeNRsjQuDEgO3M", "EQNL6ijLRvQOgoaB"], "assignedNamespaces": ["ooTawHLMxhx9nC3o", "6pXU5MDJLCB6WbXW", "IRpgjooaBVemsbka"], "domain": "XZQ6nTj9rZpkSntu", "roleId": "OeaPAyPeEGBepK1I", "ssoCfg": {"googleKey": {"x4SwjCYjCHniVSn1": {}, "gYGal5NrBtT0om9O": {}, "lGzpF25qu98RhktX": {}}, "groupConfigs": [{"assignNamespaces": ["6qwkXbCLbh8t0zPk", "QWRUlgE0kxzFMq9t", "tbEHAEV7C65Ans9S"], "group": "quNSJIay5VdUdYy9", "roleId": "Y9OCSmmT3WKijbqh"}, {"assignNamespaces": ["T3uyQRXvvcUYDeWP", "Z8yhwQ0gIdj1lTJd", "NLmAvEdEBVAU3rbk"], "group": "v8V98cupW0L5Wsiu", "roleId": "ITRMSPOUfWQwr4PY"}, {"assignNamespaces": ["f48r66MaToxBiliy", "2vtRkpqL6KrVcNz8", "3J57t6OcYPQ5bk5I"], "group": "euAi3zWFGorCbnco", "roleId": "j5RvEtXiKyUGdNfM"}]}}' \
    'iwgSvsTRmJsOm0wV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'FyHvFhRMCFJuA0DE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "MgykqqjoHTpIPMSR", "apiKey": "AuPI7mSZQ5UDm1q5", "appId": "1PlW2HG8LAiIzuo3", "federationMetadataUrl": "21Ll90IBFsSb3FsV", "isActive": true, "redirectUri": "PnCs9R0D5jZEwxco", "secret": "w6L7c3COEP4AZx70", "ssoUrl": "uwV4XgvGTMHkXeEw"}' \
    'uFJf7tbq5KikDE7h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'WvT5bzcfzIpL2pWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "4XsdrxIF6kEAmKGN", "apiKey": "EmFPcUALNziO9Bz2", "appId": "wx4kDAm8XIleiujt", "federationMetadataUrl": "v2NdQTYoHZogW8lB", "isActive": true, "redirectUri": "mXZO1PnbSlfVRlAI", "secret": "8F2f3mEv09kAA5hn", "ssoUrl": "Qtd4bcivHGIEplRp"}' \
    'cHDWcIoJ45L0Ze3Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["amxKDSZTl4UiJSCb", "G4UmG3TkMTzOcBIc", "iiKwRs1E7sH2G9MJ"]}' \
    '6F7Rr7O15jqeKssQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'pme6eyM48tE7eJRs' \
    'XNeveQXqnFRYmEIX' \
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
    '{"config": {"minimumAllowedInterval": 77}, "type": "0XOUoLOa7oDz00gx"}' \
    'country' \
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
    '{"additions": [{"actions": [30, 96, 1], "resource": "sO7FP8RmOstZAGDg"}, {"actions": [17, 18, 97], "resource": "ClZ6rlwX99AHMLHq"}, {"actions": [14, 16, 42], "resource": "FQHumFvPKqupHj72"}], "exclusions": [{"actions": [94, 37, 23], "resource": "RUduW5lxSlorWEGN"}, {"actions": [3, 82, 85], "resource": "35Iaytd9CsAMTZC3"}, {"actions": [71, 47, 47], "resource": "PXxnfggnZ3EZp6wS"}], "overrides": [{"actions": [54, 80, 41], "resource": "TfqRRaZozM8xCBoa"}, {"actions": [91, 42, 65], "resource": "fFLV0YeMrVaYSTRY"}, {"actions": [67, 16, 65], "resource": "HnsCl5k6Jxh5mkmQ"}], "replacements": [{"replacement": {"actions": [52, 75, 13], "resource": "g0jWCjpGwh7pLAi5"}, "target": "JmzvM6JFKB8ikHpl"}, {"replacement": {"actions": [84, 38, 90], "resource": "NRaDEC2OkXA3Wqyp"}, "target": "oOw0H2s0sibQNBz8"}, {"replacement": {"actions": [52, 89, 32], "resource": "Pntxpgi7tXIcNEcG"}, "target": "JjOCXpuix5vnPeTu"}]}' \
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
    '{"active": true}' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'bRov7Bm40CtZiAxk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '43DGV1SCkw8U0d4F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByEmailAddressV3' test.out

#- 164 AdminBulkUpdateUsersV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["OQNRN132RdgwMXv9", "olKpRyWQim3qlART", "9mPPmYUvlkBGPJFa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminBulkUpdateUsersV3' test.out

#- 165 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["FzkABC8zWMcYW5iR", "rw32FRg8y4rOuj7J", "6ijJbcycXmBcrJLb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminGetBulkUserBanV3' test.out

#- 166 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["7labyotifVk9Kyqc", "eGv0CEDTVSjINYeK", "LowG7UQB9pXzuCK5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminListUserIDByUserIDsV3' test.out

#- 167 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["qd2m8A5axixm9X9T", "XNhN8y1PVriIyv9k", "juiAGiXx47etMikL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminBulkGetUsersPlatform' test.out

#- 168 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["FggYDc2FMbzZoeKa", "gnKf2Yifzvr9OqTs", "InGzHFpFXYJtHtqw"], "isAdmin": false, "languageTag": "IXEc2CCgYcFo9A93", "namespace": "o22UgObCOiBWdw2b", "roles": ["031dm4N41MOpmm04", "BlZUAlYnCT11qD03", "er5mdraK47FdxXis"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminInviteUserV3' test.out

#- 169 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'Vlo3aVOGARFDJcGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 170 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminListUsersV3' test.out

#- 171 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminSearchUserV3' test.out

#- 172 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["y826ilCxAxQUM5Dy", "rPfBmpZIzSFUZqVR", "5FWGfH66eFCMTsLA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetBulkUserByEmailAddressV3' test.out

#- 173 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    '8vYVvrIAEehUV0js' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserByUserIdV3' test.out

#- 174 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "jAyVgxS54NNs3Xdh", "country": "MbQX9D1znEWw9p7g", "dateOfBirth": "4UsQCTKDh5n9yc34", "displayName": "xF8qFllM1LTrl4MP", "languageTag": "3Nl4T3ujvV7W6ADL", "skipLoginQueue": true, "uniqueDisplayName": "bZqMGxhffy9cHrLY", "userName": "fftad99JDcnn7f2d"}' \
    '8SOWP2dw6Uy88WpQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminUpdateUserV3' test.out

#- 175 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'alG38VOo82aLD9jU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminGetUserBanV3' test.out

#- 176 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "juDITjifWRbmtK7M", "comment": "TxcCWnMiCLsjroKH", "endDate": "PApA8GsGwyocvY9N", "reason": "ePjLJQJXwUApJWoh", "skipNotif": true}' \
    'n01RB7pu7BaONXyE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminBanUserV3' test.out

#- 177 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    '5fIDbsMi48xOYVvE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserBanSummaryV3' test.out

#- 178 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": true}' \
    'Em53BYMBacQBIuDV' \
    's7U0AJtWPRteszMT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserBanV3' test.out

#- 179 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "d0R5Fsrf9xbVfgvG", "emailAddress": "617GmxzClkR3M6Tw", "languageTag": "pwq3nLwxnJKjOo9f", "upgradeToken": "vfXF1VsikD3IphQQ"}' \
    'iRcOtsthUwgQzNHU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminSendVerificationCodeV3' test.out

#- 180 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "Z0l1FRfOjJUmCbi2", "ContactType": "llksf6GA8vTt92kl", "LanguageTag": "dCoyRdiOikUdqGoc", "validateOnly": false}' \
    'YBaRC7T5qSl7WN3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminVerifyAccountV3' test.out

#- 181 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'cPkqiTKzz72PKXjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'GetUserVerificationCode' test.out

#- 182 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'hM2DvesmMIbiQfaH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserDeletionStatusV3' test.out

#- 183 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 49, "enabled": false}' \
    'l2YUNRLRjgKqSSYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserDeletionStatusV3' test.out

#- 184 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'ZnVfa8govttlpFAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 185 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "8oebnS4Y2zkGYTr9", "country": "yJIveX52r6Inl9VT", "dateOfBirth": "JB9Al3mn2DsHDHzS", "displayName": "VJzhU5Z44zgZ1fie", "emailAddress": "Ldl3Y82DOj5kPuNR", "password": "ZZaUccuBYep9n7b1", "uniqueDisplayName": "7fsblalJrwQiU3DD", "validateOnly": true}' \
    'ikW3s54zffAL2DZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminUpgradeHeadlessAccountV3' test.out

#- 186 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'gBhy77iRVFfFvWen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserInformationV3' test.out

#- 187 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'MNV00KVuLF9WDnGO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserLoginHistoriesV3' test.out

#- 188 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "3bpQWmnS52ZuuuI7", "mfaToken": "F1xpVrcoXzSOEGED", "newPassword": "YfiGPYo2K3dN3YBO", "oldPassword": "JfvV6SuHovoQlk5w"}' \
    'L2oXDZ20Bw2H4tz6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminResetPasswordV3' test.out

#- 189 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 75, "Resource": "kB2PAGJqOrkdlZB2", "SchedAction": 17, "SchedCron": "6OY0dPVMd2WDUVEQ", "SchedRange": ["TpfyAIoF7qsANBbE", "KQrgocpjGNenRlDO", "RLvP7ynTuXzafCql"]}, {"Action": 78, "Resource": "uB1ZIMIs1dFvYokH", "SchedAction": 87, "SchedCron": "t2u8ZZnyHKkk6Gh2", "SchedRange": ["5tEcX9GegDnrYz0G", "FpSVdxFsXAp1rocl", "yXllFitPamSKRzDI"]}, {"Action": 65, "Resource": "gSk6suS90ZbDdmjU", "SchedAction": 90, "SchedCron": "1QIZtkSn8QRbA5V4", "SchedRange": ["gjWv1W6cqnvSuKsw", "Q7vH8GScnP5QzRBY", "1UrefgmVFBVz4KRC"]}]}' \
    'U0p4jIt01gzH17Ic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateUserPermissionV3' test.out

#- 190 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 10, "Resource": "3WqIMJdrqHIsJ98W", "SchedAction": 90, "SchedCron": "cv9ouALjgLZZzLU9", "SchedRange": ["w8MJRIzIgJKg9y86", "BgnBQtm5AilVhASF", "lYMVJtE2dAeC7pF7"]}, {"Action": 39, "Resource": "y9eALKWinUJ7bAuU", "SchedAction": 74, "SchedCron": "L7DJCxvzZnh8oBAk", "SchedRange": ["1MNCAUmdnLaVRUu5", "VbjwPa9rYgHaxeTT", "3ebuaYPNBp9wA4Lx"]}, {"Action": 83, "Resource": "nAvf8JpFuJSZistM", "SchedAction": 74, "SchedCron": "544PDlVK8taScpV0", "SchedRange": ["NtCxDDz5rxt6LflB", "JjokLAaL4oAF2lqx", "8yneWKrOy4xcg30B"]}]}' \
    'qC5W7g7hiwumJTI3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminAddUserPermissionsV3' test.out

#- 191 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 20, "Resource": "5IAtbyUDDSJSV8pz"}, {"Action": 23, "Resource": "j63MJXIuLWYb2iHH"}, {"Action": 97, "Resource": "yWCLyFPHaxkKxEDv"}]' \
    'Soi2X9SygvMG8QAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionBulkV3' test.out

#- 192 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '100' \
    'mtF0WFH7F2Inhxty' \
    'nUjuBCxkb2oF99xI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserPermissionV3' test.out

#- 193 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    '1VVtVrVT6Hn8B2d1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserPlatformAccountsV3' test.out

#- 194 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'hZUnoQwg5uqgoHaF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 195 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'yoczck0qJsgZPfue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetListJusticePlatformAccounts' test.out

#- 196 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'lAiZBZcQGHHGI7cs' \
    'I8ecZSvzXYOytshB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminGetUserMapping' test.out

#- 197 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'cKQytQagui6lsKF2' \
    '8n7UC7y1MKYVeoGF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminCreateJusticeUser' test.out

#- 198 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "rDb8unXv1iE7YgEZ", "platformUserId": "spOJ0NiZl6OVLxKt"}' \
    'kBpaCG8Nu5m4ctwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminLinkPlatformAccount' test.out

#- 199 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'NV8ncebaJ0DCuIeE' \
    'Stt3PbyctX7HC2ha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminGetUserLinkHistoriesV3' test.out

#- 200 AdminPlatformUnlinkV3
eval_tap 0 200 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 201 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'QwVWONEpAPedzI2A' \
    'dlqiyEJIQcbZJJ3A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformUnlinkAllV3' test.out

#- 202 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'hkrMi0bnppEJFISz' \
    'e88rGEr3cilJWhaW' \
    '6jNsM94E2FQb6S0V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminPlatformLinkV3' test.out

#- 203 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 203 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 204 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'maTR7E3mkDSQkgVM' \
    'hLbM6H1MnNSKd0KS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 205 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'tITvGQtzwjGtGTr2' \
    '38G8Aevk3k14782W' \
    '2oNo3X4m6wms9SPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 206 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'HlqtDPry2vMON7sd' \
    'hlilfpDT8o2iFrYt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserSinglePlatformAccount' test.out

#- 207 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["GfCZCcrvsV2I4X26", "p21iDBZGJ8ZMLwPJ", "871nV5ALS7cneNLI"]' \
    'tUJgh74tyxkTR8ZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminDeleteUserRolesV3' test.out

#- 208 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "VJtkxjBJrNeQRsqk", "roleId": "kKK2qxqzy4KSA5Ut"}, {"namespace": "SXWjANSWIT9TLnuM", "roleId": "LNJAEk3A6A6rYiIu"}, {"namespace": "8eLdWykhBxLFnKnS", "roleId": "YC9yyBYepIqtrikd"}]' \
    'AbdOT6iSRdEg8NYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminSaveUserRoleV3' test.out

#- 209 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'c4q5sJVzaKGDOULJ' \
    'bjHphqjHGGAhfWaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminAddUserRoleV3' test.out

#- 210 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'qkA5fuVYOsMFo9tn' \
    'qa4LEWGg1r4nW4pB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminDeleteUserRoleV3' test.out

#- 211 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'cPPaiaM1og5rxUjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserStateByUserIdV3' test.out

#- 212 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "LMoAy1stmxPFz0i1"}' \
    'IK3QzkcRwFPpXGlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminUpdateUserStatusV3' test.out

#- 213 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "R9ss8b8udl6fLkxF", "password": "nAqyvjBy0NXg7zd6"}' \
    'SFpkV7cAICgWFJZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminTrustlyUpdateUserIdentity' test.out

#- 214 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'nNa5yOM68r4W1fDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 215 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "L80oPQ0s7QhC8hgS"}' \
    'gytNEojK3YgWH9l7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminUpdateClientSecretV3' test.out

#- 216 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'rv6XUSINd4keCeiw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 217 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRolesV3' test.out

#- 218 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "zeFnlgGRgYK3SeYv", "namespace": "ULYNIhs5PZGTJmgo", "userId": "fq7nlF5Ch8J2Qs99"}, {"displayName": "0APOU4hcdwlnsTap", "namespace": "2RJpHtncLywP3WlL", "userId": "mNdQGk6vneHoB1PX"}, {"displayName": "O1vT1AonFO3syvkY", "namespace": "d78GsJGLbnb4Nvw7", "userId": "fnm4MnOqnqNerQoH"}], "members": [{"displayName": "iDIJayvSNt8EQXsM", "namespace": "bYi1yEI9ychtyhjZ", "userId": "SeDCKT4ilZB8apDT"}, {"displayName": "R3aL9sunWp7V1s8L", "namespace": "mXm0FaJMIjgzU02n", "userId": "ZWwBdEFpfccauYDc"}, {"displayName": "86pxK9KhF4KRVPoI", "namespace": "uzAuQNjAfvOE2cVj", "userId": "Fp1CeCEfaV4ZGGwb"}], "permissions": [{"action": 33, "resource": "p5grjk5wzdksOUku", "schedAction": 77, "schedCron": "dtQoIrpvmM19X4zF", "schedRange": ["OvdRTpGmBUjfEU9v", "L8H96tuVfQwYIqDW", "qbPmwQw8J7na1POT"]}, {"action": 71, "resource": "hXLRU5prAdqnnPOi", "schedAction": 93, "schedCron": "edcppbujZh1fYXF6", "schedRange": ["R9Rz3HVP2Y9WqSRi", "wV3UZg0UJLPMkeUw", "a6OVKxCMxuf0P9r5"]}, {"action": 11, "resource": "BmsUzx64Gr4XEm0u", "schedAction": 57, "schedCron": "YuAmqhftIfe2zdqZ", "schedRange": ["7ht1vUiJ7jBXy8ps", "NoHNalwgvju62rPF", "MbE1cW57GaNZLT1z"]}], "roleName": "0GqDZN7ftHOhVy48"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminCreateRoleV3' test.out

#- 219 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'YYg1AkRh3NmbRhMx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminGetRoleV3' test.out

#- 220 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'KeIgwq1NZmxa0ghR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminDeleteRoleV3' test.out

#- 221 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": true, "roleName": "20QpWTNKsVyK8EU8"}' \
    'JYc00PA2ef1jFeqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateRoleV3' test.out

#- 222 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    '8mBpTuvLTJUzwXJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRoleAdminStatusV3' test.out

#- 223 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'aWW3JVdYpfHOYoLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminUpdateAdminRoleStatusV3' test.out

#- 224 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'a2c4JscEQfBFZXcS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminRemoveRoleAdminV3' test.out

#- 225 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'XpU81S5H9XsZyvZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminGetRoleManagersV3' test.out

#- 226 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "FJ5RrFZYcwfQ1Q2B", "namespace": "bcjSpv6Nt1oz4tdg", "userId": "fKu4bmK8kOKcEoCR"}, {"displayName": "jQJlPY3p42OS9iGN", "namespace": "ElTpMlvRDZSIuM0O", "userId": "XOHPluvsry8AKSZx"}, {"displayName": "OhUhl3Y0EshaG0uD", "namespace": "iJNUuxK22saWaGvr", "userId": "zBdLvFUBZDnVrcwb"}]}' \
    'sD0RDLxWgEWwoHpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminAddRoleManagersV3' test.out

#- 227 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "8E1xQZLa7Kw77UpC", "namespace": "xNyx1jjdxNePPAJ6", "userId": "Z9UzqIhZZiK0QEG6"}, {"displayName": "C9w4lVRNOF1Bg6OH", "namespace": "ZzvdZHoIm4tKNhPj", "userId": "NIQGFxGwgnSiZtCh"}, {"displayName": "E0uof77AAPI5tdPe", "namespace": "Fz9pGYsLNEGrfy9q", "userId": "HKufJfk0MeG3qYJr"}]}' \
    '6PuCVK9WmDAdpLVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminRemoveRoleManagersV3' test.out

#- 228 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'Vsj9pDiyybXY4v7J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRoleMembersV3' test.out

#- 229 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "RFMRaeIaQuPWPlkx", "namespace": "eotrNakKGvOSvpmZ", "userId": "ZdlNXdx2kWmSqodN"}, {"displayName": "ZgfQyDVVkkqiMiRf", "namespace": "2yCyM0Tp5GJHHbsL", "userId": "J73mCPhhmUyIwgQS"}, {"displayName": "9kVFUbeTeB9KgnFZ", "namespace": "Q9lVMNyCiytnfMoO", "userId": "1I3KISTbn4yEa2Aa"}]}' \
    'BRalz5HEm4Gant6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminAddRoleMembersV3' test.out

#- 230 AdminRemoveRoleMembersV3
eval_tap 0 230 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 231 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 33, "resource": "ppeticckSUon7awf", "schedAction": 30, "schedCron": "RQtC927GneBM8Lvz", "schedRange": ["gyIVzGFBLJ5vbC9N", "fLTFJGOzAIAqpmkD", "dFSs4s7u1VUuLmen"]}, {"action": 49, "resource": "tufHuNIp0GXpM4nb", "schedAction": 66, "schedCron": "m8oH9zCfw7mCMkbv", "schedRange": ["SIm7JROcwVmGyrBp", "nTPF4VrRiFSPs2ZM", "cVFcrixULzSeTnUW"]}, {"action": 66, "resource": "kME18qGpSsyEPDWH", "schedAction": 6, "schedCron": "6tc250c2okDTem6o", "schedRange": ["62xFY6TNqoLFFS4w", "B6Um7ir0n6O3vbYV", "jrcErgoApAxyDnHj"]}]}' \
    'Ax7rZTvew0WVDSMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminUpdateRolePermissionsV3' test.out

#- 232 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 35, "resource": "KckNxLWH6rjhRL9u", "schedAction": 48, "schedCron": "VTRll0GIEUJtMC8N", "schedRange": ["yV2HLHZT3oYJlC4i", "e3InnSA22NHTb4qX", "YyJUAlKlTwdJEPoe"]}, {"action": 25, "resource": "y6ruu7PYWHODRb6s", "schedAction": 21, "schedCron": "DT2tq2V2lMzfIQHC", "schedRange": ["Z90DqQgP6ynrQjYH", "0N2loTnRa0KiQWPx", "d1gqlwx9CE4WcsmY"]}, {"action": 40, "resource": "9SSaOZcEvG6KZh95", "schedAction": 56, "schedCron": "fphDw3p9QWqwTF2p", "schedRange": ["OJsY86xAf5y1iy01", "FkEEXlKiTIDgP7wu", "XQdfW99JglScoOlk"]}]}' \
    'kBxiXf8OBQRqXWXQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminAddRolePermissionsV3' test.out

#- 233 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["3JdXdFz8pc0EEziE", "5yIvijq9ix16vo60", "jgvwV3C9hJ1kSZon"]' \
    'K02WHGVKDcKulj3P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminDeleteRolePermissionsV3' test.out

#- 234 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '6' \
    'MGdBPbUyHTYPS8CG' \
    'KXGon2ecc65YAFLw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminDeleteRolePermissionV3' test.out

#- 235 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AdminGetMyUserV3' test.out

#- 236 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    'eD9Z7U2lNkorrw9Q' \
    'H3rNhDepQum4Dj7p' \
    'R05RTGXGRkYXifTd' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 236 'UserAuthenticationV3' test.out

#- 237 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    '5nAOF9VV7JgCOm4w' \
    'L729Hma0nCdCEFcf' \
    '2doBrfHiHXXgvu49' \
    '6H02yOVN1h41jIPO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AuthenticationWithPlatformLinkV3' test.out

#- 238 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'MXufZPWSe20JfNvt' \
    'NcWtpUkw98x3tMM1' \
    'bFFDIqKD8HJ4X0De' \
    'tCeJ4x0wf5mQx6Hs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AuthenticateAndLinkForwardV3' test.out

#- 239 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    '7M5apPMc8ZR3bPCJ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 239 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 240 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    '5n5s6DODBmrqEhGl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'RequestOneTimeLinkingCodeV3' test.out

#- 241 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'kEmGdCbwodVRjZJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 241 'ValidateOneTimeLinkingCodeV3' test.out

#- 242 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'uCQpjuJzpPO7BPxV' \
    'WlRFnIekrQ99ecme' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 243 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'GetCountryLocationV3' test.out

#- 244 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'Logout' test.out

#- 245 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'nxguw5bO8Vh4JaKY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'RequestTokenExchangeCodeV3' test.out

#- 246 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'AsoMlLJGMl5xFgLj' \
    '4mCShMFlbrRGjoBQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 247 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    '45Za4JR4S3iac6vL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 247 'RevokeUserV3' test.out

#- 248 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'eoIULJlWXmQFlef1' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 248 'AuthorizeV3' test.out

#- 249 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '6FPfF5DvveMdBsPt' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 249 'TokenIntrospectionV3' test.out

#- 250 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'GetJWKSV3' test.out

#- 251 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    '19V2FkBPk0QLufK6' \
    'eiT38raaRG1Fg0hf' \
    'M5vQmahJlT5OUDEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'SendMFAAuthenticationCode' test.out

#- 252 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'wAjgNZgto2EhOlns' \
    'uDnkuOJekbO0sk7o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'Change2faMethod' test.out

#- 253 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    '1z37uuqLDQF12kYf' \
    'BqeQxos58kVk7F1K' \
    'KOfFFLvER3xqCwUg' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'Verify2faCode' test.out

#- 254 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'quPnIPwR1BinZ4UL' \
    'wAKO8n42UuxEyfzZ' \
    'JsZd9sB6CV9KiWkb' \
    'dpGqWQIPK6mVytM5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'Verify2faCodeForward' test.out

#- 255 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'mBRT39gKYLk9DmjJ' \
    'h6PnpTXWAUt8lgqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 256 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'M4poGEvIKCe3MrLx' \
    'mnjmlAuaBCdhzXb6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'AuthCodeRequestV3' test.out

#- 257 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'cBMPNMmjMi2uztFN' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 257 'PlatformTokenGrantV3' test.out

#- 258 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 258 'GetRevocationListV3' test.out

#- 259 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'fXg0UvwaZ0py16Sh' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 259 'TokenRevocationV3' test.out

#- 260 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'omFzUappaaODZaZ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 260 'SimultaneousLoginV3' test.out

#- 261 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 261 'TokenGrantV3' test.out

#- 262 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'zztnntoxwsNtNxWo' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 262 'VerifyTokenV3' test.out

#- 263 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'H5wVHJVaEnaycYsK' \
    'kgX0RMDxvlK9RnTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PlatformAuthenticationV3' test.out

#- 264 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'Yv5eDhCxwy85vlhW' \
    'w1RCgHr3f6UqFGCv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'PlatformTokenRefreshV3' test.out

#- 265 PublicGetInputValidations
$PYTHON -m $MODULE 'iam-public-get-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'PublicGetInputValidations' test.out

#- 266 PublicGetInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-input-validation-by-field' \
    'sMFEFlXHBOK1RqtK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'PublicGetInputValidationByField' test.out

#- 267 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'YVObVorIVWWLaVJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'PublicGetCountryAgeRestrictionV3' test.out

#- 268 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'e2KAca1aKeXUu9hI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'PublicGetConfigValueV3' test.out

#- 269 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'PublicGetCountryListV3' test.out

#- 270 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 270 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 271 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'NqKvoYKio4M51vua' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 271 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 272 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 272 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 273 PublicGetUserByPlatformUserIDV3
eval_tap 0 273 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 274 PublicGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-public-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'PublicGetProfileUpdateStrategyV3' test.out

#- 275 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'FyqjQsTGmzItJIOk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicGetAsyncStatus' test.out

#- 276 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicSearchUserV3' test.out

#- 277 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "EIRsSWOV8LyivYbM", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LXPbBh2E3wFchP3z", "policyId": "TymfVfny2M0KsS08", "policyVersionId": "cY3fjI1YTT3qUMd0"}, {"isAccepted": true, "localizedPolicyVersionId": "3RjVeYSM479gn62l", "policyId": "izsWGrtIgVPb7hoo", "policyVersionId": "8YkNPW8mWOJGtdXJ"}, {"isAccepted": true, "localizedPolicyVersionId": "Tthcx9W7PkFNVa7c", "policyId": "zD4wybVjqOKrqYGx", "policyVersionId": "cBxfjLUZHK0OO1yQ"}], "authType": "sMBQAdOfrtHWyGg5", "code": "TU3INkMgjsnP8ite", "country": "vmjTJjj5tfFQv384", "dateOfBirth": "ri6A7z0hsW0IHIYv", "displayName": "J7PPgVaFwGhl5zqk", "emailAddress": "zEu41hVfVC7eLVWG", "password": "k0GjYReIZaDC2Au2", "reachMinimumAge": false, "uniqueDisplayName": "K9iBdljXtowifBfA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicCreateUserV3' test.out

#- 278 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'w30kOykBuDJ0IPQe' \
    'AL4MZwEVJe7waGyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'CheckUserAvailability' test.out

#- 279 PublicBulkGetUsers
eval_tap 0 279 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 280 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "6g2M5JiwtMOfDfoM", "languageTag": "gU2yFBTPfnmfN5E2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicSendRegistrationCode' test.out

#- 281 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "0ORMCVBTrkvObsiH", "emailAddress": "Qgt7OfL6AcBPjUYU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicVerifyRegistrationCode' test.out

#- 282 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "RB3Rsrc0qvV8Gq1c", "languageTag": "w3ytGWVKPoA1aKRZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicForgotPasswordV3' test.out

#- 283 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "M1Ot0PWppB2H0G8X", "password": "ko9l5J0IOZmnpzwH", "uniqueDisplayName": "hig9d6vdgfrNiGrH", "username": "0hDjH6IYpfINzNjk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicValidateUserInput' test.out

#- 284 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    '5V8T9pQjnGB83yon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'GetAdminInvitationV3' test.out

#- 285 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "udf21g0NhuYvwCAT", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JALtCiDuGQQsvWV3", "policyId": "NSjXUXSMKY09x4TK", "policyVersionId": "OwsyRNnaLNhw0xGn"}, {"isAccepted": true, "localizedPolicyVersionId": "c29UDQxeiBo2hB9u", "policyId": "1v1POCjseK1xaSbM", "policyVersionId": "jyFrYsITcyT5AhNN"}, {"isAccepted": false, "localizedPolicyVersionId": "Ht1yPtBwXIuYrbPU", "policyId": "cvEOJ4PghksbaThW", "policyVersionId": "37NTbz8HiRmuknvX"}], "authType": "iTP0KrWQ3pgbHM0S", "code": "vy3GRenDzwlTE9Cz", "country": "hnck3GnyPFQHgn9j", "dateOfBirth": "VE6QGkZ8AVzeiaDi", "displayName": "67E3rTwN2LrT85Ar", "emailAddress": "fe6EweJxWANt1bDa", "password": "y64EnFyFeW0oNhdd", "reachMinimumAge": false, "uniqueDisplayName": "rrhzwz2PFXC33KjL"}' \
    'NUFQJgCWV7dj8I5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'CreateUserFromInvitationV3' test.out

#- 286 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "VnflH2hnMV6Yxtl5", "country": "DKUhjBy9oWPcMIQc", "dateOfBirth": "5lRQojhJgpXVCubd", "displayName": "w0sPrgDKqHCs5GTd", "languageTag": "TLCxJqK7dgsgrnpV", "uniqueDisplayName": "E1acxZoDXdPORkWk", "userName": "yTcJzvDUlhTlBNpv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'UpdateUserV3' test.out

#- 287 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "kjg48iVKCqEqeZP1", "country": "CFaMkJVBkZU3qtk0", "dateOfBirth": "dM4GZGiSutb6wUxE", "displayName": "ikRyHC9VWMnzbuNQ", "languageTag": "NJxCbLEhfrPxIRdb", "uniqueDisplayName": "UwkN6Tr6vRneC9JY", "userName": "mpKyZGtqWw67LheL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicPartialUpdateUserV3' test.out

#- 288 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "DvwZjthGMOB4HFIz", "emailAddress": "TlGBnpLBd02br9Of", "languageTag": "MbjgS5WjduKixzSc", "upgradeToken": "frHzGYC1TdLVDBDx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicSendVerificationCodeV3' test.out

#- 289 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "K6laOkeLBcprByjU", "contactType": "r7w9w1xKUrLmQSku", "languageTag": "EMRzyerpya2oBjbg", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicUserVerificationV3' test.out

#- 290 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "RLsc6Jwt190s6yFi", "country": "DZs0wyldbDDntsSQ", "dateOfBirth": "8DEsKT6Mw5xDz8as", "displayName": "ARtI3TVV2QmlqRK5", "emailAddress": "roG1oZArFJBUmMx7", "password": "nzK8rRAYvvynDPJ9", "uniqueDisplayName": "SMRzSo0RzUoSen8C", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicUpgradeHeadlessAccountV3' test.out

#- 291 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "9v5LSSkkEoAarkgZ", "password": "773cdzYhgH24VR4h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicVerifyHeadlessAccountV3' test.out

#- 292 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "JnsU1m6zryXmvvvP", "mfaToken": "mueVVC0ymY7ABWgZ", "newPassword": "VxM4rAqxlnHLAFNE", "oldPassword": "wXBsCkfqzKlzlLgH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicUpdatePasswordV3' test.out

#- 293 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'PF5iRWnREifOFJQw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicCreateJusticeUser' test.out

#- 294 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'GPy5zGebVw9nLvVm' \
    '8UeFUbaGb5on2kvd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicPlatformLinkV3' test.out

#- 295 PublicPlatformUnlinkV3
eval_tap 0 295 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 296 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'eu5DfAxsrX7OiSRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicPlatformUnlinkAllV3' test.out

#- 297 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    '0z2RYA8fTlbfUOSm' \
    'R4F0p5g7b3MegxV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicForcePlatformLinkV3' test.out

#- 298 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'JnAJSu3MX2yYJopK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicWebLinkPlatform' test.out

#- 299 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'xd9MtXYGoZGkBNXT' \
    '0feu7KKPXunBZiqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'PublicWebLinkPlatformEstablish' test.out

#- 300 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'aReD04717oGCmrTU' \
    'cZy3DDSxpWZV6J5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicProcessWebLinkPlatformV3' test.out

#- 301 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "loYCaB5ImpxpHJCc", "userIds": ["uqJR2TT3HEYBW8Aq", "2KVQNFGaJEyBVlQ5", "iHlTqgMzvj8sHLF7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicGetUsersPlatformInfosV3' test.out

#- 302 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "s3hgmxOOzP7vteUY", "code": "zMZzggFcJQkYueQL", "emailAddress": "LJPh6HpodpzuBQwT", "languageTag": "S66qr03Mp14S8HG9", "newPassword": "ID7mZ4eKHaAP4PYT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'ResetPasswordV3' test.out

#- 303 PublicGetUserByUserIdV3
eval_tap 0 303 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 304 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'oJAMgJkC8UGlqb7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserBanHistoryV3' test.out

#- 305 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'exeEhHz7OKYNIMPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 306 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'Fnrbysdru1PotArV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicGetUserInformationV3' test.out

#- 307 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'tIQyxp17b8SHvRIi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUserLoginHistoriesV3' test.out

#- 308 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'JgGrdz6Ar6ZMGUI9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetUserPlatformAccountsV3' test.out

#- 309 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'Z0Fol65yD1dLBQJc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicListJusticePlatformAccountsV3' test.out

#- 310 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "BsvUaK2iHOkgyhgi", "platformUserId": "jqtdzrvCDzH5ACyL"}' \
    'XmLsHXWPqYBJTzlt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 310 'PublicLinkPlatformAccount' test.out

#- 311 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["302k4rdWgWYgFgw3", "mGmogCJXjHTGhyem", "qqwoT441DX6xwuD6"], "requestId": "giqKLavCF9yVeJJw"}' \
    'yaY7Ho61RoV0VH7t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicForceLinkPlatformWithProgression' test.out

#- 312 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'hk8lnCROZodh1gbk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicGetPublisherUserV3' test.out

#- 313 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'bnRcIufk5WE4zPvx' \
    'A5061CF9079hQA91' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 314 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicGetRolesV3' test.out

#- 315 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'csvlQSS6PyDb3vKb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicGetRoleV3' test.out

#- 316 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetMyUserV3' test.out

#- 317 PublicSendCodeForwardV3
$PYTHON -m $MODULE 'iam-public-send-code-forward-v3' \
    '{"context": "Cw9eAGmM6lPAJMiz", "emailAddress": "ukBmcy1kbAWDUac6", "languageTag": "5Jdlm1JJwmCAjTwt", "upgradeToken": "CqKdh92wuH9hLkAg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicSendCodeForwardV3' test.out

#- 318 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    '90cQgXeZnKRP6Gdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 319 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["2QY9BadKJj4HkL0m", "k4HHDzXcKJowQbOr", "gveLe4hYQEGcivib"], "oneTimeLinkCode": "NKS0tBFxzru1A3Ob"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'LinkHeadlessAccountToMyAccountV3' test.out

#- 320 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'caijxlHrcqzwGgl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 321 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 322 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "SyrFazP5g67zq7XC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicSendVerificationLinkV3' test.out

#- 323 PublicGetOpenidUserInfoV3
$PYTHON -m $MODULE 'iam-public-get-openid-user-info-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetOpenidUserInfoV3' test.out

#- 324 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicVerifyUserByLinkV3' test.out

#- 325 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'HkJzmy6DtxvO3nUi' \
    'VM7UfbH7Qv0Eyy6G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PlatformAuthenticateSAMLV3Handler' test.out

#- 326 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    '3n83Sb2WXmcXtuUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'LoginSSOClient' test.out

#- 327 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'tYkPAHldms0Nwlx8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'LogoutSSOClient' test.out

#- 328 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    '5unvbUiBJfyM9bc1' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 328 'RequestTargetTokenResponseV3' test.out

#- 329 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    'hgFvKO2erV4ccUhi' \
    'QnHGDNXw2L4mp580' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'UpgradeAndAuthenticateForwardV3' test.out

#- 330 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'AdminListInvitationHistoriesV4' test.out

#- 331 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDevicesByUserV4' test.out

#- 332 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'AdminGetBannedDevicesV4' test.out

#- 333 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'sUSlEfC6ckbV2y32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminGetUserDeviceBansV4' test.out

#- 334 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "kG5QTZnpxYa2jDp3", "deviceId": "LzelXaUz9AKozXBA", "deviceType": "29DPhYa8Ksjfnk7H", "enabled": true, "endDate": "SWULkEKqQ4ToqWjp", "ext": {"aECYi7fBJaU43PzO": {}, "ITmqjrcuIH9i4ICw": {}, "RHM518oPa2glj6rH": {}}, "reason": "bkWMDSiPRcEyfbUs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'AdminBanDeviceV4' test.out

#- 335 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'wXLyVVZqZpYAdyPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'AdminGetDeviceBanV4' test.out

#- 336 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'hrnvuDGFiT4U6WQQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateDeviceBanV4' test.out

#- 337 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'wsTHCgTvrGllrctt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminGenerateReportV4' test.out

#- 338 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDeviceTypesV4' test.out

#- 339 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'K4WgzdUhB2YhKWid' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminGetDeviceBansV4' test.out

#- 340 AdminDecryptDeviceV4
eval_tap 0 340 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 341 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'qRPQ1hSmShNaSmVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminUnbanDeviceV4' test.out

#- 342 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'smFW74DkabvmYAT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminGetUsersByDeviceV4' test.out

#- 343 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 344 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 345 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"count": 34, "userInfo": {"country": "HtzCgr8ybpAO0Pgh"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminCreateTestUsersV4' test.out

#- 346 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yBmb2Ir2yOaVvE1N", "policyId": "52PwdeTQhMz99aZ3", "policyVersionId": "fza0rlzqNhVNwgXB"}, {"isAccepted": true, "localizedPolicyVersionId": "lMjwg8OWAT7d65hc", "policyId": "hXzG4ffz0lXBDbBG", "policyVersionId": "rYGleamVgjm0xqJh"}, {"isAccepted": false, "localizedPolicyVersionId": "hk7tzIHqZpgJqlw4", "policyId": "41XUfp7AVnf8BzBB", "policyVersionId": "qEvMtJopw2r5pKsX"}], "authType": "EMAILPASSWD", "code": "y72xPhtIM8Rw0xHZ", "country": "OUW3jlXYz8azHYdz", "dateOfBirth": "aYe7WjwoU21EdgoO", "displayName": "vT13nFPxMy9YNTBZ", "emailAddress": "TR5tZmaZGxrhAPoR", "password": "EvGmmbGW3SttwZrm", "passwordMD5Sum": "KkREJXucN3IEt8vZ", "reachMinimumAge": false, "uniqueDisplayName": "qh6SjLdDyVf6irpv", "username": "xpCXFlM52jb80Nlw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminCreateUserV4' test.out

#- 347 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["kgUfe6pVMS5m8aRI", "ev5s4q7UwwraCDr3", "26Q66cxtjNTXsCsf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 348 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["A2pIWzC6nrUavXt7", "t0llsH39PXWtk222", "GY7L58lP7drhfBjZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminBulkCheckValidUserIDV4' test.out

#- 349 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "FgaGUfhy5TZFoyfZ", "country": "0XfCxPDcH66JWKmT", "dateOfBirth": "RqrvfJIrFQWIDC6P", "displayName": "HVsnUueYd49OFDlb", "languageTag": "dIrxqxAtw8vLsYBH", "skipLoginQueue": false, "uniqueDisplayName": "6M7OpcFqK4FBJG8B", "userName": "fuSzytkPE6mw3Zv0"}' \
    'zD14WsQt5oimAfS3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminUpdateUserV4' test.out

#- 350 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "Sh33TufYVdPwYmvZ", "emailAddress": "kT3zo8gxMqM1wUdX"}' \
    'sMjUbhRjnDrYWlRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminUpdateUserEmailAddressV4' test.out

#- 351 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "PpgHg36d9NP5nNvz", "mfaToken": "IlwtYI9wKX9V1XxF"}' \
    '2CFfEpf0qN2twLYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminDisableUserMFAV4' test.out

#- 352 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'q4HSEGpaUMmdPXWa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminGetUserMFAStatusV4' test.out

#- 353 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'JRdn3WMdrhlWqCc5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminListUserRolesV4' test.out

#- 354 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["4JfyGzMMHiVQ6cov", "YDuI4l1d9YaLVuL1", "mLP65pId36F25c13"], "roleId": "PNqPn7XRlnqiWP9W"}' \
    'WQMGmm0biVjE8A3E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateUserRoleV4' test.out

#- 355 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["sOz8LDnxgL0t7Qhd", "w4vmSxnJcyaijSCs", "Fa6ipRu1AaFjz0yL"], "roleId": "elzMzWiPzugdDu6r"}' \
    'xIv2ZMtZX5KZK53t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminAddUserRoleV4' test.out

#- 356 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["X2oxmEDDgGBgPWHm", "OLBLlsw2pDJDLeJw", "zbVEEQ0D6RcLpRxX"], "roleId": "CStzvOyY1tNKAVWv"}' \
    '5cGRm3WTx0oyOryc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminRemoveUserRoleV4' test.out

#- 357 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminGetRolesV4' test.out

#- 358 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "rnLBAZlvnOJeNxZd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminCreateRoleV4' test.out

#- 359 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'T1fZJTutZpZZn6eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGetRoleV4' test.out

#- 360 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'DbFDXW3N42ccGURT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminDeleteRoleV4' test.out

#- 361 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "Aev0UqYpD2R7Yqid"}' \
    'gD0wxHpQyntHsI11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateRoleV4' test.out

#- 362 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 24, "resource": "kMtF5tiwPCAxM9oF", "schedAction": 6, "schedCron": "P1hIpdIWajZTyB7k", "schedRange": ["7Q9zNJHkXmHB9cu1", "ZdRIZ1hHCpApGunP", "xVvWyQvciFGxJNOa"]}, {"action": 44, "resource": "fr6NkPjb60b0Y8RD", "schedAction": 97, "schedCron": "M7BApA1YByiGkJR3", "schedRange": ["0lAinKfKXqYE8GuK", "FRwAkAyYY8hSNUTp", "zSm7jdrPdkMMoylr"]}, {"action": 71, "resource": "Gm0x3DmUahjPVDOE", "schedAction": 26, "schedCron": "IeslnM3lJQMDxu7A", "schedRange": ["uj8cqdtNaFO3ABy1", "AeDryAFewcN6U8vR", "J3ebbfa3ep8cKNlb"]}]}' \
    '024FzQsBlwn2pN8v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminUpdateRolePermissionsV4' test.out

#- 363 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 34, "resource": "mAp8kt8156L7Wl7U", "schedAction": 10, "schedCron": "DfzK1gMLvJ1KqSZC", "schedRange": ["anZaGzamJ8JZ6lV9", "zpsDX7CWEoHK3yLZ", "SpydGfNnNFMfXpIP"]}, {"action": 22, "resource": "BF8tiF7mi3iOrnB8", "schedAction": 5, "schedCron": "a6h6dNfg9f25YsZ1", "schedRange": ["L6IGHuO7u2tOUpmu", "6zULXQMirzwMshTQ", "YUnfHWyBg5c3Wq2d"]}, {"action": 67, "resource": "sDNCQEtOnYVE7i77", "schedAction": 80, "schedCron": "AiWk4TKx1WRjiCok", "schedRange": ["zg7q7bMwxVAujRx0", "pyulY8igLWA7yUan", "MI437Ne6WvRNtbN9"]}]}' \
    'Eos8o1PdTDqm0SXz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminAddRolePermissionsV4' test.out

#- 364 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["XNqw2oEptJsPYgvP", "nAlN2mJeW1LQJ8A7", "NZLQPAny29oO2B8o"]' \
    'sfAcB6Pd2uPwzliH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminDeleteRolePermissionsV4' test.out

#- 365 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'iPYuwUtR55gCTACz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminListAssignedUsersV4' test.out

#- 366 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["3aLd0f0QGkwoIQo8", "8hLxgR5AJVEz4FiS", "PgU3FLs6LbIwwxFB"], "namespace": "W1RyUyU8GVL2TViv", "userId": "HbcJX1mqJ4BtZCHd"}' \
    'lmOzx9DrwT5dJMDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminAssignUserToRoleV4' test.out

#- 367 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "ZPQtuRIVY69dhSr3", "userId": "JiNweUidBVB2vTyC"}' \
    '482FeT76mWyDrmG0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminRevokeUserFromRoleV4' test.out

#- 368 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["FHQOjtRg7ST2UVRJ", "N0qFJaGDiDmatCvC", "embJFNyIwxPt19hj"], "emailAddresses": ["yI7ALyZHQ8V4Aejt", "UM6llcl5hdZoPhVc", "Q4wXeArPe089cqMu"], "isAdmin": false, "isNewStudio": true, "languageTag": "LxiTO3GhLJ2qx2h9", "namespace": "3yz3Y7YtgdQMhzpc", "roleId": "pwawMF0j9IirMeP7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminInviteUserNewV4' test.out

#- 369 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "fy5Y0RiyzWJZAZHk", "country": "lGmHH8I1l3xgoVyE", "dateOfBirth": "emJDvokY7UUVCHGW", "displayName": "cVrHG4ehIhJk597x", "languageTag": "UXpiOLFQFxY4AHLz", "skipLoginQueue": false, "uniqueDisplayName": "nClUtkXb0SoMLqij", "userName": "tgLSGTnWHCZ6Xwqn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateMyUserV4' test.out

#- 370 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "OeIUKAIvQjUxtk82", "mfaToken": "oOOkHmCFldZ0XAvF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminDisableMyAuthenticatorV4' test.out

#- 371 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'itLhI0sqjfua9x08' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminEnableMyAuthenticatorV4' test.out

#- 372 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 373 AdminGetMyBackupCodesV4
eval_tap 0 373 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 374 AdminGenerateMyBackupCodesV4
eval_tap 0 374 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "SJmn2gM2q6wuaHln", "mfaToken": "k9AFkbwVa7DCVegP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyBackupCodesV4' test.out

#- 376 AdminDownloadMyBackupCodesV4
eval_tap 0 376 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 377 AdminEnableMyBackupCodesV4
eval_tap 0 377 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'AdminGetBackupCodesV4' test.out

#- 379 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateBackupCodesV4' test.out

#- 380 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'AdminEnableBackupCodesV4' test.out

#- 381 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'AdminChallengeMyMFAV4' test.out

#- 382 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AdminSendMyMFAEmailCodeV4' test.out

#- 383 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "EDDuHxwEbPLfnjlM", "mfaToken": "fDJxP4S8TNhXBTiw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'AdminDisableMyEmailV4' test.out

#- 384 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'S2sBodn1p1MJrZv1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'AdminEnableMyEmailV4' test.out

#- 385 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'AdminGetMyEnabledFactorsV4' test.out

#- 386 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'itpBPRbtgUMFAcxh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'AdminMakeFactorMyDefaultV4' test.out

#- 387 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'AdminGetMyOwnMFAStatusV4' test.out

#- 388 AdminGetMyMFAStatusV4
eval_tap 0 388 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 389 AdminInviteUserV4
eval_tap 0 389 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 390 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'rY80cxjAXFOLYQX2' \
    'ryH4oq6fdhzarU0V' \
    'tmwcYLuVxqvaL6vd' \
    'Jr0yQVV1r0LACcKu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'AuthenticationWithPlatformLinkV4' test.out

#- 391 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'Ad2SElOn16dw0nzH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 392 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    '9XMG2c5BWrzKJ0Lj' \
    '0VNzr8kTl05oiubu' \
    '5HHlb7VI1cHNU3pv' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'Verify2faCodeV4' test.out

#- 393 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'O8IwGdLKPo5zR4q5' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 393 'PlatformTokenGrantV4' test.out

#- 394 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'Tka2qLo5spq850ZK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'SimultaneousLoginV4' test.out

#- 395 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 395 'TokenGrantV4' test.out

#- 396 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'obMU8bzcaf0Qv0dF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'RequestTargetTokenResponseV4' test.out

#- 397 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "MnEcDHueqAKTjdRp", "platformUserIds": ["gYeuitqLYJ7E9mP2", "Be9WZ9kuWMnRcGzb", "D5iC34s0kTiXwPjN"]}' \
    '8E3wXz4Q1L3hAG9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 398 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    'OOi4DVUYo37I8Mgh' \
    '1DJARpi5KzpbDPfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'PublicGetUserByPlatformUserIDV4' test.out

#- 399 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "OfYXcljy6EB8dB8w", "policyId": "CiYq2y16Jp7HjPDG", "policyVersionId": "07XwughkPLKDhdMf"}, {"isAccepted": false, "localizedPolicyVersionId": "PO9YdwqEszRnwVX2", "policyId": "rvVr6DpLOyrgsLZV", "policyVersionId": "9arTxBgnOqH9lyv8"}, {"isAccepted": true, "localizedPolicyVersionId": "maaHSXapFLiHZfwc", "policyId": "mqpHRQcJzso1tgoq", "policyVersionId": "syjuA8sqeXbV9I8y"}], "authType": "EMAILPASSWD", "country": "eBwTzs9QmLReEZ0r", "dateOfBirth": "6n6anryoVkl4tChu", "displayName": "DibBIH1dyZPHtYHK", "emailAddress": "qpl1Xk1CdFvYqfoY", "password": "zBc16XXXuoJGXCyz", "passwordMD5Sum": "A8a5uh1LdVOaWOjR", "uniqueDisplayName": "inmMTxEz6bdDFDqR", "username": "MyTZOXYRC3gIRiYF", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'PublicCreateTestUserV4' test.out

#- 400 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "BlzH9CrXX7cBfnjl", "policyId": "fFFTD6KSEeAEd96g", "policyVersionId": "zUY6EuVZznqQVYO5"}, {"isAccepted": true, "localizedPolicyVersionId": "Ri3CuA2GelFQyuDW", "policyId": "vfe4Hp9aCLekZch7", "policyVersionId": "a3b0hFYqZQAUm9m9"}, {"isAccepted": false, "localizedPolicyVersionId": "4rkop7LL7Yqjh4lg", "policyId": "GGsrJv0EyLkZej5v", "policyVersionId": "oHh0KRDJjPEF1Lpv"}], "authType": "EMAILPASSWD", "code": "LZHiFEo5sDrk8BZ0", "country": "jnV4jAAxGZ794ngD", "dateOfBirth": "Qya3dvyjxR120zHm", "displayName": "DzxvCGS2mYl0sA87", "emailAddress": "gQx9kL8a1tEpNGao", "password": "JWjZSpZNjdKHqDX1", "passwordMD5Sum": "jGg2X6VHZOulL5Kf", "reachMinimumAge": false, "uniqueDisplayName": "9wbQz3euR4MhLQs8", "username": "XliOoWqixFdv5aDR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'PublicCreateUserV4' test.out

#- 401 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "x3gf1HnOzyuw55KA", "policyId": "ICc0N5AqnaH49QFk", "policyVersionId": "sDAGUgVcYdzd3mUK"}, {"isAccepted": true, "localizedPolicyVersionId": "2caqaRVdR05rSilF", "policyId": "29Lpg0zAUzpliq50", "policyVersionId": "demc4rS3d2v2ibO0"}, {"isAccepted": false, "localizedPolicyVersionId": "7O0XQWCZXaPi8oY6", "policyId": "VkZP57PyBLX7knj7", "policyVersionId": "y5qEOp7hzPCxvetF"}], "authType": "EMAILPASSWD", "code": "1aHAuVZKYNaKhi81", "country": "nO4RNjvO8rZ5NL7E", "dateOfBirth": "bburWcSjdGGqd31L", "displayName": "6KqJTL11T4vlBRDj", "emailAddress": "j3FKvRIguqDEJfdx", "password": "sQXLRJRONKh0R0RX", "passwordMD5Sum": "J6anzAeqD1HlhQ1r", "reachMinimumAge": true, "uniqueDisplayName": "z2u3wwUBB3KkzIBx", "username": "4VA9ZxbKQDqG7UJE"}' \
    'MeseC0hnoI1dph0x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'CreateUserFromInvitationV4' test.out

#- 402 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "gVXvWuSKhoOQCljo", "country": "yZp9rrR7RJbkDwkE", "dateOfBirth": "jOWWCzn2paEvjRIc", "displayName": "Sa260P2hpjhYQEdy", "languageTag": "LRX3etMjv8jskCHf", "uniqueDisplayName": "qF5uo9BT2QqCxWZG", "userName": "jDRc27d9a3AaZO1V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'PublicUpdateUserV4' test.out

#- 403 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "cAqwHJEyMrwNINM4", "emailAddress": "zHFF9ucrEcYD5hjg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'PublicUpdateUserEmailAddressV4' test.out

#- 404 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "rxoEVEIkvpWupGht", "country": "aU3oC1Ly7xHbAN2B", "dateOfBirth": "dv1CfQOijhEI21zn", "displayName": "ti03vAJizEosjuIs", "emailAddress": "TXKAQ4uWLCMgN7rU", "password": "1yiWEODovRwzU7Qi", "reachMinimumAge": true, "uniqueDisplayName": "de7x4luTsEk9TNqS", "username": "iFJyMByoRKUrvfix", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 405 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "ZZNcWBxK2ScBMbps", "displayName": "jgGDmxpN0sNW3RHx", "emailAddress": "ioyNedQ1E2lQg6rS", "password": "Zj7yw7aPU0DqhD5a", "uniqueDisplayName": "gSwSs0ORF2pLQCqP", "username": "GUmF8pQCrEqdstmo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'PublicUpgradeHeadlessAccountV4' test.out

#- 406 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "PJurb0FVZK7sonuz", "mfaToken": "Tm1gseYPsB00G8mo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'PublicDisableMyAuthenticatorV4' test.out

#- 407 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'Kbti7cqKdwnwTyTy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableMyAuthenticatorV4' test.out

#- 408 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 409 PublicGetMyBackupCodesV4
eval_tap 0 409 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 410 PublicGenerateMyBackupCodesV4
eval_tap 0 410 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 411 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "r1XXDYClbgXA2XAT", "mfaToken": "EcyKtSz6QsS6BHqs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyBackupCodesV4' test.out

#- 412 PublicDownloadMyBackupCodesV4
eval_tap 0 412 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 413 PublicEnableMyBackupCodesV4
eval_tap 0 413 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 414 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetBackupCodesV4' test.out

#- 415 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateBackupCodesV4' test.out

#- 416 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicEnableBackupCodesV4' test.out

#- 417 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicChallengeMyMFAV4' test.out

#- 418 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicRemoveTrustedDeviceV4' test.out

#- 419 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicSendMyMFAEmailCodeV4' test.out

#- 420 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "2Z5aknpCHXIr8Jnd", "mfaToken": "NzIiCZiPRCujrja2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicDisableMyEmailV4' test.out

#- 421 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    '6Ygd7A1555BielNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicEnableMyEmailV4' test.out

#- 422 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicGetMyEnabledFactorsV4' test.out

#- 423 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '6kfRgfnBT7OdjPny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicMakeFactorMyDefaultV4' test.out

#- 424 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicGetMyOwnMFAStatusV4' test.out

#- 425 PublicGetMyMFAStatusV4
eval_tap 0 425 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 426 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'wuIoLpkJEPfnaESu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 427 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "OM4olKFVsSfgNQjK", "emailAddress": "hrrrStCg99ejNACA", "languageTag": "FAJlcWkS5jnhMZsQ", "namespace": "8CVsHXHYBx7KkpRA", "namespaceDisplayName": "aivn5yFNSoKf7tdm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicInviteUserV4' test.out

#- 428 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ppuu6acpUdn8X5IZ", "policyId": "jtFT6Bs8OO0CVqXF", "policyVersionId": "6bMzRd2Z2WjutGAp"}, {"isAccepted": true, "localizedPolicyVersionId": "5Trcu36LS6o87DKP", "policyId": "LLTcjU87C2CAKbiD", "policyVersionId": "5PxA5v9644D4d5jT"}, {"isAccepted": false, "localizedPolicyVersionId": "c87G37jhABEz5T57", "policyId": "ICJiWEPnZsQ3NsS8", "policyVersionId": "VgyzvujT8aEay0LM"}], "code": "1IpMDZuDLXNscwbX", "country": "gdwQnMuReen3aYjh", "dateOfBirth": "ar5GRzOAfOXbaEHF", "displayName": "X0sySxhkhCpV5A2Z", "emailAddress": "LHG60X6LS9dYe42o", "password": "icsvoF2EgsoZSKOz", "reachMinimumAge": true, "uniqueDisplayName": "DAf44vyeNIfF5Ri6", "username": "ydoL4tB0FUpx5TLi", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 428 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
