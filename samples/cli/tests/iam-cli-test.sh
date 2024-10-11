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
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"platformUserIds": ["NTLXHrsOFsbhRow4", "iaYKy0IjsDgbJ37D", "N2lDvdh7okHl1wMh"]}' 't2Izq7TCUJhDsDef' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dvo5EzpX0IttsRez", "policyId": "yY9GB5sf94ALBmvd", "policyVersionId": "ncQkcZb8cWdVH9bw"}, {"isAccepted": true, "localizedPolicyVersionId": "zg8pbjnt1iBV8Dpb", "policyId": "jGts4UZDTfhAyZKh", "policyVersionId": "qilty9NVlgxUmnfd"}, {"isAccepted": true, "localizedPolicyVersionId": "Amu1dX1NqD20RUvv", "policyId": "YeJZw6QZFN7wFCnq", "policyVersionId": "pvNesGiVnt9p2to7"}], "authType": "EMAILPASSWD", "country": "ja1soDE1K0SvGrMY", "dateOfBirth": "wPmPXC2LfL2m5rP2", "displayName": "A20t6foPPH94SUin", "emailAddress": "Y5diUlqgvY7dPPya", "password": "hppgxJhk4EdTZ000", "passwordMD5Sum": "rS92594HLvWFsXHt", "uniqueDisplayName": "MP0k9L5dREQbCqfh", "username": "0gpABFBER6WNcDOs", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Bkf9A6HjCnFRdSih", "policyId": "cvszzQLZBktk0siM", "policyVersionId": "up01kyaFwwD7wecu"}, {"isAccepted": true, "localizedPolicyVersionId": "b4GNQHVZMKGBnzh4", "policyId": "suaGIzttTncVBf5g", "policyVersionId": "3oeuHiNyLkfPQPmj"}, {"isAccepted": false, "localizedPolicyVersionId": "kvSs5YmIejozmG5H", "policyId": "lrIfMAvvpkAHRJHZ", "policyVersionId": "yfrXZmiJX4CjKCeI"}], "authType": "EMAILPASSWD", "code": "Ir997KKpJXTLbYWp", "country": "qeXjaf1f5fjNMZjK", "dateOfBirth": "J05puX3197WrMnJt", "displayName": "ovSMFw8X4zxbdfXg", "emailAddress": "unt1oMNZ68eovHSH", "password": "3xV3URIRVDYBd6hM", "passwordMD5Sum": "B0l7sg7IfMH5Tu1k", "reachMinimumAge": true, "uniqueDisplayName": "psLOcLtZw0efmEVc", "username": "W7mxbS5UOoICxQMi"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JXPCWkX4Kpi8CJ88", "policyId": "aMPGFFAQZbfbmVTE", "policyVersionId": "biRq5Juikmpat75r"}, {"isAccepted": false, "localizedPolicyVersionId": "bN9ZBtzJ33tCwv8H", "policyId": "1f451FVZ630HNBYZ", "policyVersionId": "Srz7pMjESLLMPKDX"}, {"isAccepted": false, "localizedPolicyVersionId": "9J6JLb5f3SBMyJUd", "policyId": "wEBRrHAWUFqTooGG", "policyVersionId": "nPEgY0t7QQWl42by"}], "authType": "EMAILPASSWD", "code": "wXgKyPhXmcysae8H", "country": "pWH4xiz3fWthJSu2", "dateOfBirth": "pUIIuPLFAtcWhjAP", "displayName": "57QbWvSSp71zEPPf", "emailAddress": "mAQiqRRC2caquMRt", "password": "QOILcaDqUITBHQR5", "passwordMD5Sum": "ISNoFR3GUxdMuvmL", "reachMinimumAge": false, "uniqueDisplayName": "UBfwzaaeP3Wd0Wrb", "username": "8s3GW0CY0vAfbq8x"}' 'oCurq4lpHXrbVBh6' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "0NUA2aKQwnXrmi6y", "country": "a8u4sQPvaf1AcweR", "dateOfBirth": "7tJW3MLMob1hUnIz", "displayName": "IpUM8KK1kGFN0NUN", "languageTag": "GKxdlAUDFQuGPzAu", "uniqueDisplayName": "T7M6OBrNwioKnXPV", "userName": "ZaDcXsV1TnsZioDi"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "BgprzahPB0FKMa0Y", "emailAddress": "eyNBQWUHDBnBeePk"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "qg6Zt1Lr5BlO8K6L", "country": "H4dSaa8XYHug51ZT", "dateOfBirth": "ogG0N7Hvnuq1kJ1k", "displayName": "pHcQtnIc9z70LFQM", "emailAddress": "I0oZuEjY0rNBbbB9", "password": "txAvtRQvqJacXR2R", "reachMinimumAge": false, "uniqueDisplayName": "w7uepmahXojVZYz2", "username": "zMU9jLzNV3GaG43R", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"emailAddress": "nlRPrEAYqRBeSc5u", "password": "Shoj3dGHMeoi5DBO", "username": "sQ0Gax0iX05IT9Ag"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "sjl5NmnSHhxNmCe4", "mfaToken": "txY0MsPc9EMgf9JC"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'JiEvhL8ZfwCVJW9y' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "spUOyHC9eKeXzrvz", "mfaToken": "BllwzyC1aTWEmPgo"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "y4TkpEw4Zeid4mRo", "mfaToken": "FNxv10ckMQVjKk3b"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'WJ0ZuYSe3sI0x2hc' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 '8vaN1Off5gRZZMW3' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'huAIzBPWBYKAEFTd' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "lKNh6GTzKjsCqxx2", "emailAddress": "4QM35bSkFrvGciNH", "languageTag": "b7OY5YIpOLJW52uz", "namespace": "3c8pz63M0g4xXT5T", "namespaceDisplayName": "s4e0uR47OzUGHeBK"}' --login_with_auth "Bearer foo"
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
    '{"modules": [{"docLink": "tpvyRNgjZkdDppvE", "groups": [{"group": "JiUiDGXgh8BKcLqt", "groupId": "RZ93LuR8OEyICvwg", "permissions": [{"allowedActions": [46, 49, 57], "resource": "M3Wev9pZQjWAN0tn"}, {"allowedActions": [51, 2, 8], "resource": "6ZHZtuSJGQCrM7JE"}, {"allowedActions": [79, 47, 90], "resource": "rz7sLmP70LxN0f3J"}]}, {"group": "A27Qz5SjzQfOLYu9", "groupId": "O46OOzz9p57qSpHe", "permissions": [{"allowedActions": [36, 90, 52], "resource": "Y807VmBT4wZXQZZr"}, {"allowedActions": [91, 19, 38], "resource": "28qCRbwwZc4ZS1NM"}, {"allowedActions": [21, 21, 35], "resource": "oCAZuolAWnxkImVb"}]}, {"group": "DP0QX31gI7VmnGIR", "groupId": "MvXe6BiphIFe2bzr", "permissions": [{"allowedActions": [70, 33, 46], "resource": "Qw6fSESkM19OPMBb"}, {"allowedActions": [28, 75, 12], "resource": "W9jiNMu9QVrMeD4b"}, {"allowedActions": [61, 33, 18], "resource": "gISE34yIAZQeigiA"}]}], "module": "3wBrmBYIlZeheP72", "moduleId": "AB8EO3YrlyrWowUp"}, {"docLink": "UDVLlTtuJJsHZVsG", "groups": [{"group": "6izJZruOJvSRFLDS", "groupId": "dj8elbtHvDU91DmH", "permissions": [{"allowedActions": [51, 34, 47], "resource": "rKWYOuITlYS2RYaD"}, {"allowedActions": [28, 99, 5], "resource": "NKGhbLhjz1v0RBIO"}, {"allowedActions": [13, 35, 74], "resource": "kJGmPaK6HEVIQJd3"}]}, {"group": "930TGewjRyfo4nWV", "groupId": "ZZbKFsKOmgEhjH2w", "permissions": [{"allowedActions": [65, 27, 53], "resource": "6iQyr5cb5YL6fwBi"}, {"allowedActions": [0, 54, 97], "resource": "kltcR3eHFbiAluHv"}, {"allowedActions": [69, 48, 37], "resource": "rkPPdg3pXjmtpNfC"}]}, {"group": "rIj9ntYo3dupUHNu", "groupId": "8abrVVOKxr9Pa315", "permissions": [{"allowedActions": [65, 5, 74], "resource": "r2WJQqS7Tq4YIyZA"}, {"allowedActions": [65, 87, 56], "resource": "6lZfa2jdNvpWf32J"}, {"allowedActions": [92, 35, 1], "resource": "mPkr3tZ506ERSVy5"}]}], "module": "M3rrkxu0U9h9gCNV", "moduleId": "ZxHGxhZqNXJ6JXSh"}, {"docLink": "0Z3SWISs1dYrJKmx", "groups": [{"group": "1BT6iLFQejNZJNF2", "groupId": "hm0TqBQprHn3whPK", "permissions": [{"allowedActions": [95, 48, 85], "resource": "abnqw8fFa30pVbhr"}, {"allowedActions": [57, 69, 14], "resource": "siWm3V9sirE0JOQx"}, {"allowedActions": [99, 76, 8], "resource": "hP2jWnRTglw0gdWo"}]}, {"group": "E4esuiDrquccz4J6", "groupId": "fFQezJ5E3iYHIknv", "permissions": [{"allowedActions": [86, 5, 43], "resource": "JkjRevVYfiExpAgo"}, {"allowedActions": [74, 87, 69], "resource": "YDq1x3dkbJFDEBEO"}, {"allowedActions": [83, 61, 44], "resource": "7lNLxlpvqaB9P9Ga"}]}, {"group": "ukfCEIeSBLhTfzig", "groupId": "zHcRuJgYaj4I8Dzy", "permissions": [{"allowedActions": [14, 93, 38], "resource": "N0JEKNoMtHvjM7X1"}, {"allowedActions": [10, 94, 19], "resource": "kUCqbbHGJGOTvKKR"}, {"allowedActions": [93, 68, 78], "resource": "DntaFiufH2YR6QU7"}]}], "module": "fj6w17arNs12hOoL", "moduleId": "VM7UFnuJDzeEkDxa"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "VogxHrOon2OW4Zw5", "moduleId": "QwVKWNy2tnF2MifJ"}' \
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
    '[{"field": "R4hr4gdJDujYnVnF", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["xC6yYUVUJYnQ3jOG", "mROIqxqQ0gcNeTfl", "yvUh3w5ZtfwmOCKp"], "preferRegex": false, "regex": "MF0tfGIZCTNiIRc9"}, "blockedWord": ["fEjkZhEpAJMCxMp2", "J0hDg2kMgkvhoQe9", "gD9tGN0nE7M36mI9"], "description": [{"language": "u3EeZtLQij2JXsqd", "message": ["XfhZTTaCeqGv7meu", "QhJuq1C6JHkWMSUb", "qByWN2BCnRz9w2nu"]}, {"language": "r0B9jKaunAcylsau", "message": ["7wRQmL4i3eRyIECE", "Da1I4lwXqwPfq3Vz", "HQjtolx64w1gyvja"]}, {"language": "cKtGqxMnoAXRlcq0", "message": ["mYWKQYlqMmu2pvF6", "rP03bQaq1cT88H6R", "CW8gJmGzDlqxtLsR"]}], "isCustomRegex": false, "letterCase": "AGOiPhNt2IdH8aYY", "maxLength": 96, "maxRepeatingAlphaNum": 93, "maxRepeatingSpecialCharacter": 58, "minCharType": 66, "minLength": 26, "profanityFilter": "o9aUXj3rh0UyqxVW", "regex": "lIMY5tTJw4KV104M", "specialCharacterLocation": "tMhKHmSjqPuQZX5K", "specialCharacters": ["jdNrEwfWo2MwulLg", "4bsO4YHEYLjTSNDf", "3zazm6p5Y1tkG9Ww"]}}, {"field": "U4Ty6Ch5QYyFjuBq", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["xssm4hxczskbSUbO", "Z9WNl3apJmNAbl1g", "5ZmTTGYRbP4QVey9"], "preferRegex": false, "regex": "J16MMd2bzOrTn2hu"}, "blockedWord": ["wPgyUzBUWiKoNGtv", "yk5xEfrJDxKsw5Xl", "7ZZrDZdbuvCFBaVc"], "description": [{"language": "ohewKkVuGv9fQXkE", "message": ["rF0drbYrrFQP6rW6", "2CtetBW3pvAJJieH", "hveGg97PY0txzvYw"]}, {"language": "v7atn9EQv2Oj8TFN", "message": ["eGtJGjKbMgCeuAYu", "zrmbWofEaKStqdKu", "4ROnONpJ849chqei"]}, {"language": "UGQMwNwDlYSli3p8", "message": ["YaAdel3hHMSLAisc", "GRWzkCl1ZKuPxjDU", "GRGcCEPjbUy7F82A"]}], "isCustomRegex": false, "letterCase": "4LMJfWNZIxAgBpeu", "maxLength": 3, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 32, "minCharType": 63, "minLength": 36, "profanityFilter": "s2LpE0qfbvdU8hlD", "regex": "oC9FnxqBlPBYJ7X6", "specialCharacterLocation": "uVy7FWTSfMi2CPVG", "specialCharacters": ["xjcdpdCqVeePMSqb", "8y8qJTUQY40Zrpn0", "vAD9YsPeDWrAVQZS"]}}, {"field": "vgWuCuLsUGrVQAbh", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["ersDmJLUHAKtfXCK", "Ona8DdjtZhh6ofsU", "oRh6r0e0J6vyqPw7"], "preferRegex": false, "regex": "lmV3kES0Hi88UYgS"}, "blockedWord": ["V40OvY7apPCrN5bE", "hmuHgKeWizEpw1zN", "0mOYgGhHMz9dddLW"], "description": [{"language": "JWDuSYtCaIv4Lp91", "message": ["wYUJPbvzn8TYoMDA", "aUXSuBQdvdhJoT0W", "K5ngNUxDKfZYofPG"]}, {"language": "UbSaA00nKxQjYU6K", "message": ["lavIiLxU2I1GyJS4", "8Hxu8Ju4XSAnlXRY", "B9BgSZBvkehRn83B"]}, {"language": "0nrW1qx3NJTugVWX", "message": ["z8dv7BiEUqnzxs2d", "eMF8UAJIHEZv5zyU", "UyNJkvA5xF3zHtZS"]}], "isCustomRegex": false, "letterCase": "9Wj90EQzOidrWnLr", "maxLength": 94, "maxRepeatingAlphaNum": 34, "maxRepeatingSpecialCharacter": 80, "minCharType": 71, "minLength": 45, "profanityFilter": "mgDf3GaJsdCZND0w", "regex": "gYOilX1e1825iasu", "specialCharacterLocation": "nESjcgr2drXG5NkK", "specialCharacters": ["CySLA8cKCs0dFYRS", "a2OULZ0iOZJiOAh1", "SpLhMF2Pav11FuU8"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-input-validations' \
    'iXCRz8KgqgwijYxp' \
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
    '{"ageRestriction": 67, "enable": false}' \
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
    '{"ageRestriction": 15}' \
    'YC4txul6VKYlNYYl' \
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
    '{"ban": "HPwKDpJmkeoAkp3Z", "comment": "4pgyJYwclb4gd4Qg", "endDate": "Qut2hiPuDdOPHcN9", "reason": "drwqytieXpIZfr5X", "skipNotif": true, "userIds": ["ktmiKd9vLPP0w52J", "RAZxMWdoleYNHXeO", "paRDwYLge851PbK2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "MFKvw5TWjAh4gy41", "userId": "LLzQ2IjY5PeNr4Jm"}, {"banId": "YxH2qs28hePJjMp0", "userId": "TKKUBfPNI9f2oLWD"}, {"banId": "PSZexfKVxqdxmh5Q", "userId": "WxuQuI7gdDTDb3Wd"}]}' \
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
    '{"clientIds": ["nOpzTrRzCCafADJf", "WBspT3MLwJZquMQS", "Pp5XD4S1ilfgff7E"], "clientUpdateRequest": {"audiences": ["t4uY8nlBwGNHgfgw", "ZwVMvshGmsg6ZJYn", "kHDnHTlRugM7a2UZ"], "baseUri": "geesipbP027okM5E", "clientName": "8tAajVSvLRj306RD", "clientPermissions": [{"action": 43, "resource": "vOSF6xKA6yrnvXY5", "schedAction": 7, "schedCron": "Lc42eq0O6VsXtOlQ", "schedRange": ["wj5xPvm7c5nPR0Y1", "sffUaZ64dFpiv8o9", "Gw4QtKgyIeySoUxo"]}, {"action": 79, "resource": "ezfwc3H0qSbMq4GL", "schedAction": 19, "schedCron": "lmSyjEaFH2DRN6HI", "schedRange": ["EqIFEcS0ynIMOYWp", "UYUQMooiKT57rmbj", "EnimeR7EFBz43E9F"]}, {"action": 21, "resource": "E3MFqvfDG5jvMOaX", "schedAction": 37, "schedCron": "bcebBd5wb5H3qppo", "schedRange": ["CiHMD4iBK2O7qYtO", "HV5hnpjc5CNLnnEv", "o25aEtdjls5oadse"]}], "clientPlatform": "Jg7y4Q9CU3fjSRaX", "deletable": true, "description": "TJ9uB0zypjJiu7BI", "modulePermissions": [{"moduleId": "imNuwB3hBVhuSMHh", "selectedGroups": [{"groupId": "f5R2MkxQTAYGfE6h", "selectedActions": [41, 35, 34]}, {"groupId": "XLoWCGf0dZEeXBd6", "selectedActions": [26, 41, 67]}, {"groupId": "uedbBOd19DqZJRYV", "selectedActions": [53, 30, 30]}]}, {"moduleId": "qNLmPAUIMwa2wYq6", "selectedGroups": [{"groupId": "DsUq38bYvaWLoKzH", "selectedActions": [28, 85, 26]}, {"groupId": "7yh0zsKhR60HZwUw", "selectedActions": [22, 79, 28]}, {"groupId": "K7MXHbEwAvvpEeHh", "selectedActions": [48, 17, 5]}]}, {"moduleId": "JcJqYSxVKUYMimVL", "selectedGroups": [{"groupId": "zAP6aOzsTqEFXUhG", "selectedActions": [55, 46, 63]}, {"groupId": "pYq1UqZydOB0MThZ", "selectedActions": [99, 3, 59]}, {"groupId": "LwcAg57BYBVCbi0i", "selectedActions": [12, 7, 84]}]}], "namespace": "PyKf3SwHekWIz4rX", "oauthAccessTokenExpiration": 22, "oauthAccessTokenExpirationTimeUnit": "zpb623EciYoYOPVg", "oauthRefreshTokenExpiration": 5, "oauthRefreshTokenExpirationTimeUnit": "DLEZ6DxpwBm2N8Pd", "redirectUri": "Q5mQaGXEbnmWR0H3", "scopes": ["EkrHqaLNdfKszYZz", "Og113h6fIaHSx5bC", "lxUOBmMwv5pmiIVn"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["oYSohfrLyXMSrC62", "xYtDwflNGfufW5cW", "eg6eSCypsceITTkJ"], "baseUri": "GGCVF6LrILDLviUC", "clientId": "zmDAaW5xz1c7ZuZX", "clientName": "UCBYnkY0LEBSYBdU", "clientPermissions": [{"action": 92, "resource": "mX6WF8jtNAVOYqSH", "schedAction": 90, "schedCron": "3YlJ93CCGBXv4fP4", "schedRange": ["VPzhcH4UJrrCKvrO", "Ai7lMgkVWJYzSCID", "xWUxgOzeRNHIqK5P"]}, {"action": 94, "resource": "vkOsR1fHUyirMVMO", "schedAction": 65, "schedCron": "OecfLsYKTmUnKlrO", "schedRange": ["sJmEwjGYN8VNPXNs", "mwTV8imJHNI0l6jJ", "VzF1Oi2sQuWUBBHZ"]}, {"action": 30, "resource": "s056jkPCUuE1pgdH", "schedAction": 43, "schedCron": "CWMXxVh8HTrKqVwn", "schedRange": ["pPn8N5xMRgU7cPqN", "ZrLCRRUysya4J3rv", "TzMTMSwrNov2GW9i"]}], "clientPlatform": "54JY23AUWFTLq0W1", "deletable": true, "description": "1zalTddhAQ1pwqny", "modulePermissions": [{"moduleId": "bvUIfuulmeegRwPP", "selectedGroups": [{"groupId": "bn7lttd21cS6IVE4", "selectedActions": [11, 83, 53]}, {"groupId": "2n4MZQt753XQB93r", "selectedActions": [83, 26, 100]}, {"groupId": "vEOaRcqTgF0xtQAX", "selectedActions": [29, 60, 23]}]}, {"moduleId": "oFkmA3fgzcwdgJMj", "selectedGroups": [{"groupId": "IyGfiNBQy41M1gzG", "selectedActions": [59, 91, 2]}, {"groupId": "t4v8ry8IyqNVv0KV", "selectedActions": [32, 79, 93]}, {"groupId": "JTMx3Y8Um1iqehOb", "selectedActions": [12, 23, 83]}]}, {"moduleId": "VSJENQopeHD6iKBG", "selectedGroups": [{"groupId": "m5Cj7RqnJUmfDmof", "selectedActions": [48, 63, 44]}, {"groupId": "7fcCAeExeQX43Lpm", "selectedActions": [7, 50, 80]}, {"groupId": "q35BWDoc3qNcQFFy", "selectedActions": [69, 53, 44]}]}], "namespace": "vaWUCA7wKru7ry3A", "oauthAccessTokenExpiration": 87, "oauthAccessTokenExpirationTimeUnit": "jqTaZFsWzbqwTZQI", "oauthClientType": "N5jC6a8mEVCXHmFn", "oauthRefreshTokenExpiration": 35, "oauthRefreshTokenExpirationTimeUnit": "qlX7idzjpKDfwl6X", "parentNamespace": "lCF6YxFMD8tJQwZv", "redirectUri": "UVInos5RK100yH89", "scopes": ["i8ZDPXRL8cbTAntB", "1STaab1UeibXg7RC", "e5BtKcwj6PqqOgCi"], "secret": "mr3ZQNBBkrXu9czs", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    '3cFeVw70xdNTuOdL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'KK0M2B2hbqJin37P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["69t1KqeGz7qbPnXE", "uOzzkoBmMR9C4qPq", "JrAdh1HIk7vCEq7F"], "baseUri": "Q2S5VeW9ddxzLPV8", "clientName": "wDjsnyPh5yNbYXml", "clientPermissions": [{"action": 55, "resource": "ZvtydbaVb0scd97A", "schedAction": 49, "schedCron": "GP6djn2Ps3IVT5hU", "schedRange": ["Z3cnDq0ddZG0EpfG", "AqHKcSxUc2YgRpk2", "IFGIgIpscUpVAciu"]}, {"action": 1, "resource": "PPUxzXHUvxhvTZcv", "schedAction": 90, "schedCron": "nyihcUVGHQczI5Zo", "schedRange": ["TRUkjGoRkPs2SO9X", "rgXNIaU11cBXLwTf", "opqeZtHJnRgaGfLM"]}, {"action": 65, "resource": "cQ99M1yuXeqV31LX", "schedAction": 75, "schedCron": "ehcMnM6QtjzQjDlU", "schedRange": ["MCGnxZwak7KHnzGA", "SmVzePIroz41oQCu", "XeTRyJQrNLTcqLVT"]}], "clientPlatform": "N5Qf4tjPGpu27yxb", "deletable": false, "description": "i1v2abpCWytPEi9Z", "modulePermissions": [{"moduleId": "e0hL9rPkV5GkSrcl", "selectedGroups": [{"groupId": "2O47XVzU7qlNVk7q", "selectedActions": [28, 22, 25]}, {"groupId": "iIFgS4fLqlrKGiS3", "selectedActions": [8, 47, 69]}, {"groupId": "jkyNfj3XgTRTjI9o", "selectedActions": [81, 16, 56]}]}, {"moduleId": "775AQfzNjQ7IuMSY", "selectedGroups": [{"groupId": "2epRDJjDyMDKQhuT", "selectedActions": [19, 77, 39]}, {"groupId": "NsjdCFtKY0KsxR0r", "selectedActions": [57, 78, 65]}, {"groupId": "Cv9DYBOProN4UWbQ", "selectedActions": [1, 70, 75]}]}, {"moduleId": "P7dpJ8B8VwFQnVco", "selectedGroups": [{"groupId": "2oCn1KvJmbjapW9U", "selectedActions": [24, 78, 63]}, {"groupId": "gIwkrKFEtwESJCe2", "selectedActions": [20, 79, 38]}, {"groupId": "8ah9bPsksceGUEX8", "selectedActions": [62, 55, 89]}]}], "namespace": "ZbDQAEJLbVWH2XLI", "oauthAccessTokenExpiration": 13, "oauthAccessTokenExpirationTimeUnit": "6LpHCvCYTgX9JQwE", "oauthRefreshTokenExpiration": 37, "oauthRefreshTokenExpirationTimeUnit": "Y8qNwB2TY4v9NNfQ", "redirectUri": "SYLFKSl3FNFFJnt3", "scopes": ["rIwZdW02Su6aCnL8", "16aH6gOBUIMeL0GL", "3aefSDME8X2MxILI"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    'BJMPkZmay4Csye3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 73, "resource": "yhiSGhfqXhxBJ7zL"}, {"action": 41, "resource": "ioAGkWgSDdDQvpRf"}, {"action": 66, "resource": "gaQ4Bn0cPPtKaJlw"}]}' \
    '31pdDrXQ47WSGyDC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 76, "resource": "p4wqlQJcZroNQief"}, {"action": 57, "resource": "2XoFug8BUQUmPHnP"}, {"action": 42, "resource": "6pNNowEuVVZM28w4"}]}' \
    'mnYvvlt1es7A4PFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '42' \
    'wYkiuxzLrbJ0BkGz' \
    'CNgesQlZZHIZH0ik' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    's6kx0adnimPyyzez' \
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
    '{"blacklist": ["sHdFftHHR6xbcVVo", "nwz27DWfGRVhbZTv", "CPrrZCTU5WUJizF6"]}' \
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
    '{"active": false, "roleIds": ["PSsquWUafwbFPX15", "633pFgA7i9tqvfHm", "FvUZiUW5Y0CYw5OX"]}' \
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
    'SGwQkJuy9oLFcHHc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "raLXR2n9JQvq7NKW", "AWSCognitoRegion": "IHYsii3fCh7sieJj", "AWSCognitoUserPool": "ZPAkiWumllU31uXP", "AllowedClients": ["wYxedGHCIkmt4bfJ", "OhNaIT0pv7XeqO8g", "Y3c4SryWB4yRaDxv"], "AppId": "xwaLM8HkVOW8PnLk", "AuthorizationEndpoint": "gqkqYZWPZTgKagTz", "ClientId": "dcYcko7U3gH239Lh", "EmptyStrFieldList": ["Rx2Laa2RdtVb6VgA", "5yFIH3s9UyeaFi8O", "E7BCK4FeVGrl5NpU"], "EnableServerLicenseValidation": false, "Environment": "zblWEiHaUjyTHb0s", "FederationMetadataURL": "Slstb3slUe94NxhX", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "XUq3uIffkIpPmrWV", "JWKSEndpoint": "xNZUvkiU2jXSwsBB", "KeyID": "RopVl38d4NZGtk6E", "LogoURL": "mWxC75M88TKhFYkA", "NetflixCertificates": {"encryptedPrivateKey": "9aRNDe2IoPMSQKcg", "encryptedPrivateKeyName": "0OTT9JA0ll1RimBC", "publicCertificate": "iQwuyrI87uSyXP6C", "publicCertificateName": "0jXS8au2wcWYyj3J", "rootCertificate": "vHqXp4JR7xI59Z9t", "rootCertificateName": "fGVsglnOxOXBfgBL"}, "OrganizationId": "uglkd9LIoshGnFSu", "PlatformName": "Hmrqej8PRppYY1vl", "RedirectUri": "V0M2g6oreqyBzWzC", "RegisteredDomains": [{"affectedClientIDs": ["gMMWZuD6tmIR28xV", "xbtpSKOfiIP3S6py", "pZqISn3msrykQFtW"], "domain": "8QGKFZLrIfqrZuu7", "namespaces": ["IwKcT7sAsv2TKCbY", "MVkXEHmsHwIGGsus", "S0zZRODEKPdudZsL"], "roleId": "af8aZrXW84dt0TST"}, {"affectedClientIDs": ["my7XF26K2U7xttUz", "8nWKJjv06PuffHgh", "AQfAsYXVzBenLtaA"], "domain": "oYyRfiCWrm3s1Ah3", "namespaces": ["TII70MIcBMJ04508", "jKedx0CVRpd7SwZw", "2UkjDzJ4NuMMgI13"], "roleId": "nplXaUQV5QEvKElL"}, {"affectedClientIDs": ["fbB7gwwAR1xFrnyi", "rw3iJt5iA3JS2xea", "J08JrSHPqdhKHn6Z"], "domain": "jZMdr1C2TIQzRJY7", "namespaces": ["UfYSrdN0JVz4U43E", "cV1FRyeeqehMNeRY", "KeMbL0G4v5D6ylZg"], "roleId": "uO918X7rLoexHBMB"}], "Secret": "MMAYokSWFwajRGUy", "TeamID": "klfLVY6g3PO4hKAe", "TokenAuthenticationType": "F4GUV5m96qcCJsVO", "TokenClaimsMapping": {"Wtu5RPsqd66ImBEu": "hnaxZVf6MD9r1y5I", "hr531Kajxq7lzuVR": "VEvhKIbrq1xsGpdo", "bYun8hcO55hVjfWy": "K02w5QytAmkanukA"}, "TokenEndpoint": "zAMaRvIUhUwguGgb", "UserInfoEndpoint": "LLN3O7CEYjxqElP5", "UserInfoHTTPMethod": "lA2FJ0iGLRTXGsC5", "scopes": ["mxxse4eeuMgEctVE", "ux2MSuwsEHlwdeJy", "hsHS6YqPudWviQsU"]}' \
    'LL1txfX9tqFSkGXo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'IcFN5JL9M53Mg0Mz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "WS9usxxnMhjv66Dy", "AWSCognitoRegion": "ED4prRVibTATxd7M", "AWSCognitoUserPool": "zjv1gSj8kcNhoqcR", "AllowedClients": ["ZRNATojM7daV0VwR", "3yNKDtMqMrAGpdyF", "6WDHn3ePBxQNz2IU"], "AppId": "EHMzl5jhwVDsuzwJ", "AuthorizationEndpoint": "4v50eoaIBrTh0EKk", "ClientId": "JioUpvGnkcHgCfaW", "EmptyStrFieldList": ["zPUvCnfqsPGgJZyR", "wigaMu07Zek8WObp", "f0FHYfViEj70KYKI"], "EnableServerLicenseValidation": false, "Environment": "2pM4fIfcHBWZM50a", "FederationMetadataURL": "HbPXRns3qwYL6LwG", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "F7XQPLAcIL7FvAMW", "JWKSEndpoint": "qhyyNZH1CducB5y5", "KeyID": "iMdeBG7REG4meKEa", "LogoURL": "bfVXBJPIZqZC5d6J", "NetflixCertificates": {"encryptedPrivateKey": "uFdcfiNf0DOHKwxD", "encryptedPrivateKeyName": "F5GJhCjVHiCn2hTe", "publicCertificate": "fT8gPFJ4WndMpQhc", "publicCertificateName": "LK0WTZbtmQkwC8az", "rootCertificate": "x3IRWme3C6p2r4D3", "rootCertificateName": "NQdjrjkX3AMgK3Jg"}, "OrganizationId": "ZufzssA284mG7uAo", "PlatformName": "jLYBsx8oqMzbE0lj", "RedirectUri": "QaBtb47V691j0FZp", "RegisteredDomains": [{"affectedClientIDs": ["2vjOXptxzx6kkaZY", "pl52sQR9Znp5d1eS", "wrG2GBBEWrDbQ1Zz"], "domain": "hDuLHq9LTBstguOd", "namespaces": ["N0O7l3GbKPHdDTQD", "EEE2mTsn1NwJ71sz", "sNmnqZSWdEyOVYrT"], "roleId": "dDq7IqbTVv8BLsqQ"}, {"affectedClientIDs": ["W8HSrEm5Y7jI232S", "jktijiNzTUe8Kdiz", "XmrmK0sCUsqxKocH"], "domain": "omtjoU1kUqRedwIu", "namespaces": ["1TSRr6r8mzfMedpc", "KhvHPlvYanGqEkn9", "OEVwLWGT4MXhmzvR"], "roleId": "Qb7c0vmjWq9fQqzu"}, {"affectedClientIDs": ["lLGfQMqSLQDlRFYM", "VfiAMa6Pco7Mfvik", "slpyL9BYLVVznF6h"], "domain": "MYfksp8VQhYSFeBO", "namespaces": ["p0ilGQFwHUtZugbl", "T3aIDKn9qJXncm5i", "gpAewbmnWk0E7YaP"], "roleId": "blcWEyNgvs5LEZrQ"}], "Secret": "XzSQRWRs9EGnRPgY", "TeamID": "lJElgJ8kx1WEeDbq", "TokenAuthenticationType": "l13FtQMu41rnOzbs", "TokenClaimsMapping": {"FBqg6dziWvdNcwfU": "BMdNuTaiLxFMXRpD", "P9xutntU8xHw4yYJ": "OCViHwunQwpC2eCF", "UAHZaYSvsWiNJtqX": "ltZF6aSRmHU5iR3h"}, "TokenEndpoint": "XIbzWPKOkzftOgDQ", "UserInfoEndpoint": "AWhulbrDf7q4cAnp", "UserInfoHTTPMethod": "mLiEu4CNtX2lnqi7", "scopes": ["cHTSdGoLZbC3UJru", "U4uIXBZsEYogFWiH", "9z4E8zmaZ5cg0REt"]}' \
    'UWY4fVIdqwCWF5wm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["bOubTxAAeDCowR3M", "eCNL1oNrF3SmgudQ", "usJLsPlW7ZyORFkN"], "assignedNamespaces": ["9EbKbTbrDzNgVEcw", "0lxRam16O6v4VjJf", "40LjUdORELVXUFQy"], "domain": "Vlt9jmxmxpfp41k1", "roleId": "uDg59PhdUXShabwy"}' \
    'YCxTHrDel8oThvr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "CUEzw4zL1QeR3EYX"}' \
    'BFpUX9y4tY7o5FFi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '1n10vDgyoHXIlrMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "2RAukCL26ihdMy9Y", "apiKey": "CLNJEkvq6SUSt8xd", "appId": "8EgE15XNuw6Y7sTo", "federationMetadataUrl": "QNkuZzJ1XBxw01iB", "isActive": true, "redirectUri": "MK9oA4vK56dsYI5S", "secret": "KV5pDANyJ184miBh", "ssoUrl": "dVJt81fmLSyGuu5r"}' \
    'bJVIwRMtwApGbXnR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    '3yC6f2MHGGedk0Kz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "XRclOXdPYZQxBntt", "apiKey": "u4yW5etl4Xk8Hd1l", "appId": "RtoPMvsu9oswEPTv", "federationMetadataUrl": "zwwGnpbx8MCIjKzy", "isActive": false, "redirectUri": "TUe3jbuQ7HMPO4oz", "secret": "K705ykRqSPYZgPm4", "ssoUrl": "JLsXVtBOEetHsxAJ"}' \
    '8Ny1LRkPU9hrl5nk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["pEdBe8bYWdok4UnU", "EOyP0cPZf5OvolfI", "0mqZctohLheRaQkf"]}' \
    'MLFW9B7jHZro4hhw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'nANAGp8zGqNGrcQy' \
    'oA1TWPcy83iXfYXN' \
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
    '{"config": {"minimumAllowedInterval": 6}, "type": "OuV5z0p8jaJs2duQ"}' \
    'dob' \
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
    '{"additions": [{"actions": [0, 46, 11], "resource": "Prxi6F4elhy9CZ94"}, {"actions": [58, 48, 53], "resource": "FLvcYexMMMiDFh5R"}, {"actions": [4, 100, 34], "resource": "021cHN3QbzVuJZH3"}], "exclusions": [{"actions": [21, 26, 55], "resource": "4cExxWKtdGTW4FIL"}, {"actions": [29, 46, 40], "resource": "VyE42ApAb7CKt79w"}, {"actions": [53, 13, 29], "resource": "jsy3VRjX4qA4g9OG"}], "overrides": [{"actions": [29, 16, 99], "resource": "dBOgumV4wAsd4ifG"}, {"actions": [7, 52, 33], "resource": "bkWrlhtfTywRW4fm"}, {"actions": [12, 0, 31], "resource": "btk3mAO4EtB0hn2x"}], "replacements": [{"replacement": {"actions": [80, 30, 43], "resource": "TOX5gBQlVDx9neFH"}, "target": "WhDRJtyYEt7ygZle"}, {"replacement": {"actions": [55, 29, 95], "resource": "51nQBNKcqCkUXRj8"}, "target": "gQHEe4CO370OsbzR"}, {"replacement": {"actions": [75, 76, 49], "resource": "Pd6mjzLxllUrFYn7"}, "target": "cSuO7NxKHUHg0c4X"}]}' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
$PYTHON -m $MODULE 'iam-admin-get-role-source-v3' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
$PYTHON -m $MODULE 'iam-admin-change-role-override-config-status-v3' \
    '{"active": false}' \
    'GAME_ADMIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    '7eXCo9gZWdxfIdW8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'fNAM5YdHivK2Q0Ww' \
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
    '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["6a71zAJpaPeudUtK", "PJUmAvxBxJNPlvvY", "Zw4MWzWFTuNPf5JC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["SDyYy4e5qoTZxSoZ", "bQUnUxS6m68WL3HD", "L4yx5I0euBsccHPA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"userIds": ["2v9XP9enfEX7lloL", "gIYqxFfSNJlHCjxL", "NnYUlGQsFpy9ZVlL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["IFwLgT78nootfUs9", "559ilm3cauhrw9Yn", "2z5cnbm7z2Aa24yB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["Tw3wfNGyWf3VujS7", "Bq5bcfPW4pPZB9YX", "ltCxyztUnj17t3gH"], "isAdmin": true, "languageTag": "5mOwPCPKVPlOGfFB", "namespace": "lu2ZP0IkiYXGk6Bo", "roles": ["BmSLi0R7zDFMoNTQ", "mlS8lMlY8UjprhCx", "hzW6ZM7LkTVrtVJZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'VhxCVdjPutJ8dkAV' \
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
    '{"listEmailAddressRequest": ["OJ5imghdfVhjnjd6", "6A1SQmWGSQLAVPAJ", "7zX5lB80k2smdkBS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    '2MaIP7PjngEFggq9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "1cpgvoDBgYfLBdGN", "country": "AZEvbvxqa0K7VUbj", "dateOfBirth": "UnzirnEsxSE4vBzG", "displayName": "7VK8sWEshmZf5fEd", "languageTag": "vjbyJPQ1qdRcJjsm", "skipLoginQueue": false, "uniqueDisplayName": "wlRBQJH6fNekhk07", "userName": "7gxaj55huTA6AvmW"}' \
    '0567BFqbrPIuxKmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'XLi6GpnqAeMvg3w0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "FQ1520WM3TxWXSdT", "comment": "iKdva2UREoBSFtCL", "endDate": "y2CqgCG7JwJCDqkz", "reason": "OdFwLJpIPxzLE1V9", "skipNotif": true}' \
    '1NgpH7Oc44yjRdfq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'Zgv34GqqjelcN0GJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'wUTWMx0MiPAjnWIh' \
    'FrqSn4erXEtU1CaD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "8AqsMCGBNhmUt6fz", "emailAddress": "YRn85brTu8F7cuCP", "languageTag": "h1TGZJmgWNHWnvOB"}' \
    'RCt4onqRo2PnMSRa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "rKg4coy3AFpULIn2", "ContactType": "1Nf2FNgDWNC6yh7k", "LanguageTag": "gTHlrxKbsV4XtrI7", "validateOnly": false}' \
    'FBEgkwHifMHYI581' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'HbF7fMX9lDXYxGRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'M92eX42WW2WKf5ur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 62, "enabled": false}' \
    'ZZnV3zR7YxSu6add' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'ocg10Hy9jx7gBHTO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "HHArjld0LnREsrrB", "country": "2pJ7V8BSrucjO3zv", "dateOfBirth": "SM5KeVNHU9GcOivI", "displayName": "fcCJt4U8VSgXoi9F", "emailAddress": "w25b9qXzlIK2G6AU", "password": "jBCdf0Rp5e5IvFuN", "uniqueDisplayName": "1oUsCnBmGMx5F6Eh", "validateOnly": false}' \
    '3dKvIG9MR0hTINvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    '1VR9SJUfQEX996Mh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '1sQ3Dw3uyjgQNAs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "188Qm3W1De2McGd1", "mfaToken": "0wefF0CJlH55RLEg", "newPassword": "eAsSpQdcmGHZuRVQ", "oldPassword": "8tzwqMayP8A3HGNI"}' \
    '3BfjkFd6MHo6gGQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 25, "Resource": "61akRFizqxCmudSX", "SchedAction": 17, "SchedCron": "QZhwfjkq9iyTbyD3", "SchedRange": ["D01tRpuuyIagSSzE", "L8H4euLufhQj2KP3", "LLxl9Hs2L2wlpKBV"]}, {"Action": 96, "Resource": "fqaoMsGyv1RuSNdy", "SchedAction": 4, "SchedCron": "HBRUNCPSre5GmZzC", "SchedRange": ["QwilS3IxSjlyvR9P", "xG9Lji2Vc88W8aLj", "IxVGpdOqguxvRwI9"]}, {"Action": 96, "Resource": "BTipMRlhK9DMMaI4", "SchedAction": 36, "SchedCron": "V94BrMSP31wAkVH7", "SchedRange": ["5UcmNXK5RqcIo9lp", "z9oM52vHPlwVV3jl", "PKDEYahnlLJaLCvj"]}]}' \
    'RKKX1brmkJDfdngb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 87, "Resource": "ufUorJouduhCEJ5X", "SchedAction": 17, "SchedCron": "AL9gYHEV3wnTZTvY", "SchedRange": ["Yf4ZFuV6L2AldoWW", "RN5wNYlFiliYmBrq", "rOc0NIligBrOkBlj"]}, {"Action": 45, "Resource": "6XFfRcWDXhq1YmGe", "SchedAction": 50, "SchedCron": "xLdySvyVqY8nxBZb", "SchedRange": ["HcPHEFuEVP9bF07g", "nWDULkJPQR0UJMr8", "ouccGH0B4LCe2h0i"]}, {"Action": 65, "Resource": "Vfqz6gQJh8sn0bVW", "SchedAction": 89, "SchedCron": "8GDOUClGyzYgnYTd", "SchedRange": ["im6PkRoq5TO65KWh", "8ztRJkXxUAj3jzZv", "EaY103YUIMuSjDHz"]}]}' \
    '0zPWMZQNNP2JqQqh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 71, "Resource": "gmKwwMDQPjUIosq1"}, {"Action": 22, "Resource": "CB9TVZnuzgvAZJRm"}, {"Action": 86, "Resource": "EC3ENuvD8OPsp5Z3"}]' \
    'ez84KVB7HeWPnVeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '7' \
    '8c7Zd7EUoezOLw8C' \
    '1c5bBB3XZ7ColKwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'sNvtFuunQsvdXGlD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    '40xxIyVwYjn6dlC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'Kfh9gHuloyce0cLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'u4ljPWlCWTuGO8Mn' \
    'fOQu3wdT4Aodp95o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    '1RkX7iW7VpCngWAv' \
    '5DAG8dPdkKgQqjyz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "UZR2rFIAuALNhNCy", "platformUserId": "scsMBRLsWadk2OQ4"}' \
    '21q7Nb1vrKthVvU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'on065ApCkVN3Qchu' \
    'Q6pntxB648ss7rBn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'vQHAM8gSdIybKUBy' \
    'HBzfvgtRTPPzwJmK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'aLCx3gcidEALWe6R' \
    'G5wWznu5AjwR1Z4f' \
    'U7ICcaQtuuKUw3dU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'wWHhQW3I1y9tjRLV' \
    'OXBMa0JiIe1AY0tU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'A7EKASk3USNLhOBl' \
    'xRBLgohp8ByTi2F6' \
    'AyUX8w77riPlPgJc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'LbeQf9MICxX7xKyC' \
    'fgwSPz14asyOdgn7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
$PYTHON -m $MODULE 'iam-admin-delete-user-roles-v3' \
    '["7gN8K1FlNkgbFE8U", "4meK5grmPBsFH71V", "rhsISYtegQbNA2WQ"]' \
    'rHTkJT1VkChD3n0c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "1ryAkRvdPR8gx2rX", "roleId": "5dck8NFKPgT6LMeh"}, {"namespace": "g047axU5ktNywRIv", "roleId": "O2Sgz30hejqdktHI"}, {"namespace": "O1VdtMSews1TrU4F", "roleId": "hAfKDcDG5bMTba1t"}]' \
    'UlFGcP6eL7EpWtPi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
$PYTHON -m $MODULE 'iam-admin-add-user-role-v3' \
    'fmO0JK4dP1aZFiSk' \
    'mhwVVMGkXNwMYwFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-user-role-v3' \
    'ljy5bYQdQ87hUHA0' \
    'FJZwP8GslMpx3m7l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "xkQdezbmf392erso"}' \
    'Z2KbMb5jal0ruZmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "XlGSp85q6fuGfo5w", "password": "SDHnyabk493I3pvH"}' \
    'KDaWhTN1qyxpUzWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'ZWJTDzWguhujw1Eo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "R58uCVldefonHJZA"}' \
    'iX4abmqqi90KTWwZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'k0HGeJNaBjVdMB5k' \
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
    '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "ycYrhr4FnNzdT4pW", "namespace": "wIVXp9avUr6IydpX", "userId": "W0MO0eT9okl6MlWO"}, {"displayName": "l9feWO2bmOikTBJH", "namespace": "TEm5PSeyod5L6Ooo", "userId": "YoQn9iHEqWO1cVCU"}, {"displayName": "IOx90FQdwLi3GOQk", "namespace": "LtpuRNeT1CULEMPa", "userId": "OU5nukycAUlkUSZK"}], "members": [{"displayName": "UrsxNRzF3NaUuCyQ", "namespace": "yze6zPKu5sE89JW8", "userId": "UU0RsB6dvrpmInhH"}, {"displayName": "YzVVlHGFSwjby6rM", "namespace": "YkVQnZDUAbINRKQs", "userId": "xUO1YMxAndOj5O6I"}, {"displayName": "BwXJjgQjgLoJyqwF", "namespace": "VBd1ZjaRXEdWgS12", "userId": "bSbPgOCWUogizeWO"}], "permissions": [{"action": 86, "resource": "VGxbOeJe4n9eUlBQ", "schedAction": 76, "schedCron": "2UGePWXbAyGiXa9n", "schedRange": ["UsHCVicuJ7onrUXV", "lB6xNel4Bxb9KwFY", "qdhEVq3hbsApeASf"]}, {"action": 90, "resource": "ROZuqdJBi8pkn98V", "schedAction": 40, "schedCron": "alv3bkoMXNzl1ywE", "schedRange": ["PiunixlEAHZzHs8x", "5oPSkZFIV2feXnTR", "lzAJy9oFOHB2KEsI"]}, {"action": 6, "resource": "bzY1yxl7zeEpmSPO", "schedAction": 94, "schedCron": "KwlJQlj9Ii2jARwz", "schedRange": ["owk9OoiPdnq9KBqB", "wiNCsnK8CcO1OHbp", "QZtwW3EwLre1bL4d"]}], "roleName": "JnkRLJbMvOGSd7uM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'rmQ2SaLd6M7TM3wn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'JyExuo5z9RAcYgYZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "cAakJpqN6eubdp49"}' \
    'JFwXG0EvoSHNC97e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'EyhnL1QH5AlYRAqC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'AC2gy1WF9QLNgDxA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'kwgfB8jIecOx5ugN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'CDd6jW6fjtBcO3fW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "q9qfmBv0XgJB6a7u", "namespace": "ykADFpinFcH2ZMSY", "userId": "ijqEuMfuYFUS079t"}, {"displayName": "OpZYM1XV0Op0damy", "namespace": "cnTUOoMkOppZNOkq", "userId": "xc42HKv5wvtPJVsu"}, {"displayName": "zaBciSxwzuIpGBYH", "namespace": "THoSVxgQCbpZx5yM", "userId": "GIQ1ZxVIefYlKBJy"}]}' \
    'QMqUEfDikX6yOlgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "rn0I6T0hvcAFTaSW", "namespace": "R4VOGIY7hM6uhonk", "userId": "Ae0FdTSSEluBxM47"}, {"displayName": "BTww3nBTVmBFZ6TI", "namespace": "s9bTi2m7eNsYEqKk", "userId": "euLWDfeFeExlOFjR"}, {"displayName": "h8mLFTJLveQSDWnM", "namespace": "QGaYRxFWia7yJ2d8", "userId": "7XjA0ajvb7JcGUFg"}]}' \
    'p6LkyXpxJeFxhgTw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'yO51CUpcdxL0a9VD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "hrqWCTXOxQUpyFgZ", "namespace": "hNpOTE4toH57yr01", "userId": "N33p1Gha8HwpagvE"}, {"displayName": "RZI6CqhcknhecNv2", "namespace": "Tw6YKhVrYkMqXkQ7", "userId": "qlaJjSYEseBYCFGo"}, {"displayName": "KpXx60GmEX9x2BYp", "namespace": "yKEBQ7TW7lZvDbwF", "userId": "JJhBRdq8BgAI81k4"}]}' \
    'Gr7jVVx5l3yrH9HR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 35, "resource": "reG0HwUXxQTf5YpD", "schedAction": 96, "schedCron": "XETZwqdzAX28DikG", "schedRange": ["k8cWiX44azSHcwic", "UVq2XPljTZj5R0yZ", "SVQ8SSeJ4qy4PIKl"]}, {"action": 9, "resource": "Jh10XMUGeDavCKra", "schedAction": 6, "schedCron": "v0C00dtNGGzbGYSY", "schedRange": ["o9fY2EBZAHQXc4Xc", "ae7VKl0ARzGEArlf", "E1NSmtcADoZvd0La"]}, {"action": 86, "resource": "C9Bx1LQOTCbAPLC3", "schedAction": 16, "schedCron": "tdrRcs3GeOsKPNlG", "schedRange": ["7rEXi6LEqJERpbxE", "q07txnvZZeAf7QBu", "ZK5GJlBncg8tQnJO"]}]}' \
    'KHC16xjJZ4kiU3N8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 40, "resource": "56ll2LQWpdESOBV7", "schedAction": 45, "schedCron": "fVopbpPhsana0uXG", "schedRange": ["7GUTV1BwgkLDj4pj", "VktyoNSsEHlzyd0S", "arkhltUxgbN5eElQ"]}, {"action": 81, "resource": "JXxVEfnaqX8NuZtR", "schedAction": 96, "schedCron": "QEqFGwnDG8kz4kvE", "schedRange": ["v6tNjGRhrmRAxRGe", "IKGlCJmDXpjyvLSH", "B1y3klHuAGnidOyG"]}, {"action": 41, "resource": "DXF5055tUlenimjI", "schedAction": 3, "schedCron": "NhEdxd24ZKfvMf1T", "schedRange": ["5FzYMf1jaCgZosnt", "PzP1vXXB92q150WE", "IetOXMt37MXy7Fp7"]}]}' \
    'lUfQqXrqGadwvKlJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["FX1ZHV9yo9Ur1hfh", "mGEKuVUZdCacRGat", "aPrcgTcA71dtqtSU"]' \
    'N4zvBzGh3mhIDNuM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '56' \
    'GNll4O8ELahcNJqR' \
    'jepck1l0qxRyQ2pi' \
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
    '7xuAufJakIPXOQzn' \
    'HZTj8oYfWObyNJKV' \
    'SQsaCokoGynp6xcq' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'NKJnAhrSt96OaARA' \
    'jHLGV3sNxS8uLBZi' \
    'VRYIyQLcslTEqgVN' \
    'G8AqktgvjwNJAwIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'Ey2ZNpojZ24I2n25' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 236 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 237 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'smsrmJFHGiYnyhbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'RequestOneTimeLinkingCodeV3' test.out

#- 238 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'xLuTZIxgiUaiyy0a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'ValidateOneTimeLinkingCodeV3' test.out

#- 239 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'Wrshpmb1C9Al7eWr' \
    'bNRE0xyYPUZHyLGQ' \
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
    '52IjGpRJCUJpscOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenExchangeCodeV3' test.out

#- 243 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'kWETSJ04c5MGInO4' \
    'yznh2YpZvvmziSSi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 244 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'SpXeWOGayfRkQvoN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserV3' test.out

#- 245 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    '06SpNOnuSksfm7hc' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 245 'AuthorizeV3' test.out

#- 246 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'dkdrwAcK2lUda9h9' \
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
    'FgvfhiLEAkA7n651' \
    '6ydoRT1qZBrdTnGr' \
    'wHeWoQXPFWFaKbDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'SendMFAAuthenticationCode' test.out

#- 249 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'rGkv8SVwLyS4VbHJ' \
    'vD0lL7aZUY9d1Idu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'Change2faMethod' test.out

#- 250 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'd8bjYeBVMr7zHYmR' \
    'E4X36KUOdfEmoIYw' \
    'SxxAsfwDMivWqHHG' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'Verify2faCode' test.out

#- 251 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    '8t0zPkQWRUlgE0kx' \
    'zFMq9ttbEHAEV7C6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 251 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 252 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    '5Ans9SquNSJIay5V' \
    'dUdYy9Y9OCSmmT3W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'AuthCodeRequestV3' test.out

#- 253 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'KijbqhT3uyQRXvvc' \
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
    'UYDeWPZ8yhwQ0gId' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 255 'TokenRevocationV3' test.out

#- 256 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'epicgames' \
    'Wi8HZ6C0VJ0fK2m6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'SimultaneousLoginV3' test.out

#- 257 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 257 'TokenGrantV3' test.out

#- 258 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'U3rbkv8V98cupW0L' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 258 'VerifyTokenV3' test.out

#- 259 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    '5WsiuITRMSPOUfWQ' \
    'wr4PYf48r66MaTox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'PlatformAuthenticationV3' test.out

#- 260 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'Biliy2vtRkpqL6Kr' \
    'VcNz83J57t6OcYPQ' \
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
    '5bk5IeuAi3zWFGor' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'PublicGetInputValidationByField' test.out

#- 263 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'Cbncoj5RvEtXiKyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'PublicGetCountryAgeRestrictionV3' test.out

#- 264 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'GdNfMiwgSvsTRmJs' \
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
    'Om0wVFyHvFhRMCFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 268 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 268 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 269 PublicGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv3' \
    'uA0DEMgykqqjoHTp' \
    'IPMSRAuPI7mSZQ5U' \
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
    'Dm1q51PlW2HG8LAi' \
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
    '{"PasswordMD5Sum": "Izuo321Ll90IBFsS", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GI5EssYllIqjJzuQ", "policyId": "8GglVgxjOGQGlHm8", "policyVersionId": "VTN56tJKwD8O07L9"}, {"isAccepted": false, "localizedPolicyVersionId": "G1uenDihceaLdgPZ", "policyId": "I0fKW8LeQxItaK6s", "policyVersionId": "3Hha69MgxjGJx62m"}, {"isAccepted": false, "localizedPolicyVersionId": "mKGNEmFPcUALNziO", "policyId": "9Bz2wx4kDAm8XIle", "policyVersionId": "iujtv2NdQTYoHZog"}], "authType": "W8lBvniHdARadfSo", "code": "ctA3GYO94ZOo94gS", "country": "5DHLB65fxQ06GwTm", "dateOfBirth": "obiBnfrnq9kOFBWh", "displayName": "UTPiKR3qcbHLGplY", "emailAddress": "sS3jsRZffCd00Vrg", "password": "PuNtOv3jbhGBuW8K", "reachMinimumAge": false, "uniqueDisplayName": "G9MJ6F7Rr7O15jqe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'PublicCreateUserV3' test.out

#- 274 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'KssQpme6eyM48tE7' \
    'eJRsXNeveQXqnFRY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 274 'CheckUserAvailability' test.out

#- 275 PublicBulkGetUsers
$PYTHON -m $MODULE 'iam-public-bulk-get-users' \
    '{"userIds": ["mEIX40XOUoLOa7oD", "z00gxcoaH6u9TVf4", "DvEzpoPRiClZ6rlw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetUsers' test.out

#- 276 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "X99AHMLHqguYykVW", "languageTag": "zNwPcvGyieBsRUdu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PublicSendRegistrationCode' test.out

#- 277 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "W5lxSlorWEGN5bPG", "emailAddress": "SOSiiItrSrEJMBAI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyRegistrationCode' test.out

#- 278 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "wTLkrMDFQfpQ9o0G", "languageTag": "JMTfqRRaZozM8xCB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 278 'PublicForgotPasswordV3' test.out

#- 279 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "oaS2FMwfWNCbN5Ge", "password": "lVOU0hHnsCl5k6Jx", "uniqueDisplayName": "h5mkmQzKg0jWCjpG", "username": "wh7pLAi5JmzvM6JF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 279 'PublicValidateUserInput' test.out

#- 280 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'KB8ikHpl3sNRaDEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'GetAdminInvitationV3' test.out

#- 281 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "2OkXA3WqypoOw0H2", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "WckjNpHhM2ZXp4N0", "policyId": "ROmUCTrS7Gi9Iigk", "policyVersionId": "9vamO7Q2WQwSWqSs"}, {"isAccepted": false, "localizedPolicyVersionId": "rjISy4B0X9AJdkT7", "policyId": "UYCV8agvwOI2LlOQ", "policyVersionId": "NRN132RdgwMXv9ol"}, {"isAccepted": false, "localizedPolicyVersionId": "idRmR5BGRJhFwxmk", "policyId": "GfPI3j4luXQuuLtY", "policyVersionId": "a86kvL6cBZQssUUX"}], "authType": "OsXMNdvW1hbvGenR", "code": "bm3QtsY5WaKM5YY6", "country": "pYrmeMIHLS8egV8X", "dateOfBirth": "hgDjbrum8UxcutmV", "displayName": "g8APWKxoj6MF68Vu", "emailAddress": "KDoklYmkytCAH8Ji", "password": "qe7gfV1G6bYgIbVK", "reachMinimumAge": true, "uniqueDisplayName": "GiXx47etMikLFggY"}' \
    'Dc2FMbzZoeKagnKf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'CreateUserFromInvitationV3' test.out

#- 282 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "2Yifzvr9OqTsInGz", "country": "HFpFXYJtHtqwoIwQ", "dateOfBirth": "BeIALI8JNIII4jrz", "displayName": "rPsuMziNM8AB7RRx", "languageTag": "iZH3ngnitURdMjZL", "uniqueDisplayName": "YCaeklQcFY1QIk1h", "userName": "5EKvMGd6hQ2mHjmL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'UpdateUserV3' test.out

#- 283 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "u4oFlReHy0JyZv7h", "country": "onqeiGTTqpgVsY1k", "dateOfBirth": "PNdJiJXB3yjNUPIf", "displayName": "voXRO0CkW1ZcgUSb", "languageTag": "bnffBWRaJN1SjCFL", "uniqueDisplayName": "DNJfAhJGwSYEZjEb", "userName": "0Pv35fEk9s11bFXk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicPartialUpdateUserV3' test.out

#- 284 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "f7rQJ4Kj7Qyo9tUp", "emailAddress": "tiyZzRX8Y4rxRWZP", "languageTag": "e4ZLAQWuBJwxObZq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicSendVerificationCodeV3' test.out

#- 285 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "MGxhffy9cHrLYfft", "contactType": "ad99JDcnn7f2d8SO", "languageTag": "WP2dw6Uy88WpQalG", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'PublicUserVerificationV3' test.out

#- 286 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "o82aLD9jUjuDITji", "country": "fWRbmtK7MTxcCWnM", "dateOfBirth": "iCLsjroKHPApA8Gs", "displayName": "GwyocvY9NePjLJQJ", "emailAddress": "XwUApJWohXn01RB7", "password": "pu7BaONXyE5fIDbs", "uniqueDisplayName": "Mi48xOYVvEcEm53B", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'PublicUpgradeHeadlessAccountV3' test.out

#- 287 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "BacQBIuDVs7U0AJt", "password": "WPRteszMTd0R5Fsr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyHeadlessAccountV3' test.out

#- 288 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "f9xbVfgvG617Gmxz", "mfaToken": "ClkR3M6Twpwq3nLw", "newPassword": "xnJKjOo9fvfXF1Vs", "oldPassword": "ikD3IphQQiRcOtst"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 288 'PublicUpdatePasswordV3' test.out

#- 289 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'hUwgQzNHUZ0l1FRf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateJusticeUser' test.out

#- 290 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'OjJUmCbi2llksf6G' \
    'A8vTt92kldCoyRdi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicPlatformLinkV3' test.out

#- 291 PublicPlatformUnlinkV3
eval_tap 0 291 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 292 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'OikUdqGocLYBaRC7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformUnlinkAllV3' test.out

#- 293 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'T5qSl7WN3ncPkqiT' \
    'Kzz72PKXjShM2Dve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'PublicForcePlatformLinkV3' test.out

#- 294 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'smMIbiQfaHxl2YUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 294 'PublicWebLinkPlatform' test.out

#- 295 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'RLRjgKqSSYgZnVfa' \
    '8govttlpFAq8oebn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicWebLinkPlatformEstablish' test.out

#- 296 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'S4Y2zkGYTr9yJIve' \
    'X52r6Inl9VTJB9Al' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicProcessWebLinkPlatformV3' test.out

#- 297 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "3mn2DsHDHzSVJzhU", "userIds": ["5Z44zgZ1fieLdl3Y", "82DOj5kPuNRZZaUc", "cuBYep9n7b17fsbl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUsersPlatformInfosV3' test.out

#- 298 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "alJrwQiU3DD0xZFH", "code": "1fHFLSr0O4rEZTbF", "emailAddress": "Dj2L2McvCrrR7h9u", "languageTag": "KLXDaRf3pxKtJbRY", "newPassword": "5luCwKrt6wn3yVrR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'ResetPasswordV3' test.out

#- 299 PublicGetUserByUserIdV3
eval_tap 0 299 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 300 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'Ch6j7rpv8K8fBAeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserBanHistoryV3' test.out

#- 301 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'a1R6ksxLYGkOLgRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 302 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'ff5IHxLJIemNHbzg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserInformationV3' test.out

#- 303 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'AFjtjC7suvgIUkB2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserLoginHistoriesV3' test.out

#- 304 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'PAGJqOrkdlZB246O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserPlatformAccountsV3' test.out

#- 305 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'Y0dPVMd2WDUVEQTp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicListJusticePlatformAccountsV3' test.out

#- 306 PublicLinkPlatformAccount
$PYTHON -m $MODULE 'iam-public-link-platform-account' \
    '{"platformId": "fyAIoF7qsANBbEKQ", "platformUserId": "rgocpjGNenRlDORL"}' \
    'vP7ynTuXzafCqlMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicLinkPlatformAccount' test.out

#- 307 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["rVIehVCf3AwIzUdQ", "6sTrUg7Z0SLrZraV", "3NLBUSrFnzE6yR1w"], "requestId": "LTgjsnB2LFVrZRrO"}' \
    'ntm2KjbfCOuW3dBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicForceLinkPlatformWithProgression' test.out

#- 308 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'FwUO7Y0xhMLwxgRp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicGetPublisherUserV3' test.out

#- 309 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'TSUppvO3QG68KeD7' \
    'QJQEEVDAg045BvtP' \
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
    'd7ibBA3sd51mDooH' \
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
    '53vibq3Qcrtt8L5d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 314 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["Iebsw7EjkMnJSziE", "A43WqIMJdrqHIsJ9", "8WRjqYieXRthQZvz"], "oneTimeLinkCode": "Ri7pqpajYEHs9TIk"}' \
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
    '{"languageTag": "cnrJ64BOKqywS6DK"}' \
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
    'NSeb2UMWOgVeYkCv' \
    'qq0tO15pEVG7sNih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PlatformAuthenticateSAMLV3Handler' test.out

#- 319 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'xpuuL7DJCxvzZnh8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'LoginSSOClient' test.out

#- 320 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'oBAk1MNCAUmdnLaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'LogoutSSOClient' test.out

#- 321 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'RUu5VbjwPa9rYgHa' \
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
    'xeTT3ebuaYPNBp9w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'AdminGetUserDeviceBansV4' test.out

#- 326 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "A4LxO2n7WJQFzBCD", "deviceId": "9S03D7JLsIM3VOMR", "deviceType": "vvqkXDMPzOB08tpk", "enabled": true, "endDate": "qhZath4b4HtwEYX5", "ext": {"5pJNTX1sDjSWiSXs": {}, "V5rJ8eZXZ1TLMZnN": {}, "L3DQK45IAtbyUDDS": {}}, "reason": "JSV8pzl1lfIR7jne"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'AdminBanDeviceV4' test.out

#- 327 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'tIJPGObyWCLyFPHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'AdminGetDeviceBanV4' test.out

#- 328 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": true}' \
    'XUT4fRbawD5yOvjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateDeviceBanV4' test.out

#- 329 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'OopQfbXmtF0WFH7F' \
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
    '2InhxtynUjuBCxkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDeviceBansV4' test.out

#- 332 AdminDecryptDeviceV4
eval_tap 0 332 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 333 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '2oF99xI1VVtVrVT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'AdminUnbanDeviceV4' test.out

#- 334 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'Hn8B2d1hZUnoQwg5' \
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
    '{"count": 42, "userInfo": {"country": "5DEjxqhgYqmMqIdl"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'AdminCreateTestUsersV4' test.out

#- 338 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "rQmuILkeRUafUDP5", "policyId": "b6BWfm7cYCpDIJG4", "policyVersionId": "2ILhUoCh8lmKKocC"}, {"isAccepted": false, "localizedPolicyVersionId": "Ea29JhfFGN964J8W", "policyId": "OgsAj2Rmf1DXvAIk", "policyVersionId": "zTRNRVyeEGu1ICOC"}, {"isAccepted": false, "localizedPolicyVersionId": "LxKtkBpaCG8Nu5m4", "policyId": "ctwUNV8ncebaJ0DC", "policyVersionId": "uIeEStt3PbyctX7H"}], "authType": "EMAILPASSWD", "code": "ALA8LlV2sccbVr6H", "country": "SiXVzrG4EdKn8eyp", "dateOfBirth": "TzI497DG0ZNoJvvi", "displayName": "4Ys50iE7IjZoDzMm", "emailAddress": "MgoMxZZ9AutWDfVO", "password": "INhql9CdDX4xiHpd", "passwordMD5Sum": "fKH35RWUUVEHCB5w", "reachMinimumAge": true, "uniqueDisplayName": "0KStITvGQtzwjGtG", "username": "Tr238G8Aevk3k147"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateUserV4' test.out

#- 339 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": true, "userIds": ["2W2oNo3X4m6wms9S", "PaHlqtDPry2vMON7", "sdhlilfpDT8o2iFr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 340 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["YtGfCZCcrvsV2I4X", "26p21iDBZGJ8ZMLw", "PJ871nV5ALS7cneN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'AdminBulkCheckValidUserIDV4' test.out

#- 341 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "LItUJgh74tyxkTR8", "country": "ZCVJtkxjBJrNeQRs", "dateOfBirth": "qkkKK2qxqzy4KSA5", "displayName": "UtSXWjANSWIT9TLn", "languageTag": "uMLNJAEk3A6A6rYi", "skipLoginQueue": true, "uniqueDisplayName": "7ME2QmYiYqap7mas", "userName": "Ucayqmp7vhz1T6cS"}' \
    'rZL2CgHxdmYDj9vZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateUserV4' test.out

#- 342 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "NgfI1AeYHe8WPQGP", "emailAddress": "clChxLfbXrH6f2GD"}' \
    'rNbLOjGz34ct0ctE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateUserEmailAddressV4' test.out

#- 343 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "eH43wYuLnI7cTzIU", "mfaToken": "ERPlQI99hMc4NbiJ"}' \
    'WP5r9EwbIGMGJ70P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'AdminDisableUserMFAV4' test.out

#- 344 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    '9IqAyNlZ2OwFSebB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'AdminGetUserMFAStatusV4' test.out

#- 345 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'kXkaxtY97TMJH8bO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'AdminListUserRolesV4' test.out

#- 346 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["4GDHT6ZaUUkvlTKA", "hrxqHw7f813qNjzl", "cxXsmGGcJhauxfhV"], "roleId": "KIbRvUnyElHPuQE3"}' \
    'Gc8bY4IH0OXHZP6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateUserRoleV4' test.out

#- 347 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["VB7qjDHMS49dkv8v", "xyg6giNKzeFnlgGR", "gYK3SeYvULYNIhs5"], "roleId": "PZGTJmgofq7nlF5C"}' \
    'h8J2Qs990APOU4hc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminAddUserRoleV4' test.out

#- 348 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["dwlnsTap2RJpHtnc", "LywP3WlLmNdQGk6v", "neHoB1PXO1vT1Aon"], "roleId": "FO3syvkYd78GsJGL"}' \
    'bnb4Nvw7fnm4MnOq' \
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
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "jSJi0seeGJIqnatM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateRoleV4' test.out

#- 351 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'E8GnNWfAY1yY6D1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminGetRoleV4' test.out

#- 352 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'uusf0eOzoSyKttYw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminDeleteRoleV4' test.out

#- 353 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "DTR3aL9sunWp7V1s"}' \
    '8LmXm0FaJMIjgzU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateRoleV4' test.out

#- 354 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 99, "resource": "nZWwBdEFpfccauYD", "schedAction": 4, "schedCron": "YKMrUBL6dDTVwPIt", "schedRange": ["1hrg2mhbI0NDshb7", "ZzQuBPyNi1GhZHEj", "6p5grjk5wzdksOUk"]}, {"action": 43, "resource": "kL8cmpA0sZ0tgeR4", "schedAction": 95, "schedCron": "FOvdRTpGmBUjfEU9", "schedRange": ["vL8H96tuVfQwYIqD", "WqbPmwQw8J7na1PO", "TXhXLRU5prAdqnnP"]}, {"action": 84, "resource": "ezedcppbujZh1fYX", "schedAction": 65, "schedCron": "Yoe2uHaWnO98YwqH", "schedRange": ["ZnEDkfmNbDTMGgET", "2yS6C8a8L0vQDS4E", "VpBmsUzx64Gr4XEm"]}]}' \
    '0uYYuAmqhftIfe2z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateRolePermissionsV4' test.out

#- 355 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 8, "resource": "2rkomSj52mAIMo6E", "schedAction": 31, "schedCron": "9QhzU8FwQtZpfUoy", "schedRange": ["oiUjmqOyQ7ammFgH", "prdM9viFWmezrQOW", "H03zyr7kRbC31YMJ"]}, {"action": 11, "resource": "xKeIgwq1NZmxa0gh", "schedAction": 89, "schedCron": "gvCRfoBijpbMblGW", "schedRange": ["np94a6GKY0BrHiWs", "0B0RhxQtgVgbN8kr", "872hJvrOCdAEZ2RH"]}, {"action": 40, "resource": "Lva2c4JscEQfBFZX", "schedAction": 5, "schedCron": "eDHr0hjKBpDMIvK4", "schedRange": ["qfQ0pQIcYMBktqqA", "AF6YG1dD1vECBb01", "VFFhO5FcdTvIDQI2"]}]}' \
    'uIi2SNZKqlJZsdnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminAddRolePermissionsV4' test.out

#- 356 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["04DIyosprZPBaERb", "7U9kK4VctUmDhFVN", "a0JYzTbdnOnEarWP"]' \
    '4nrJ5fNESRVGeswv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminDeleteRolePermissionsV4' test.out

#- 357 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    'kzLNIITUJGj5FYaS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminListAssignedUsersV4' test.out

#- 358 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["gewLWHcBxz5LpdkR", "CAU8HhmXC68JFPdx", "hvBKee6wG66YPD4v"], "namespace": "NdENY1r1rI0T97qA", "userId": "1OiblWlz2LXQNqcO"}' \
    'NcJIsYRQz97fRWI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminAssignUserToRoleV4' test.out

#- 359 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "7eNP3Y2nWlS9Sfjh", "userId": "0htyVaGj4y9ahS7h"}' \
    '7XVlmc5Rs5FVQSIq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminRevokeUserFromRoleV4' test.out

#- 360 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["ObR55tV0BlN1iFvw", "0GSLBmie8SJckSRb", "u7hgmUm7RVCUREDd"], "emailAddresses": ["oGatGQ1SeOXsg4jo", "fp9PvlQ1xdmr4JDp", "vZgvPGHjV7MNTpM7"], "isAdmin": false, "isNewStudio": false, "languageTag": "gfQyDVVkkqiMiRf2", "namespace": "yCyM0Tp5GJHHbsLJ", "roleId": "73mCPhhmUyIwgQS9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminInviteUserNewV4' test.out

#- 361 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "kVFUbeTeB9KgnFZQ", "country": "9lVMNyCiytnfMoO1", "dateOfBirth": "I3KISTbn4yEa2AaB", "displayName": "Ralz5HEm4Gant6aq", "languageTag": "jKzWDAauqLKarcLQ", "skipLoginQueue": false, "uniqueDisplayName": "QtC927GneBM8Lvzg", "userName": "yIVzGFBLJ5vbC9Nf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateMyUserV4' test.out

#- 362 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "LTFJGOzAIAqpmkDd", "mfaToken": "FSs4s7u1VUuLmeny"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminDisableMyAuthenticatorV4' test.out

#- 363 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'xTQVkEg5wouUKa35' \
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
    '{"factor": "m8oH9zCfw7mCMkbv", "mfaToken": "SIm7JROcwVmGyrBp"}' \
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
    '{"factor": "nTPF4VrRiFSPs2ZM", "mfaToken": "cVFcrixULzSeTnUW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyEmailV4' test.out

#- 376 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'GxxfnMIDSCPr1m1F' \
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
    'g6tc250c2okDTem6' \
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
    'o62xFY6TNqoLFFS4' \
    'wB6Um7ir0n6O3vbY' \
    'VjrcErgoApAxyDnH' \
    'jAx7rZTvew0WVDSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AuthenticationWithPlatformLinkV4' test.out

#- 383 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'Nr23LV7xZEEv7O1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 384 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'wxVTRll0GIEUJtMC' \
    '8NyV2HLHZT3oYJlC' \
    '4ie3InnSA22NHTb4' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'Verify2faCodeV4' test.out

#- 385 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'lKQNwJUGtC0tAhxn' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 385 'PlatformTokenGrantV4' test.out

#- 386 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'epicgames' \
    'ay6ruu7PYWHODRb6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'SimultaneousLoginV4' test.out

#- 387 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 387 'TokenGrantV4' test.out

#- 388 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'gDT2tq2V2lMzfIQH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'RequestTargetTokenResponseV4' test.out

#- 389 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"platformUserIds": ["CZ90DqQgP6ynrQjY", "H0N2loTnRa0KiQWP", "xd1gqlwx9CE4Wcsm"]}' \
    'YtCkIgcwiDWQFghm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 390 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "4BmtuIFllfSUnaUh", "policyId": "C4x11AS2jTKoTYeH", "policyVersionId": "aCuN7zpX9vp4QJdC"}, {"isAccepted": true, "localizedPolicyVersionId": "uXQdfW99JglScoOl", "policyId": "kkBxiXf8OBQRqXWX", "policyVersionId": "Q3JdXdFz8pc0EEzi"}, {"isAccepted": true, "localizedPolicyVersionId": "DfIAN04f5kSONmw1", "policyId": "BDqqSctLL4WfGq8J", "policyVersionId": "CDnwGWgccuzuc6QD"}], "authType": "EMAILPASSWD", "country": "MGdBPbUyHTYPS8CG", "dateOfBirth": "KXGon2ecc65YAFLw", "displayName": "eD9Z7U2lNkorrw9Q", "emailAddress": "H3rNhDepQum4Dj7p", "password": "R05RTGXGRkYXifTd", "passwordMD5Sum": "5nAOF9VV7JgCOm4w", "uniqueDisplayName": "L729Hma0nCdCEFcf", "username": "2doBrfHiHXXgvu49", "verified": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateTestUserV4' test.out

#- 391 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2yOVN1h41jIPOMXu", "policyId": "fZPWSe20JfNvtNcW", "policyVersionId": "tpUkw98x3tMM1bFF"}, {"isAccepted": true, "localizedPolicyVersionId": "ZoFncMUdmf8hD3nL", "policyId": "1saQxLYrz08jh6Ty", "policyVersionId": "q7WUilXgtf5UctyV"}, {"isAccepted": false, "localizedPolicyVersionId": "DODBmrqEhGlkEmGd", "policyId": "CbwodVRjZJWuCQpj", "policyVersionId": "uJzpPO7BPxVWlRFn"}], "authType": "EMAILPASSWD", "code": "arKxCcNv8FQCyQBq", "country": "KxayGvw7MqOsypCJ", "dateOfBirth": "mfRnW0spgvjt7eCL", "displayName": "Du6PA3PRnQtB410i", "emailAddress": "WT0SILVGXCWRucRp", "password": "P1Tq7uYXhB6FPfF5", "passwordMD5Sum": "DvveMdBsPt19V2Fk", "reachMinimumAge": true, "uniqueDisplayName": "7IIUXlBlZMQeSnOg", "username": "5gf1SwrbpmoF4DvN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'PublicCreateUserV4' test.out

#- 392 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JlT5OUDEMwAjgNZg", "policyId": "to2EhOlnsuDnkuOJ", "policyVersionId": "ekbO0sk7o1z37uuq"}, {"isAccepted": true, "localizedPolicyVersionId": "Fj9wORAVqRuNsXxR", "policyId": "u4EQqR3KbYWtFzpl", "policyVersionId": "XVk36IpbGquPnIPw"}, {"isAccepted": true, "localizedPolicyVersionId": "1BinZ4ULwAKO8n42", "policyId": "UuxEyfzZJsZd9sB6", "policyVersionId": "CV9KiWkbdpGqWQIP"}], "authType": "EMAILPASSWD", "code": "mVytM5mBRT39gKYL", "country": "k9DmjJh6PnpTXWAU", "dateOfBirth": "t8lgqNM4poGEvIKC", "displayName": "e3MrLxmnjmlAuaBC", "emailAddress": "dhzXb6cBMPNMmjMi", "password": "2uztFNfXg0UvwaZ0", "passwordMD5Sum": "py16ShGomFzUappa", "reachMinimumAge": false, "uniqueDisplayName": "jjZpFnVLb7xerpjV", "username": "PfktNnl8UYH5kesu"}' \
    'OtYHLqcdy05YrqdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 392 'CreateUserFromInvitationV4' test.out

#- 393 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "n8sQ7yc8xLKyBfGL", "country": "HEAKhp612Y2ncRf7", "dateOfBirth": "tEGzYqRoHm6EtyXq", "displayName": "QbKWMJ0aODiWn6bP", "languageTag": "mSa85Riu1alaVEhj", "uniqueDisplayName": "JZbwMHkFWLSzmAXA", "userName": "ruYrVjX4HRTvm3Qr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 393 'PublicUpdateUserV4' test.out

#- 394 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "9IkuW6jjofc6itDE", "emailAddress": "sq0dHfYG6k853GER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'PublicUpdateUserEmailAddressV4' test.out

#- 395 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "dJdphepF9dfsng9F", "country": "GGjJ0hRPUBFxM2Fr", "dateOfBirth": "3olO10RAyIZs2VfC", "displayName": "RhzfKDAGIAJuPhQc", "emailAddress": "ZwXRE9FOZUVTfDc3", "password": "w1tAXRrQtHkm0Tth", "reachMinimumAge": false, "uniqueDisplayName": "AR3NObYp43YXMHqW", "username": "eVjnOURxGvOhz9s7", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 396 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"emailAddress": "jLUZHK0OO1yQsMBQ", "password": "AdOfrtHWyGg5TU3I", "username": "NkMgjsnP8itevmjT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'PublicUpgradeHeadlessAccountV4' test.out

#- 397 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "Jjj5tfFQv384ri6A", "mfaToken": "7z0hsW0IHIYvJ7PP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'PublicDisableMyAuthenticatorV4' test.out

#- 398 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    'gVaFwGhl5zqkzEu4' \
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
    '{"factor": "1hVfVC7eLVWGk0Gj", "mfaToken": "YReIZaDC2Au2bEpy"}' \
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
    '{"factor": "mbJ4dPJmkdvyuDHF", "mfaToken": "FstLhZzletCqa3lJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyEmailV4' test.out

#- 412 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'MQ1sGlfqjDBzOjNe' \
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
    'q8JJhbi7QD0RW0qg' \
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
    'xO0Y6TFpFSCsrhSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 418 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "eeExZYnGcrZHMKoT", "emailAddress": "cIXeKZzZBo6ARaQn", "languageTag": "NZQ1R0PGBFVnc37a", "namespace": "WVjM3iVKjr5VDqak", "namespaceDisplayName": "KdW767GAH1oiS1Ju"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicInviteUserV4' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
