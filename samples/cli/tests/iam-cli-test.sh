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
iam-get-authorization-server-metadata-with-namespace --login_with_auth "Bearer foo"
iam-admin-get-bans-type-v3 --login_with_auth "Bearer foo"
iam-admin-get-list-ban-reason-v3 --login_with_auth "Bearer foo"
iam-admin-list-client-available-permissions --login_with_auth "Bearer foo"
iam-admin-update-available-permissions-by-module '{"modules": [{"docLink": "EAxcVpFrttufHIRd", "groups": [{"group": "H9UzVRiXbqlAw7r6", "groupId": "W2ktQG0h5JAav5kR", "package": "a62WopBJHPtcDs8b", "permissions": [{"allowedActions": [56, 70, 76], "resource": "6IaRDBXxyaNoMR6h"}, {"allowedActions": [21, 13, 37], "resource": "7qbPngUNB1vRodwp"}, {"allowedActions": [52, 65, 91], "resource": "HHdgs21Jub74CUkN"}]}, {"group": "mKJfh5pUkHODpoMF", "groupId": "78NY4YkHs1cnz1JS", "package": "DgY1TXp38zsCTCrb", "permissions": [{"allowedActions": [59, 18, 3], "resource": "SuL0Sly6XM4OI18m"}, {"allowedActions": [55, 54, 88], "resource": "LczNIicXm7agSrjJ"}, {"allowedActions": [99, 66, 83], "resource": "aREAu2D6QVKNCWP7"}]}, {"group": "5TB0i7pKxR8dl0zR", "groupId": "VW4EZG9m0XcgGVbM", "package": "qSszE8GHavj7AorK", "permissions": [{"allowedActions": [37, 95, 49], "resource": "DrwoZ5MecdKi5r6Q"}, {"allowedActions": [61, 46, 1], "resource": "HuKeb9l3rGN9A3sN"}, {"allowedActions": [25, 22, 65], "resource": "4hddSpHt0P7MIIR7"}]}], "module": "CkyF6C7duuyZ0GhD", "moduleId": "ogqrhBRd8lDR6qVN", "package": "PRZYdFLIAjGGJddV"}, {"docLink": "Cvu9vx5KQ7KYnIuM", "groups": [{"group": "BvaO35llzQRaT5kP", "groupId": "xUfofvnnSuB0y5WU", "package": "lrMdI4sNveabntBS", "permissions": [{"allowedActions": [47, 41, 94], "resource": "RkgghGoYupD391C2"}, {"allowedActions": [33, 59, 39], "resource": "6SCwGrncqmLtjQHA"}, {"allowedActions": [11, 39, 93], "resource": "d67FXGk2s9Q0mPVo"}]}, {"group": "3twu0MesTCf9x4rt", "groupId": "69lna7qxNeIxPz6M", "package": "bwL6IY69z1UaLqYS", "permissions": [{"allowedActions": [91, 99, 33], "resource": "ytLPziZMdjxcBZuf"}, {"allowedActions": [86, 93, 48], "resource": "AQ6iiPlSC2uE4o5V"}, {"allowedActions": [46, 6, 56], "resource": "o3fePqIJA8IHtrkm"}]}, {"group": "u0hpDDWVAla2l5BY", "groupId": "NtIuS5S5XUdjsoqw", "package": "GyzzWi9gwQYv7t1o", "permissions": [{"allowedActions": [98, 94, 22], "resource": "Tr1DmrhZv15T7quI"}, {"allowedActions": [83, 44, 5], "resource": "BMcaYmvCkGZ5dAgq"}, {"allowedActions": [48, 96, 31], "resource": "EXlAvxJMdalwSyli"}]}], "module": "WMNW5NyLu0M3VHh2", "moduleId": "EI8JlDbPWbQ6Q9lN", "package": "mqRBaAkLnvxkT1X6"}, {"docLink": "8cmDc3fxU8MyKrQp", "groups": [{"group": "M4hkkK6KKXNB3Gv0", "groupId": "IqmF51TkhjYnaq6f", "package": "oWvXa3bMrXsDr6kI", "permissions": [{"allowedActions": [78, 72, 38], "resource": "Pa8ZRrvjj7il35MX"}, {"allowedActions": [2, 80, 18], "resource": "9oCMNqq98SjTvhZN"}, {"allowedActions": [21, 20, 92], "resource": "l535X3ateEKDpADz"}]}, {"group": "1x3poD3Qgb3boLQQ", "groupId": "1MzH7Qm8bwbmXgdA", "package": "Ph1EThG96gAFKK2W", "permissions": [{"allowedActions": [60, 2, 12], "resource": "TDIHrvqAThuwjRHp"}, {"allowedActions": [74, 49, 74], "resource": "eFoF7VSZ6pf3vneS"}, {"allowedActions": [59, 98, 85], "resource": "Tb3g7mSQUhAEtrmj"}]}, {"group": "qU6YE3p4lSck0ZHn", "groupId": "5GI39YBHqaTHeKtW", "package": "18iGeUlc9d9sogWa", "permissions": [{"allowedActions": [61, 59, 76], "resource": "L7vIYhGGSyEW4ZJJ"}, {"allowedActions": [95, 81, 7], "resource": "e4mhgo5QB65lSAiY"}, {"allowedActions": [27, 31, 81], "resource": "flxqMrj3oZk03QXc"}]}], "module": "KMDYDDxHSZjtqXyJ", "moduleId": "58f7Gc26SaiGVkyd", "package": "wYWQG26yUZNmTBcv"}]}' --login_with_auth "Bearer foo"
iam-admin-delete-config-permissions-by-group '{"groupId": "rbYCwZtxFHyPLtI8", "moduleId": "ilbyDPUIj88cekdq"}' --login_with_auth "Bearer foo"
iam-admin-update-module-package '{"data": [{"moduleId": "Ct81P1ktfIovmv9g", "package": "sR5cJcHm3SZLxoRD"}, {"moduleId": "FuuuySj29a9LJE8H", "package": "oRS1X2PFAAMwzHPx"}, {"moduleId": "B1UskYs4Yw20DOqO", "package": "BSC2DKHRuPMMWH8Y"}]}' --login_with_auth "Bearer foo"
iam-admin-list-client-templates --login_with_auth "Bearer foo"
iam-list-admins-v3 --login_with_auth "Bearer foo"
iam-admin-get-age-restriction-status-v3 --login_with_auth "Bearer foo"
iam-admin-update-age-restriction-config-v3 '{"ageRestriction": 4, "enable": true}' --login_with_auth "Bearer foo"
iam-admin-get-list-country-age-restriction-v3 --login_with_auth "Bearer foo"
iam-admin-update-country-age-restriction-v3 '{"ageRestriction": 90}' '3T5UBJCjfcnLRfxe' --login_with_auth "Bearer foo"
iam-admin-get-banned-users-v3 --login_with_auth "Bearer foo"
iam-admin-ban-user-bulk-v3 '{"ban": "CSz9WEi8KlloeH0J", "comment": "T1yduat2vQR3biBf", "endDate": "su4jmsRE2w1yEkLg", "reason": "h3tIYt4SqYUTLDx9", "skipNotif": false, "userIds": ["8QOxtjzm8y2wNhmw", "oYZyI4EFZKBcYrCE", "AE7WIsfmx40NLRc6"]}' --login_with_auth "Bearer foo"
iam-admin-unban-user-bulk-v3 '{"bans": [{"banId": "m8heKnWhzfe2Nube", "userId": "oKFeIaFQCYoDPICp"}, {"banId": "nduEEQlULdJz4mnR", "userId": "BkMNxvvKgAT8mJrY"}, {"banId": "q6hRkloqxM3gpwxc", "userId": "fMy9XzjjI5YbsKoA"}]}' --login_with_auth "Bearer foo"
iam-admin-get-bans-type-with-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-get-clients-by-namespace-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-clients-v3 '{"clientIds": ["DkzJEN2VHzih3bit", "0VWn3CO39PXDNxtX", "geO3FgkXhjDzaQY3"], "clientUpdateRequest": {"audiences": ["snn2ZkP7cFdP43e5", "dC9XIBudfZgrbHDI", "Dm4hMzF4TxodenSr"], "baseUri": "UTvfqU0bfoMm5cTt", "clientName": "FWbotQyXJRcQWsmq", "clientPermissions": [{"action": 85, "resource": "mmDg7VYPXIuvUYTZ", "schedAction": 57, "schedCron": "ereSvf9699mCEHTh", "schedRange": ["UJkETAsSp7gh4TeU", "TkOkAYfJB8AT9t4T", "v207Y2QD3oD5fLCr"]}, {"action": 90, "resource": "OOlXVv8ZGF7uYnGz", "schedAction": 31, "schedCron": "zGYY7KQI1AeFgPqa", "schedRange": ["Okvo1aolB4lkKB4E", "YOkQ1jMD3cym8xIf", "kOVW2grREOLx0KOw"]}, {"action": 46, "resource": "GBCtohLtl9Zuhytm", "schedAction": 84, "schedCron": "UDrT6QXCs5SPBbRP", "schedRange": ["ZTF6oQAXVG7tnsZg", "5QgXjvyGJPN4eXbJ", "E5Vs2GcyomQoIXim"]}], "clientPlatform": "BJehyxlNsjUgxBkF", "deletable": true, "description": "nbdSJtjX7ZshZyZl", "modulePermissions": [{"moduleId": "5x4bRXBHUTrDzZSK", "selectedGroups": [{"groupId": "scfOcYu3dpCROYqU", "selectedActions": [18, 51, 67]}, {"groupId": "j4bj5Ro2ogaKt2uj", "selectedActions": [88, 91, 92]}, {"groupId": "JsEK5QpNhlI2iS5E", "selectedActions": [31, 71, 66]}]}, {"moduleId": "aTIKUkmkk9QM0NBM", "selectedGroups": [{"groupId": "A9ORxpzwLR2AK6eX", "selectedActions": [95, 40, 66]}, {"groupId": "X7W40V6Do5sYadCC", "selectedActions": [65, 4, 36]}, {"groupId": "ft2ulIJzPyrVEiOG", "selectedActions": [44, 95, 16]}]}, {"moduleId": "cqsuGKHhMRWLVd3D", "selectedGroups": [{"groupId": "lhLuIpomM8sm1Mia", "selectedActions": [71, 4, 63]}, {"groupId": "mX2tJoARtdbBe7ud", "selectedActions": [39, 19, 80]}, {"groupId": "gyJlXe36mgWjLfFm", "selectedActions": [39, 49, 9]}]}], "namespace": "bnGezKsDwG2omOR2", "oauthAccessTokenExpiration": 26, "oauthAccessTokenExpirationTimeUnit": "Vg8JqU0jZpjvsugA", "oauthRefreshTokenExpiration": 83, "oauthRefreshTokenExpirationTimeUnit": "paXp5JMl5LL4bTxB", "redirectUri": "mZjdrrIxsB0NRsB1", "scopes": ["fPqqRRulpqpymDkQ", "htrHWwRVnwVBOqOH", "i8pWGd1juYhiqjRJ"], "skipLoginQueue": true, "twoFactorEnabled": true}}' --login_with_auth "Bearer foo"
iam-admin-create-client-v3 '{"audiences": ["B5F93zFQbJndUDpd", "ONneAczbBdHb2slt", "71B1SmZp2JZp50Cn"], "baseUri": "Pb71ORYcmQbTU5JX", "clientId": "8ccLjMXJRk0eaKQD", "clientName": "OJvrTefglSs6g4iY", "clientPermissions": [{"action": 42, "resource": "JvaizwiilatuUjjt", "schedAction": 24, "schedCron": "mNqF7Bl0LcghVHfP", "schedRange": ["EspxwhRON0bc1eMb", "EIjowLqc3ecjXJbZ", "DKKoxLE1Y3Dymtj3"]}, {"action": 13, "resource": "0rYaT5hOPjaf3H0t", "schedAction": 15, "schedCron": "ighU0VUfcYHJbBfA", "schedRange": ["KSiPW3VgsZXiR1DJ", "7HVWqMkNSawQUWDF", "JvJBWic7UkBeIXuq"]}, {"action": 61, "resource": "RVwXgAgntLMCuaXB", "schedAction": 100, "schedCron": "9Lx5RDA1l2XcrciY", "schedRange": ["NEzvSZIPkhSgORcz", "5S5BvmgBLxh4ijFn", "E3Tam69qSZ7PC6f6"]}], "clientPlatform": "QkmZXElW9YfRSse6", "deletable": true, "description": "DMUAeeZ97SBROPYu", "modulePermissions": [{"moduleId": "G6XqP6oo7G73zdxT", "selectedGroups": [{"groupId": "gOfnwIdlNa29fDLh", "selectedActions": [0, 11, 47]}, {"groupId": "IslKHzGlLKWUtDQs", "selectedActions": [77, 76, 82]}, {"groupId": "LOexL4fZvWtND2tc", "selectedActions": [57, 88, 65]}]}, {"moduleId": "hNPEwiJCf2XJVrlz", "selectedGroups": [{"groupId": "qQls1ozhLVA3kE8j", "selectedActions": [74, 100, 43]}, {"groupId": "m4udE0OXudXgNne8", "selectedActions": [20, 83, 73]}, {"groupId": "mpu1VCarzBsV6xnZ", "selectedActions": [73, 20, 36]}]}, {"moduleId": "eZQ7hfxnhLd3Knak", "selectedGroups": [{"groupId": "noed9DHhLOqQGhCU", "selectedActions": [35, 21, 18]}, {"groupId": "Aa7j0riFc5HTHQIo", "selectedActions": [97, 38, 72]}, {"groupId": "Go7dwV9DBqFKHQkE", "selectedActions": [94, 76, 72]}]}], "namespace": "DUVSC00PYeDcaggi", "oauthAccessTokenExpiration": 27, "oauthAccessTokenExpirationTimeUnit": "EiH9Z5qXn3aoRtlq", "oauthClientType": "OECohViHA5CzgFSy", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "1A3PrIfapq5AAeMe", "redirectUri": "4L3mDWORBVXTIIJM", "scopes": ["9XsYIIZxiXNMR9Bg", "aWcFX3SUBhyoTsMW", "PAxUMkawaGpAyrIw"], "secret": "Mif3BOdkocVTd4Bx", "skipLoginQueue": true, "twoFactorEnabled": false}' --login_with_auth "Bearer foo"
iam-admin-get-clientsby-namespaceby-idv3 'GWV6mTJ0sQs6XNbj' --login_with_auth "Bearer foo"
iam-admin-delete-client-v3 'vqhnUVLWu8olKdxL' --login_with_auth "Bearer foo"
iam-admin-update-client-v3 '{"audiences": ["6ozRmDD0jJvlfV5O", "emPYdYT7DROCjtuz", "FMbAG9YI89hmguB8"], "baseUri": "FOTjMLo4b9rIzqYk", "clientName": "EpstyVTBcrM8rG0r", "clientPermissions": [{"action": 69, "resource": "ZtX6wK7PpUlcIW32", "schedAction": 16, "schedCron": "Iu8vvwLc7KY3uVoJ", "schedRange": ["XTIMtpgkieDyF97l", "GdMiHKxbWCYzo8yO", "2KTK9tmmOnYnOpas"]}, {"action": 13, "resource": "z7CYLM8IlsHqffnr", "schedAction": 11, "schedCron": "Z44B1GZgKg4uKxaC", "schedRange": ["gcGLuC3brWdTYCfH", "kIySok5DiXZtLW87", "rGysryod3dNQrmsA"]}, {"action": 32, "resource": "Ek4mTIpUA9gxo8SV", "schedAction": 77, "schedCron": "8nEhoXmM2W7l6jHM", "schedRange": ["A2rG3nakopAywelu", "01nryEJ0NqoTow0q", "iOiC4j0iktm0ZPLk"]}], "clientPlatform": "LOsp0LZ5njN86Hl8", "deletable": false, "description": "Rrvr0n9d9lvccKML", "modulePermissions": [{"moduleId": "hrTrcBE2ItBS3KtK", "selectedGroups": [{"groupId": "ZWe8aoFzAyBME74H", "selectedActions": [96, 39, 19]}, {"groupId": "ipUWYhWV1qx8CzPM", "selectedActions": [77, 82, 19]}, {"groupId": "2faXUr9Sk4lq2faB", "selectedActions": [5, 23, 54]}]}, {"moduleId": "hjbngJOUn18G5Mlf", "selectedGroups": [{"groupId": "DTk8aG40NlncceIZ", "selectedActions": [91, 46, 35]}, {"groupId": "gAIkgzh4pTU0Am4D", "selectedActions": [14, 98, 23]}, {"groupId": "3tBf2jnHGKXphn50", "selectedActions": [5, 2, 74]}]}, {"moduleId": "tNLDljhZ2jxLRX3z", "selectedGroups": [{"groupId": "46OCaGBeMfPlNos4", "selectedActions": [50, 98, 57]}, {"groupId": "ifnKqmTSoGH1XEfY", "selectedActions": [42, 88, 54]}, {"groupId": "q1p6QCyY6vSkVFWd", "selectedActions": [38, 3, 17]}]}], "namespace": "YuVEGVxYheR3j5mN", "oauthAccessTokenExpiration": 86, "oauthAccessTokenExpirationTimeUnit": "6vwv7K8Asvt1j1Rx", "oauthRefreshTokenExpiration": 41, "oauthRefreshTokenExpirationTimeUnit": "9hesNWy2NvZ85DDK", "redirectUri": "DAF8KDsBZOuYQJ03", "scopes": ["BAHZ7c53q7akMpcm", "nnx6RVBrop9v7aZK", "3h65hbN15zfQSfQr"], "skipLoginQueue": true, "twoFactorEnabled": false}' 'GebSVu0LQ40kepEa' --login_with_auth "Bearer foo"
iam-admin-update-client-permission-v3 '{"permissions": [{"action": 57, "resource": "ohZyjMQAg5mPYhrL"}, {"action": 94, "resource": "sFO3Zvc1BZG99Lyv"}, {"action": 11, "resource": "YXEcENx9xZlAchob"}]}' '44lONDDwMvgI0Hly' --login_with_auth "Bearer foo"
iam-admin-add-client-permissions-v3 '{"permissions": [{"action": 86, "resource": "oflEIByYqeKN0meG"}, {"action": 9, "resource": "QdbzIVy8alncV7vW"}, {"action": 13, "resource": "G4vZFTYnPkmSu4PW"}]}' 'am1jxR7SETWjteoc' --login_with_auth "Bearer foo"
iam-admin-delete-client-permission-v3 '57' 'fgvZDDhoO05oKqym' 'xLD1Lcvw6T6mZEiw' --login_with_auth "Bearer foo"
iam-admin-get-config-value-v3 'xxElpMYSWIeVzm7z' --login_with_auth "Bearer foo"
iam-admin-get-country-list-v3 --login_with_auth "Bearer foo"
iam-admin-get-country-blacklist-v3 --login_with_auth "Bearer foo"
iam-admin-add-country-blacklist-v3 '{"blacklist": ["9noowmlTIKVowi0R", "Y2VN4ZONJREdUQ3z", "9F1BxNNgnke4aknc"]}' --login_with_auth "Bearer foo"
iam-admin-get-namespace-scoped-input-validations --login_with_auth "Bearer foo"
iam-admin-update-namespace-scoped-input-validations '[{"field": "w7wu9TmXfJWBPrx9", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["dZ9bpjb1tdA3QhjC", "MW64f4XhIjSoTB2N", "MKtezapPr2QEPx3z"], "preferRegex": false, "regex": "xBGtEJIYppuUSsKo"}, "blockedWord": ["Hw2hyd12uSE7BEv3", "aevq6iohU1cg4W1I", "S3Uv1BpWoJBaqdg2"], "description": [{"language": "FHcunsS1lnaO2m9v", "message": ["qjhbeK2qN8g6x2Py", "YDo5R3hLiD5sf5y1", "JsxJNGmyt0SQDUDo"]}, {"language": "WBZVGLlkUetzCAWc", "message": ["9x1aMjgGim51T107", "XIZRZ7tZdIs0xf4c", "zdt7zqmSKxOEQlVc"]}, {"language": "x6GqsBq8vdhWVnuY", "message": ["LgpZehK0G2nmyuVi", "B9kRTcSQdTnNYGeA", "fYFG3wSkHKufBdS3"]}], "isCustomRegex": false, "letterCase": "OokZB4cXnAXyuGz6", "maxLength": 76, "maxRepeatingAlphaNum": 53, "maxRepeatingSpecialCharacter": 24, "minCharType": 1, "minLength": 48, "profanityFilter": "H4yCWrHSppnIZkNn", "regex": "Tn3rzH5NvAtcvNed", "specialCharacterLocation": "gS1fUfKmihDbmu8e", "specialCharacters": ["PWlQMVDXEHeiGTnw", "yEw6hIWDZrpP7rz3", "ISW510kHr4isTKWj"]}}, {"field": "mv67nuHCXWfwnwGi", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["pUtKp6M9I6nEwnZh", "sjwJeGwaPSDMZz95", "OYKiqaZD63xe5rru"], "preferRegex": true, "regex": "VfLGea0ZtlzUcuHA"}, "blockedWord": ["Xz0UV31MfuGaXsAu", "GsZaSHevO0TQNEI3", "kfabxJWWSI1ECUo1"], "description": [{"language": "NPpeFhUztXDgB7n4", "message": ["C97uAPP8PATLpUpx", "eJlsBJT6Hh3OMjAj", "q2mK8lbSEEelxnb5"]}, {"language": "QxWG2HFnZlA6HKWW", "message": ["4fI1IQcoBQELcNlZ", "kqTZrKgXNwvm4e5G", "X6H742OixhtAoKiV"]}, {"language": "m6URT95XhnUcvWB2", "message": ["8MpusuhhDJ5slzgi", "WZEtyd56LfxnbY97", "jjYgXchCbkXX26uE"]}], "isCustomRegex": false, "letterCase": "JDWh9YWqc0qgV6d9", "maxLength": 49, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 84, "minCharType": 19, "minLength": 12, "profanityFilter": "CMDtDMrentgn3Dhq", "regex": "ciwIeShF9RKb9vvx", "specialCharacterLocation": "uJlhXbWhbwPwToC6", "specialCharacters": ["knjVwVnzaqSfJiQF", "C2gXoda0kg16yUSp", "SOAjHJWwfCjYwWkL"]}}, {"field": "ob9gKLqs2nEZhpBy", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["k05HAQltnSojV4jT", "65yclX2FtAz0vJjF", "IYWOaNdsimmkW2mi"], "preferRegex": true, "regex": "3xRHAKy4QxZkaXZ7"}, "blockedWord": ["vmiEd0JPxVyQpsha", "DwNqTbbFMXAMfVXe", "0GZeMgsRsmH1EQrY"], "description": [{"language": "mkPKTPOlhTtSiZNC", "message": ["xuogFteTHJe4BhSS", "QkQD6WmOt6D7ufFV", "TOhvQpfbBke8aEdd"]}, {"language": "36xj6wySoltDxsbz", "message": ["xrlaKEfkoYjY2o6o", "uRW9UtNquwC3Wgum", "rIz4NhGztZpr4U4f"]}, {"language": "wQIiLXgmRasvjO4l", "message": ["j8m3XEwP2b4gd3xO", "eii8Jnmssep2xD2N", "Y0kABeGs9yxahld1"]}], "isCustomRegex": true, "letterCase": "TGTCm4fZWuk6pQxD", "maxLength": 88, "maxRepeatingAlphaNum": 14, "maxRepeatingSpecialCharacter": 31, "minCharType": 63, "minLength": 74, "profanityFilter": "pzZ3FbtxfhcRC7IV", "regex": "Ya6iZ5uFRYNn3SHi", "specialCharacterLocation": "WxF0YbuU5ar5qTLW", "specialCharacters": ["UCy0Afgc050XIZRW", "491e94mQjVOOBnIW", "hunElqZUodp3IhtC"]}}]' --login_with_auth "Bearer foo"
iam-admin-reset-namespace-scoped-input-validations 'SHy1ei1fIrPvfHnR' --login_with_auth "Bearer foo"
iam-admin-get-login-allowlist-v3 --login_with_auth "Bearer foo"
iam-admin-update-login-allowlist-v3 '{"active": false, "roleIds": ["6EjRwEQlNapJRfk4", "f9Zcw1pEHAyNFxcV", "TKuAQTGh5BxjWOoz"]}' --login_with_auth "Bearer foo"
iam-retrieve-all-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-all-sso-login-platform-credential-v3 --login_with_auth "Bearer foo"
iam-retrieve-third-party-login-platform-credential-v3 'GoDtsUuYo5p8ED5Q' --login_with_auth "Bearer foo"
iam-add-third-party-login-platform-credential-v3 '{"ACSURL": "ZAufwNa8lzfjv9oY", "AWSCognitoRegion": "MXMjlVHY1AHwF3vG", "AWSCognitoUserPool": "oav7MK0PcLnEkcok", "AllowedClients": ["KwcQ0baDT9OyJ2h2", "3GUS2amU7syGlElX", "dEAOrVSnLocLVVYa"], "AppId": "mQc4wcG5nDBLJoJH", "AuthorizationEndpoint": "biQ5duE5p4cfs2E4", "ClientId": "1cK8QTwiIAvxSvND", "EmptyStrFieldList": ["lmM5nQFMGzs7fzjg", "yc44mEh9tRk8knYS", "V30lnroQehMDli6t"], "EnableServerLicenseValidation": true, "Environment": "aAtEbu4IjGdqthRx", "FederationMetadataURL": "TjQ7gkZEY8rG0q0Q", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "OotKwG3UC6XCnnZx", "JWKSEndpoint": "F8CmQr17W65br34r", "KeyID": "BBN9tU6TDm5GloFS", "LogoURL": "KWM1eym5ydC6p25x", "NetflixCertificates": {"encryptedPrivateKey": "CWTqUOYZENJ1QHZQ", "encryptedPrivateKeyName": "xPRXH7uxBJEECQE1", "publicCertificate": "li3Bg7Jxc9pUnZmv", "publicCertificateName": "hidwCkZwqjYLfTiC", "rootCertificate": "O1NDBvQvRPnAz4Vz", "rootCertificateName": "W0CpoBCbyJsF5IjF"}, "OrganizationId": "1c0W338HS6CBgVRy", "PlatformName": "ihYNZ84CVhziXV8H", "PrivateKey": "wSmvcvcDKF19yVRa", "RedirectUri": "fCjOuSYht83AdvBa", "RegisteredDomains": [{"affectedClientIDs": ["agTiRJ8daGTVX3Bb", "7jlz5IfHgKjI9mwJ", "SrN8jkIykR2zbaI6"], "domain": "PD7fEscShnGUGUtV", "namespaces": ["9GJ279GDbLNwjm3F", "K0nnX2poMfZ1hDHt", "bh4HtMlFgvh2Dp2S"], "roleId": "oiIPp1yvfAHS0VgL", "ssoCfg": {"googleKey": {"u11A3HTovFi4tPAG": {}, "fleyCA6jEtcqsnzo": {}, "VILjkwW61duF87aU": {}}, "groupConfigs": [{"assignNamespaces": ["yrdt4XSpWBAetsan", "zqP8oxfrtbECD1CY", "PwaiBAxfYL8Avt70"], "group": "ZUT2fSk3LL0calqx", "roleId": "EewuGS469k2hG0WK"}, {"assignNamespaces": ["t4sUmanYxM0UHZVN", "YzGMNIpWoSLkUrfu", "f4U3WeYeA9t2ENKK"], "group": "WrFtHIi1CMgKAOG5", "roleId": "iDcCR5PbCvDLil8w"}, {"assignNamespaces": ["j9cKM3Ar6MF35hCE", "R4nGmWGgTJfHlJl4", "tHGa4XfZcd9CVnGq"], "group": "MX9FieeEssWEUl07", "roleId": "bhwntCVqiYOJf5Kw"}]}}, {"affectedClientIDs": ["MZQjzvjSozv6CTRD", "l0zp9CzHFwinkBNi", "4gvqgl6TZ9TGVPmv"], "domain": "34h6T7EsufmfxKYB", "namespaces": ["4LM6H6QXmpZ9X3fU", "SR1l9xLPBsmAUrD9", "L1IiD6MlcEPhMDFz"], "roleId": "jHZ3sIhzOx2CXKlv", "ssoCfg": {"googleKey": {"IomU3pIxM9n8D2eL": {}, "Me3lt9qfx2UDcgVE": {}, "7L9FK6e0MrPc4vtx": {}}, "groupConfigs": [{"assignNamespaces": ["k9hVKlG56HlzGr7X", "jdyRJunZPkp6ccIB", "nWyPw8mj7gyQ7XdI"], "group": "szGRj46COPipH1MW", "roleId": "VTHG0qHJCWEfOJpZ"}, {"assignNamespaces": ["m9yEYWNGMy2pgSGS", "UOK68eqGJtWf1Ybg", "g8rdwY9bmrvHmO07"], "group": "KNqX9LM2IwEsdOGB", "roleId": "XBwnzDX8v3xgC1Ge"}, {"assignNamespaces": ["9PdbTTAJ2Gp1r0sV", "Z6LJAOddIL2l3hPj", "NDKv2LWfXqjr8fS7"], "group": "9En3wYowBdkaZ3y6", "roleId": "i38XQjLDRqkpiFK5"}]}}, {"affectedClientIDs": ["BtiQ272Uo9UBJWod", "pdwsX1jorcyR0x3Y", "iHF8ITGPRQBCgIs1"], "domain": "Q2lzxl0yF5m77TTh", "namespaces": ["4gUoj8u2WRcLiEtz", "Vlnkflfn7pHY48F1", "dl1q92m3iRlfnBAk"], "roleId": "0CwiAsR65yQ9ssuH", "ssoCfg": {"googleKey": {"dGmxncCEr0Kcgeqz": {}, "GbruNB72HHMkjzyB": {}, "B4UFKiaoV0VOem2y": {}}, "groupConfigs": [{"assignNamespaces": ["qPsMFxKybPkbuS6x", "9cLJ1APnNlsa2bRB", "r27fVMWuAfDqLMR9"], "group": "19IZPKOKiAVQXXOm", "roleId": "qFHLbyXmgCNiXH8u"}, {"assignNamespaces": ["enbC5CphgMweexsI", "AP5vHLjBJ9iqMcBL", "4BzhDUjhKPwbwcvQ"], "group": "U5kG8bXGFmPAnOkD", "roleId": "iJq4xQye7HqnVK3Y"}, {"assignNamespaces": ["VeOWs9mfVQh3jLBt", "n9pxpE7BYtzB0B4C", "xyQrUpIFvORxTi79"], "group": "DpSjb39ukcR6c2E2", "roleId": "r3vk3IfAKEbqcNXS"}]}}], "RelyingParty": "GCCvNowNmdpcJgF8", "SandboxId": "8ySNq4Mj7mulP4tQ", "Secret": "6R1OqKVOTniBgLsN", "TeamID": "hdgQ0JWZjNRSzOTq", "TokenAuthenticationType": "cVNX3ahvxw9gwwhT", "TokenClaimsMapping": {"njN6wKZGW4y3f0R9": "s2kndhhZhwAiLsZs", "4pmLDIQch4IjDq9a": "T3qZyI0rYsWucAkX", "sVJbXi7eRZa7WwIc": "895ImqK6tVsaUq3s"}, "TokenEndpoint": "tUh5J5Z9GiBiSAyl", "UserInfoEndpoint": "X5cS0IeHpWCugmfO", "UserInfoHTTPMethod": "L0QQpxsuD8PGqku5", "googleAdminConsoleKey": "9eFJrOXyDYz9vMUO", "scopes": ["PG0iHDT8QbF7gHPT", "PQbvLt2NRqJGIKzL", "yH1y72L13Ornyx34"]}' 'luLdvtsTKXMjiw6g' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-credential-v3 'YPvfn2Qt9iyq3Nyk' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-credential-v3 '{"ACSURL": "8ncu2Z3eDHH9WaVO", "AWSCognitoRegion": "4iKhDcJ7TCcNIsQ3", "AWSCognitoUserPool": "PuppUxDSK8aOTGMu", "AllowedClients": ["dcxlCV4cNbJGQ57l", "PdinpjS2DRfGt9Gl", "yZVQ4X67tPZSTpPq"], "AppId": "3xjrElvvDgw0ag7k", "AuthorizationEndpoint": "SWE0Hiqm5IuLryiE", "ClientId": "XqvUWDjU1G0EVjVZ", "EmptyStrFieldList": ["w1ToLuPakQN1MpOs", "1RVFrcg2CXxepx78", "fvsyhE2BKtyTDSIM"], "EnableServerLicenseValidation": true, "Environment": "mkmvZ7Cmsh4US8o4", "FederationMetadataURL": "jfMANPpmZDdMiCxm", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "dWYmELe74p38vumn", "JWKSEndpoint": "xAnYBTxaTIz0jcgD", "KeyID": "I8Pkz96vd80msqIm", "LogoURL": "5bufnBqrpLeqhwVh", "NetflixCertificates": {"encryptedPrivateKey": "jnnjKMEmtbiWsAQH", "encryptedPrivateKeyName": "bMrKYi0Zxs5SWCqZ", "publicCertificate": "XHLLa31oQf7BULnZ", "publicCertificateName": "DhutDM6BqguqD5xx", "rootCertificate": "GxBWtnTKUe2znsqP", "rootCertificateName": "zPkwCBo2SwCUsTag"}, "OrganizationId": "4MLAo3m61P2xaNfm", "PlatformName": "n8Onb1a9gMz0F2UB", "PrivateKey": "RmMhAbUWmFhdYLWz", "RedirectUri": "Muv3zkUY0n0BAZkw", "RegisteredDomains": [{"affectedClientIDs": ["bYkBLyO6A0Fqfhna", "B3YxKNdOTacCcJfI", "fXshuLUk5WdpxjZx"], "domain": "5noXPhPUTKbonouc", "namespaces": ["NmzwOZOK56sDkci5", "rZ8iMlOuksQJCiRF", "iZWwJ7NrTb1XTB9Y"], "roleId": "QzUJ9XlYJ8BzP6EU", "ssoCfg": {"googleKey": {"mUXGM5anIloyj9lh": {}, "bvuQdW2jwKUckc79": {}, "4ryY91lX8DD4MYXl": {}}, "groupConfigs": [{"assignNamespaces": ["rJ81lHvv9rqvEoM8", "YmVjAkO3HKsEp6Kl", "qwW4djrexcbHdEto"], "group": "QvpV344RctmTozCi", "roleId": "8HeV6jbalHmqBBfi"}, {"assignNamespaces": ["7sSF5BoGiTCVsXsy", "gWbjE2opXtdsJQeJ", "1too0qvxphTLEEBG"], "group": "TtZyTjdKNKgYazuj", "roleId": "smSmylT1YtxIq73a"}, {"assignNamespaces": ["Mb48jISd97KORRhx", "SWLWLNfHRD3V15Qa", "GGL46LuxJF3sbeqW"], "group": "BdQuWfgBAKx27MSB", "roleId": "qabUXOGkkoMUZn1Y"}]}}, {"affectedClientIDs": ["Xj5zFZeOCOR9NvBQ", "ZSJPOIKrRBrYVzi9", "ui3lvozTt9TsH7A0"], "domain": "TuU2aL4bPkk11sys", "namespaces": ["6GdkDcos5uVJ0BJf", "Z0jvA54CSqZFDsO1", "skRjOU1SMfQVQa6b"], "roleId": "lj9Rdd85bdYUumPK", "ssoCfg": {"googleKey": {"VSZCg3XTc9vQe0dH": {}, "JfF6KIuvnRCa9Jkt": {}, "yBdxkZKrEWFw9GYx": {}}, "groupConfigs": [{"assignNamespaces": ["jiiOQAD77ci0vfWV", "ZoRRMPi57HyKKz5n", "yI6ulKNKoXa0dgx1"], "group": "JgjC56pda3YhtQxp", "roleId": "CYME6x21pdX2QSPA"}, {"assignNamespaces": ["d9sxoLnWGP1PafIj", "LX8ce0KbNN7Ycl2J", "fmQplvGjVQ4aebjf"], "group": "gGu472oWJlfglLM4", "roleId": "xjfkNL4lU6jaGfsD"}, {"assignNamespaces": ["1cfswmeFpvtDteto", "QVFL8LNW11vtpaTx", "i7k489jRCn48bvkC"], "group": "PfKofwXOIZZQAJza", "roleId": "84lKKmVOaTS6xBbN"}]}}, {"affectedClientIDs": ["rSUAW2ak7ISDrBVg", "6NuDZvPb1kuUfNfU", "De4g7q6PHEaqbzHv"], "domain": "DDl1jiLw3XMGBA6J", "namespaces": ["XDpA1tIC45C0oaGo", "uFu4hXONgUwJnUpr", "yDeRcpUvlrw2MwC1"], "roleId": "uuokpaIjL0Vxe5n9", "ssoCfg": {"googleKey": {"Lx3QcFo9gxOgvDc7": {}, "xMrRKvw8ISP2WKmC": {}, "RRXBxlalCHtWlKxL": {}}, "groupConfigs": [{"assignNamespaces": ["pS8fLWoQ5nuJhatQ", "PxR7dvBVC5zgOKLT", "DmHe8c1eJ9sde7Ry"], "group": "t4udIv22M18uux9x", "roleId": "BomQFPFWy5cwNPI6"}, {"assignNamespaces": ["aFo0MVwDZCIXFNEL", "3uWVRz3V7YbJM3bN", "LWHAbCZixe2cQ6O3"], "group": "0lpzcBQMAEcNcJqr", "roleId": "KxnMzSYoc4ZjiMY4"}, {"assignNamespaces": ["H34B6wVd8ipcKDwQ", "eUWtjCC2UH6jzMO3", "AfmOS5mQNyRPZFPN"], "group": "P56l1AT6OLKmZhCZ", "roleId": "xxPPdPwOtEuWBSO2"}]}}], "RelyingParty": "jJepUnEEgja2mIE2", "SandboxId": "kLTnJwc5XmkCuL5W", "Secret": "4tKt6G3j9LYdG7xV", "TeamID": "PqBqe9RDQMBSYAFL", "TokenAuthenticationType": "qp8PF5hCcoukWpnb", "TokenClaimsMapping": {"z4ys7j6lxuU3u2HE": "G0qfKegvFTD1sPyk", "S8YLmwtYgWGcA0h4": "G1LZ1HaX5UBMbsF4", "4VTsLDRzdq22cbny": "K3ggFDh2kaZP7pnn"}, "TokenEndpoint": "VfxPwc259HF9ejHa", "UserInfoEndpoint": "ILQruAuYyJLYGqMv", "UserInfoHTTPMethod": "824ouSgkpK70uJmU", "googleAdminConsoleKey": "L0uzElixc023dIvD", "scopes": ["iA0tQWlHwBcTtztx", "3VAl6tXFbnATCzUO", "IzVcy9k3ie64Vnwa"]}' '0ClGQJultJe32Aiw' --login_with_auth "Bearer foo"
iam-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["KadEoIVmprwPsa9Y", "D92CX0rITajpwHIT", "GeHTnqRbzBB9ZFgJ"], "assignedNamespaces": ["bQ3Fj1umx4ItzkMJ", "7cudf4r916GPrhn2", "etVIQvRkQJAtDUH9"], "domain": "tx60AehGz1ermJYX", "roleId": "sYgL7TfyIlAwjTZd", "ssoCfg": {"googleKey": {"RZJJzWZwvTX2bamS": {}, "CvX1nwvSWdDwD7WJ": {}, "HzgNZUKsI5y0mR3z": {}}, "groupConfigs": [{"assignNamespaces": ["MyTsftKqnsIJctAd", "xyZVKHA9DkaSOWgt", "g8yw8lHEbVDwBAqa"], "group": "nOlscRIWw82k5K5V", "roleId": "TkdubkOFldMCQ98J"}, {"assignNamespaces": ["H4n0JtgqzZv5kVu4", "S95mj8YRvae4f4lh", "BPbarbWEm8bVtZcf"], "group": "VCPdQhim9QKUAFTV", "roleId": "YelIlGJg9wdc8bih"}, {"assignNamespaces": ["hWjfZpfcFBUsnnDJ", "lmD1iEokbUiYzCQh", "2iNTwtnohddMzMTQ"], "group": "9P7sYLDWAJOA75K4", "roleId": "BYJ2fkqYJoF2FI3v"}]}}' 'yyqRzc20O7FdsJP1' --login_with_auth "Bearer foo"
iam-delete-third-party-login-platform-domain-v3 '{"domain": "G9tyBTfERXdvgD1Q", "ssoGroups": ["f7Ot2DkUt3yexZBR", "vxYnEBhXtAVxCd3m", "eTrT7cF9oVCh89wN"]}' 'OkKYssVejcL3kR3h' --login_with_auth "Bearer foo"
iam-partial-update-third-party-login-platform-domain-v3 '{"affectedClientIDs": ["CGNgaJmuALlMQl9R", "Lrthbfp0VgweLlT2", "sY3SsTnDQY7kKU2u"], "assignedNamespaces": ["06Q4veujxtyQENvJ", "rBCqeg67d4RWOqO4", "U0bitNQLzwRoWnR0"], "domain": "AbkCPY70FmvviVIB", "roleId": "bcujF8Vk5qb8NhWW", "ssoCfg": {"googleKey": {"waxyMchkt8l5IPSr": {}, "wrJl7wYIVw13NCo9": {}, "yXlbQ52FTHTCj6SE": {}}, "groupConfigs": [{"assignNamespaces": ["AzT7TOpyiuvvQUm2", "9Iacq4XRLaA643nT", "MtXSAyejnny0Ju13"], "group": "b6o5uB2XM6IHy7EE", "roleId": "vHyLmcvrZZOdwe1x"}, {"assignNamespaces": ["8RjU6Bi8JXE52sUB", "Bq2SimQQoLbe5YOJ", "vxGRxUzrTwagH7BM"], "group": "T1IZKTdNFVBQ1crB", "roleId": "XAupATO8uXsqVpdi"}, {"assignNamespaces": ["Wo8SjDAM0Riw8wLY", "W3n4F3LD1EDwBXw5", "uBYeQZOzATNSV9E9"], "group": "yyNb7yaLXzAVYymO", "roleId": "uhCkZu4htrsf8eIF"}]}}' 'SovTGXaMsq8ePN1o' --login_with_auth "Bearer foo"
iam-retrieve-sso-login-platform-credential 'co2jx8Upe8SjMvpq' --login_with_auth "Bearer foo"
iam-add-sso-login-platform-credential '{"acsUrl": "M8puggOEdG47gD5i", "apiKey": "2Ni6AnWn3NdEPhNH", "appId": "SH7eKDfRcngEpTnR", "federationMetadataUrl": "UQr3RLOM1vEx4gqD", "isActive": false, "redirectUri": "fKaY5c1tP5TDuI5f", "secret": "6m4KC07CnsZe32hq", "ssoUrl": "EcB1ExYMBb3ckvoa"}' 'JYdMqGegcg3eRvBZ' --login_with_auth "Bearer foo"
iam-delete-sso-login-platform-credential-v3 'XN3cjIXmFWRJnj8x' --login_with_auth "Bearer foo"
iam-update-sso-platform-credential '{"acsUrl": "N7HDPTUEDPN1Kb4U", "apiKey": "TPWDXTSb55g8LSTs", "appId": "7Nf95lGlPrf6obId", "federationMetadataUrl": "nI6Ag7eUYcYJ4QzX", "isActive": true, "redirectUri": "0X8fBuBSKLSQ4GvL", "secret": "tz50D3rpBfBovqLw", "ssoUrl": "XBuT30EYeRj17xGh"}' 'aBKoUfiHjGmCyPsK' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-platform-user-i-ds-v3 '{"platformUserIds": ["CJTv1ic9gvagF2cS", "uztsJ5tj64gV7nmD", "k29mcjSuz9vbNStq"]}' 'PtQmQN6eKAGiZFCf' --login_with_auth "Bearer foo"
iam-admin-get-user-by-platform-user-idv3 'tT0RWECdjWYrnulx' 'cCKAru8pOaAVLDB4' --login_with_auth "Bearer foo"
iam-admin-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-admin-update-profile-update-strategy-v3 '{"config": {"minimumAllowedInterval": 21}, "type": "T83zEGXmVBZLyrH9"}' 'username' --login_with_auth "Bearer foo"
iam-admin-get-role-override-config-v3 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-update-role-override-config-v3 '{"additions": [{"actions": [56, 66, 29], "resource": "181q9GA5DydC2D8U"}, {"actions": [94, 73, 76], "resource": "TsqDTynCewqJligL"}, {"actions": [23, 34, 90], "resource": "egIUicYXXzxsBFrU"}], "exclusions": [{"actions": [38, 63, 90], "resource": "BYp6TgCejBd5o7iT"}, {"actions": [92, 83, 94], "resource": "utlYBbLhL8KXx25F"}, {"actions": [11, 88, 50], "resource": "IodVBqQsBpCJBIXL"}], "overrides": [{"actions": [67, 66, 13], "resource": "cwWVRK6UKk5ozrXA"}, {"actions": [69, 31, 25], "resource": "HNyq9odanhR1Zrm3"}, {"actions": [39, 97, 14], "resource": "aauufxkPHElug48T"}], "replacements": [{"replacement": {"actions": [14, 91, 11], "resource": "aAylsmLYe2phYOgT"}, "target": "5kDTyPl3dKF7NXEj"}, {"replacement": {"actions": [35, 87, 74], "resource": "8VOHGwbADMfuOmh0"}, "target": "lciRhVZ2DeoODXMz"}, {"replacement": {"actions": [77, 36, 91], "resource": "mj5vhzgsJwex7wq8"}, "target": "ZPlXNaUNgdY2vfJu"}]}' 'GAME_ADMIN' --login_with_auth "Bearer foo"
iam-admin-get-role-source-v3 'USER' --login_with_auth "Bearer foo"
iam-admin-change-role-override-config-status-v3 '{"active": false}' 'VIEW_ONLY' --login_with_auth "Bearer foo"
iam-admin-get-role-namespace-permission-v3 '5cPnmGjTvYa5Pqx1' --login_with_auth "Bearer foo"
iam-get-admin-users-by-role-id-v3 'K7qcAoijBPAp6EPb' --login_with_auth "Bearer foo"
iam-admin-query-tag-v3 --login_with_auth "Bearer foo"
iam-admin-create-tag-v3 '{"tagName": "988NzxrDKVpULjji"}' --login_with_auth "Bearer foo"
iam-admin-update-tag-v3 '{"tagName": "w3NeVG4DJi9DaMrc"}' '0WFgKjE945x2CPVY' --login_with_auth "Bearer foo"
iam-admin-delete-tag-v3 'YG9WvoGmAmvaVV5Y' --login_with_auth "Bearer foo"
iam-admin-get-user-by-email-address-v3 --login_with_auth "Bearer foo"
iam-admin-bulk-update-users-v3 '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["sAyJMz4ILNDvhB4E", "oes9a6XaJeRbzTPw", "D3jxF7vxRUY0ilrN"]}' --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-ban-v3 '{"bulkUserId": ["oFT98SgtJd4Z5f8n", "faKqdZFLbZEHxsDx", "eR6d7r1SQw80JfMp"]}' --login_with_auth "Bearer foo"
iam-admin-list-user-id-by-user-i-ds-v3 '{"findByPublisherNamespace": true, "userIds": ["TzrHNZWUsq5lQo2j", "y29EJigqYhyVhURx", "1yPeczRpdk0HATGy"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-get-users-platform '{"userIds": ["lx2JG2KNGfhzfCTx", "xrsRRLee3TcJ7DQI", "i45aCDHN9mVug2zk"]}' --login_with_auth "Bearer foo"
iam-admin-cursor-get-user-v3 '{"cursor": {"cursorTime": "Vf6KgpKOcn3tMD9U", "userId": "T67bOwugFDa6wUQv"}, "fields": ["ehKqwCh86XmRkCEc", "fHDCdl59Wp9A3tXG", "ve6DdK6uvg8f2cIo"], "limit": 57}' --login_with_auth "Bearer foo"
iam-admin-invite-user-v3 '{"emailAddresses": ["hzBw3xLUcCEt0Dzm", "kJq1sml5bYt76BNs", "i4giR9434WpKKdzx"], "isAdmin": false, "languageTag": "qVxcSthrpnMUBsnU", "namespace": "fuQIcSbUt5UGkInF", "roles": ["GpuUsdtq4dOwNESz", "CEW9dUVhZjLftC3s", "CS8CpLCqPD9CeDEd"]}' --login_with_auth "Bearer foo"
iam-admin-query-third-platform-link-history-v3 'CnnL6Kt1Bjj3b8QM' --login_with_auth "Bearer foo"
iam-admin-list-users-v3 --login_with_auth "Bearer foo"
iam-admin-search-user-v3 --login_with_auth "Bearer foo"
iam-admin-get-bulk-user-by-email-address-v3 '{"listEmailAddressRequest": ["8Rr45ULqXQgvwD3P", "sKDJiWxQBwaS7rDB", "f2S54phbdyGDt47f"]}' --login_with_auth "Bearer foo"
iam-admin-get-user-by-user-id-v3 '9GWRlE9hqz6rjDNo' --login_with_auth "Bearer foo"
iam-admin-update-user-v3 '{"avatarUrl": "4rhjxUdMM83Wekqf", "country": "Wv04vvn9bk5qr8qs", "dateOfBirth": "2mqtnGAqXUjNypF6", "displayName": "MMqWpdEJsPoaIbYz", "languageTag": "8cK5jlpJdre5ur6y", "skipLoginQueue": true, "tags": ["wgoViPeIB4Ehy0Y5", "aSJVDginxAM77eY9", "C14FbfiI2NPvl1kC"], "uniqueDisplayName": "Y5bEokxXxkWZbjf7", "userName": "GZxaossQmjo69woh"}' 'JFyTNk5FGUPhR4LE' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-v3 'Zvz3EjFR7996Ug5m' --login_with_auth "Bearer foo"
iam-admin-ban-user-v3 '{"ban": "4axDV5uTcYsoahUr", "comment": "ELQ1btjJOqQMgZWA", "endDate": "U6E92nHJzvw7tnYt", "reason": "Gfv0EJyjBu4EzwRj", "skipNotif": true}' 'n73m0jiaDH86d9rs' --login_with_auth "Bearer foo"
iam-admin-get-user-ban-summary-v3 'KgzCsMulpB8HZUtV' --login_with_auth "Bearer foo"
iam-admin-update-user-ban-v3 '{"enabled": false, "skipNotif": false}' '9Z5BTsEA3EdmW8sa' 'abP4xRowfNojzPXI' --login_with_auth "Bearer foo"
iam-admin-send-verification-code-v3 '{"context": "2v0prR3OEey0MkZw", "emailAddress": "S6TYwNN3UYhic03q", "languageTag": "GEg5fNzBVrjo3g8C", "upgradeToken": "fRwtyl1HeT7VEPgG"}' '40QyXzsOzgck078I' --login_with_auth "Bearer foo"
iam-admin-verify-account-v3 '{"Code": "ghoQBp2mWAOYkscz", "ContactType": "xBS0OBCa2vWadLmQ", "LanguageTag": "tYKmEMzicbuL2S3R", "validateOnly": false}' 'wD4O3uNbcIDcIyvZ' --login_with_auth "Bearer foo"
iam-get-user-verification-code 'bOy1T4hfwkuVykH4' --login_with_auth "Bearer foo"
iam-admin-get-user-deletion-status-v3 'RpfmjIXFGZ5PKdba' --login_with_auth "Bearer foo"
iam-admin-update-user-deletion-status-v3 '{"deletionDate": 3, "enabled": true}' 'JIkNnt9P1Tkm08lu' --login_with_auth "Bearer foo"
iam-admin-list-user-all-platform-accounts-distinct-v3 'h4dpPRMDbUXBWTbp' --login_with_auth "Bearer foo"
iam-admin-upgrade-headless-account-v3 '{"code": "AogG2wlZkLhuU5FI", "country": "8NijFI0GKwJ3vfXl", "dateOfBirth": "sAMy2Zp2UAGxHnmS", "displayName": "xvkG9UR5q9neoW6J", "emailAddress": "BcGp9Rx2RfcRhXpm", "password": "eeHdvphas9S7ivHE", "uniqueDisplayName": "oLbUMM47f1UreUpx", "validateOnly": true}' 'jj1A647XQ3koaAfZ' --login_with_auth "Bearer foo"
iam-admin-delete-user-information-v3 'Iim0sFPm1YN27boj' --login_with_auth "Bearer foo"
iam-admin-get-user-login-histories-v3 'DVaZLpx4kEWYkO6K' --login_with_auth "Bearer foo"
iam-admin-reset-password-v3 '{"languageTag": "rKUMhJrASBh61hmW", "mfaToken": "KSSrF35anDGvur19", "newPassword": "V18oIrUKXttgAI2Q", "oldPassword": "dWJFLmoPEgd8EMsp"}' 'Os8nkic9gj5vyUMA' --login_with_auth "Bearer foo"
iam-admin-update-user-permission-v3 '{"Permissions": [{"Action": 55, "Resource": "K5fE3OufPSX3PdOU", "SchedAction": 99, "SchedCron": "8SbLOa21DiSFsm0X", "SchedRange": ["XQJWszvTQEuALzDN", "p1SZ58aDllwzTRHa", "k1MXxj7Esrg7900n"]}, {"Action": 24, "Resource": "6zUtf3QaJPGrTNcX", "SchedAction": 44, "SchedCron": "TUIggoH89QNmI17U", "SchedRange": ["Db19R6H7r1ta3m7j", "K5pxe82pgFiAS6pi", "Izmc8rKrKEPGSAco"]}, {"Action": 27, "Resource": "zfjDZZBmOau6syme", "SchedAction": 5, "SchedCron": "6c6SKLc2mEC3IXl5", "SchedRange": ["XCbkOfHaGr5kdazl", "ypvt6lSLfU7HByGX", "PMqxj4hBgVY3YAxZ"]}]}' 'LKbcOdyjqf6Q4oiw' --login_with_auth "Bearer foo"
iam-admin-add-user-permissions-v3 '{"Permissions": [{"Action": 29, "Resource": "di55jNrGNT2VHTKu", "SchedAction": 71, "SchedCron": "c5ZyODR2NVyn4PRq", "SchedRange": ["f3eRbZqBAoKGcVCd", "MiSNV4qBrt1kcLmR", "v6EJtl5xWnsb8oWq"]}, {"Action": 94, "Resource": "4RImNWVIJnhhwFDV", "SchedAction": 98, "SchedCron": "FvGcV8DY0XOkDstx", "SchedRange": ["ZcY1HgAnZV4IOglV", "Lqb9lGAJUg21Lt7J", "wgwMUSuC3Bajy3Bc"]}, {"Action": 63, "Resource": "4VBCV9qJhWva2FPB", "SchedAction": 41, "SchedCron": "6Cp85HVDsZBQgOnX", "SchedRange": ["uXsGThYZrmm0wrFM", "nPpWgrQD4hEk0OLj", "YsnignE7KcMF7fuD"]}]}' 'bzRRYMNXWUsp1tOi' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-bulk-v3 '[{"Action": 3, "Resource": "jMZfOadpgegCUjTd"}, {"Action": 17, "Resource": "Rrlm88QlKyuoya4J"}, {"Action": 13, "Resource": "Ny4ejmVA3vMCsGyP"}]' 'd12B8QNUz0hFFNbH' --login_with_auth "Bearer foo"
iam-admin-delete-user-permission-v3 '76' 'j2W4roZM2UKAXEEs' 'L5D0oiFchQnVeq3g' --login_with_auth "Bearer foo"
iam-admin-get-user-platform-accounts-v3 '2AB2WIRUQmauIY5H' --login_with_auth "Bearer foo"
iam-admin-list-all-distinct-platform-accounts-v3 'XCZ0W4XmWP0HzSdi' --login_with_auth "Bearer foo"
iam-admin-get-list-justice-platform-accounts 'ylLhVYszm8xY33OQ' --login_with_auth "Bearer foo"
iam-admin-get-user-mapping 'bumu2QHLyZNuysyM' '4OfCzdQCXMAWnf87' --login_with_auth "Bearer foo"
iam-admin-create-justice-user 'YPNOe9Eevf1fhMg1' 'E2k7QLFrVgtX7y0f' --login_with_auth "Bearer foo"
iam-admin-link-platform-account '{"platformId": "POieDCow2zXyFFVp", "platformUserId": "M87yqEwEacQMTlqN"}' '4LKkxJ5v3SBafnKN' --login_with_auth "Bearer foo"
iam-admin-get-user-link-histories-v3 'iMPbFkFGA85W3HJk' 'qgS2B37wwoPYOHiI' --login_with_auth "Bearer foo"
iam-admin-platform-unlink-all-v3 'sxmsLBPBJuNLnWRr' 'tW870qD88ZcduZSe' --login_with_auth "Bearer foo"
iam-admin-platform-link-v3 '7W20UZcDaiq0nEZ7' 'PyhqFJkDClOsKmfs' 'gJdmzsDPsWh1k0cQ' --login_with_auth "Bearer foo"
iam-admin-delete-user-linking-restriction-by-platform-idv3 '08NG6dX2TZkil67k' 'RngoUa83ECh1gqPe' --login_with_auth "Bearer foo"
iam-admin-get-third-party-platform-token-link-status-v3 'S193TNNzot3sVli3' 'GN2XTrFibRAhzzEW' 'zWlTY70qdgJRvpZr' --login_with_auth "Bearer foo"
iam-admin-get-user-single-platform-account 'SpWX3KEe2BjV00Re' 'CXFffjJJxlgjzIhp' --login_with_auth "Bearer foo"
iam-admin-save-user-role-v3 '[{"namespace": "gOoIOD74V21HWDAf", "roleId": "vXwdxbyp4HAPbBbN"}, {"namespace": "PStVBUpKgOssFkz0", "roleId": "F36piDYXeHZ7FHls"}, {"namespace": "3nyvconqbHQqKLQK", "roleId": "e3xmj6s0GqsWncp5"}]' 'LrqbiKudv9z75Szo' --login_with_auth "Bearer foo"
iam-admin-get-user-state-by-user-id-v3 'CV8ZMi2o1nR482D6' --login_with_auth "Bearer foo"
iam-admin-update-user-status-v3 '{"enabled": false, "reason": "58sG6uDhFYlrzJBY"}' 'SeMuJfQecutjS029' --login_with_auth "Bearer foo"
iam-admin-trustly-update-user-identity '{"emailAddress": "BiJWOG1m7MKclr5i", "password": "gjNTVItrH2X78hxJ"}' 'gaVfw5Vnyq8OzTE8' --login_with_auth "Bearer foo"
iam-admin-verify-user-without-verification-code-v3 '9WDNoMcOmbfJrCJQ' --login_with_auth "Bearer foo"
iam-admin-update-client-secret-v3 '{"newSecret": "Ij1haAosKglqaCXE"}' '9ytpIO8btO3OwNEG' --login_with_auth "Bearer foo"
iam-admin-check-third-party-login-platform-availability-v3 'SW5TaW4to7QCY2NG' --login_with_auth "Bearer foo"
iam-get-third-party-login-platform-defaults-v3 'Gvi9kg3rMIzNmhJT' --login_with_auth "Bearer foo"
iam-admin-get-roles-v3 --login_with_auth "Bearer foo"
iam-admin-create-role-v3 '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "KlwjfJ3TJ2xVpge7", "namespace": "0WsLfgbZieRvJI5s", "userId": "T9DH3DfLCv8q4Thm"}, {"displayName": "q09bBgPAYxrBE9jl", "namespace": "nTgtgW33wDwD9RKv", "userId": "QX4yFQFdrRoM6Foq"}, {"displayName": "CYw7AlxO6qdFpc71", "namespace": "sSck3ggZWJlSlCQM", "userId": "Dji329PfVrvMEPtp"}], "members": [{"displayName": "sSNcpK1QkB2Sy8Ww", "namespace": "79LVeVskqeUB7RSa", "userId": "yqGFguhh3bvadRth"}, {"displayName": "dbVApebRA09rW8i8", "namespace": "krFWJhe03coRFok5", "userId": "d3AyGrZO8GuoXNSo"}, {"displayName": "VEBG7VbBPUWipz9C", "namespace": "05YabFX4FCK5ucTF", "userId": "sAFzaO3yJpA3KMxB"}], "permissions": [{"action": 23, "resource": "UbUDSiefGEdLucrt", "schedAction": 82, "schedCron": "M9y66Drf4SSGGt3M", "schedRange": ["iBKohow3kKoaP1K4", "CDuH1mMIfOCDyVAH", "rHncR5dShqiBUI9e"]}, {"action": 38, "resource": "Q0vqsL9SomqWsGA7", "schedAction": 48, "schedCron": "yxi0QzZWfmP2sx0K", "schedRange": ["O5bEJaPnAFjsodyJ", "QVVBrShGbIIuqK8C", "403HgoXCR6XOMXwK"]}, {"action": 7, "resource": "GPCxwEdkyuT3MgzR", "schedAction": 9, "schedCron": "lpDl5HsuracO5Mnj", "schedRange": ["nxD1OXkxShFVQTRe", "kLfjmy8zosRCRgVw", "brQKmb01yA7U7dGM"]}], "roleName": "jupZkZQY8CNyT4k3"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v3 'DIbfT22G5NpE130Y' --login_with_auth "Bearer foo"
iam-admin-delete-role-v3 'WSgxpKWtdtdtVW9a' --login_with_auth "Bearer foo"
iam-admin-update-role-v3 '{"deletable": false, "isWildcard": false, "roleName": "ENmxb9e7vXZV3ig8"}' 'Jg5VByeI3ycMcYYB' --login_with_auth "Bearer foo"
iam-admin-get-role-admin-status-v3 'ixKJXCISQdwec1m8' --login_with_auth "Bearer foo"
iam-admin-update-admin-role-status-v3 'BusV9tUh74KVo6Xq' --login_with_auth "Bearer foo"
iam-admin-remove-role-admin-v3 'jz2xUKLNWSmYyVvy' --login_with_auth "Bearer foo"
iam-admin-get-role-managers-v3 'elIJ8QgaLMqi836U' --login_with_auth "Bearer foo"
iam-admin-add-role-managers-v3 '{"managers": [{"displayName": "La7cfZl4VuY6rsZy", "namespace": "o6CBRRnoOikIxXKK", "userId": "IR6kPmswm5TCAU1c"}, {"displayName": "KApdJDnE73GLmSZn", "namespace": "s5owBhoUg4LsGP6K", "userId": "LPXkvUv2XiXaBzsm"}, {"displayName": "axjTZPlLitytGka7", "namespace": "Kv5TacQKF4OlRGdm", "userId": "XxETLEQrr3KCAV9a"}]}' 'lq3hK1G4kKooSNNU' --login_with_auth "Bearer foo"
iam-admin-remove-role-managers-v3 '{"managers": [{"displayName": "ZuiynZ64IwncZPk8", "namespace": "2GF3eTC0vzZUDj9d", "userId": "zGgGVxo9OHgfHumy"}, {"displayName": "fuBNisecYbcOpR45", "namespace": "VDlvSc0Mr7ImwCwG", "userId": "qOf0bNs97KvKyj3M"}, {"displayName": "qS7Dcmtfh50eObbr", "namespace": "mgjhWK0x0ZidAJ1C", "userId": "U1eD1La16Bw3JbUn"}]}' 'UDh5yGjjv4Mwrv2v' --login_with_auth "Bearer foo"
iam-admin-get-role-members-v3 'ancmR6Z7rb21A2E9' --login_with_auth "Bearer foo"
iam-admin-add-role-members-v3 '{"members": [{"displayName": "pX0BWCMqPsRk5htd", "namespace": "M5T3fDSrSHrkoqv2", "userId": "mM6soMaTvQq2a9Yd"}, {"displayName": "FNtRVSO0js0hG9xm", "namespace": "Snzd7zgUxAogcnGk", "userId": "Xk17QPkJHRhmLKQu"}, {"displayName": "QVFSKiXl8G2uf6E8", "namespace": "EajXLSAS8MKMaxQ1", "userId": "QyJCpKedhuzI7G9N"}]}' 'CKKXu1bqI2M5PmXf' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v3 '{"permissions": [{"action": 75, "resource": "6sZ6rjnkH4ExObpp", "schedAction": 58, "schedCron": "RvWnfmGFy0eUoOBd", "schedRange": ["90h9EDqSTOfoNewW", "jwMWDKEt6JhbJ0fw", "TDaq6b5RpMwhWPtn"]}, {"action": 7, "resource": "Jy1Oqn59tEGm9NYe", "schedAction": 95, "schedCron": "c12r0DVUGgGHkapT", "schedRange": ["CafFMdvYiCBuzUUw", "yI6Vtd4v9k4fv3kM", "iuQ3DhsKLxjt5srP"]}, {"action": 64, "resource": "6eW1kmb15QeIQF51", "schedAction": 5, "schedCron": "U53z6joBAhAlJGI2", "schedRange": ["YYb6ajBjgq6eY4PB", "NHKPx62tHxDb06ZF", "y3uglSp2UxvF2uLX"]}]}' 'WilRD7HD6LCgdFxR' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v3 '{"permissions": [{"action": 66, "resource": "VSCN6oCETQ8gIDRd", "schedAction": 61, "schedCron": "YLssMvy9gkfTMRrX", "schedRange": ["VRcAVRDX6gmDfNfP", "GYYSTunMgt3C8hEg", "uCqlMHiQN3HWJw9z"]}, {"action": 71, "resource": "UGfMjTU226l07jPl", "schedAction": 4, "schedCron": "TyM2qohglzO8AEl6", "schedRange": ["A9sh2x2ur2ccp7R7", "OqPqIjS4i0N9ytb3", "c8pVZ8GlU8962e6g"]}, {"action": 40, "resource": "vCmlh6Z1oz9BaixU", "schedAction": 95, "schedCron": "AzXmyHEV4g9P6a28", "schedRange": ["0S5RNB5dVCsB7xL4", "axSPgPCiwLxCFLDi", "xZwVtt3RVTl0tR00"]}]}' 'oQgcHdGGK3x76U1E' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v3 '["IcklttmrpgF5szl0", "sMY8es36r1FgR70e", "NLHkVrEFd8xArWJu"]' 'CAIfNBSHgpFNw9K9' --login_with_auth "Bearer foo"
iam-admin-delete-role-permission-v3 '32' 'r6WvBxmBvNj3ktaD' 'f9B22HGgxakPt7IY' --login_with_auth "Bearer foo"
iam-admin-get-my-user-v3 --login_with_auth "Bearer foo"
iam-user-authentication-v3 'zaZUTmvsEzLPnnGs' 'nfmBerp84qjwzWpC' 'F1vyamjsEzwtLPxK' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-authentication-with-platform-link-v3 '1os4qR8LaQzEb39s' 'ZTdFfC8x5aHLsXHl' 'm1RJTTy9JrNz1K5M' '1qgFddYvifGHawNx' --login_with_auth "Bearer foo"
iam-authenticate-and-link-forward-v3 '6yhniEHLbEQKc0aU' 'vrKXDIjYC4df9qsw' 'SlpCI8DhjlxUyrs3' 'OSesE5p0DwUj2HKU' --login_with_auth "Bearer foo"
iam-public-get-system-config-v3 --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v3 'vPYUcQBxMSdOOsn2' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-one-time-linking-code-v3 'Nd8Jpa19GJDK46Ee' --login_with_auth "Bearer foo"
iam-validate-one-time-linking-code-v3 'hx7xasqMY9aulsL6' --login_with_auth "Bearer foo"
iam-request-token-by-one-time-link-code-response-v3 'NOV5agpS6A5mkufB' 'pWVxIK9D2bTcgaKo' --login_with_auth "Bearer foo"
iam-get-country-location-v3 --login_with_auth "Bearer foo"
iam-logout --login_with_auth "Bearer foo"
iam-request-token-exchange-code-v3 'ccaSwWcZmzCWGI1c' --login_with_auth "Bearer foo"
iam-admin-retrieve-user-third-party-platform-token-v3 'IQcPWAShIhieSKUf' '3zKbyQk2vQTYX1xs' --login_with_auth "Bearer foo"
iam-revoke-user-v3 'th28NZZgsXycuQNG' --login_with_auth "Bearer foo"
iam-authorize-v3 'IDeHlf6IcX1K9JrK' 'code' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-introspection-v3 'Or2xx7rLwrPoWiyw' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-jwksv3 --login_with_auth "Bearer foo"
iam-send-mfa-authentication-code 'nxuDLLuIaSxoloIH' '1gBCWVFrvls0Zwos' 'KhDlLfTKxpVOXvGS' --login_with_auth "Bearer foo"
iam-change2fa-method 'rdkqddI3ezqu6FB0' 'sL2xt6fX9j7rhZCA' --login_with_auth "Bearer foo"
iam-verify2fa-code 'lDlVKBsLZiBRXszE' '7CL1cQCSoqHvH7g6' '3cOx6yrIw37pKOLr' 'false' --login_with_auth "Bearer foo"
iam-verify2fa-code-forward '5i3gr3Cc4M2O7NrT' 'QO7KLdZDGwqx7T3l' '1ut2oyolliYsTJUm' 'pscwLcUml3KuoMKh' --login_with_auth "Bearer foo"
iam-o-auth-dynamic-client-register-with-namespace-v3 '{"client_name": "7tprnacA34xmIOjF", "client_uri": "LgKR4LjEWhOScvtQ", "grant_types": ["92iD02YMvEUNfoL7", "JCcMo7GxxXdbYCRe", "xPekTsQxMTfaSot7"], "redirect_uris": ["aohFYy4VxwHIJ9gz", "xqAw4vBGQAeh0VTi", "TP4PSrXUS6jYI9ls"], "response_types": ["QFD43Df5qUZOFzpF", "d6b5Jc5TETHcup8G", "G0VCMTFJ6svTyo9R"], "scopes": ["Hget5hzB52BDFopx", "UwkMuSqQnKzDgDAt", "qE3kuybwTQFYEJjI"], "token_endpoint_auth_method": "YwqfSRy8GgVk77fd"}' --login_with_auth "Bearer foo"
iam-retrieve-user-third-party-platform-token-v3 '1GS5YkyhAiAItnWU' 'mD225fp1egsx3Erh' --login_with_auth "Bearer foo"
iam-auth-code-request-v3 'eNwqd5priclNNqLy' 'rlzrJ4QHbfnAdtku' --login_with_auth "Bearer foo"
iam-platform-token-grant-v3 'jxHff7n1yaNCcjgF' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-get-revocation-list-v3 --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-token-revocation-v3 'hS0URBhl0L5FCbOn' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v3 'steam' '6W2B2uPQLrt2t6bV' --login_with_auth "Bearer foo"
iam-token-grant-v3 'password' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-verify-token-v3 'A1xW6okIqmd87ir9' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-platform-authentication-v3 'op4YfGTno5oHzqY3' 'DgykA8zBJX0rkOHU' --login_with_auth "Bearer foo"
iam-platform-token-refresh-v3 'kY5aSlqhYoSXbn6l' '5xAzc1nc3eFm950d' --login_with_auth "Bearer foo"
iam-public-get-country-age-restriction-v3 'tVAo7w4e3v5mh6Ru' --login_with_auth "Bearer foo"
iam-public-get-config-value-v3 'm5pbgEt39uJQpgEt' --login_with_auth "Bearer foo"
iam-public-get-country-list-v3 --login_with_auth "Bearer foo"
iam-public-get-namespace-scoped-input-validations --login_with_auth "Bearer foo"
iam-public-get-namespace-scoped-input-validation-by-field 'chTe3nt7t9ztprSf' --login_with_auth "Bearer foo"
iam-retrieve-all-active-third-party-login-platform-credential-public-v3 --login_with_auth "Bearer foo"
iam-retrieve-active-oidc-clients-public-v3 'W9OutADrNGBWSJ1z' --login_with_auth "Bearer foo"
iam-public-get-profile-update-strategy-v3 --login_with_auth "Bearer foo"
iam-public-get-async-status 'QKxVmRTawjiZPMoZ' --login_with_auth "Bearer foo"
iam-public-search-user-v3 --login_with_auth "Bearer foo"
iam-public-create-user-v3 '{"PasswordMD5Sum": "ZcyGEHxAKDQher3u", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "JyveSRiBq23kyH9j", "policyId": "QbHWkcVk0X28GS54", "policyVersionId": "vl7gIKBc7OYTylFR"}, {"isAccepted": true, "localizedPolicyVersionId": "nzZVnkLT0Lb85nmp", "policyId": "dN26BY5YI0jeO2zM", "policyVersionId": "DSy4kyqyKgrtEPdX"}, {"isAccepted": false, "localizedPolicyVersionId": "qQxctuVaqPJGAHEZ", "policyId": "muQrZ8GaQ4OZ2nDo", "policyVersionId": "dm4TNs8mAj6IKSYF"}], "authType": "dJwgZsRPOzwuDSdG", "code": "l1A2vaNeDiSqTfmA", "country": "Vg50kOdJagEmTuax", "dateOfBirth": "lxgywkbdOsyxX1tf", "displayName": "W488oYUT4jyCVJ0V", "emailAddress": "8obTlGVThz4bm41o", "password": "IcV33yjPxibDjfF7", "reachMinimumAge": false, "uniqueDisplayName": "XA3qbg55SyienCOD"}' --login_with_auth "Bearer foo"
iam-check-user-availability 'Z0mnOpPTVxEgBFzG' '8tlkxWKCU1XN4gl7' --login_with_auth "Bearer foo"
iam-public-send-registration-code '{"emailAddress": "yHvEqpJSrDXVwCkh", "languageTag": "OQ161TFjROYJm75V"}' --login_with_auth "Bearer foo"
iam-public-verify-registration-code '{"code": "IuCOCkt2W1DfI8Qt", "emailAddress": "gODk9K6DcMnyCPn1"}' --login_with_auth "Bearer foo"
iam-public-forgot-password-v3 '{"emailAddress": "FylWdaNV1VaZTkbb", "languageTag": "uWiiA4UTDgS2SVEo"}' --login_with_auth "Bearer foo"
iam-public-validate-user-input '{"displayName": "5M80LLbku9GYH4ij", "password": "qOVM50tCqkZfsSxA", "uniqueDisplayName": "bDJ7sHCLup8pmEos", "username": "OXglQwwdeLVpmXqR"}' --login_with_auth "Bearer foo"
iam-get-admin-invitation-v3 'wVjc3W2ANmE3VVsQ' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v3 '{"PasswordMD5Sum": "1fm9EUdiaRjuLsKZ", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "aeWKMC8wsOByQAMA", "policyId": "gqFEzEt8umj5XhKn", "policyVersionId": "w7MHDwFVKUC2ecnp"}, {"isAccepted": true, "localizedPolicyVersionId": "HUGcs1ACMvoY4jWH", "policyId": "9dFmOHW0j9suukPE", "policyVersionId": "4JwQONQ2vCbMn0Oi"}, {"isAccepted": false, "localizedPolicyVersionId": "cuK2hHviBEWpbusO", "policyId": "6EyVqstpgZpbz77y", "policyVersionId": "88rUFum2ZcA8iKcF"}], "authType": "0bkfjcTEFXcTwEtn", "code": "HxP5pVtN4jNVIdru", "country": "EA39uCJzsE8WObt6", "dateOfBirth": "t0w8LOBxE15JYj4I", "displayName": "qWK09l4wkrzahXR1", "emailAddress": "sDEDVKDINE3HjCiV", "password": "R1dQ8kuhb4pUwnGp", "reachMinimumAge": true, "uniqueDisplayName": "8217m7qNkQiKp2oa"}' 'c8QTNEuBbeuQqm9w' --login_with_auth "Bearer foo"
iam-update-user-v3 '{"avatarUrl": "M7mgTtUdPVcQijMB", "country": "hs0kDP6d3nuUZ41m", "dateOfBirth": "SeS9SnGqhJOvykBc", "displayName": "DpzD9zh6dtPK4fVH", "languageTag": "LMvrCsH3RYxH2Up9", "uniqueDisplayName": "VthPjFrK7Hip0eON", "userName": "FDgUPShG8wwFKY9A"}' --login_with_auth "Bearer foo"
iam-public-partial-update-user-v3 '{"avatarUrl": "MpcwJd4SrigIxAhb", "country": "FMZfxaznlDQbzTiF", "dateOfBirth": "rQB1yUonirH4URx3", "displayName": "NkKQBYrlUaMiFEWU", "languageTag": "T8cAFO5zEw8GENEJ", "uniqueDisplayName": "YPKxxOw7xNQ98IEb", "userName": "c9YITN98j4P2AGei"}' --login_with_auth "Bearer foo"
iam-public-send-verification-code-v3 '{"context": "dXRRnIAJfKVjOn6r", "emailAddress": "tILNJVv2DLLUyBt5", "languageTag": "hDs45siG30Lv9iGa", "upgradeToken": "5mkZjnRXVcg6AByN"}' --login_with_auth "Bearer foo"
iam-public-user-verification-v3 '{"code": "pBo2JYkwLdmR97u9", "contactType": "MVUii4KpYcb1AUsE", "languageTag": "SaBOTHnbX9tC9PQl", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v3 '{"code": "AGbMtEybfcAl0mns", "country": "AkRT2k0AzdgIunRk", "dateOfBirth": "TxsGdrpNELM8Lfku", "displayName": "t0wnT24wh59RGSbB", "emailAddress": "Mh7jpszuVk6iPdJ2", "password": "boQqCCyJfThvCJie", "uniqueDisplayName": "qRSGN8Mm74HlSZzp", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-verify-headless-account-v3 '{"emailAddress": "aEW4GkHG5OIVuGv4", "password": "7XJpkMiopQrVL3ZZ"}' --login_with_auth "Bearer foo"
iam-public-update-password-v3 '{"languageTag": "TVxqa9XM2gY14iWk", "mfaToken": "12Jffk8dwKNPUOHN", "newPassword": "ZxML3yoBM9qxd6PW", "oldPassword": "z7sVnMxge2inL8fB"}' --login_with_auth "Bearer foo"
iam-public-create-justice-user 'FP1ABaIKrEt8d3o7' --login_with_auth "Bearer foo"
iam-public-platform-link-v3 'cTS9OIIMErnNTLXH' 'rsOFsbhRow4iaYKy' --login_with_auth "Bearer foo"
iam-public-platform-unlink-all-v3 '0IjsDgbJ37DN2lDv' --login_with_auth "Bearer foo"
iam-public-force-platform-link-v3 'dh7okHl1wMht2Izq' '7TCUJhDsDefAS09V' --login_with_auth "Bearer foo"
iam-public-web-link-platform 'yQB1vR1mx6K17GL1' --login_with_auth "Bearer foo"
iam-public-web-link-platform-establish 'CrO4ZuoGZSxTzm8o' 'MSPIHPtqzIWIzg8p' --login_with_auth "Bearer foo"
iam-public-process-web-link-platform-v3 'bjnt1iBV8DpbjGts' '4UZDTfhAyZKhqilt' --login_with_auth "Bearer foo"
iam-public-web-reauth-platform 'y9NVlgxUmnfdOAmu' 'GDPR' --login_with_auth "Bearer foo"
iam-public-web-reauth-platform-establish 'koxQbrPngi87K58p' 'QswqKLutINusOsa9' --login_with_auth "Bearer foo"
iam-public-web-reauth-platform-process '2F6iwkJIYOLarmpW' 'yvib9CDW21ANrlpu' --login_with_auth "Bearer foo"
iam-public-get-users-platform-infos-v3 '{"platformId": "XD9H1u1CvzWPcZwk", "userIds": ["j1l6bf2F9EXOBj7v", "8LHYivmD0ekycMKl", "wJTNL2UCWUtaAD7Z"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "Zx1iefATWcDSqGYR", "code": "Mdz07xEJ40epssgJ", "emailAddress": "JC3CX0hpB1ZGMMo5", "languageTag": "DSozCuFsrBMtoOeL", "newPassword": "fMCYxSeeJOlxa395"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 'rghZwGhdZJkkGhYv' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 'XYMIyaEMEqOpwetb' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 '82b96rsH73hRfDgl' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 '29GWKpItMt4GszRu' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'fkDFLYyNBPlMrkse' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 '9SGcMuV5phhU315L' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["UC6HSMQ32UznXNd6", "ve29lqqtcLJW9eTJ", "vKNDFrx6LabyDnqX"], "requestId": "jXKPIcxh0x7T6RQG"}' 'nnW4ugGX6mKBbgTD' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 '9xL07ZzzIs3Jke34' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'ZAUuLP897ooMLnem' 'wKAvgDXNrFEE4Jf4' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'hQpsLOcLtZw0efmE' --login_with_auth "Bearer foo"
iam-public-forgot-password-without-namespace-v3 '{"clientId": "VcW7mxbS5UOoICxQ", "emailAddress": "Mit8555Niy4NNFpR", "languageTag": "E5pS85yTIRWvLRy5"}' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "8UKWPv3F7S0wCVlY", "emailAddress": "Qi9cfMCeNnu6OIG1", "languageTag": "PPLRDEXLXZWXvqNC", "upgradeToken": "HvNpeMjMzguq6HFI"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'qaqwH9J6JLb5f3SB' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["MyJUdwEBRrHAWUFq", "TooGGnPEgY0t7QQW", "l42byOwXgKyPhXmc"], "oneTimeLinkCode": "ysae8HpWH4xiz3fW"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'thJSu2pUIIuPLFAt' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "cWhjAP57QbWvSSp7"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler '1zEPPfmAQiqRRC2c' 'aquMRtQOILcaDqUI' --login_with_auth "Bearer foo"
iam-login-sso-client 'TBHQR5ISNoFR3GUx' --login_with_auth "Bearer foo"
iam-logout-sso-client 'dMuvmL0UBfwzaaeP' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 '3Wd0Wrb8s3GW0CY0' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 'vAfbq8xoCurq4lpH' 'XrbVBh60NUA2aKQw' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 'nXrmi6ya8u4sQPva' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "f1AcweR7tJW3MLMo", "deviceId": "b1hUnIzIpUM8KK1k", "deviceType": "GFN0NUNGKxdlAUDF", "enabled": true, "endDate": "uGPzAuT7M6OBrNwi", "ext": {"oKnXPVZaDcXsV1Tn": {}, "sZioDiBgprzahPB0": {}, "FKMa0YeyNBQWUHDB": {}}, "reason": "nBeePkqg6Zt1Lr5B"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'lO8K6LH4dSaa8XYH' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": true}' 'hSkxERZ2AQ1jvXYB' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'ar5RMmmGdWl0wpj5' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'tVfKU3D8WVPh0Z7Y' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'iGE2cyzTMBY7Xd0O' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 'oENg2Lw7uepmahXo' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "PUBnB0ZEJH3ebM71", "policyId": "Tg922xiBgHSka0Pz", "policyVersionId": "7I1WkIa0oZ1nXpW1"}, {"isAccepted": false, "localizedPolicyVersionId": "oi5DBOsQ0Gax0iX0", "policyId": "5IT9Agsjl5NmnSHh", "policyVersionId": "xNmCe4txY0MsPc9E"}, {"isAccepted": false, "localizedPolicyVersionId": "gf9JCJiEvhL8ZfwC", "policyId": "VJW9yspUOyHC9eKe", "policyVersionId": "XzrvzBllwzyC1aTW"}], "count": 62, "userInfo": {"country": "Zs97TJI8GPrM24F3"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "4mRoFNxv10ckMQVj", "policyId": "Kk3bWJ0ZuYSe3sI0", "policyVersionId": "x2hc8vaN1Off5gRZ"}, {"isAccepted": true, "localizedPolicyVersionId": "W3huAIzBPWBYKAEF", "policyId": "TdlKNh6GTzKjsCqx", "policyVersionId": "x24QM35bSkFrvGci"}, {"isAccepted": true, "localizedPolicyVersionId": "b7OY5YIpOLJW52uz", "policyId": "3c8pz63M0g4xXT5T", "policyVersionId": "s4e0uR47OzUGHeBK"}], "authType": "EMAILPASSWD", "code": "S4ezBRSiOyReviDa", "country": "xlPdhwmcH03yoMxz", "dateOfBirth": "RR6xd9rTh3ureaIb", "displayName": "xM3Wev9pZQjWAN0t", "emailAddress": "ny16ZHZtuSJGQCrM", "password": "7JEMRPkdTcAzkIln", "passwordMD5Sum": "dN5xeayr3vUKMuIi", "reachMinimumAge": true, "uniqueDisplayName": "LYu9O46OOzz9p57q", "username": "SpHerzO87cg7TqtM"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": false, "userIds": ["XQZZrSsuYiIPei0p", "XglJYnKkoCAZuolA", "WnxkImVbDP0QX31g"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["I7VmnGIRMvXe6Bip", "hIFe2bzr6qQw6fSE", "SkM19OPMBb12gpmS"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "hlmIt2nfhUaZGqjs", "country": "lu59GT2E6AacmZRX", "dateOfBirth": "Zm626POXWVj3KP1m", "displayName": "X0iYHXBU3Uk2tQm3", "languageTag": "07IORTyHnLYDAAg1", "skipLoginQueue": true, "tags": ["A4kZURmoGgxVRMPf", "8g1rbhfIMStMnSqr", "KWYOuITlYS2RYaD9"], "uniqueDisplayName": "WNKGhbLhjz1v0RBI", "userName": "O2rkJGmPaK6HEVIQ"}' 'Jd3930TGewjRyfo4' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "nWVZZbKFsKOmgEhj", "emailAddress": "H2wFzCpxxJLfAg5c"}' 'FT0gHAkltcR3eHFb' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "iAluHv7Hssd05pHB", "mfaToken": "JX5ln8PZbYVD8Ria"}' 'TsdD4d3kSbTkHPMU' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'vOAUXkw36cr2WJQq' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 'S7Tq4YIyZAFQ6lZf' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["a2jdNvpWf32JS1av", "9VNpVLT0LvqcfSdO", "1nAjY5FvADb3GUQg"], "roleId": "ci632w6LUrHuKBoN"}' 'TpPQXDNHto74GcmV' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["f0fbCU9QdPuWeMEe", "L0EJG67g4W1eAmDx", "P23qstMuikKc6VNU"], "roleId": "8570siWm3V9sirE0"}' 'JOQxWeHypqCWMDPR' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["I2cCk8zHR8VyCC0E", "QwE0cXokXbwKDtVm", "rYQu7hZvHfiT9s9p"], "roleId": "K8HuUY1QQHQ0NCEd"}' 'dJtx6GV01vD7lNLx' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "pIldsgB4hOxb88Wg"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'KSLIpneDQCfwucHR' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'L3o2NstrL6TsJeRc' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "tHvjM7X1fjzknv2H"}' 'ZMIL2P2bh14LroFT' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 28, "resource": "iufH2YR6QU7fj6w1", "schedAction": 0, "schedCron": "XkS3XQfMuzZh4AhZ", "schedRange": ["Re2hgU56xtyJtnbT", "DXu7FbleSP5PcdOu", "q0m0rvakR8rcwojL"]}, {"action": 89, "resource": "JDujYnVnFK6gB6Zx", "schedAction": 58, "schedCron": "2BGBXjNyRCtPOr1F", "schedRange": ["U3QZy3gdDms3kb1h", "tW0UGJpwQZlXuzu3", "m9u67JjCDwg186hG"]}, {"action": 100, "resource": "fEjkZhEpAJMCxMp2", "schedAction": 72, "schedCron": "zjDhTrcBKtU956hO", "schedRange": ["g8oukDVdweG0sFHx", "THa2k60SzCqUgq1g", "LbcIMevTmC631p7q"]}]}' '794bu49lINFTtERA' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 56, "resource": "T2h3hcQ2wV3ZbBTn", "schedAction": 81, "schedCron": "B9jKaunAcylsau7w", "schedRange": ["RQmL4i3eRyIECEDa", "1I4lwXqwPfq3VzHQ", "jtolx64w1gyvjacK"]}, {"action": 39, "resource": "oLulzp3sZxImVK5y", "schedAction": 14, "schedCron": "KQYlqMmu2pvF6rP0", "schedRange": ["3bQaq1cT88H6RCW8", "gJmGzDlqxtLsR2AG", "OiPhNt2IdH8aYYUT"]}, {"action": 66, "resource": "mma833TDzk66ix88", "schedAction": 37, "schedCron": "lIMY5tTJw4KV104M", "schedRange": ["tMhKHmSjqPuQZX5K", "jdNrEwfWo2MwulLg", "4bsO4YHEYLjTSNDf"]}]}' '3zazm6p5Y1tkG9Ww' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["U4Ty6Ch5QYyFjuBq", "uE7xssm4hxczskbS", "UbOZ9WNl3apJmNAb"]' 'l1g5ZmTTGYRbP4QV' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'ey9pEz1TV5cUtPBs' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["w01i5Mf7WvbNSeeD", "NfUESLlwHv3JgteO", "LyKp8a1VqxXnRhDd"], "namespace": "9TGkO6aIYqftw1Sr", "userId": "M2nhSEanfUYrMU6A"}' '43UKGpvC1cr5T1PS' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "XhduTWchzXDv3TAt", "userId": "BjP4HSuiYCbG0UyY"}' 'UJmNL8p6AbdtU0CD' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["rlQpKB8qoel2QK3a", "SOYdmMDikc3Fjm9H", "oQDemtiQvURYZCeF"], "emailAddresses": ["30RT9rBgM8o7lxXq", "7TkdM7FVDCBcvVeg", "rZddP8lLQo6tHj4z"], "isAdmin": false, "isNewStudio": true, "languageTag": "Adu9BYRHrVTehrqg", "namespace": "vEtEs2LpE0qfbvdU", "roleId": "8hlDoC9FnxqBlPBY"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "J7X6uVy7FWTSfMi2", "country": "CPVGxjcdpdCqVeeP", "dateOfBirth": "MSqb8y8qJTUQY40Z", "displayName": "rpn0vAD9YsPeDWrA", "languageTag": "VQZSvgWuCuLsUGrV", "skipLoginQueue": true, "tags": ["AbhS54ZuQHKersDm", "JLUHAKtfXCKOna8D", "djtZhh6ofsUoRh6r"], "uniqueDisplayName": "0e0J6vyqPw7YlmV3", "userName": "kES0Hi88UYgSV40O"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "vY7apPCrN5bEhmuH", "mfaToken": "gKeWizEpw1zN0mOY"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'gGhHMz9dddLWJWDu' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "SYtCaIv4Lp91wYUJ", "mfaToken": "Pbvzn8TYoMDAaUXS"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "uBQdvdhJoT0WK5ng", "mfaToken": "NUxDKfZYofPGUbSa"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'A00nKxQjYU6KlavI' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'iLxU2I1GyJS48Hxu' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 '8Ju4XSAnlXRYB9Bg' 'SZBvkehRn83B0nrW' '1qx3NJTugVWXz8dv' '7BiEUqnzxs2deMF8' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'UAJIHEZv5zyUUyNJ' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'kvA5xF3zHtZSd3Qz' 'XhkrN4pWryt4XTNw' 'pp0ni1YfIgLZ4YIz' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'YOilX1e1825iasun' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' 'lokbAFW8RgBUwBL2' --login_with_auth "Bearer foo"
iam-token-grant-v4 'urn:ietf:params:oauth:grant-type:login_queue_ticket' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'BqM8UzvKqeoTiNKG' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "RUMrimGAz6OhmHOp", "platformUserIds": ["Cdr3WzDm3hJdd6ua", "O9TiTPnIh2iaIBpY", "C4txul6VKYlNYYlH"]}' 'PwKDpJmkeoAkp3Z4' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'pgyJYwclb4gd4QgQ' 'ut2hiPuDdOPHcN9d' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "bHnfs4tLVOYQCWMk", "policyId": "tmiKd9vLPP0w52JR", "policyVersionId": "AZxMWdoleYNHXeOp"}, {"isAccepted": false, "localizedPolicyVersionId": "a15WVuE5cYVP9tQS", "policyId": "a27BnPyq3I1BLtGE", "policyVersionId": "ZDRNkk4DJUofJXK8"}, {"isAccepted": true, "localizedPolicyVersionId": "0zCYRVmbfzwUmsy0", "policyId": "stUmKdXiiTObNdqk", "policyVersionId": "Wa13g3pgHx6uPf6j"}], "authType": "EMAILPASSWD", "country": "gdDTDb3WdnOpzTrR", "dateOfBirth": "zCCafADJfWBspT3M", "displayName": "LwJZquMQSPp5XD4S", "emailAddress": "1ilfgff7Et4uY8nl", "password": "BwGNHgfgwZwVMvsh", "passwordMD5Sum": "Gmsg6ZJYnkHDnHTl", "uniqueDisplayName": "RugM7a2UZgeesipb", "username": "P027okM5E8tAajVS", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "LRj306RDuaSixXEd", "policyId": "loYZBkatNLc42eq0", "policyVersionId": "O6VsXtOlQwj5xPvm"}, {"isAccepted": false, "localizedPolicyVersionId": "QboMHCtzEF9FSeg6", "policyId": "WYgtfuqJHrs4e3Rn", "policyVersionId": "WR30MdBZezfwc3H0"}, {"isAccepted": true, "localizedPolicyVersionId": "ZAtyjTxnlmSyjEaF", "policyId": "H2DRN6HIEqIFEcS0", "policyVersionId": "ynIMOYWpUYUQMooi"}], "authType": "EMAILPASSWD", "code": "izikCh6q0yq2WAHt", "country": "L7IWE3MFqvfDG5jv", "dateOfBirth": "MOaXrDlEX42U0syr", "displayName": "GNhBmgT2q0kIbrJ2", "emailAddress": "S5Pf1Lvg8kYEVylI", "password": "NJpxFY8E6pU8eHjh", "passwordMD5Sum": "0aTjIOaQt0snbE0y", "reachMinimumAge": true, "uniqueDisplayName": "RaXD4HDmdvhMXxiK", "username": "R29LKIhNU43K8bih"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "MHhf5R2MkxQTAYGf", "policyId": "E6hXZ7XLoWCGf0dZ", "policyVersionId": "EeXBd6mGG6SHcZbX"}, {"isAccepted": true, "localizedPolicyVersionId": "wNnT6A9zosmDnXon", "policyId": "cy7NZQ4PkAPXBCfk", "policyVersionId": "E1Fb0y94eP7yh0zs"}, {"isAccepted": false, "localizedPolicyVersionId": "hR60HZwUwk48XK7M", "policyId": "XHbEwAvvpEeHhXiJ", "policyVersionId": "cJqYSxVKUYMimVLz"}], "authType": "EMAILPASSWD", "code": "4466u8agb5HPsBU0", "country": "Eo6QJ9vBRJ4UP09f", "dateOfBirth": "abC01Thm9f4AWpyi", "displayName": "KVT3OvEujx5yjtQS", "emailAddress": "CJaOHzpb623EciYo", "password": "YOPVg6DLEZ6DxpwB", "passwordMD5Sum": "m2N8PdQ5mQaGXEbn", "reachMinimumAge": false, "uniqueDisplayName": "WA76Kl2mHHoz6qBQ", "username": "nEDgX49n1xTDFcmO"}' 'm1sqdIWU6ERylESg' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "f5dXMrPoYSohfrLy", "country": "XMSrC62xYtDwflNG", "dateOfBirth": "fufW5cWeg6eSCyps", "displayName": "ceITTkJGGCVF6LrI", "languageTag": "LDLviUCzmDAaW5xz", "uniqueDisplayName": "1c7ZuZXUCBYnkY0L", "userName": "EBSYBdUSiTOrhB8h"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "Vs29WOKmZRTtgycL", "emailAddress": "zXz6lUMKi5mweMEZ"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "o2ZnL1Zg2JfH4f73", "country": "jAevOnES6YJLlb2A", "dateOfBirth": "fUEEBbqMMKvkOsR1", "displayName": "fHUyirMVMOFES2J2", "emailAddress": "OzNlJE3uqZz574g3", "password": "1cA0PwZxTIZVSGQy", "reachMinimumAge": false, "uniqueDisplayName": "zhs9Asy4d629N4Yn", "username": "olVWA2dWxBs056jk", "validateOnly": true}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "1vlCiZAZHCWMXxVh", "displayName": "8HTrKqVwnpPn8N5x", "emailAddress": "MRgU7cPqNZrLCRRU", "password": "ysya4J3rvTzMTMSw", "uniqueDisplayName": "rNov2GW9i54JY23A", "username": "UWFTLq0W1JqwKs1m"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "O80L7IOHlf6j8PZO", "mfaToken": "zUiQKZqz5NSp0B7L"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'ODN3Boi2sSAO2n4M' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "ZQt753XQB93rOW0g", "mfaToken": "uPoQbYzc1RDVhs2l"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "hdzxxgibuqUuyW3c", "mfaToken": "Mz9YyduMomEHcU15"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'St4v8ry8IyqNVv0K' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'VpXJTMx3Y8Um1iqe' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 'hObg3OZ9j0HDtbqM' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "FlgHKQIRtLfPngD8", "emailAddress": "3roOeqE7fcCAeExe", "languageTag": "QX43LpmdMiZeyIrA", "namespace": "4QUKSJgECzvaWUCA", "namespaceDisplayName": "7wKru7ry3AQ2sEHv"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "xjWoM1rNJLM0OOVG", "policyId": "5cG6XxENbWqlX7id", "policyVersionId": "zjpKDfwl6XlCF6Yx"}, {"isAccepted": true, "localizedPolicyVersionId": "D8tJQwZvUVInos5R", "policyId": "K100yH89i8ZDPXRL", "policyVersionId": "8cbTAntB1STaab1U"}, {"isAccepted": false, "localizedPolicyVersionId": "zz606UGXPhoNZlXM", "policyId": "ef7AvS3TfKx6ByTy", "policyVersionId": "gbtOtcQS4Cmgw1wR"}], "code": "UnIVYxY6OhdkrYiC", "country": "inoVOzo4Plv1IlTp", "dateOfBirth": "EhjTFYdzsUNvQAn2", "displayName": "LuMjLqwmVz3zKsfj", "emailAddress": "z1mFkyxoUzfMFoXC", "password": "OguSq2A4R3wDdSkN", "reachMinimumAge": false, "uniqueDisplayName": "h5yNbYXmlAOi1SC3", "username": "I1SjkH42LtyZKrTJ", "validateOnly": false}' --login_with_auth "Bearer foo"
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
echo "1..447"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetAuthorizationServerMetadataWithNamespace
$PYTHON -m $MODULE 'iam-get-authorization-server-metadata-with-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetAuthorizationServerMetadataWithNamespace' test.out

#- 3 GetBansType
eval_tap 0 3 'GetBansType # SKIP deprecated' test.out

#- 4 GetListBanReason
eval_tap 0 4 'GetListBanReason # SKIP deprecated' test.out

#- 5 GetClients
eval_tap 0 5 'GetClients # SKIP deprecated' test.out

#- 6 CreateClient
eval_tap 0 6 'CreateClient # SKIP deprecated' test.out

#- 7 GetClient
eval_tap 0 7 'GetClient # SKIP deprecated' test.out

#- 8 UpdateClient
eval_tap 0 8 'UpdateClient # SKIP deprecated' test.out

#- 9 DeleteClient
eval_tap 0 9 'DeleteClient # SKIP deprecated' test.out

#- 10 UpdateClientPermission
eval_tap 0 10 'UpdateClientPermission # SKIP deprecated' test.out

#- 11 AddClientPermission
eval_tap 0 11 'AddClientPermission # SKIP deprecated' test.out

#- 12 DeleteClientPermission
eval_tap 0 12 'DeleteClientPermission # SKIP deprecated' test.out

#- 13 UpdateClientSecret
eval_tap 0 13 'UpdateClientSecret # SKIP deprecated' test.out

#- 14 GetClientsbyNamespace
eval_tap 0 14 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 15 CreateClientByNamespace
eval_tap 0 15 'CreateClientByNamespace # SKIP deprecated' test.out

#- 16 DeleteClientByNamespace
eval_tap 0 16 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 17 CreateUser
eval_tap 0 17 'CreateUser # SKIP deprecated' test.out

#- 18 GetAdminUsersByRoleID
eval_tap 0 18 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 19 GetUserByLoginID
eval_tap 0 19 'GetUserByLoginID # SKIP deprecated' test.out

#- 20 GetUserByPlatformUserID
eval_tap 0 20 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 21 ForgotPassword
eval_tap 0 21 'ForgotPassword # SKIP deprecated' test.out

#- 22 GetUsersByLoginIds
eval_tap 0 22 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 23 ResetPassword
eval_tap 0 23 'ResetPassword # SKIP deprecated' test.out

#- 24 SearchUser
eval_tap 0 24 'SearchUser # SKIP deprecated' test.out

#- 25 GetUserByUserID
eval_tap 0 25 'GetUserByUserID # SKIP deprecated' test.out

#- 26 UpdateUser
eval_tap 0 26 'UpdateUser # SKIP deprecated' test.out

#- 27 DeleteUser
eval_tap 0 27 'DeleteUser # SKIP deprecated' test.out

#- 28 BanUser
eval_tap 0 28 'BanUser # SKIP deprecated' test.out

#- 29 GetUserBanHistory
eval_tap 0 29 'GetUserBanHistory # SKIP deprecated' test.out

#- 30 DisableUserBan
eval_tap 0 30 'DisableUserBan # SKIP deprecated' test.out

#- 31 EnableUserBan
eval_tap 0 31 'EnableUserBan # SKIP deprecated' test.out

#- 32 ListCrossNamespaceAccountLink
eval_tap 0 32 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 33 DisableUser
eval_tap 0 33 'DisableUser # SKIP deprecated' test.out

#- 34 EnableUser
eval_tap 0 34 'EnableUser # SKIP deprecated' test.out

#- 35 GetUserInformation
eval_tap 0 35 'GetUserInformation # SKIP deprecated' test.out

#- 36 DeleteUserInformation
eval_tap 0 36 'DeleteUserInformation # SKIP deprecated' test.out

#- 37 GetUserLoginHistories
eval_tap 0 37 'GetUserLoginHistories # SKIP deprecated' test.out

#- 38 UpdatePassword
eval_tap 0 38 'UpdatePassword # SKIP deprecated' test.out

#- 39 SaveUserPermission
eval_tap 0 39 'SaveUserPermission # SKIP deprecated' test.out

#- 40 AddUserPermission
eval_tap 0 40 'AddUserPermission # SKIP deprecated' test.out

#- 41 DeleteUserPermission
eval_tap 0 41 'DeleteUserPermission # SKIP deprecated' test.out

#- 42 GetUserPlatformAccounts
eval_tap 0 42 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 43 GetUserMapping
eval_tap 0 43 'GetUserMapping # SKIP deprecated' test.out

#- 44 GetUserJusticePlatformAccount
eval_tap 0 44 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 45 PlatformLink
eval_tap 0 45 'PlatformLink # SKIP deprecated' test.out

#- 46 PlatformUnlink
eval_tap 0 46 'PlatformUnlink # SKIP deprecated' test.out

#- 47 GetPublisherUser
eval_tap 0 47 'GetPublisherUser # SKIP deprecated' test.out

#- 48 SaveUserRoles
eval_tap 0 48 'SaveUserRoles # SKIP deprecated' test.out

#- 49 AddUserRole
eval_tap 0 49 'AddUserRole # SKIP deprecated' test.out

#- 50 DeleteUserRole
eval_tap 0 50 'DeleteUserRole # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccount
eval_tap 0 51 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 52 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 52 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 53 UserVerification
eval_tap 0 53 'UserVerification # SKIP deprecated' test.out

#- 54 SendVerificationCode
eval_tap 0 54 'SendVerificationCode # SKIP deprecated' test.out

#- 55 Authorization
eval_tap 0 55 'Authorization # SKIP deprecated' test.out

#- 56 GetJWKS
eval_tap 0 56 'GetJWKS # SKIP deprecated' test.out

#- 57 NamespaceScopedPlatformTokenGrant
eval_tap 0 57 'NamespaceScopedPlatformTokenGrant # SKIP deprecated' test.out

#- 58 RevokeUser
eval_tap 0 58 'RevokeUser # SKIP deprecated' test.out

#- 59 GetRevocationList
eval_tap 0 59 'GetRevocationList # SKIP deprecated' test.out

#- 60 RevokeToken
eval_tap 0 60 'RevokeToken # SKIP deprecated' test.out

#- 61 RevokeAUser
eval_tap 0 61 'RevokeAUser # SKIP deprecated' test.out

#- 62 TokenGrant
eval_tap 0 62 'TokenGrant # SKIP deprecated' test.out

#- 63 VerifyToken
eval_tap 0 63 'VerifyToken # SKIP deprecated' test.out

#- 64 GetRoles
eval_tap 0 64 'GetRoles # SKIP deprecated' test.out

#- 65 CreateRole
eval_tap 0 65 'CreateRole # SKIP deprecated' test.out

#- 66 GetRole
eval_tap 0 66 'GetRole # SKIP deprecated' test.out

#- 67 UpdateRole
eval_tap 0 67 'UpdateRole # SKIP deprecated' test.out

#- 68 DeleteRole
eval_tap 0 68 'DeleteRole # SKIP deprecated' test.out

#- 69 GetRoleAdminStatus
eval_tap 0 69 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 70 SetRoleAsAdmin
eval_tap 0 70 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 71 RemoveRoleAdmin
eval_tap 0 71 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 72 GetRoleManagers
eval_tap 0 72 'GetRoleManagers # SKIP deprecated' test.out

#- 73 AddRoleManagers
eval_tap 0 73 'AddRoleManagers # SKIP deprecated' test.out

#- 74 RemoveRoleManagers
eval_tap 0 74 'RemoveRoleManagers # SKIP deprecated' test.out

#- 75 GetRoleMembers
eval_tap 0 75 'GetRoleMembers # SKIP deprecated' test.out

#- 76 AddRoleMembers
eval_tap 0 76 'AddRoleMembers # SKIP deprecated' test.out

#- 77 RemoveRoleMembers
eval_tap 0 77 'RemoveRoleMembers # SKIP deprecated' test.out

#- 78 UpdateRolePermissions
eval_tap 0 78 'UpdateRolePermissions # SKIP deprecated' test.out

#- 79 AddRolePermission
eval_tap 0 79 'AddRolePermission # SKIP deprecated' test.out

#- 80 DeleteRolePermission
eval_tap 0 80 'DeleteRolePermission # SKIP deprecated' test.out

#- 81 AdminGetAgeRestrictionStatusV2
eval_tap 0 81 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 82 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 82 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 83 GetListCountryAgeRestriction
eval_tap 0 83 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 84 UpdateCountryAgeRestriction
eval_tap 0 84 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 85 AdminSearchUsersV2
eval_tap 0 85 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 86 AdminGetUserByUserIdV2
eval_tap 0 86 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 87 AdminUpdateUserV2
eval_tap 0 87 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 88 AdminBanUserV2
eval_tap 0 88 'AdminBanUserV2 # SKIP deprecated' test.out

#- 89 AdminGetUserBanV2
eval_tap 0 89 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 90 AdminDisableUserV2
eval_tap 0 90 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 91 AdminEnableUserV2
eval_tap 0 91 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 92 AdminResetPasswordV2
eval_tap 0 92 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 93 AdminDeletePlatformLinkV2
eval_tap 0 93 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 94 AdminPutUserRolesV2
eval_tap 0 94 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 95 AdminCreateUserRolesV2
eval_tap 0 95 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 96 PublicGetCountryAgeRestriction
eval_tap 0 96 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 97 PublicCreateUserV2
eval_tap 0 97 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 98 PublicForgotPasswordV2
eval_tap 0 98 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 99 PublicResetPasswordV2
eval_tap 0 99 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 100 PublicGetUserByUserIDV2
eval_tap 0 100 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 101 PublicUpdateUserV2
eval_tap 0 101 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 102 PublicGetUserBan
eval_tap 0 102 'PublicGetUserBan # SKIP deprecated' test.out

#- 103 PublicUpdatePasswordV2
eval_tap 0 103 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 104 GetListJusticePlatformAccounts
eval_tap 0 104 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 105 PublicPlatformLinkV2
eval_tap 0 105 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 106 PublicDeletePlatformLinkV2
eval_tap 0 106 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 107 AdminGetBansTypeV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'AdminGetBansTypeV3' test.out

#- 108 AdminGetListBanReasonV3
$PYTHON -m $MODULE 'iam-admin-get-list-ban-reason-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'AdminGetListBanReasonV3' test.out

#- 109 AdminListClientAvailablePermissions
$PYTHON -m $MODULE 'iam-admin-list-client-available-permissions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 109 'AdminListClientAvailablePermissions' test.out

#- 110 AdminUpdateAvailablePermissionsByModule
$PYTHON -m $MODULE 'iam-admin-update-available-permissions-by-module' \
    '{"modules": [{"docLink": "2Ps3IVT5hUZ3cnDq", "groups": [{"group": "0ddZG0EpfGAqHKcS", "groupId": "xUc2YgRpk2IFGIgI", "package": "pscUpVAciu2XPPUx", "permissions": [{"allowedActions": [51, 37, 15], "resource": "HUvxhvTZcvRKoaM4"}, {"allowedActions": [29, 99, 51], "resource": "GHQczI5ZoTRUkjGo"}, {"allowedActions": [90, 5, 22], "resource": "oGlPzdfxcC3rpWhS"}]}, {"group": "pq0InxMLpP7n7M3J", "groupId": "XjEvsj5WcQ99M1yu", "package": "XeqV31LX2ehcMnM6", "permissions": [{"allowedActions": [87, 39, 40], "resource": "sNczam4Cdd1QYvww"}, {"allowedActions": [75, 60, 69], "resource": "okltgq2vXtUnY6Uh"}, {"allowedActions": [61, 30, 73], "resource": "QCuXeTRyJQrNLTcq"}]}, {"group": "LVTN5Qf4tjPGpu27", "groupId": "yxb1of79zVTWIfgd", "package": "Nphqe9fS1m77MAg4", "permissions": [{"allowedActions": [75, 92, 30], "resource": "rcl2O47XVzU7qlNV"}, {"allowedActions": [21, 31, 14], "resource": "qnmBS3XKDhp1OkMc"}, {"allowedActions": [63, 92, 36], "resource": "3XxjkyNfj3XgTRTj"}]}], "module": "I9oNBzgQ4CRwg0sK", "moduleId": "VeSpMny0GrvKI5EV", "package": "B9ZFzLNsjdCFtKY0"}, {"docLink": "KsxR0rCFkyiQZfMn", "groups": [{"group": "TbKdwNhiIP7dpJ8B", "groupId": "8VwFQnVco2oCn1Kv", "package": "JmbjapW9UlEqtzDd", "permissions": [{"allowedActions": [65, 91, 63], "resource": "gxdxB5kvtM8ah9bP"}, {"allowedActions": [39, 21, 69], "resource": "sceGUEX8ERZcKSYL"}, {"allowedActions": [30, 76, 3], "resource": "y7yJMowQ6LpHCvCY"}]}, {"group": "TgX9JQwErzjtuP9p", "groupId": "UUv7qefNMFsZAIqa", "package": "k1zi0JSa5cRn31D8", "permissions": [{"allowedActions": [42, 91, 2], "resource": "u6aCnL816aH6gOBU"}, {"allowedActions": [71, 13, 79], "resource": "U8bD5mGFFmKTTUxG"}, {"allowedActions": [79, 26, 48], "resource": "pmFxxDNXGlGJvHf5"}]}, {"group": "58h1ltyhiSGhfqXh", "groupId": "xBJ7zLXioAGkWgSD", "package": "dDQvpRfGe3z2rtjW", "permissions": [{"allowedActions": [32, 86, 72], "resource": "tKaJlw31pdDrXQ47"}, {"allowedActions": [99, 9, 91], "resource": "D4dWCp4wqlQJcZro"}, {"allowedActions": [81, 9, 87], "resource": "GOPj2XoFug8BUQUm"}]}], "module": "PHnPumcazKAna0ji", "moduleId": "757aNDFeKnQP2j2W", "package": "sQImTwYkiuxzLrbJ"}, {"docLink": "0BkGzCNgesQlZZHI", "groups": [{"group": "ZH0iks6kx0adnimP", "groupId": "yyzezsHdFftHHR6x", "package": "bcVVonwz27DWfGRV", "permissions": [{"allowedActions": [15, 29, 3], "resource": "jkCMmYyTGO07foRZ"}, {"allowedActions": [51, 64, 64], "resource": "ujpIWo0qJtqp4Q6X"}, {"allowedActions": [12, 71, 58], "resource": "633pFgA7i9tqvfHm"}]}, {"group": "FvUZiUW5Y0CYw5OX", "groupId": "SGwQkJuy9oLFcHHc", "package": "raLXR2n9JQvq7NKW", "permissions": [{"allowedActions": [71, 5, 68], "resource": "AtTj1IMuuhxxlulf"}, {"allowedActions": [25, 54, 49], "resource": "kiWumllU31uXPwYx"}, {"allowedActions": [10, 82, 6], "resource": "pmrK5Y5heA2ewWnF"}]}, {"group": "cqHxXP3kRhtrBcBo", "groupId": "fWTGYx2ihgioL8Vv", "package": "EzHGTt9emdCLmzJb", "permissions": [{"allowedActions": [6, 21, 100], "resource": "ykVAnmnRfUilcKA8"}, {"allowedActions": [96, 8, 12], "resource": "pMsl7zrNJvDiP2hN"}, {"allowedActions": [80, 98, 63], "resource": "b6VgA5yFIH3s9Uye"}]}], "module": "aFi8OE7BCK4FeVGr", "moduleId": "l5NpUG9zblWEiHaU", "package": "jyTHb0sSlstb3slU"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateAvailablePermissionsByModule' test.out

#- 111 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "e94NxhXsVcqTYi1T", "moduleId": "MBMzaOrxuKvtUVtq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminDeleteConfigPermissionsByGroup' test.out

#- 112 AdminUpdateModulePackage
$PYTHON -m $MODULE 'iam-admin-update-module-package' \
    '{"data": [{"moduleId": "bDWnJ2i9TRmJOqIl", "package": "7U12hO5vpk9DOSgb"}, {"moduleId": "sdGVPLD9A5NmuZDU", "package": "V3yHurgOfba1XeoH"}, {"moduleId": "YTNoRol84UlkxtP5", "package": "Vok9sNK1ORg3tChs"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateModulePackage' test.out

#- 113 AdminListClientTemplates
$PYTHON -m $MODULE 'iam-admin-list-client-templates' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 113 'AdminListClientTemplates' test.out

#- 114 AdminGetInputValidations
eval_tap 0 114 'AdminGetInputValidations # SKIP deprecated' test.out

#- 115 AdminUpdateInputValidations
eval_tap 0 115 'AdminUpdateInputValidations # SKIP deprecated' test.out

#- 116 AdminResetInputValidations
eval_tap 0 116 'AdminResetInputValidations # SKIP deprecated' test.out

#- 117 ListAdminsV3
$PYTHON -m $MODULE 'iam-list-admins-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 117 'ListAdminsV3' test.out

#- 118 AdminGetAgeRestrictionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-age-restriction-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 118 'AdminGetAgeRestrictionStatusV3' test.out

#- 119 AdminUpdateAgeRestrictionConfigV3
$PYTHON -m $MODULE 'iam-admin-update-age-restriction-config-v3' \
    '{"ageRestriction": 91, "enable": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 120 AdminGetListCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-get-list-country-age-restriction-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 120 'AdminGetListCountryAgeRestrictionV3' test.out

#- 121 AdminUpdateCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-admin-update-country-age-restriction-v3' \
    '{"ageRestriction": 12}' \
    'wcWYyj3JvHqXp4JR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 122 AdminGetBannedUsersV3
$PYTHON -m $MODULE 'iam-admin-get-banned-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 122 'AdminGetBannedUsersV3' test.out

#- 123 AdminBanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-ban-user-bulk-v3' \
    '{"ban": "7xI59Z9tfGVsglnO", "comment": "xOXBfgBLuglkd9LI", "endDate": "oshGnFSuHmrqej8P", "reason": "RppYY1vlV0M2g6or", "skipNotif": false, "userIds": ["t0n0jfyDbtIXICLk", "K8ZvbnTg3znlg8nm", "zQx1RsYhcRlv16Ww"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminBanUserBulkV3' test.out

#- 124 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "e8YK3lZFslECI9Qz", "userId": "uQcsjFehD6uTDYnq"}, {"banId": "yNgN7GoeMsezFZsT", "userId": "BHkgcJ0DcEt23pci"}, {"banId": "6xEljer6aGJx5OFp", "userId": "3jKEx4aSGdwTPX4i"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 124 'AdminUnbanUserBulkV3' test.out

#- 125 AdminGetBansTypeWithNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-bans-type-with-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 125 'AdminGetBansTypeWithNamespaceV3' test.out

#- 126 AdminGetClientsByNamespaceV3
$PYTHON -m $MODULE 'iam-admin-get-clients-by-namespace-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsByNamespaceV3' test.out

#- 127 AdminBulkUpdateClientsV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-clients-v3' \
    '{"clientIds": ["g3NVFFkP7O3F4vso", "hRWDyGYIVFDbTvRY", "fpJ4wM9WZfOOxAzm"], "clientUpdateRequest": {"audiences": ["sbhi5QJuc2SNBaOl", "XfgsgBd7MYLLoPZr", "kjRm5Ki0orhXrISE"], "baseUri": "aPZHLQkTHvndQsCK", "clientName": "AO2JRz3CGwtujkzx", "clientPermissions": [{"action": 16, "resource": "1xFrnyirw3iJt5iA", "schedAction": 94, "schedCron": "JS2xeaJ08JrSHPqd", "schedRange": ["hKHn6ZjZMdr1C2TI", "QzRJY7UfYSrdN0JV", "z4U43EcV1FRyeeqe"]}, {"action": 14, "resource": "XmemN8LO03mnFSq9", "schedAction": 20, "schedCron": "6ylZguO918X7rLoe", "schedRange": ["xHBMBMMAYokSWFwa", "jRGUyklfLVY6g3PO", "4hKAeF4GUV5m96qc"]}, {"action": 58, "resource": "oJ4gI4EQKO8xC4D0", "schedAction": 65, "schedCron": "mBEuhnaxZVf6MD9r", "schedRange": ["1y5Ihr531Kajxq7l", "zuVRVEvhKIbrq1xs", "GpdobYun8hcO55hV"]}], "clientPlatform": "jfWyK02w5QytAmka", "deletable": false, "description": "ameT2mLkkAMjHyI0", "modulePermissions": [{"moduleId": "e2Axj0nZHjmoKHJn", "selectedGroups": [{"groupId": "gwMe1AnQVj6QQjZt", "selectedActions": [21, 38, 81]}, {"groupId": "C5mxxse4eeuMgEct", "selectedActions": [97, 47, 62]}, {"groupId": "CymCDYsuff3b7G5F", "selectedActions": [61, 15, 38]}]}, {"moduleId": "4mu0qPHb9Ll2EFEb", "selectedGroups": [{"groupId": "8GnsthmQ2Y6ZGOiq", "selectedActions": [35, 65, 14]}, {"groupId": "N5JL9M53Mg0MzWS9", "selectedActions": [41, 90, 37]}, {"groupId": "zbhMxfEDE4TrtIHy", "selectedActions": [50, 90, 79]}]}, {"moduleId": "VibTATxd7Mzjv1gS", "selectedGroups": [{"groupId": "j8kcNhoqcRZRNATo", "selectedActions": [19, 79, 99]}, {"groupId": "daV0VwR3yNKDtMqM", "selectedActions": [36, 0, 55]}, {"groupId": "3Wb5kH1BrLWUetP7", "selectedActions": [28, 81, 26]}]}], "namespace": "z2IUEHMzl5jhwVDs", "oauthAccessTokenExpiration": 41, "oauthAccessTokenExpirationTimeUnit": "UWqP4ElzL44KEm3u", "oauthRefreshTokenExpiration": 69, "oauthRefreshTokenExpirationTimeUnit": "EKkJioUpvGnkcHgC", "redirectUri": "faWzPUvCnfqsPGgJ", "scopes": ["ZyRwigaMu07Zek8W", "Obpf0FHYfViEj70K", "YKIfFt4GYjUt4F1Z"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminBulkUpdateClientsV3' test.out

#- 128 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["qFfSr3psWjOyHLyK", "e2foqsVIfgBTr8Rc", "xRQR0NYdJzf3TMhS"], "baseUri": "aynVs05nZC4Os7hq", "clientId": "IH2NgARSG3QQNGNH", "clientName": "2K0UuJdeGNquQnaX", "clientPermissions": [{"action": 32, "resource": "wxDF5GJhCjVHiCn2", "schedAction": 14, "schedCron": "c5IFQsrwHqFqwVA5", "schedRange": ["mozeeOjIFQfXV3YW", "3ug3nCXhD7FUz1iO", "e0pHa0LmseIRXeoe"]}, {"action": 36, "resource": "JgZufzssA284mG7u", "schedAction": 55, "schedCron": "9b0Ap7CmSiKPjcwA", "schedRange": ["w5GdxpvLfa4b4hTa", "ZBGdX66DqPTdurR3", "MYda0Y0BCO4qPnvx"]}, {"action": 63, "resource": "SwrG2GBBEWrDbQ1Z", "schedAction": 52, "schedCron": "jnX7vDIqpcjmaq5K", "schedRange": ["BCsHlwNrfKJrkzwR", "40tfd9GFXChtxB10", "d4Q8nlBthUSu4WNf"]}], "clientPlatform": "TvD5UcES1eLMZs9l", "deletable": true, "description": "SrEm5Y7jI232Sjkt", "modulePermissions": [{"moduleId": "ijiNzTUe8KdizXmr", "selectedGroups": [{"groupId": "mK0sCUsqxKocHomt", "selectedActions": [18, 25, 30]}, {"groupId": "fVNJNDaSO3FEkk4I", "selectedActions": [39, 36, 97]}, {"groupId": "8mzfMedpcKhvHPlv", "selectedActions": [1, 16, 27]}]}, {"moduleId": "xUuUhopdqGrqRZ12", "selectedGroups": [{"groupId": "4P7PauXTrpWAjwat", "selectedActions": [92, 43, 10]}, {"groupId": "tPbAFn8oWQcmFkkR", "selectedActions": [90, 64, 62]}, {"groupId": "YMVfiAMa6Pco7Mfv", "selectedActions": [18, 21, 16]}]}, {"moduleId": "slpyL9BYLVVznF6h", "selectedGroups": [{"groupId": "MYfksp8VQhYSFeBO", "selectedActions": [31, 47, 68]}, {"groupId": "ilGQFwHUtZugblT3", "selectedActions": [1, 64, 72]}, {"groupId": "BTOFFMJ9pq511jZc", "selectedActions": [93, 46, 74]}]}], "namespace": "bmnWk0E7YaPblcWE", "oauthAccessTokenExpiration": 50, "oauthAccessTokenExpirationTimeUnit": "Vo85r1b8Yp2QnuhQ", "oauthClientType": "uIdvZdj6AspWBfRn", "oauthRefreshTokenExpiration": 77, "oauthRefreshTokenExpirationTimeUnit": "8kx1WEeDbql13FtQ", "redirectUri": "Mu41rnOzbsFBqg6d", "scopes": ["ziWvdNcwfUBMdNuT", "aiLxFMXRpDP9xutn", "tU8xHw4yYJOCViHw"], "secret": "unQwpC2eCFUAHZaY", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminCreateClientV3' test.out

#- 129 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'sWiNJtqXltZF6aSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 130 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'mHU5iR3hXIbzWPKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminDeleteClientV3' test.out

#- 131 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["kzftOgDQAWhulbrD", "f7q4cAnpmLiEu4CN", "tX2lnqi7cHTSdGoL"], "baseUri": "ZbC3UJruU4uIXBZs", "clientName": "EYogFWiH9z4E8zma", "clientPermissions": [{"action": 14, "resource": "5cg0REtUWY4fVIdq", "schedAction": 47, "schedCron": "GgxNg33ZIUrIkfmd", "schedRange": ["XVvaPQzzKdFg7N7p", "iT8VcrXLZnuMNpKE", "Is3GC9VTK7tkJWFp"]}, {"action": 69, "resource": "NgVEcw0lxRam16O6", "schedAction": 44, "schedCron": "atrYOMO91CYEjX86", "schedRange": ["7n9PT9fR7mMuBXPD", "KCriRKzTZ7TXAVRn", "UVbxEJcKHE764Ewh"]}, {"action": 87, "resource": "Thvr8CUEzw4zL1Qe", "schedAction": 89, "schedCron": "0ILaESC1GJXsoBwq", "schedRange": ["h0TQXa2j7v3zQJoQ", "LTAlW75icIKUpXaz", "sFrmaGNoi3RPTgWo"]}], "clientPlatform": "tLNz0u8ySxA0yrjz", "deletable": true, "description": "sToQNkuZzJ1XBxw0", "modulePermissions": [{"moduleId": "1iBBQukgQ94ZvPCW", "selectedGroups": [{"groupId": "cMX0ov3U2sKjIeyF", "selectedActions": [91, 16, 57]}, {"groupId": "7dYD7LkcTKYpCfl6", "selectedActions": [69, 36, 85]}, {"groupId": "bJVIwRMtwApGbXnR", "selectedActions": [32, 51, 47]}]}, {"moduleId": "C6f2MHGGedk0KzXR", "selectedGroups": [{"groupId": "clOXdPYZQxBnttu4", "selectedActions": [50, 99, 22]}, {"groupId": "5etl4Xk8Hd1lRtoP", "selectedActions": [78, 80, 45]}, {"groupId": "ApTcWsFRUlWBp4gB", "selectedActions": [38, 2, 49]}]}, {"moduleId": "UufgsVbG6TUe3jbu", "selectedGroups": [{"groupId": "Q7HMPO4ozK705ykR", "selectedActions": [34, 97, 92]}, {"groupId": "L5McglFCrjxqqxAY", "selectedActions": [33, 9, 40]}, {"groupId": "G2V3baMkZ9JCqBIk", "selectedActions": [96, 36, 70]}]}], "namespace": "l5nkpEdBe8bYWdok", "oauthAccessTokenExpiration": 3, "oauthAccessTokenExpirationTimeUnit": "UnUEOyP0cPZf5Ovo", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "Xdj1CG0EBgst9Qu8", "redirectUri": "Ofl2oB8VTjF0pD3N", "scopes": ["HU8iYUOtG5gbQSKW", "2MdgCH4bWxRF6fBP", "a6GOuV5z0p8jaJs2"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'uQqawPrxi6F4elhy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateClientV3' test.out

#- 132 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 27, "resource": "CZ94CAUVW8FoEf8t"}, {"action": 20, "resource": "DFh5RbW021cHN3Qb"}, {"action": 52, "resource": "wSDQHadmAo0lzhPm"}]}' \
    '7RmaOr6TLwVyE42A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateClientPermissionV3' test.out

#- 133 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 31, "resource": "0i6ifYP1zfgjsy3V"}, {"action": 89, "resource": "w6K9h55mwUvhdBOg"}, {"action": 42, "resource": "CAvdnAcokJ0rzqX2"}]}' \
    'KJcYHgiFDxclBXap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'AdminAddClientPermissionsV3' test.out

#- 134 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '40' \
    'j73doCWxhubMXbxN' \
    'vT6wAffv4uzKAwiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'AdminDeleteClientPermissionV3' test.out

#- 135 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    '4wTxNIefCmtrxWu2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 135 'AdminGetConfigValueV3' test.out

#- 136 AdminGetCountryListV3
$PYTHON -m $MODULE 'iam-admin-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 136 'AdminGetCountryListV3' test.out

#- 137 AdminGetCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-get-country-blacklist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 137 'AdminGetCountryBlacklistV3' test.out

#- 138 AdminAddCountryBlacklistV3
$PYTHON -m $MODULE 'iam-admin-add-country-blacklist-v3' \
    '{"blacklist": ["93551nQBNKcqCkUX", "Rj8gQHEe4CO370Os", "bzRKKPd6mjzLxllU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 138 'AdminAddCountryBlacklistV3' test.out

#- 139 AdminGetNamespaceScopedInputValidations
$PYTHON -m $MODULE 'iam-admin-get-namespace-scoped-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 139 'AdminGetNamespaceScopedInputValidations' test.out

#- 140 AdminUpdateNamespaceScopedInputValidations
$PYTHON -m $MODULE 'iam-admin-update-namespace-scoped-input-validations' \
    '[{"field": "rFYn7cSuO7NxKHUH", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["X7fHdITmN9opaF0k", "h3pCRB3infEVxArF", "7TB6A6a71zAJpaPe"], "preferRegex": true, "regex": "v5W0v25yAObZIbrA"}, "blockedWord": ["8XAKKWMDebehSjpt", "0wrfWPXaI1Jb75o2", "MFOa6xgPt69QROGD"], "description": [{"language": "eJCyHvUsnLvXCSgQ", "message": ["Hvs25eiQO3oWdgXd", "m1IxL1OtleUBqBO0", "Ze049k9W6ZLVJzRp"]}, {"language": "UsITfVruDukun42z", "message": ["PZvOd4yZyMKyED3q", "DO5HXp5oVkhESbHQ", "7hvTlzf7XwQtVIYU"]}, {"language": "87NgjDMcJxfMfYFl", "message": ["t3JvDgMiyBGygWFT", "AY3Th5mOwPCPKVPl", "OGfFBlu2ZP0IkiYX"]}], "isCustomRegex": true, "letterCase": "k6BoBmSLi0R7zDFM", "maxLength": 30, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 81, "minCharType": 63, "minLength": 94, "profanityFilter": "5P4kxmHtFbjqurHi", "regex": "x0QYycDH5we2Mx0s", "specialCharacterLocation": "YCnYPT4i4mxc14iR", "specialCharacters": ["fzJwKuc7EpiQEzz5", "N5osRYO7wbYh7q02", "W8tkTURUFmqNc8xh"]}}, {"field": "QqptccNorRls7EC3", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["pgvoDBgYfLBdGNAZ", "Evbvxqa0K7VUbjUn", "zirnEsxSE4vBzG7V"], "preferRegex": true, "regex": "lYY3rEuHMWwQNmCQ"}, "blockedWord": ["mGCF963CbsOawlRB", "QJH6fNekhk077gxa", "j55huTA6AvmW0567"], "description": [{"language": "BFqbrPIuxKmBXLi6", "message": ["GpnqAeMvg3w0FQ15", "20WM3TxWXSdTiKdv", "a2UREoBSFtCLy2Cq"]}, {"language": "gCG7JwJCDqkzOdFw", "message": ["LJpIPxzLE1V9U1Ng", "pH7Oc44yjRdfqZgv", "34GqqjelcN0GJmPw"]}, {"language": "UTWMx0MiPAjnWIhF", "message": ["rqSn4erXEtU1CaD8", "AqsMCGBNhmUt6fzY", "Rn85brTu8F7cuCPh"]}], "isCustomRegex": true, "letterCase": "TGZJmgWNHWnvOBRC", "maxLength": 39, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 30, "minCharType": 65, "minLength": 27, "profanityFilter": "McKd7c94rEmIYuAT", "regex": "5OAcUwYHGmG5rNDB", "specialCharacterLocation": "F1oU37vjfyX5YLaM", "specialCharacters": ["0wmi0i1WABBbq8Iz", "ZsMFLX9ZhFXcFtfB", "S3ZIHofhwyM6Bw2s"]}}, {"field": "FGQ5DQoDwzrKPOZZ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["X3ZwzZ7aVhrkmhSO", "EozGOv8D0iVxzrec", "5kNwJAxm0Rdm9l6n"], "preferRegex": true, "regex": "hG5SilDDIsmj4h62"}, "blockedWord": ["5dIsMKWBxF9RAIrI", "81ZR2kNzh60RQNaT", "EhMXMepgzY9jLiAd"], "description": [{"language": "MiQ7eDMkeBRMur18", "message": ["nCxiV9bQMHpPbvfl", "I3LkRc1NgZaoYAaC", "CeRgtstsU3Qecxo4"]}, {"language": "bQZO3P2f8TTOVf6j", "message": ["rr1OL606QpqCgxt0", "NgDSj1T6EdeYFmrL", "T0HbvS4kSSt3CyDg"]}, {"language": "f6eFAiqSkHi0BR2E", "message": ["lF6z6eJKuOW61akR", "FizqxCmudSXivAL3", "n478mhb2I2yBJeCJ"]}], "isCustomRegex": false, "letterCase": "puuyIagSSzEL8H4e", "maxLength": 41, "maxRepeatingAlphaNum": 76, "maxRepeatingSpecialCharacter": 77, "minCharType": 20, "minLength": 43, "profanityFilter": "UbgZQfw6Zys3mN8f", "regex": "IcC9CkharfqaoMsG", "specialCharacterLocation": "yv1RuSNdycDssUeH", "specialCharacters": ["iVDXzSJ8kbFAyidb", "nXdMSwmkBkKC1h6h", "45u0wuh9pY0011jS"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'AdminUpdateNamespaceScopedInputValidations' test.out

#- 141 AdminResetNamespaceScopedInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-namespace-scoped-input-validations' \
    'mHFTtfM2mGUUpq3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 141 'AdminResetNamespaceScopedInputValidations' test.out

#- 142 AdminGetLoginAllowlistV3
$PYTHON -m $MODULE 'iam-admin-get-login-allowlist-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 142 'AdminGetLoginAllowlistV3' test.out

#- 143 AdminUpdateLoginAllowlistV3
$PYTHON -m $MODULE 'iam-admin-update-login-allowlist-v3' \
    '{"active": true, "roleIds": ["lhK9DMMaI4ryVDvN", "aruZxwTfh9gEs6GF", "247cbBLjUr5z03wx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 143 'AdminUpdateLoginAllowlistV3' test.out

#- 144 RetrieveAllThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 144 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 145 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 145 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 146 RetrieveAllSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-all-sso-login-platform-credential-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 146 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 147 RetrieveThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-retrieve-third-party-login-platform-credential-v3' \
    'B3E9hrE9f9COFrOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 148 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "6wJDBwIDsJHNg6Tv", "AWSCognitoRegion": "NGjwI4TbTwBufUor", "AWSCognitoUserPool": "JouduhCEJ5XiKDIE", "AllowedClients": ["9YugcupLxVBcRkfh", "RuqkOTHSia7oFd1f", "EmDuyAsQGzwJR5po"], "AppId": "I718RQnj4imu6XFf", "AuthorizationEndpoint": "RcWDXhq1YmGeygr2", "ClientId": "S4Yw8NmPaBeryzX2", "EmptyStrFieldList": ["hOPVVFqVqxjq1iG3", "TySOh8SI75oXbyq8", "FBbur80QwnlgAVfq"], "EnableServerLicenseValidation": true, "Environment": "gFWs5s0nT89A88GD", "FederationMetadataURL": "OUClGyzYgnYTdim6", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "d3lCzvjHzDHOrSJ1", "JWKSEndpoint": "vbB7LRHd96dGLgkf", "KeyID": "rZveFMWAFT7l0l1j", "LogoURL": "aOAMCzbsoIgmKwwM", "NetflixCertificates": {"encryptedPrivateKey": "DQPjUIosq1l6xo0D", "encryptedPrivateKeyName": "4JRbNqO6IuP2PY5h", "publicCertificate": "hX6uNah9JoHPj7jF", "publicCertificateName": "WxSv1lYylYAiZ8c7", "rootCertificate": "Zd7EUoezOLw8C1c5", "rootCertificateName": "bBB3XZ7ColKwlsNv"}, "OrganizationId": "tFuunQsvdXGlD40x", "PlatformName": "xIyVwYjn6dlC9Kfh", "PrivateKey": "9gHuloyce0cLJu4l", "RedirectUri": "jPWlCWTuGO8MnfOQ", "RegisteredDomains": [{"affectedClientIDs": ["u3wdT4Aodp95o1Rk", "X7iW7VpCngWAv5DA", "G8dPdkKgQqjyzUZR"], "domain": "2rFIAuALNhNCyscs", "namespaces": ["MBRLsWadk2OQ421q", "7Nb1vrKthVvU5on0", "65ApCkVN3QchuQ6p"], "roleId": "ntxB648ss7rBnvQH", "ssoCfg": {"googleKey": {"AM8gSdIybKUByHBz": {}, "fvgtRTPPzwJmKaLC": {}, "x3gcidEALWe6RG5w": {}}, "groupConfigs": [{"assignNamespaces": ["Wznu5AjwR1Z4fU7I", "CcaQtuuKUw3dUwWH", "hQW3I1y9tjRLVOXB"], "group": "Ma0JiIe1AY0tUA7E", "roleId": "KASk3USNLhOBlxRB"}, {"assignNamespaces": ["Lgohp8ByTi2F6AyU", "X8w77riPlPgJcLbe", "Qf9MICxX7xKyCfgw"], "group": "SPz14asyOdgn77gN", "roleId": "8K1FlNkgbFE8U4me"}, {"assignNamespaces": ["K5grmPBsFH71Vrhs", "ISYtegQbNA2WQrHT", "kJT1VkChD3n0c1ry"], "group": "AkRvdPR8gx2rX5dc", "roleId": "k8NFKPgT6LMehg04"}]}}, {"affectedClientIDs": ["7axU5ktNywRIvO2S", "gz30hejqdktHIO1V", "dtMSews1TrU4FhAf"], "domain": "KDcDG5bMTba1tUlF", "namespaces": ["GcP6eL7EpWtPifmO", "0JK4dP1aZFiSkmhw", "VVMGkXNwMYwFyljy"], "roleId": "5bYQdQ87hUHA0FJZ", "ssoCfg": {"googleKey": {"wP8GslMpx3m7lEXT": {}, "mnTbtjK9RsyoqT3a": {}, "dB48Jxp2zaItg9jT": {}}, "groupConfigs": [{"assignNamespaces": ["NZvpFEUI21aSaIsM", "yLKPPIZx0zdNAagi", "pZwiaBrFrXtGMjuj"], "group": "fHZB1gMI1B8DXb37", "roleId": "DffTZ7yQz337LLNC"}, {"assignNamespaces": ["jIySe36SA5dxATLv", "5PkLvraRzChdjDGd", "lk2A2jHbAPNGInvb"], "group": "nf4ewKFFLoGggX4g", "roleId": "QWyZocvYfr0Rnl02"}, {"assignNamespaces": ["R1IVNnaK6KS71Xs1", "BphA9BXpKYgF9Oui", "gDP0Vjmy7j2BrdCA"], "group": "m3slCwaBqHpE55sj", "roleId": "xBGijw0dQtZNonMr"}]}}, {"affectedClientIDs": ["PkzUe9SglAJGyZS0", "I8FevJiT98HUBp56", "Q4WETxtGMs5tPKPu"], "domain": "K0K4PiMDTR7Lxihu", "namespaces": ["On57io0d9dG3yzaN", "bGeASX83SLiIbAP2", "qyUnHnfrEdDfY4TT"], "roleId": "xu8goZgsX4RwfM4q", "ssoCfg": {"googleKey": {"nUdcQqZ9F1uivPob": {}, "0YZEuXQACDDQryNf": {}, "9VGxbOeJe4n9eUlB": {}}, "groupConfigs": [{"assignNamespaces": ["QZ2UGePWXbAyGiXa", "9nUsHCVicuJ7onrU", "XVlB6xNel4Bxb9Kw"], "group": "FYqdhEVq3hbsApeA", "roleId": "SfR0ljKxqZcLuhwN"}, {"assignNamespaces": ["DvValv3bkoMXNzl1", "ywEPiunixlEAHZzH", "s8x5oPSkZFIV2feX"], "group": "nTRlzAJy9oFOHB2K", "roleId": "EsIdtozVltBhoXE4"}, {"assignNamespaces": ["wgcYT5CdjaJuUzFI", "eqaVr1CE1gu6cYuz", "C77J4irvZ9tktWLt"], "group": "DdlmVGK6iolEw6II", "roleId": "pDc9X5ijmtDGvd9E"}]}}], "RelyingParty": "SdY0eTkBWA44Qqsi", "SandboxId": "5yOjvl5sRN2ENn1R", "Secret": "Li5iMPnbg7o1zYpq", "TeamID": "UsliPyXZGYIW5ZDt", "TokenAuthenticationType": "WbdkzPP47RcUIi2C", "TokenClaimsMapping": {"oNj4EG2emxKQk8cB": "rt5E8k8rzDZ08j6I", "CP75cm8YDChFi3zL": "vfQWC85MxWxvW0ve", "Fl3uU1aMD0mczWxc": "8f1s2QPMMZsf2dvK"}, "TokenEndpoint": "ZyHChRPHvdkcKW21", "UserInfoEndpoint": "B5EFtD2pYaKTz1gc", "UserInfoHTTPMethod": "E2XCwTkRUIX6IFHN", "googleAdminConsoleKey": "mB9mYBvtOwxjqyrj", "scopes": ["DApeN5eAfRqSgH5x", "IuBTYOdsvNyk52MQ", "FkVVEf36S7yPgG48"]}' \
    'bk6PwH1tdEAJSqXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 149 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    '0Wv0zWGvkc6byp3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 150 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "vyYT3GuaZVTxBlw1", "AWSCognitoRegion": "IWeXKFT4rfSbbSlD", "AWSCognitoUserPool": "PGf9Fn32SJNPZkEf", "AllowedClients": ["kAcJTMS4pVRcCHIG", "fmCMTr9ACnI2sMrE", "gl7ZR1HCkf2Sw78l"], "AppId": "LGKjDHuXt358gzqR", "AuthorizationEndpoint": "MuMPrIekxq58fikq", "ClientId": "83hqJ7HP63Se6kVW", "EmptyStrFieldList": ["5fkl60ImLBv6nUU0", "r1rfX9stpvJUuyPd", "zx8BM2wEgTtLRT5s"], "EnableServerLicenseValidation": true, "Environment": "wpagvERZI6Cqhckn", "FederationMetadataURL": "hecNv2Tw6YKhVrYk", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": false, "Issuer": "GqMkZ44UXgdBqtJa", "JWKSEndpoint": "RyDlP9qIZJ5Krx6K", "KeyID": "kHagEugKJxkU8Y58", "LogoURL": "COtTNjnNSikJDg6u", "NetflixCertificates": {"encryptedPrivateKey": "jKvq0CIa1YCK9PlM", "encryptedPrivateKeyName": "eQprfgLGkHX1tdBj", "publicCertificate": "KmCBXETZwqdzAX28", "publicCertificateName": "DikGk8cWiX44azSH", "rootCertificate": "cwicUVq2XPljTZj5", "rootCertificateName": "R0yZSVQ8SSeJ4qy4"}, "OrganizationId": "PIKleuV271bwZ4ni", "PlatformName": "LSzQnv0C00dtNGGz", "PrivateKey": "bGYSYo9fY2EBZAHQ", "RedirectUri": "Xc4Xcae7VKl0ARzG", "RegisteredDomains": [{"affectedClientIDs": ["EArlfE1NSmtcADoZ", "vd0La7P4JI4H7uDz", "kOHTdnUtdrRcs3Ge"], "domain": "OsKPNlG7rEXi6LEq", "namespaces": ["JERpbxEq07txnvZZ", "eAf7QBuZK5GJlBnc", "g8tQnJOKHC16xjJZ"], "roleId": "4kiU3N8556ll2LQW", "ssoCfg": {"googleKey": {"pdESOBV7wZJsg7wS": {}, "v9lyRyTdYBUljvBz": {}, "vYNEtfgBFikt18cQ": {}}, "groupConfigs": [{"assignNamespaces": ["677SotDEtU2xBSEQ", "8rBKc2K6oJXxVEfn", "aqX8NuZtRUTKUvR6"], "group": "9PImy6CcwlqJ4MO3", "roleId": "L8x1H5OgzHypgsSe"}, {"assignNamespaces": ["KCvtPz7jagBG9a1T", "Z87ltClc3RDXF505", "5tUlenimjIbm0riC"], "group": "aNp8dUBDinAB6HqI", "roleId": "WIi5Bvb1rcuEtWAF"}, {"assignNamespaces": ["763kci7lT62BOHas", "o53W3U2Mu9ZGMWou", "1U0RVCf3gMWDAodC"], "group": "KqfqzeexHA70NgJT", "roleId": "xjtzgO7W3taRvJ6l"}]}}, {"affectedClientIDs": ["KWJwHO65aOFDwpqy", "7XOU3DwglyMGNll4", "O8ELahcNJqRjepck"], "domain": "1l0qxRyQ2pi7xuAu", "namespaces": ["fJakIPXOQznHZTj8", "oYfWObyNJKVSQsaC", "okoGynp6xcqNKJnA"], "roleId": "hrSt96OaARAjHLGV", "ssoCfg": {"googleKey": {"3sNxS8uLBZiVRYIy": {}, "QLcslTEqgVNG8Aqk": {}, "tgvjwNJAwIpEy2ZN": {}}, "groupConfigs": [{"assignNamespaces": ["pojZ24I2n25smsrm", "JFHGiYnyhbqxLuTZ", "IxgiUaiyy0aWrshp"], "group": "mb1C9Al7eWrbNRE0", "roleId": "xyYPUZHyLGQ52IjG"}, {"assignNamespaces": ["pRJCUJpscOTkWETS", "J04c5MGInO4yznh2", "YpZvvmziSSiSpXeW"], "group": "OGayfRkQvoN06SpN", "roleId": "OnuSksfm7hcIFdkd"}, {"assignNamespaces": ["rwAcK2lUda9h9Fgv", "fhiLEAkA7n6516yd", "oRT1qZBrdTnGrwHe"], "group": "WoQXPFWFaKbDgrGk", "roleId": "v8SVwLyS4VbHJvD0"}]}}, {"affectedClientIDs": ["lL7aZUY9d1Idud8b", "jYeBVMr7zHYmRE4X", "36KUOdfEmoIYwSxx"], "domain": "AsfwDMivWqHHGlnA", "namespaces": ["nEu6EKYceTEqYudH", "lA4AxeEIfUxJ2xMS", "NNBxCeN3pGn46fGv"], "roleId": "odt413MRdG8qAPiA", "ssoCfg": {"googleKey": {"Nv2Ar8yXV6qf6v5S": {}, "gcJPZPUh2nHQwpWi": {}, "8HZ6C0VJ0fK2m6lQ": {}}, "groupConfigs": [{"assignNamespaces": ["5Ao8TITYiHSR2SEJ", "h1YDedZdNqkXPWZf", "T8ZfdKp9q4nXuK0t"], "group": "JAYror2XdtSCG7ZE", "roleId": "xOoIpWzacOvwUsnI"}, {"assignNamespaces": ["bQM3ZAtyEWKWoZRU", "L7wS3HaMTXAX6y0S", "TTN2sBEijjjpvSzG"], "group": "kED0oweFYDBPyd1j", "roleId": "JBxbrbuFay9PXgEQ"}, {"assignNamespaces": ["S4871QSmsspn5sNf", "ifK65tvaH9jwcO48", "pthyYpBJDHIIxTIG"], "group": "I5EssYllIqjJzuQ8", "roleId": "GglVgxjOGQGlHm8V"}]}}], "RelyingParty": "TN56tJKwD8O07L9G", "SandboxId": "G1uenDihceaLdgPZ", "Secret": "I0fKW8LeQxItaK6s", "TeamID": "3Hha69MgxjGJx62m", "TokenAuthenticationType": "kfVlu4bGB1pyk0Pp", "TokenClaimsMapping": {"xXZDy5Pmbu7RrD9a": "5mdlXTCL467xHbAi", "D3Pr3mXZO1PnbSlf": "VRlAI8F2f3mEv09k", "AA5hnQtd4bcivHGI": "EplRpcHDWcIoJ45L"}, "TokenEndpoint": "0Ze3YamxKDSZTl4U", "UserInfoEndpoint": "iJSCbG4UmG3TkMTz", "UserInfoHTTPMethod": "OcBIciiKwRs1E7sH", "googleAdminConsoleKey": "2G9MJ6F7Rr7O15jq", "scopes": ["eKssQpme6eyM48tE", "7eJRsXNeveQXqnFR", "YmEIX40XOUoLOa7o"]}' \
    'Dz00gxcoaH6u9TVf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 151 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["4DvEzpoPRiClZ6rl", "wX99AHMLHqguYykV", "WzNwPcvGyieBsRUd"], "assignedNamespaces": ["uW5lxSlorWEGN5bP", "GSOSiiItrSrEJMBA", "IwTLkrMDFQfpQ9o0"], "domain": "GJMTfqRRaZozM8xC", "roleId": "BoaS2FMwfWNCbN5G", "ssoCfg": {"googleKey": {"elVOU0hHnsCl5k6J": {}, "xh5mkmQzKg0jWCjp": {}, "Gwh7pLAi5JmzvM6J": {}}, "groupConfigs": [{"assignNamespaces": ["FKB8ikHpl3sNRaDE", "C2OkXA3WqypoOw0H", "2s0sibQNBz81zRPn"], "group": "txpgi7tXIcNEcGJj", "roleId": "OCXpuix5vnPeTu9e"}, {"assignNamespaces": ["vbRov7Bm40CtZiAx", "k43DGV1SCkw8U0d4", "FvVmPMtpRMWSQ8Sz"], "group": "i1IrGidRmR5BGRJh", "roleId": "FwxmkGfPI3j4luXQ"}, {"assignNamespaces": ["uuLtYa86kvL6cBZQ", "ssUUXOsXMNdvW1hb", "vGenRbm3QtsY5WaK"], "group": "M5YY6pYrmeMIHLS8", "roleId": "egV8XhgDjbrum8Ux"}]}}' \
    'cutmVg8APWKxoj6M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 152 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "F68VuKDoklYmkytC", "ssoGroups": ["AH8Jiqe7gfV1G6bY", "gIbVKp4Kgew2mHDk", "sA6Mv9Nzs19eBq9a"]}' \
    '1L8S1yduOwscICro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 153 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["6P8FWIPeqaBeD2uB", "AvIXEc2CCgYcFo9A", "93o22UgObCOiBWdw"], "assignedNamespaces": ["2b031dm4N41MOpmm", "04BlZUAlYnCT11qD", "03er5mdraK47FdxX"], "domain": "isVlo3aVOGARFDJc", "roleId": "GWy826ilCxAxQUM5", "ssoCfg": {"googleKey": {"DyrPfBmpZIzSFUZq": {}, "VR5FWGfH66eFCMTs": {}, "LA8vYVvrIAEehUV0": {}}, "groupConfigs": [{"assignNamespaces": ["jsjAyVgxS54NNs3X", "dhMbQX9D1znEWw9p", "7g4UsQCTKDh5n9yc"], "group": "34xF8qFllM1LTrl4", "roleId": "MP3Nl4T3ujvV7W6A"}, {"assignNamespaces": ["DLtn7oInn1Bz3wM3", "BI51etn17OcmSVHZ", "6wtPVAwgvxYxXJTd"], "group": "uZp1nNYHREmm1cBu", "roleId": "aRaGeM8yxRfejqSb"}, {"assignNamespaces": ["VgLd1FoyNFGpu5r2", "K0IvVg5LwUygH98d", "zTL8azKCCNBZpwRF"], "group": "NYxx2dr6DDuDHXcf", "roleId": "vXPXJURX3XwhOlgc"}]}}' \
    'pcOIxqCMSpZxby2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 154 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    '9vGOUeSeGb02vDPU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'RetrieveSSOLoginPlatformCredential' test.out

#- 155 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "pv5VEdIG82dpIbfx", "apiKey": "VFfdvKQVgPQw3MVX", "appId": "e4xBPDWHRHCCVDBR", "federationMetadataUrl": "jPUQWYVxGQVFJlDD", "isActive": false, "redirectUri": "7z4Pb5jyGID39Ung", "secret": "1D57FjYKlJiRIvhe", "ssoUrl": "j77OSPwdzMSmrSvQ"}' \
    'dsAdTUGpd8KFrXKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AddSSOLoginPlatformCredential' test.out

#- 156 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'A2gdjQCYoE8b0CZe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 157 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "tLfpFNyp7375rhOm", "apiKey": "R4zFjoJZVKZjOD2e", "appId": "PKAKYjJMVnYj2yKq", "federationMetadataUrl": "avWpydepM3ap069B", "isActive": false, "redirectUri": "Okr0xJ5XRZVoxPGO", "secret": "LVBIlFgTAsXgqx3m", "ssoUrl": "fB5ZwV25N7NAvZdG"}' \
    'uyYEYZE3KaGSdhEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateSSOPlatformCredential' test.out

#- 158 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["Kcp6g1A8O9N9cbYB", "K6XOBDpR7SH93AE1", "Toj5vygVvLSJvdsG"]}' \
    'pmmUeMikW3s54zff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 159 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'AL2DZ7gBhy77iRVF' \
    'fFvWenMNV00KVuLF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserByPlatformUserIDV3' test.out

#- 160 AdminGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-admin-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 160 'AdminGetProfileUpdateStrategyV3' test.out

#- 161 AdminUpdateProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-admin-update-profile-update-strategy-v3' \
    '{"config": {"minimumAllowedInterval": 100}, "type": "pxKtJbRY5luCwKrt"}' \
    'dob' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 162 AdminGetRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-get-role-override-config-v3' \
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 162 'AdminGetRoleOverrideConfigV3' test.out

#- 163 AdminUpdateRoleOverrideConfigV3
$PYTHON -m $MODULE 'iam-admin-update-role-override-config-v3' \
    '{"additions": [{"actions": [42, 28, 70], "resource": "3yVrRCh6j7rpv8K8"}, {"actions": [10, 61, 56], "resource": "YfiGPYo2K3dN3YBO"}, {"actions": [72, 12, 12], "resource": "Reff5IHxLJIemNHb"}], "exclusions": [{"actions": [52, 29, 12], "resource": "XDZ20Bw2H4tz6KUC"}, {"actions": [85, 20, 54], "resource": "XGj2G0GZ3JBYi9bB"}, {"actions": [74, 7, 57], "resource": "PVMd2WDUVEQTpfyA"}], "overrides": [{"actions": [72, 29, 48], "resource": "F7qsANBbEKQrgocp"}, {"actions": [18, 55, 66], "resource": "l6U2g9imVMh3i7j0"}, {"actions": [52, 35, 1], "resource": "DL6lEuB1ZIMIs1dF"}], "replacements": [{"replacement": {"actions": [43, 45, 71], "resource": "okH9t2u8ZZnyHKkk"}, "target": "6Gh25tEcX9GegDnr"}, {"replacement": {"actions": [49, 52, 89], "resource": "0GFpSVdxFsXAp1ro"}, "target": "clyXllFitPamSKRz"}, {"replacement": {"actions": [60, 56, 71], "resource": "mFwUO7Y0xhMLwxgR"}, "target": "pTSUppvO3QG68KeD"}]}' \
    'VIEW_ONLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateRoleOverrideConfigV3' test.out

#- 164 AdminGetRoleSourceV3
$PYTHON -m $MODULE 'iam-admin-get-role-source-v3' \
    'VIEW_ONLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 164 'AdminGetRoleSourceV3' test.out

#- 165 AdminChangeRoleOverrideConfigStatusV3
$PYTHON -m $MODULE 'iam-admin-change-role-override-config-status-v3' \
    '{"active": false}' \
    'VIEW_ONLY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 166 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'jWv1W6cqnvSuKswQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminGetRoleNamespacePermissionV3' test.out

#- 167 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    '7vH8GScnP5QzRBY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 167 'GetAdminUsersByRoleIdV3' test.out

#- 168 AdminQueryTagV3
$PYTHON -m $MODULE 'iam-admin-query-tag-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryTagV3' test.out

#- 169 AdminCreateTagV3
$PYTHON -m $MODULE 'iam-admin-create-tag-v3' \
    '{"tagName": "UrefgmVFBVz4KRCU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminCreateTagV3' test.out

#- 170 AdminUpdateTagV3
$PYTHON -m $MODULE 'iam-admin-update-tag-v3' \
    '{"tagName": "0p4jIt01gzH17Icf"}' \
    'JyGulmByN5rcDA3W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateTagV3' test.out

#- 171 AdminDeleteTagV3
$PYTHON -m $MODULE 'iam-admin-delete-tag-v3' \
    'cv9ouALjgLZZzLU9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteTagV3' test.out

#- 172 AdminGetUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-email-address-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByEmailAddressV3' test.out

#- 173 AdminBulkUpdateUsersV3
$PYTHON -m $MODULE 'iam-admin-bulk-update-users-v3' \
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["pqpajYEHs9TIkcnr", "J64BOKqywS6DKNSe", "b2UMWOgVeYkCvqq0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminBulkUpdateUsersV3' test.out

#- 174 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["tO15pEVG7sNihxpu", "uL7DJCxvzZnh8oBA", "k1MNCAUmdnLaVRUu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetBulkUserBanV3' test.out

#- 175 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"findByPublisherNamespace": true, "userIds": ["VbjwPa9rYgHaxeTT", "3ebuaYPNBp9wA4Lx", "O2n7WJQFzBCD9S03"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminListUserIDByUserIDsV3' test.out

#- 176 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["D7JLsIM3VOMRvvqk", "XDMPzOB08tpk0qhZ", "ath4b4HtwEYX55pJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminBulkGetUsersPlatform' test.out

#- 177 AdminCursorGetUserV3
$PYTHON -m $MODULE 'iam-admin-cursor-get-user-v3' \
    '{"cursor": {"cursorTime": "NTX1sDjSWiSXsV5r", "userId": "J8eZXZ1TLMZnNL3D"}, "fields": ["QK45IAtbyUDDSJSV", "8pzl1lfIR7jnetIJ", "PGObyWCLyFPHaxkK"], "limit": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCursorGetUserV3' test.out

#- 178 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["4fRbawD5yOvjgOop", "QfbXmtF0WFH7F2In", "hxtynUjuBCxkb2oF"], "isAdmin": true, "languageTag": "xI1VVtVrVT6Hn8B2", "namespace": "d1hZUnoQwg5uqgoH", "roles": ["aFyoczck0qJsgZPf", "uelAiZBZcQGHHGI7", "csI8ecZSvzXYOyts"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminInviteUserV3' test.out

#- 179 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'hBcKQytQagui6lsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 179 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 180 AdminListUsersV3
$PYTHON -m $MODULE 'iam-admin-list-users-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 180 'AdminListUsersV3' test.out

#- 181 AdminSearchUserV3
$PYTHON -m $MODULE 'iam-admin-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 181 'AdminSearchUserV3' test.out

#- 182 AdminGetBulkUserByEmailAddressV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-by-email-address-v3' \
    '{"listEmailAddressRequest": ["F28n7UC7y1MKYVeo", "GFrDb8unXv1iE7Yg", "EZspOJ0NiZl6OVLx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetBulkUserByEmailAddressV3' test.out

#- 183 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'KtkBpaCG8Nu5m4ct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserByUserIdV3' test.out

#- 184 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "wUNV8ncebaJ0DCuI", "country": "eEStt3PbyctX7HC2", "dateOfBirth": "haQwVWONEpAPedzI", "displayName": "2AdlqiyEJIQcbZJJ", "languageTag": "3AhkrMi0bnppEJFI", "skipLoginQueue": true, "tags": ["ze88rGEr3cilJWha", "W6jNsM94E2FQb6S0", "VmaTR7E3mkDSQkgV"], "uniqueDisplayName": "MhLbM6H1MnNSKd0K", "userName": "StITvGQtzwjGtGTr"}' \
    '238G8Aevk3k14782' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserV3' test.out

#- 185 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'W2oNo3X4m6wms9SP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserBanV3' test.out

#- 186 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "aHlqtDPry2vMON7s", "comment": "dhlilfpDT8o2iFrY", "endDate": "tGfCZCcrvsV2I4X2", "reason": "6p21iDBZGJ8ZMLwP", "skipNotif": true}' \
    '71nV5ALS7cneNLIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminBanUserV3' test.out

#- 187 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'UJgh74tyxkTR8ZCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserBanSummaryV3' test.out

#- 188 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": true, "skipNotif": true}' \
    'bXbeBEoTlfR33jqI' \
    'RoXcCPaLXJM2B9bM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserBanV3' test.out

#- 189 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "ohkWsFKIdycYHQcu", "emailAddress": "7JkKBcLFRf50Y7ME", "languageTag": "2QmYiYqap7masUca", "upgradeToken": "yqmp7vhz1T6cSrZL"}' \
    '2CgHxdmYDj9vZNgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminSendVerificationCodeV3' test.out

#- 190 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "I1AeYHe8WPQGPclC", "ContactType": "hxLfbXrH6f2GDrNb", "LanguageTag": "LOjGz34ct0ctEeH4", "validateOnly": true}' \
    'EWGg1r4nW4pBcPPa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyAccountV3' test.out

#- 191 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'iaM1og5rxUjGPKKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserVerificationCode' test.out

#- 192 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'MoAy1stmxPFz0i1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserDeletionStatusV3' test.out

#- 193 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 76, "enabled": false}' \
    'QzkcRwFPpXGlKR9s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserDeletionStatusV3' test.out

#- 194 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    's8b8udl6fLkxFnAq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 195 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "yvjBy0NXg7zd6SFp", "country": "kV7cAICgWFJZGnNa", "dateOfBirth": "5yOM68r4W1fDZL80", "displayName": "oPQ0s7QhC8hgSgyt", "emailAddress": "NEojK3YgWH9l7rv6", "password": "XUSINd4keCeiw7P2", "uniqueDisplayName": "PtUrPawQPaHARrhj", "validateOnly": false}' \
    'vULYNIhs5PZGTJmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpgradeHeadlessAccountV3' test.out

#- 196 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'ofq7nlF5Ch8J2Qs9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserInformationV3' test.out

#- 197 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    '90APOU4hcdwlnsTa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserLoginHistoriesV3' test.out

#- 198 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "p2RJpHtncLywP3Wl", "mfaToken": "LmNdQGk6vneHoB1P", "newPassword": "XO1vT1AonFO3syvk", "oldPassword": "Yd78GsJGLbnb4Nvw"}' \
    '7fnm4MnOqnqNerQo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminResetPasswordV3' test.out

#- 199 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 68, "Resource": "0seeGJIqnatME8Gn", "SchedAction": 80, "SchedCron": "bYi1yEI9ychtyhjZ", "SchedRange": ["SeDCKT4ilZB8apDT", "R3aL9sunWp7V1s8L", "mXm0FaJMIjgzU02n"]}, {"Action": 99, "Resource": "cLrryS5a6A4tL8YK", "SchedAction": 80, "SchedCron": "pxK9KhF4KRVPoIuz", "SchedRange": ["AuQNjAfvOE2cVjFp", "1CeCEfaV4ZGGwbqO", "B4mD3E7AFHqlTTkL"]}, {"Action": 39, "Resource": "cmpA0sZ0tgeR4UV5", "SchedAction": 91, "SchedCron": "dRTpGmBUjfEU9vL8", "SchedRange": ["H96tuVfQwYIqDWqb", "PmwQw8J7na1POTXh", "XLRU5prAdqnnPOiT"]}]}' \
    'VzAeQq6rnWJoTpYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateUserPermissionV3' test.out

#- 200 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 8, "Resource": "9Rz3HVP2Y9WqSRiw", "SchedAction": 98, "SchedCron": "DkfmNbDTMGgET2yS", "SchedRange": ["6C8a8L0vQDS4EVpB", "msUzx64Gr4XEm0uY", "YuAmqhftIfe2zdqZ"]}, {"Action": 29, "Resource": "ht1vUiJ7jBXy8psN", "SchedAction": 29, "SchedCron": "zU8FwQtZpfUoyoiU", "SchedRange": ["jmqOyQ7ammFgHprd", "M9viFWmezrQOWH03", "zyr7kRbC31YMJfRi"]}, {"Action": 60, "Resource": "Igwq1NZmxa0ghRG0", "SchedAction": 90, "SchedCron": "0QpWTNKsVyK8EU8J", "SchedRange": ["Yc00PA2ef1jFeqQ8", "mBpTuvLTJUzwXJFa", "WW3JVdYpfHOYoLva"]}]}' \
    '2c4JscEQfBFZXcSX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddUserPermissionsV3' test.out

#- 201 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 31, "Resource": "r0hjKBpDMIvK4qfQ"}, {"Action": 31, "Resource": "RrFZYcwfQ1Q2Bbcj"}, {"Action": 92, "Resource": "1dD1vECBb01VFFhO"}]' \
    '5FcdTvIDQI2uIi2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteUserPermissionBulkV3' test.out

#- 202 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '80' \
    'PY3p42OS9iGNElTp' \
    'MlvRDZSIuM0OXOHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserPermissionV3' test.out

#- 203 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'luvsry8AKSZxOhUh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserPlatformAccountsV3' test.out

#- 204 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'l3Y0EshaG0uDiJNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 205 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'uxK22saWaGvrzBdL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetListJusticePlatformAccounts' test.out

#- 206 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'vFUBZDnVrcwbsD0R' \
    'DLxWgEWwoHpV8E1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserMapping' test.out

#- 207 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'QZLa7Kw77UpCxNyx' \
    '1jjdxNePPAJ6Z9Uz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateJusticeUser' test.out

#- 208 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "qIhZZiK0QEG6C9w4", "platformUserId": "lVRNOF1Bg6OHZzvd"}' \
    'ZHoIm4tKNhPjNIQG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminLinkPlatformAccount' test.out

#- 209 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'FxGwgnSiZtChE0uo' \
    'f77AAPI5tdPeFz9p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminGetUserLinkHistoriesV3' test.out

#- 210 AdminPlatformUnlinkV3
eval_tap 0 210 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 211 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'GYsLNEGrfy9qHKuf' \
    'Jfk0MeG3qYJr6PuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminPlatformUnlinkAllV3' test.out

#- 212 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'VK9WmDAdpLVTVsj9' \
    'pDiyybXY4v7JRFMR' \
    'aeIaQuPWPlkxeotr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminPlatformLinkV3' test.out

#- 213 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 213 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 214 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'NakKGvOSvpmZZdlN' \
    'Xdx2kWmSqodNZgfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 215 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'yDVVkkqiMiRf2yCy' \
    'M0Tp5GJHHbsLJ73m' \
    'CPhhmUyIwgQS9kVF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 216 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'UbeTeB9KgnFZQ9lV' \
    'MNyCiytnfMoO1I3K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserSinglePlatformAccount' test.out

#- 217 AdminDeleteUserRolesV3
eval_tap 0 217 'AdminDeleteUserRolesV3 # SKIP deprecated' test.out

#- 218 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "ISTbn4yEa2AaBRal", "roleId": "z5HEm4Gant6aqjKz"}, {"namespace": "WDAauqLKarcLQRQt", "roleId": "C927GneBM8LvzgyI"}, {"namespace": "VzGFBLJ5vbC9NfLT", "roleId": "FJGOzAIAqpmkDdFS"}]' \
    's4s7u1VUuLmenyxT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminSaveUserRoleV3' test.out

#- 219 AdminAddUserRoleV3
eval_tap 0 219 'AdminAddUserRoleV3 # SKIP deprecated' test.out

#- 220 AdminDeleteUserRoleV3
eval_tap 0 220 'AdminDeleteUserRoleV3 # SKIP deprecated' test.out

#- 221 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'QVkEg5wouUKa35m8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminGetUserStateByUserIdV3' test.out

#- 222 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": false, "reason": "ww2TANW1Or7TvLoL"}' \
    '0wwHoRMNexBOron8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminUpdateUserStatusV3' test.out

#- 223 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "wIdUbp7xVMKfbAJf", "password": "W4iMIC52NUedhhkM"}' \
    'E18qGpSsyEPDWHcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminTrustlyUpdateUserIdentity' test.out

#- 224 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'fYp2EFxEaEHCGtg8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 225 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "12NQb5Glh8srTlTj"}' \
    '61WdV2XUo1BO1rE7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateClientSecretV3' test.out

#- 226 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'E12Fapao5jo9nJoK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 227 GetThirdPartyLoginPlatformDefaultsV3
$PYTHON -m $MODULE 'iam-get-third-party-login-platform-defaults-v3' \
    'Eb8tHmFwLGan2SrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 227 'GetThirdPartyLoginPlatformDefaultsV3' test.out

#- 228 AdminGetRolesV3
$PYTHON -m $MODULE 'iam-admin-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRolesV3' test.out

#- 229 AdminCreateRoleV3
$PYTHON -m $MODULE 'iam-admin-create-role-v3' \
    '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "7xZEEv7O1lwxVTRl", "namespace": "l0GIEUJtMC8NyV2H", "userId": "LHZT3oYJlC4ie3In"}, {"displayName": "nSA22NHTb4qXYyJU", "namespace": "AlKlTwdJEPoemVtm", "userId": "VXTs3tCu4F9IgDT2"}, {"displayName": "tq2V2lMzfIQHCZ90", "namespace": "DqQgP6ynrQjYH0N2", "userId": "loTnRa0KiQWPxd1g"}], "members": [{"displayName": "qlwx9CE4WcsmYtCk", "namespace": "IgcwiDWQFghmIi6f", "userId": "phDw3p9QWqwTF2pO"}, {"displayName": "JsY86xAf5y1iy01F", "namespace": "kEEXlKiTIDgP7wuX", "userId": "QdfW99JglScoOlkk"}, {"displayName": "BxiXf8OBQRqXWXQ3", "namespace": "JdXdFz8pc0EEziE5", "userId": "yIvijq9ix16vo60j"}], "permissions": [{"action": 12, "resource": "qqSctLL4WfGq8JCD", "schedAction": 28, "schedCron": "2WHGVKDcKulj3Pde", "schedRange": ["gy4G6LOpak8CYp6D", "Pdukc04j6rbfBuKB", "co1AeO3yvvBLZPBu"]}, {"action": 8, "resource": "rNhDepQum4Dj7pR0", "schedAction": 45, "schedCron": "RTGXGRkYXifTd5nA", "schedRange": ["OF9VV7JgCOm4wL72", "9Hma0nCdCEFcf2do", "BrfHiHXXgvu496H0"]}, {"action": 100, "resource": "yOVN1h41jIPOMXuf", "schedAction": 84, "schedCron": "RqdGPzxXvZPtrhje", "schedRange": ["VBnTrsYihhgbeAZo", "FncMUdmf8hD3nL1s", "aQxLYrz08jh6Tyq7"]}], "roleName": "WUilXgtf5UctyV3a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminCreateRoleV3' test.out

#- 230 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'Sw4twReM5DcHde3f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleV3' test.out

#- 231 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'kHf7tH8WTOTeBOcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRoleV3' test.out

#- 232 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": false, "isWildcard": false, "roleName": "zpPO7BPxVWlRFnIe"}' \
    'krQ99ecmenxguw5b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminUpdateRoleV3' test.out

#- 233 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'O8Vh4JaKYAsoMlLJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleAdminStatusV3' test.out

#- 234 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'GMl5xFgLj4mCShMF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminUpdateAdminRoleStatusV3' test.out

#- 235 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'lbrRGjoBQ45Za4JR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AdminRemoveRoleAdminV3' test.out

#- 236 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    '4S3iac6vLeoIULJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AdminGetRoleManagersV3' test.out

#- 237 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "WXmQFlef1tSHJf6s", "namespace": "VpwAAKKqmTy0ZSyJ", "userId": "7IIUXlBlZMQeSnOg"}, {"displayName": "5gf1SwrbpmoF4DvN", "namespace": "A1wo9IAxV5C71gTw", "userId": "8BJPFctwUMCRdxXO"}, {"displayName": "Bu3TWmHDVmCGFoD7", "namespace": "aNFj9wORAVqRuNsX", "userId": "xRu4EQqR3KbYWtFz"}]}' \
    'plXVk36IpbGquPnI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRoleManagersV3' test.out

#- 238 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "PwR1BinZ4ULwAKO8", "namespace": "n42UuxEyfzZJsZd9", "userId": "sB6CV9KiWkbdpGqW"}, {"displayName": "QIPK6mVytM5mBRT3", "namespace": "9gKYLk9DmjJh6Pnp", "userId": "TXWAUt8lgqNM4poG"}, {"displayName": "EvIKCe3MrLxmnjml", "namespace": "AuaBCdhzXb6cBMPN", "userId": "MmjMi2uztFNfXg0U"}]}' \
    'vwaZ0py16ShGomFz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AdminRemoveRoleManagersV3' test.out

#- 239 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'UappaaODZaZ6Vzzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AdminGetRoleMembersV3' test.out

#- 240 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "nntoxwsNtNxWoH5w", "namespace": "VHJVaEnaycYsKkgX", "userId": "0RMDxvlK9RnTEYv5"}, {"displayName": "eDhCxwy85vlhWw1R", "namespace": "CgHr3f6UqFGCvsMF", "userId": "EFlXHBOK1RqtKYVO"}, {"displayName": "bVorIVWWLaVJwe2K", "namespace": "Aca1aKeXUu9hINqK", "userId": "voYKio4M51vuaFyq"}]}' \
    'jQsTGmzItJIOkEIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AdminAddRoleMembersV3' test.out

#- 241 AdminRemoveRoleMembersV3
eval_tap 0 241 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 242 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 38, "resource": "6itDEsq0dHfYG6k8", "schedAction": 85, "schedCron": "3GERdJdphepF9dfs", "schedRange": ["ng9FGGjJ0hRPUBFx", "M2Fr3olO10RAyIZs", "2VfCRhzfKDAGIAJu"]}, {"action": 84, "resource": "zsWGrtIgVPb7hoo8", "schedAction": 60, "schedCron": "kNPW8mWOJGtdXJGD", "schedRange": ["sxRAR3NObYp43YXM", "HqWeVjnOURxGvOhz", "9s7ktWkJDaHg6kDV"]}, {"action": 18, "resource": "MBQAdOfrtHWyGg5T", "schedAction": 95, "schedCron": "qJkFoZFZex0eOw31", "schedRange": ["PXkVnetcvAuim14W", "dh1qKoSDBbyqlJyf", "VgaW6ziZF6ijZzA3"]}]}' \
    'MkosOcoAcV0T2G3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AdminUpdateRolePermissionsV3' test.out

#- 243 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 88, "resource": "GjYReIZaDC2Au2bE", "schedAction": 32, "schedCron": "iBdljXtowifBfAw3", "schedRange": ["0kOykBuDJ0IPQeAL", "4MZwEVJe7waGyB6g", "2M5JiwtMOfDfoMgU"]}, {"action": 12, "resource": "yFBTPfnmfN5E20OR", "schedAction": 78, "schedCron": "eeExZYnGcrZHMKoT", "schedRange": ["cIXeKZzZBo6ARaQn", "NZQ1R0PGBFVnc37a", "WVjM3iVKjr5VDqak"]}, {"action": 76, "resource": "0PWppB2H0G8Xko9l", "schedAction": 73, "schedCron": "MNoFPtRhYYIpNqVH", "schedRange": ["bbCVwbitD5tWXZVv", "jYqrEXKUDlmtixw9", "FtBVAWT8PxL8674K"]}]}' \
    'YMeN2W2CNqmO8JAL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AdminAddRolePermissionsV3' test.out

#- 244 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["tCiDuGQQsvWV3NSj", "XUXSMKY09x4TKOws", "yRNnaLNhw0xGnXc2"]' \
    '9UDQxeiBo2hB9u1v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AdminDeleteRolePermissionsV3' test.out

#- 245 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '0' \
    'POCjseK1xaSbMjyF' \
    'rYsITcyT5AhNNH0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 245 'AdminDeleteRolePermissionV3' test.out

#- 246 AdminGetMyUserV3
$PYTHON -m $MODULE 'iam-admin-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 246 'AdminGetMyUserV3' test.out

#- 247 UserAuthenticationV3
$PYTHON -m $MODULE 'iam-user-authentication-v3' \
    't1yPtBwXIuYrbPUc' \
    'vEOJ4PghksbaThW3' \
    '7NTbz8HiRmuknvXi' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 247 'UserAuthenticationV3' test.out

#- 248 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'TP0KrWQ3pgbHM0Sv' \
    'y3GRenDzwlTE9Czh' \
    'nck3GnyPFQHgn9jV' \
    'E6QGkZ8AVzeiaDi6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AuthenticationWithPlatformLinkV3' test.out

#- 249 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    '7E3rTwN2LrT85Arf' \
    'e6EweJxWANt1bDay' \
    '64EnFyFeW0oNhddK' \
    'rrhzwz2PFXC33KjL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 249 'AuthenticateAndLinkForwardV3' test.out

#- 250 PublicGetSystemConfigV3
$PYTHON -m $MODULE 'iam-public-get-system-config-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 250 'PublicGetSystemConfigV3' test.out

#- 251 GenerateTokenByNewHeadlessAccountV3
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v3' \
    'NUFQJgCWV7dj8I5e' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 251 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 252 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'VnflH2hnMV6Yxtl5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'RequestOneTimeLinkingCodeV3' test.out

#- 253 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    'DKUhjBy9oWPcMIQc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'ValidateOneTimeLinkingCodeV3' test.out

#- 254 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    '5lRQojhJgpXVCubd' \
    'w0sPrgDKqHCs5GTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 254 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 255 GetCountryLocationV3
$PYTHON -m $MODULE 'iam-get-country-location-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 255 'GetCountryLocationV3' test.out

#- 256 Logout
$PYTHON -m $MODULE 'iam-logout' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 256 'Logout' test.out

#- 257 RequestTokenExchangeCodeV3
$PYTHON -m $MODULE 'iam-request-token-exchange-code-v3' \
    'TLCxJqK7dgsgrnpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RequestTokenExchangeCodeV3' test.out

#- 258 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'E1acxZoDXdPORkWk' \
    'yTcJzvDUlhTlBNpv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 259 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'kjg48iVKCqEqeZP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'RevokeUserV3' test.out

#- 260 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'CFaMkJVBkZU3qtk0' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 260 'AuthorizeV3' test.out

#- 261 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    '6tlxks0yGW8qDWfr' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 261 'TokenIntrospectionV3' test.out

#- 262 GetJWKSV3
$PYTHON -m $MODULE 'iam-get-jwksv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 262 'GetJWKSV3' test.out

#- 263 SendMFAAuthenticationCode
$PYTHON -m $MODULE 'iam-send-mfa-authentication-code' \
    '7MF8Ptq10XBhcJfG' \
    '9qYAEpR44fWWEsCE' \
    'TqKlcFcaL6XOoO3W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'SendMFAAuthenticationCode' test.out

#- 264 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    'qBsbDmsTk9UuiQwe' \
    'zvArAKJwZGVyknpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'Change2faMethod' test.out

#- 265 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'huGhAnlnjyPBj7h3' \
    'hncU5vgL62RA2BI7' \
    'knizQ4Jx8In4w8yR' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'Verify2faCode' test.out

#- 266 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'LeTQyplscfsZvvUp' \
    'CMJRliFCmFC9uUxS' \
    'xI4yyrZIV9M22gRL' \
    'sc6Jwt190s6yFiDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'Verify2faCodeForward' test.out

#- 267 OAuthDynamicClientRegisterWithNamespaceV3
$PYTHON -m $MODULE 'iam-o-auth-dynamic-client-register-with-namespace-v3' \
    '{"client_name": "s0wyldbDDntsSQ8D", "client_uri": "EsKT6Mw5xDz8asAR", "grant_types": ["tI3TVV2QmlqRK5ro", "G1oZArFJBUmMx7nz", "K8rRAYvvynDPJ9SM"], "redirect_uris": ["RzSo0RzUoSen8CjE", "htRcnVsYOwypw6F2", "1uYowkPNGANjli9X"], "response_types": ["Zkbrkh3dQNtIEwCc", "fPmWjX540aN2pvOi", "5UG7agVhXIgoHE9e"], "scopes": ["EvIyV2DqxWhSV3r9", "vk4HQDiwqJUZHP7H", "M6JB2P6ZjZh9eggv"], "token_endpoint_auth_method": "vmXZU7lVGZ6lIs17"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'OAuthDynamicClientRegisterWithNamespaceV3' test.out

#- 268 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'PXJ8KsgqGNM6sO7I' \
    'UwIv84zQjc88fKtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 269 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'QSbDQN21JlwPxpuU' \
    'Zm1GVuI2Eihx6IJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AuthCodeRequestV3' test.out

#- 270 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'MzUqM16MYY2MVvo3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenGrantV3' test.out

#- 271 GetRevocationListV3
$PYTHON -m $MODULE 'iam-get-revocation-list-v3' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 271 'GetRevocationListV3' test.out

#- 272 TokenRevocationV3
$PYTHON -m $MODULE 'iam-token-revocation-v3' \
    'MMCL4aV6oMUzpMms' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 272 'TokenRevocationV3' test.out

#- 273 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'eD04717oGCmrTUcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'SimultaneousLoginV3' test.out

#- 274 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'refresh_token' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 274 'TokenGrantV3' test.out

#- 275 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'NUYz7N4wHLHx7FCW' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 275 'VerifyTokenV3' test.out

#- 276 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'n7iOmKIN2roJNZmg' \
    'EGzqDHdLpDjLIhvC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticationV3' test.out

#- 277 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'NlBRcFsa03Nqu13L' \
    'gD6kOUZXQKRTVR95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PlatformTokenRefreshV3' test.out

#- 278 PublicGetInputValidations
eval_tap 0 278 'PublicGetInputValidations # SKIP deprecated' test.out

#- 279 PublicGetInputValidationByField
eval_tap 0 279 'PublicGetInputValidationByField # SKIP deprecated' test.out

#- 280 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'IwPCb2qOuIRbBL0n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetCountryAgeRestrictionV3' test.out

#- 281 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'jCbitEJNHwfW76v6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 281 'PublicGetConfigValueV3' test.out

#- 282 PublicGetCountryListV3
$PYTHON -m $MODULE 'iam-public-get-country-list-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 282 'PublicGetCountryListV3' test.out

#- 283 PublicGetNamespaceScopedInputValidations
$PYTHON -m $MODULE 'iam-public-get-namespace-scoped-input-validations' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 283 'PublicGetNamespaceScopedInputValidations' test.out

#- 284 PublicGetNamespaceScopedInputValidationByField
$PYTHON -m $MODULE 'iam-public-get-namespace-scoped-input-validation-by-field' \
    'GPVwWjIfhOXemeTg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 284 'PublicGetNamespaceScopedInputValidationByField' test.out

#- 285 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
$PYTHON -m $MODULE 'iam-retrieve-all-active-third-party-login-platform-credential-public-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 285 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 286 RetrieveActiveOIDCClientsPublicV3
$PYTHON -m $MODULE 'iam-retrieve-active-oidc-clients-public-v3' \
    'iENbhdRohucoiX0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 286 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 287 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 287 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 288 PublicGetUserByPlatformUserIDV3
eval_tap 0 288 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 289 PublicGetProfileUpdateStrategyV3
$PYTHON -m $MODULE 'iam-public-get-profile-update-strategy-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 289 'PublicGetProfileUpdateStrategyV3' test.out

#- 290 PublicGetAsyncStatus
$PYTHON -m $MODULE 'iam-public-get-async-status' \
    'AQZEbNr6VtQiKwKu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 290 'PublicGetAsyncStatus' test.out

#- 291 PublicSearchUserV3
$PYTHON -m $MODULE 'iam-public-search-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchUserV3' test.out

#- 292 PublicCreateUserV3
$PYTHON -m $MODULE 'iam-public-create-user-v3' \
    '{"PasswordMD5Sum": "IHMjiIjX7Eu0WCXd", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "GX7ygT5qlBekxw9p", "policyId": "O3vyRviPljDYddTD", "policyVersionId": "wgc6onXfoDvjI9jf"}, {"isAccepted": false, "localizedPolicyVersionId": "FTHcHvAfosnCXqJp", "policyId": "lcwaBHILlCC7ovjE", "policyVersionId": "bjKrZ2d6IbWTfPpl"}, {"isAccepted": true, "localizedPolicyVersionId": "43FQpfFWm8VMHjC8", "policyId": "qrxvZsJd3RBYL4PA", "policyVersionId": "qdviBvToSQ7EqHUh"}], "authType": "Hn1qP3G2kSIurSOW", "code": "I2donULQokdCSsp8", "country": "7x6Jfe5YAYJeb1GU", "dateOfBirth": "dtB5G8NITA0g58cq", "displayName": "Zn79u2grirdqELbd", "emailAddress": "qXaPlAMGm4h3PbLH", "password": "Da7uqaaxqXPKuNAe", "reachMinimumAge": false, "uniqueDisplayName": "PyDb3vKbCw9eAGmM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateUserV3' test.out

#- 293 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    '6lPAJMizukBmcy1k' \
    'bAWDUac65Jdlm1JJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'CheckUserAvailability' test.out

#- 294 PublicBulkGetUsers
eval_tap 0 294 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 295 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "wmCAjTwtCqKdh92w", "languageTag": "uH9hLkAg90cQgXeZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicSendRegistrationCode' test.out

#- 296 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "nKRP6Gdv2QY9BadK", "emailAddress": "Jj4HkL0mk4HHDzXc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyRegistrationCode' test.out

#- 297 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "KJowQbOrgveLe4hY", "languageTag": "QEGcivibNKS0tBFx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicForgotPasswordV3' test.out

#- 298 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "zru1A3ObcaijxlHr", "password": "cqzwGgl1SyrFazP5", "uniqueDisplayName": "g67zq7XCHkJzmy6D", "username": "txvO3nUiVM7UfbH7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicValidateUserInput' test.out

#- 299 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'Qv0Eyy6G3n83Sb2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetAdminInvitationV3' test.out

#- 300 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "XmcXtuUYtYkPAHld", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ViMMFji1GmfmwhN2", "policyId": "5xGSRRZnwlbMGheY", "policyVersionId": "VteLiiIKPjokv6HM"}, {"isAccepted": false, "localizedPolicyVersionId": "mp580sUSlEfC6ckb", "policyId": "V2y32kG5QTZnpxYa", "policyVersionId": "2jDp3LzelXaUz9AK"}, {"isAccepted": false, "localizedPolicyVersionId": "lwFNJyyLozi8eBqP", "policyId": "D6pfcv9jGr7b2hHb", "policyVersionId": "aUEtBnsggbEVNmym"}], "authType": "BNr5C2BOjUiOQVEb", "code": "p3z13pDy371QLVtD", "country": "b6RZXatSimmKudqU", "dateOfBirth": "Rkyz4E3EI1bSCYaa", "displayName": "8JSNQdhrnvuDGFiT", "emailAddress": "4U6WQQwsTHCgTvrG", "password": "llrcttK4WgzdUhB2", "reachMinimumAge": false, "uniqueDisplayName": "U1e8C1HnrPGydCRG"}' \
    'PXLKNNfCxcAJoMhS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'CreateUserFromInvitationV3' test.out

#- 301 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "Zgpx0HtzCgr8ybpA", "country": "O0Pgh6Uenz7FjcRR", "dateOfBirth": "IKcTVvsormCNHH08", "displayName": "vEf2WSsLchLBElch", "languageTag": "9a9Knc6glMjwg8OW", "uniqueDisplayName": "AT7d65hchXzG4ffz", "userName": "0lXBDbBGrYGleamV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'UpdateUserV3' test.out

#- 302 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "gjm0xqJhfraXwzn0", "country": "bbNK5rhgy51k1e1g", "dateOfBirth": "Z8QCEx41nhN2NMDX", "displayName": "EHz2uROYqy72xPht", "languageTag": "IM8Rw0xHZOUW3jlX", "uniqueDisplayName": "Yz8azHYdzaYe7Wjw", "userName": "oU21EdgoOvT13nFP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicPartialUpdateUserV3' test.out

#- 303 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "xMy9YNTBZTR5tZma", "emailAddress": "ZGxrhAPoREvGmmbG", "languageTag": "W3SttwZrmKkREJXu", "upgradeToken": "cN3IEt8vZSqh6SjL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicSendVerificationCodeV3' test.out

#- 304 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "dDyVf6irpvxpCXFl", "contactType": "M52jb80Nlw8icwWR", "languageTag": "vvZB46NCiqdleq2j", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicUserVerificationV3' test.out

#- 305 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "q7UwwraCDr326Q66", "country": "cxtjNTXsCsfA2pIW", "dateOfBirth": "zC6nrUavXt7t0lls", "displayName": "H39PXWtk222GY7L5", "emailAddress": "8lP7drhfBjZFgaGU", "password": "fhy5TZFoyfZ0XfCx", "uniqueDisplayName": "PDcH66JWKmTRqrvf", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicUpgradeHeadlessAccountV3' test.out

#- 306 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "IrFQWIDC6PHVsnUu", "password": "eYd49OFDlbdIrxqx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyHeadlessAccountV3' test.out

#- 307 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "Atw8vLsYBHN6M7Op", "mfaToken": "cFqK4FBJG8BfuSzy", "newPassword": "tkPE6mw3Zv0zD14W", "oldPassword": "sQt5oimAfS3Sh33T"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdatePasswordV3' test.out

#- 308 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'ufYVdPwYmvZkT3zo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateJusticeUser' test.out

#- 309 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    '8gxMqM1wUdXsMjUb' \
    'hRjnDrYWlRfPpgHg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicPlatformLinkV3' test.out

#- 310 PublicPlatformUnlinkV3
eval_tap 0 310 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 311 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    '36d9NP5nNvzIlwtY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicPlatformUnlinkAllV3' test.out

#- 312 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'I9wKX9V1XxF2CFfE' \
    'pf0qN2twLYXq4HSE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicForcePlatformLinkV3' test.out

#- 313 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'GpaUMmdPXWaJRdn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicWebLinkPlatform' test.out

#- 314 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'WMdrhlWqCc54JfyG' \
    'zMMHiVQ6covYDuI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicWebLinkPlatformEstablish' test.out

#- 315 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'l1d9YaLVuL1mLP65' \
    'pId36F25c13PNqPn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicProcessWebLinkPlatformV3' test.out

#- 316 PublicWebReauthPlatform
$PYTHON -m $MODULE 'iam-public-web-reauth-platform' \
    '7XRlnqiWP9WWQMGm' \
    'GDPR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicWebReauthPlatform' test.out

#- 317 PublicWebReauthPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-reauth-platform-establish' \
    '5N2egLXRiNNV5Fy4' \
    'ilLbKzQFBHQ0FHWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'PublicWebReauthPlatformEstablish' test.out

#- 318 PublicWebReauthPlatformProcess
$PYTHON -m $MODULE 'iam-public-web-reauth-platform-process' \
    'ul5WKkzjzRnLLFKG' \
    'FSUC1sZtVitkoRyE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 318 'PublicWebReauthPlatformProcess' test.out

#- 319 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "XWrhLNPUvlrOA50x", "userIds": ["Gdlq3Dkm52TA4zLB", "Sh2QJWgWvIZGJOPk", "JvsZhfMwJPOcRFJT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUsersPlatformInfosV3' test.out

#- 320 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "eKbAMIJChPyIhVPm", "code": "Ms1zqz6exSNhnabX", "emailAddress": "Gs0qawVMpRu5wP9C", "languageTag": "TLKxi1BjFMOIsJO7", "newPassword": "EUYasMTHGgaQ2UEr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'ResetPasswordV3' test.out

#- 321 PublicGetUserByUserIdV3
eval_tap 0 321 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 322 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'hcMpuZW4KtmXptKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserBanHistoryV3' test.out

#- 323 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'Aev0UqYpD2R7Yqid' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 324 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'gD0wxHpQyntHsI11' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserInformationV3' test.out

#- 325 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'lC6BXyQW3eG0BvuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserLoginHistoriesV3' test.out

#- 326 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'oP1hIpdIWajZTyB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserPlatformAccountsV3' test.out

#- 327 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'k7Q9zNJHkXmHB9cu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicListJusticePlatformAccountsV3' test.out

#- 328 PublicLinkPlatformAccount
eval_tap 0 328 'PublicLinkPlatformAccount # SKIP deprecated' test.out

#- 329 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["1ZdRIZ1hHCpApGun", "PxVvWyQvciFGxJNO", "aveGzkTPehZVmZi1"], "requestId": "UYM7BApA1YByiGkJ"}' \
    'R30lAinKfKXqYE8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicForceLinkPlatformWithProgression' test.out

#- 330 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'uKFRwAkAyYY8hSNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPublisherUserV3' test.out

#- 331 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'TpzSm7jdrPdkMMoy' \
    'lrI7DpmCIb5JWu7D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 332 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetRolesV3' test.out

#- 333 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'AXtIeslnM3lJQMDx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRoleV3' test.out

#- 334 PublicForgotPasswordWithoutNamespaceV3
$PYTHON -m $MODULE 'iam-public-forgot-password-without-namespace-v3' \
    '{"clientId": "u7Auj8cqdtNaFO3A", "emailAddress": "By1AeDryAFewcN6U", "languageTag": "8vRJ3ebbfa3ep8cK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 335 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyUserV3' test.out

#- 336 PublicSendCodeForwardV3
$PYTHON -m $MODULE 'iam-public-send-code-forward-v3' \
    '{"context": "Nlb024FzQsBlwn2p", "emailAddress": "N8vqhPmlYgFAu9gD", "languageTag": "8vsiDfzK1gMLvJ1K", "upgradeToken": "qSZCanZaGzamJ8JZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicSendCodeForwardV3' test.out

#- 337 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    '6lV9zpsDX7CWEoHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 338 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["3yLZSpydGfNnNFMf", "XpIPlcaufemZ4xlG", "tWc5UcGIGpI8YhyH"], "oneTimeLinkCode": "kINdPYamt1NNvdmy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'LinkHeadlessAccountToMyAccountV3' test.out

#- 339 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    '7qa1StMbwcUsu3gJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 340 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 341 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "0yHA6KDH87AmGMvC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PublicSendVerificationLinkV3' test.out

#- 342 PublicGetOpenidUserInfoV3
$PYTHON -m $MODULE 'iam-public-get-openid-user-info-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'PublicGetOpenidUserInfoV3' test.out

#- 343 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'PublicVerifyUserByLinkV3' test.out

#- 344 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'huhxZJsDNCQEtOnY' \
    'VE7i77NKczg6MaoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 344 'PlatformAuthenticateSAMLV3Handler' test.out

#- 345 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'cixj92JkMWuFc2x9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'LoginSSOClient' test.out

#- 346 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'p8sArSRypvu88WyR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'LogoutSSOClient' test.out

#- 347 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'MMRloXySTO9W3BEI' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 347 'RequestTargetTokenResponseV3' test.out

#- 348 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    '4eB0PHoEfIdFP0Qa' \
    'rAdoCQoVI26D2IdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'UpgradeAndAuthenticateForwardV3' test.out

#- 349 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminListInvitationHistoriesV4' test.out

#- 350 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminGetDevicesByUserV4' test.out

#- 351 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminGetBannedDevicesV4' test.out

#- 352 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'V2RNnCRn6spzE0Dj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminGetUserDeviceBansV4' test.out

#- 353 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "97Arjpd7IRveArOF", "deviceId": "ED1MAfVZhADFM15p", "deviceType": "fl1N2CNDu3DpGXJr", "enabled": false, "endDate": "gVnrneQPU35uuCoR", "ext": {"3Wc6j3UqRICnmZxo": {}, "b6vepvgW3Vmnz3Ws": {}, "gPS6R3Uev7bCsylP": {}}, "reason": "ZDz1fiXmZReVZ4in"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminBanDeviceV4' test.out

#- 354 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'DP7o0Aeler4oEJEm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminGetDeviceBanV4' test.out

#- 355 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'HU4T74NkroVwJFRF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminUpdateDeviceBanV4' test.out

#- 356 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'LnsSyJhQApjt9Vvn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 356 'AdminGenerateReportV4' test.out

#- 357 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminGetDeviceTypesV4' test.out

#- 358 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    '7MyjPjMUoUC9cUOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminGetDeviceBansV4' test.out

#- 359 AdminDecryptDeviceV4
eval_tap 0 359 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 360 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    'Lu9OVb7aBijwHPyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminUnbanDeviceV4' test.out

#- 361 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'aMEDKGCxmJgOQkVi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminGetUsersByDeviceV4' test.out

#- 362 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 363 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 364 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "tCvCembJFNyIwxPt", "policyId": "19hjyI7ALyZHQ8V4", "policyVersionId": "AejtUM6llcl5hdZo"}, {"isAccepted": false, "localizedPolicyVersionId": "hVcQ4wXeArPe089c", "policyId": "qMuV8MLxiTO3GhLJ", "policyVersionId": "2qx2h93yz3Y7Ytgd"}, {"isAccepted": false, "localizedPolicyVersionId": "zwVRhRmllqqWYgDW", "policyId": "brtw6qiRU6n8IKPZ", "policyVersionId": "1kpSeRooa84wgi9Q"}], "count": 19, "userInfo": {"country": "VyEemJDvokY7UUVC"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminCreateTestUsersV4' test.out

#- 365 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GWcVrHG4ehIhJk59", "policyId": "7xUXpiOLFQFxY4AH", "policyVersionId": "LzQnClUtkXb0SoML"}, {"isAccepted": true, "localizedPolicyVersionId": "Yx6dbDNBB9LNziCP", "policyId": "1xQygVqAioKka1tx", "policyVersionId": "56AwxAJU0XOoXFpK"}, {"isAccepted": true, "localizedPolicyVersionId": "7smOvhTDIdO6ugOF", "policyId": "ZPtLUvuPK7wBmEY4", "policyVersionId": "lD14f0XIJh3uxrBG"}], "authType": "EMAILPASSWD", "code": "PEDDuHxwEbPLfnjl", "country": "MfDJxP4S8TNhXBTi", "dateOfBirth": "wS2sBodn1p1MJrZv", "displayName": "1itpBPRbtgUMFAcx", "emailAddress": "hrY80cxjAXFOLYQX", "password": "2ryH4oq6fdhzarU0", "passwordMD5Sum": "VtmwcYLuVxqvaL6v", "reachMinimumAge": false, "uniqueDisplayName": "bKYSr7IVc2WJyX67", "username": "v7JTcrppNGl78VMG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateUserV4' test.out

#- 366 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["9XMG2c5BWrzKJ0Lj", "0VNzr8kTl05oiubu", "5HHlb7VI1cHNU3pv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 367 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["bpyJTgwl3ZOMpzNQ", "DtQNlDFMazvRX5v3", "UCobMU8bzcaf0Qv0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminBulkCheckValidUserIDV4' test.out

#- 368 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "dFMnEcDHueqAKTjd", "country": "RpgYeuitqLYJ7E9m", "dateOfBirth": "P2Be9WZ9kuWMnRcG", "displayName": "zbD5iC34s0kTiXwP", "languageTag": "jN8E3wXz4Q1L3hAG", "skipLoginQueue": false, "tags": ["xOOi4DVUYo37I8Mg", "h1DJARpi5KzpbDPf", "XdGvodrl6UOwYZJq"], "uniqueDisplayName": "3OJhzlgtX87XuWOI", "userName": "pQwptcvroohLb6q3"}' \
    'F16PO9YdwqEszRnw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateUserV4' test.out

#- 369 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "VX2rvVr6DpLOyrgs", "emailAddress": "LZV9arTxBgnOqH9l"}' \
    'yv8wx2JosSHLipk5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateUserEmailAddressV4' test.out

#- 370 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "N6e79zCfL2ar4zJm", "mfaToken": "B2wifDA7LpND5zXL"}' \
    'hrmEeBwTzs9QmLRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminDisableUserMFAV4' test.out

#- 371 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'EZ0r6n6anryoVkl4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminGetUserMFAStatusV4' test.out

#- 372 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'tChuDibBIH1dyZPH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminListUserRolesV4' test.out

#- 373 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["tYHKqpl1Xk1CdFvY", "qfoYzBc16XXXuoJG", "XCyzA8a5uh1LdVOa"], "roleId": "WOjRinmMTxEz6bdD"}' \
    'FDqRMyTZOXYRC3gI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminUpdateUserRoleV4' test.out

#- 374 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["RiYFpDlAEyVuvyXI", "TMn2F86xZRHxnOP0", "2x00SvR2yNPms1Dd"], "roleId": "UL5bc6QMB9TtHXqe"}' \
    'aYlaYm2XGN51wxYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminAddUserRoleV4' test.out

#- 375 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["CHYaW7BAFZnpxmzs", "0AQYJnB9w4rkop7L", "L7Yqjh4lgGGsrJv0"], "roleId": "EyLkZej5voHh0KRD"}' \
    'JjPEF1LpvoOxT54t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminRemoveUserRoleV4' test.out

#- 376 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminGetRolesV4' test.out

#- 377 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "na72ji4B86NKZ0tk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminCreateRoleV4' test.out

#- 378 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'EWAqM0EZhtIp1XL7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'AdminGetRoleV4' test.out

#- 379 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'HL2nKoPXxLMtU6hL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminDeleteRoleV4' test.out

#- 380 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "0sA87gQx9kL8a1tE"}' \
    'pNGaoJWjZSpZNjdK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'AdminUpdateRoleV4' test.out

#- 381 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 68, "resource": "9RPULWpWw5UQBldf", "schedAction": 28, "schedCron": "L5KfkSA0amHSK4Sz", "schedRange": ["7fbw7cgHHvIEPvqj", "KVvPP5x3gf1HnOzy", "uw55KAICc0N5Aqna"]}, {"action": 68, "resource": "ZWuO0OVwGUgR3PEW", "schedAction": 71, "schedCron": "d3mUKKxi2anNFpYX", "schedRange": ["wE37QpBIY8LEEtCm", "semV8gAHQaitMhle", "Y83sh3B07O0XQWCZ"]}, {"action": 0, "resource": "lA6x0lY16PWsrsxY", "schedAction": 33, "schedCron": "X7knj7y5qEOp7hzP", "schedRange": ["CxvetFhAgAkkEhd3", "Y16uyKwJ713r4F9W", "C342Uggyr64isEfx"]}]}' \
    'bFEabmT6MmgebEkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'AdminUpdateRolePermissionsV4' test.out

#- 382 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 45, "resource": "3QcKQldxIqMgf2Pa", "schedAction": 81, "schedCron": "EJfdxsQXLRJRONKh", "schedRange": ["0R0RXJ6anzAeqD1H", "lhQ1rqjRECHyhLYG", "nvEdCjYsnh0Y0rQl"]}, {"action": 43, "resource": "G7UJEMeseC0hnoI1", "schedAction": 6, "schedCron": "aXxxiGOrXbWC2k23", "schedRange": ["JxAI3kOXwHnS2VOE", "SYx49M1JdtImLI5e", "TuHqCNtVlNaGzoqp"]}, {"action": 54, "resource": "QEdyLRX3etMjv8js", "schedAction": 22, "schedCron": "ousRcrhXNAh3Cu4o", "schedRange": ["u029lD9VLXNwkZWT", "bX0PZb0I9Qm4xKek", "7ZAZJCk1fizRJy5J"]}]}' \
    'oIlHjTZ4mDmXZIBT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AdminAddRolePermissionsV4' test.out

#- 383 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["i05akxBYozWzUW4R", "DVM8Y4PcXDH8RZqU", "jELC82uP1nMUDAKQ"]' \
    'EkOvO52VTPFFuLWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'AdminDeleteRolePermissionsV4' test.out

#- 384 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '0HQkTuy4fU6Ejumf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'AdminListAssignedUsersV4' test.out

#- 385 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["9ltGde7x4luTsEk9", "TNqSiFJyMByoRKUr", "vfixr7UFzLzGaWok"], "namespace": "215MnSNTPMRaYf8C", "userId": "hh5tiLsXIOSE2JSD"}' \
    'RlSX5uOgZ3Msm86J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'AdminAssignUserToRoleV4' test.out

#- 386 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "r35oZQ3WcFld5DKw", "userId": "JoCrYrlOXZN7MoQZ"}' \
    'DN1sjuHXDU9ZFHIS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'AdminRevokeUserFromRoleV4' test.out

#- 387 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["uKMr6e9VKi3lHZdn", "YzFYEnOA6gFO3zfS", "vvmLgxlU5MdUdF7g"], "emailAddresses": ["HdIf6eMd0iVUmBrF", "wFIESxo8uFqKtoZi", "VPtwECFgcQRsqYFt"], "isAdmin": true, "isNewStudio": true, "languageTag": "bpKYKp18TPWOixbT", "namespace": "LfdOF3VtCUZ0wN81", "roleId": "CLC324P82gdsOb5J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'AdminInviteUserNewV4' test.out

#- 388 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "p6oxvvtB4aireJSZ", "country": "c7Cojp07DFR7IvEh", "dateOfBirth": "nKAMSw1WGHPO22mC", "displayName": "j7yFmbpItmTcMVUl", "languageTag": "RoYFks2ULHooisOH", "skipLoginQueue": false, "tags": ["tdmVppuu6acpUdn8", "X5IZjtFT6Bs8OO0C", "VqXF6bMzRd2Z2Wju"], "uniqueDisplayName": "tGAptSES09ZcFGPC", "userName": "okMwrtVvGhHzNdHM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'AdminUpdateMyUserV4' test.out

#- 389 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "Jys9gtFxWSkvzQZj", "mfaToken": "QrgnXc87G37jhABE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 389 'AdminDisableMyAuthenticatorV4' test.out

#- 390 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'z5T57ICJiWEPnZsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 390 'AdminEnableMyAuthenticatorV4' test.out

#- 391 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 392 AdminGetMyBackupCodesV4
eval_tap 0 392 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 393 AdminGenerateMyBackupCodesV4
eval_tap 0 393 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "3NsS8VgyzvujT8aE", "mfaToken": "ay0LM1IpMDZuDLXN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'AdminDisableMyBackupCodesV4' test.out

#- 395 AdminDownloadMyBackupCodesV4
eval_tap 0 395 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 396 AdminEnableMyBackupCodesV4
eval_tap 0 396 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 397 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'AdminGetBackupCodesV4' test.out

#- 398 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'AdminGenerateBackupCodesV4' test.out

#- 399 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'AdminEnableBackupCodesV4' test.out

#- 400 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'AdminChallengeMyMFAV4' test.out

#- 401 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'AdminSendMyMFAEmailCodeV4' test.out

#- 402 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "scwbXgdwQnMuReen", "mfaToken": "3aYjhar5GRzOAfOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'AdminDisableMyEmailV4' test.out

#- 403 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'baEHFX0sySxhkhCp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'AdminEnableMyEmailV4' test.out

#- 404 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 404 'AdminGetMyEnabledFactorsV4' test.out

#- 405 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'V5A2ZLHG60X6LS9d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 405 'AdminMakeFactorMyDefaultV4' test.out

#- 406 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'AdminGetMyOwnMFAStatusV4' test.out

#- 407 AdminGetMyMFAStatusV4
eval_tap 0 407 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 408 AdminInviteUserV4
eval_tap 0 408 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 409 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'Ye42oicsvoF2Egso' \
    'ZSKOzQIDAf44vyeN' \
    'IfF5Ri6ydoL4tB0F' \
    'Upx5TLiooOqRm1Mx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 409 'AuthenticationWithPlatformLinkV4' test.out

#- 410 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'f3NfjnW9axvejxDQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 411 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'gdz6GmSzMPzB5ZP4' \
    'mdsjnGGtbn27LOqX' \
    '7FWHHlsxNkfgF88X' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 411 'Verify2faCodeV4' test.out

#- 412 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    'bcSuSkd72wzQJjmh' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 412 'PlatformTokenGrantV4' test.out

#- 413 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    'yRqefUM764xXmCkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'SimultaneousLoginV4' test.out

#- 414 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 414 'TokenGrantV4' test.out

#- 415 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'RW0KNwlKcveutOHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'RequestTargetTokenResponseV4' test.out

#- 416 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "2aWSL11msU7Qpcpk", "platformUserIds": ["ApFODOqz4FKRWcvJ", "IwzW53tKi9mxhR8R", "WtFcnNAoxNPXPlSv"]}' \
    '6kWXBTTodpLcEI0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 417 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    'WFWKlSwI38LyDyLT' \
    'QxmA6nDD3EFfeJdw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserByPlatformUserIDV4' test.out

#- 418 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "MQgWL3hmjUydsgdt", "policyId": "98KfbaQpgEAKKLcK", "policyVersionId": "bPxGvL2c7KalLFWB"}, {"isAccepted": true, "localizedPolicyVersionId": "0PBTEvM3TgMsAS5t", "policyId": "3TYXNAGl1xy1H8Ag", "policyVersionId": "2XY2TnyPCVsWzhPI"}, {"isAccepted": false, "localizedPolicyVersionId": "K4s4YGhc9qjsGzed", "policyId": "PNuJ4GH001y8DGO7", "policyVersionId": "yuqGFaSZmLnl13Nt"}], "authType": "EMAILPASSWD", "country": "gWQHXc3bRYKbJGFP", "dateOfBirth": "8HZNLJ7aPbRMRrbK", "displayName": "joifZAWt13ISgdwA", "emailAddress": "um4b3t1Ph8xHfEAl", "password": "yda8FPutbAgA4OlQ", "passwordMD5Sum": "UCJsDilWhSc6XIxh", "uniqueDisplayName": "1HqBg5FhY2vclqnT", "username": "byZ7fYvmiZxdNpmi", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicCreateTestUserV4' test.out

#- 419 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "PCLiJaHXEyuLQOO6", "policyId": "qVUihFznsLFP3013", "policyVersionId": "gsIOArelbYwYTtGs"}, {"isAccepted": true, "localizedPolicyVersionId": "Nij1bUAIrKYw673J", "policyId": "vA3stZ6FN0omme6H", "policyVersionId": "iOrbuq9cXar8FKAC"}, {"isAccepted": false, "localizedPolicyVersionId": "FrIQFWJ2aMIxqQyc", "policyId": "DpbOcYim2syYc8Yu", "policyVersionId": "KlQjnj5QjrVi62IT"}], "authType": "EMAILPASSWD", "code": "p6NklXSUYkHNYqep", "country": "adIS0zRgire2ntrz", "dateOfBirth": "0FUDXjV0GmcFSjmJ", "displayName": "GQU5YRHjMz3bo23S", "emailAddress": "F3XkwdkgeNE7pA2B", "password": "mAcotg9A9VvbcAi4", "passwordMD5Sum": "ZmdXz2NXfbCObijI", "reachMinimumAge": false, "uniqueDisplayName": "6DJmnjBd7q6U3V1i", "username": "7ip9ibQlReTecqcb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicCreateUserV4' test.out

#- 420 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wHKKIT2D8YJKnP2T", "policyId": "mDSwAt1UGNieMe0c", "policyVersionId": "6eA8xCvVNgS0wUvE"}, {"isAccepted": true, "localizedPolicyVersionId": "mRwwaH21xuey3fB1", "policyId": "KN5EzSmB6aO1Jqyp", "policyVersionId": "ofIkM1Wvc2CcOra4"}, {"isAccepted": true, "localizedPolicyVersionId": "XenU5naN6UuNARNf", "policyId": "A4hpoNUAwafK1Qxx", "policyVersionId": "K2sBBkQz8nIgoYpZ"}], "authType": "EMAILPASSWD", "code": "IYto2cpXUnj1kXAE", "country": "nU9CvpIjJ6tB2fqN", "dateOfBirth": "6D76apW4CsuQx2nM", "displayName": "E1E8lGIgW2AWqhlJ", "emailAddress": "fHgWSAjBmziLkAEW", "password": "kqMo2uv4G0hb2TC5", "passwordMD5Sum": "zbxqSMQf3ZXRgmEX", "reachMinimumAge": false, "uniqueDisplayName": "J3NLSVOdqFxY9j8P", "username": "8IFwNKh0Zni7P6Zf"}' \
    'RFkQolDEtyxyMGw4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'CreateUserFromInvitationV4' test.out

#- 421 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "ZEIMYFaIEr69zjnP", "country": "KVLZ59QuwBbW2xX9", "dateOfBirth": "6TmFiMrqZaZSR4SA", "displayName": "MIG5DRP307xNIxMn", "languageTag": "iv6VDtGhPQu5IgTl", "uniqueDisplayName": "vO4wr8D7APHhihwd", "userName": "NSBKpqJ8V1kQHisG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicUpdateUserV4' test.out

#- 422 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "ldXgqa99UNyHIlnr", "emailAddress": "LOesUoAwwCO2c7aE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicUpdateUserEmailAddressV4' test.out

#- 423 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "AHcpdx91UabvNvRa", "country": "UrUqTcFsGXxjR7vT", "dateOfBirth": "eNdfPVWmEdVFXX02", "displayName": "sJsXg7AKOu2Xk8T0", "emailAddress": "sqdmD20rolfU1yEo", "password": "kwoBSfRPMdPXru40", "reachMinimumAge": true, "uniqueDisplayName": "mHvpaJ6EFG9wLOlD", "username": "7N2GNQs0IgMAbRc0", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 424 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "82pjV4UBb0pZrHFx", "displayName": "E9EAcMe8RHXnsxaz", "emailAddress": "B0s0OGtkrGuIEzLq", "password": "OEqdEcHbFrNLqqyB", "uniqueDisplayName": "zPWvDsw3y3noSTun", "username": "CZN39o0vZqaSrHfw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicUpgradeHeadlessAccountV4' test.out

#- 425 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "rqqHXHpPnC56p62c", "mfaToken": "EYBMPDDNvuy4MWHW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 425 'PublicDisableMyAuthenticatorV4' test.out

#- 426 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    '8YW1euC0ubVpUB9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 426 'PublicEnableMyAuthenticatorV4' test.out

#- 427 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 428 PublicGetMyBackupCodesV4
eval_tap 0 428 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 429 PublicGenerateMyBackupCodesV4
eval_tap 0 429 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 430 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "TnYHGmKeMnGn3hXT", "mfaToken": "X65W9y7jKRgCFKj2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicDisableMyBackupCodesV4' test.out

#- 431 PublicDownloadMyBackupCodesV4
eval_tap 0 431 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 432 PublicEnableMyBackupCodesV4
eval_tap 0 432 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 433 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicGetBackupCodesV4' test.out

#- 434 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicGenerateBackupCodesV4' test.out

#- 435 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicEnableBackupCodesV4' test.out

#- 436 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicChallengeMyMFAV4' test.out

#- 437 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicRemoveTrustedDeviceV4' test.out

#- 438 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicSendMyMFAEmailCodeV4' test.out

#- 439 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "fpaEDgvMXedU0Ctj", "mfaToken": "H3UPJy3CnYG5ypxM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicDisableMyEmailV4' test.out

#- 440 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'PXQb9Aa9QMoQgjOf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicEnableMyEmailV4' test.out

#- 441 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 441 'PublicGetMyEnabledFactorsV4' test.out

#- 442 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    '0byuj8Uxptb2o5jd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicMakeFactorMyDefaultV4' test.out

#- 443 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicGetMyOwnMFAStatusV4' test.out

#- 444 PublicGetMyMFAStatusV4
eval_tap 0 444 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 445 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'TreVKh6flE9FaNdF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 446 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "DCH0BMCufX5Ln9YK", "emailAddress": "DyW9wNSXGvHGabfC", "languageTag": "gecNknWoEbRoZQ4V", "namespace": "uKeTQQXDNtjgypGg", "namespaceDisplayName": "BtsGOxHfW3WBHUGC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 446 'PublicInviteUserV4' test.out

#- 447 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "n0aQHrmMgGX6WiX9", "policyId": "WPUEwP8KagnEKkfR", "policyVersionId": "nTAD7nNuqrknaj1F"}, {"isAccepted": false, "localizedPolicyVersionId": "YqSLkr3tlvhwbpOw", "policyId": "vWyVZbXXgvJKjvhZ", "policyVersionId": "n4m8rgQUG1gDFutW"}, {"isAccepted": false, "localizedPolicyVersionId": "7nD09WBTm7Hy1Avj", "policyId": "H8TO5OIzshGgQ4Th", "policyVersionId": "ugQFOWwlpo3MnSMN"}], "code": "djVtLt8CrUFIkcZk", "country": "3UEaPstaXtLCGf6P", "dateOfBirth": "jb7W28XF9eX2LXwa", "displayName": "ZwDM1CYDLmaPDEUb", "emailAddress": "DvBUnl1NO7rLa2XT", "password": "R4IEvU0JE2kLOQb2", "reachMinimumAge": true, "uniqueDisplayName": "QIVwmefiYRytVWty", "username": "JI7ujeL0gjx8jAfm", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 447 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
