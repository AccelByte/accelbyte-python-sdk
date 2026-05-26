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
iam-public-get-users-platform-infos-v3 '{"platformId": "y9NVlgxUmnfdOAmu", "userIds": ["1dX1NqD20RUvvYeJ", "Zw6QZFN7wFCnqpvN", "esGiVnt9p2to7Yja"]}' --login_with_auth "Bearer foo"
iam-reset-password-v3 '{"clientId": "1soDE1K0SvGrMYwP", "code": "mPXC2LfL2m5rP2A2", "emailAddress": "0t6foPPH94SUinY5", "languageTag": "diUlqgvY7dPPyahp", "newPassword": "pgxJhk4EdTZ000rS"}' --login_with_auth "Bearer foo"
iam-public-get-user-ban-history-v3 '92594HLvWFsXHtMP' --login_with_auth "Bearer foo"
iam-public-list-user-all-platform-accounts-distinct-v3 '0k9L5dREQbCqfh0g' --login_with_auth "Bearer foo"
iam-public-get-user-information-v3 'pABFBER6WNcDOsRz' --login_with_auth "Bearer foo"
iam-public-get-user-login-histories-v3 'Bkf9A6HjCnFRdSih' --login_with_auth "Bearer foo"
iam-public-get-user-platform-accounts-v3 'cvszzQLZBktk0siM' --login_with_auth "Bearer foo"
iam-public-list-justice-platform-accounts-v3 'up01kyaFwwD7wecu' --login_with_auth "Bearer foo"
iam-public-force-link-platform-with-progression '{"chosenNamespaces": ["Qb4GNQHVZMKGBnzh", "4suaGIzttTncVBf5", "g3oeuHiNyLkfPQPm"], "requestId": "jUkvSs5YmIejozmG"}' '5HlrIfMAvvpkAHRJ' --login_with_auth "Bearer foo"
iam-public-get-publisher-user-v3 'HZyfrXZmiJX4CjKC' --login_with_auth "Bearer foo"
iam-public-validate-user-by-user-id-and-password-v3 'eIRIr997KKpJXTLb' 'YWpqeXjaf1f5fjNM' --login_with_auth "Bearer foo"
iam-public-get-roles-v3 --login_with_auth "Bearer foo"
iam-public-get-role-v3 'ZjKJ05puX3197WrM' --login_with_auth "Bearer foo"
iam-public-forgot-password-without-namespace-v3 '{"clientId": "nJtovSMFw8X4zxbd", "emailAddress": "fXgunt1oMNZ68eov", "languageTag": "HSH3xV3URIRVDYBd"}' --login_with_auth "Bearer foo"
iam-public-get-my-user-v3 --login_with_auth "Bearer foo"
iam-public-send-code-forward-v3 '{"context": "6hMB0l7sg7IfMH5T", "emailAddress": "u1ky1ZYvyeHmfoFk", "languageTag": "UDP864shbnQ3bVvu", "upgradeToken": "vpsDJXPCWkX4Kpi8"}' --login_with_auth "Bearer foo"
iam-public-get-link-headless-account-to-my-account-conflict-v3 'CJ88aMPGFFAQZbfb' --login_with_auth "Bearer foo"
iam-link-headless-account-to-my-account-v3 '{"chosenNamespaces": ["mVTEbiRq5Juikmpa", "t75rVbN9ZBtzJ33t", "Cwv8H1f451FVZ630"], "oneTimeLinkCode": "HNBYZSrz7pMjESLL"}' --login_with_auth "Bearer foo"
iam-public-get-my-redirection-after-link-v3 'MPKDXLki6Oz5Bygt' --login_with_auth "Bearer foo"
iam-public-get-my-profile-allow-update-status-v3 --login_with_auth "Bearer foo"
iam-public-send-verification-link-v3 '{"languageTag": "8Q0RjSf1srB7hGwG"}' --login_with_auth "Bearer foo"
iam-public-get-openid-user-info-v3 --login_with_auth "Bearer foo"
iam-public-verify-user-by-link-v3 --login_with_auth "Bearer foo"
iam-platform-authenticate-samlv3-handler 'bUmQmJHNffZENs9X' '0hFMdzryvhc1YjHm' --login_with_auth "Bearer foo"
iam-login-sso-client 'mulSBIElc2CdRvBb' --login_with_auth "Bearer foo"
iam-logout-sso-client '0aGnMt625bWHb5sb' --login_with_auth "Bearer foo"
iam-request-target-token-response-v3 'X6asrjV7XJUOtHlz' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-upgrade-and-authenticate-forward-v3 'XNHEPpzlMlx7b2H2' 'THLwZGikW7TFA9gE' --login_with_auth "Bearer foo"
iam-admin-list-invitation-histories-v4 --login_with_auth "Bearer foo"
iam-admin-get-devices-by-user-v4 --login_with_auth "Bearer foo"
iam-admin-get-banned-devices-v4 --login_with_auth "Bearer foo"
iam-admin-get-user-device-bans-v4 '6SrYKq6lcVOhPJIc' --login_with_auth "Bearer foo"
iam-admin-ban-device-v4 '{"comment": "EHbiKHW7flVolAWE", "deviceId": "MmQSPDTRqjlvwnnC", "deviceType": "A5tfK5ushaKTPVjy", "enabled": true, "endDate": "rbVBh60NUA2aKQwn", "ext": {"Xrmi6ya8u4sQPvaf": {}, "1AcweR7tJW3MLMob": {}, "1hUnIzIpUM8KK1kG": {}}, "reason": "FN0NUNGKxdlAUDFQ"}' --login_with_auth "Bearer foo"
iam-admin-get-device-ban-v4 'uGPzAuT7M6OBrNwi' --login_with_auth "Bearer foo"
iam-admin-update-device-ban-v4 '{"enabled": false}' 'djSb4Vt2vKQ5vlCd' --login_with_auth "Bearer foo"
iam-admin-generate-report-v4 'I519Pf2iogwxM5DZ' --login_with_auth "Bearer foo"
iam-admin-get-device-types-v4 --login_with_auth "Bearer foo"
iam-admin-get-device-bans-v4 'M0dgozmco41750xd' --login_with_auth "Bearer foo"
iam-admin-unban-device-v4 'YQg34WUV0WpmsQnp' --login_with_auth "Bearer foo"
iam-admin-get-users-by-device-v4 '1n4YGumTKOlDOy5v' --login_with_auth "Bearer foo"
iam-admin-get-namespace-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-get-namespace-user-invitation-history-v4 --login_with_auth "Bearer foo"
iam-admin-create-test-users-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "g51ZTogG0N7Hvnuq", "policyId": "1kJ1kpHcQtnIc9z7", "policyVersionId": "0LFQMI0oZuEjY0rN"}, {"isAccepted": true, "localizedPolicyVersionId": "GE2cyzTMBY7Xd0Oo", "policyId": "ENg2Lw7uepmahXoj", "policyVersionId": "VZYz2zMU9jLzNV3G"}, {"isAccepted": false, "localizedPolicyVersionId": "g922xiBgHSka0Pz7", "policyId": "I1WkIa0oZ1nXpW1l", "policyVersionId": "70pcZgIn4lPghHyM"}], "count": 63, "userInfo": {"country": "IT9Agsjl5NmnSHhx"}}' --login_with_auth "Bearer foo"
iam-admin-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "mCe4txY0MsPc9EMg", "policyId": "f9JCJiEvhL8ZfwCV", "policyVersionId": "JW9yspUOyHC9eKeX"}, {"isAccepted": true, "localizedPolicyVersionId": "e8Bzx9aGEI22BTCZ", "policyId": "s97TJI8GPrM24F3c", "policyVersionId": "elFgM62HQtgzQhO3"}, {"isAccepted": false, "localizedPolicyVersionId": "k3bWJ0ZuYSe3sI0x", "policyId": "2hc8vaN1Off5gRZZ", "policyVersionId": "MW3huAIzBPWBYKAE"}], "authType": "EMAILPASSWD", "code": "dlKNh6GTzKjsCqxx", "country": "24QM35bSkFrvGciN", "dateOfBirth": "Hb7OY5YIpOLJW52u", "displayName": "z3c8pz63M0g4xXT5", "emailAddress": "Ts4e0uR47OzUGHeB", "password": "KtpvyRNgjZkdDppv", "passwordMD5Sum": "EJiUiDGXgh8BKcLq", "reachMinimumAge": true, "uniqueDisplayName": "zRR6xd9rTh3ureaI", "username": "bxM3Wev9pZQjWAN0"}' --login_with_auth "Bearer foo"
iam-admin-bulk-update-user-account-type-v4 '{"testAccount": true, "userIds": ["o8beVQvgeP9qOHaL", "wYnXxrz7sLmP70Lx", "N0f3JA27Qz5SjzQf"]}' --login_with_auth "Bearer foo"
iam-admin-bulk-check-valid-user-idv4 '{"userIds": ["OLYu9O46OOzz9p57", "qSpHerzO87cg7Tqt", "MiQgi7Aj28qCRbww"]}' --login_with_auth "Bearer foo"
iam-admin-update-user-v4 '{"avatarUrl": "Zc4ZS1NMkrnHs1Iy", "country": "hwqk140MolIrnlkR", "dateOfBirth": "VbcX435TDYpkk2Gz", "displayName": "a6DrSycophHw3EoE", "languageTag": "EClTO9SDKnMlnKW9", "skipLoginQueue": false, "tags": ["ShlmIt2nfhUaZGqj", "slu59GT2E6AacmZR", "XZm626POXWVj3KP1"], "uniqueDisplayName": "mX0iYHXBU3Uk2tQm", "userName": "307IORTyHnLYDAAg"}' '1YA4kZURmoGgxVRM' --login_with_auth "Bearer foo"
iam-admin-update-user-email-address-v4 '{"code": "Pf8g1rbhfIMStMnS", "emailAddress": "qrKWYOuITlYS2RYa"}' 'D9WNKGhbLhjz1v0R' --login_with_auth "Bearer foo"
iam-admin-disable-user-mfav4 '{"factor": "BIO2rkJGmPaK6HEV", "mfaToken": "IQJd3930TGewjRyf"}' 'o4nWVZZbKFsKOmgE' --login_with_auth "Bearer foo"
iam-admin-get-user-mfa-status-v4 'hjH2wFzCpxxJLfAg' --login_with_auth "Bearer foo"
iam-admin-list-user-roles-v4 '5cFT0gHAkltcR3eH' --login_with_auth "Bearer foo"
iam-admin-update-user-role-v4 '{"assignedNamespaces": ["FbiAluHv7Hssd05p", "HBJX5ln8PZbYVD8R", "iaTsdD4d3kSbTkHP"], "roleId": "MUvOAUXkw36cr2WJ"}' 'QqS7Tq4YIyZAFQ6l' --login_with_auth "Bearer foo"
iam-admin-add-user-role-v4 '{"assignedNamespaces": ["Zfa2jdNvpWf32JS1", "av9VNpVLT0LvqcfS", "dO1nAjY5FvADb3GU"], "roleId": "Qgci632w6LUrHuKB"}' 'oNTpPQXDNHto74Gc' --login_with_auth "Bearer foo"
iam-admin-remove-user-role-v4 '{"assignedNamespaces": ["mVf0fbCU9QdPuWeM", "EeL0EJG67g4W1eAm", "DxP23qstMuikKc6V"], "roleId": "NU8570siWm3V9sir"}' 'E0JOQxWeHypqCWMD' --login_with_auth "Bearer foo"
iam-admin-get-roles-v4 --login_with_auth "Bearer foo"
iam-admin-create-role-v4 '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "cCk8zHR8VyCC0EQw"}' --login_with_auth "Bearer foo"
iam-admin-get-role-v4 'E0cXokXbwKDtVmrY' --login_with_auth "Bearer foo"
iam-admin-delete-role-v4 'Qu7hZvHfiT9s9pK8' --login_with_auth "Bearer foo"
iam-admin-update-role-v4 '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "UY1QQHQ0NCEddJtx"}' '6GV01vD7lNLxlpvq' --login_with_auth "Bearer foo"
iam-admin-update-role-permissions-v4 '{"permissions": [{"action": 1, "resource": "dsgB4hOxb88WgKSL", "schedAction": 71, "schedCron": "hTfzigzHcRuJgYaj", "schedRange": ["4I8Dzyh1N0JEKNoM", "tHvjM7X1fjzknv2H", "ZMIL2P2bh14LroFT"]}, {"action": 28, "resource": "iufH2YR6QU7fj6w1", "schedAction": 0, "schedCron": "XkS3XQfMuzZh4AhZ", "schedRange": ["Re2hgU56xtyJtnbT", "DXu7FbleSP5PcdOu", "q0m0rvakR8rcwojL"]}, {"action": 89, "resource": "JDujYnVnFK6gB6Zx", "schedAction": 58, "schedCron": "2BGBXjNyRCtPOr1F", "schedRange": ["U3QZy3gdDms3kb1h", "tW0UGJpwQZlXuzu3", "m9u67JjCDwg186hG"]}]}' 'WKfO9MnoT3t99Hmc' --login_with_auth "Bearer foo"
iam-admin-add-role-permissions-v4 '{"permissions": [{"action": 48, "resource": "J0hDg2kMgkvhoQe9", "schedAction": 14, "schedCron": "g8oukDVdweG0sFHx", "schedRange": ["THa2k60SzCqUgq1g", "LbcIMevTmC631p7q", "794bu49lINFTtERA"]}, {"action": 56, "resource": "T2h3hcQ2wV3ZbBTn", "schedAction": 81, "schedCron": "B9jKaunAcylsau7w", "schedRange": ["RQmL4i3eRyIECEDa", "1I4lwXqwPfq3VzHQ", "jtolx64w1gyvjacK"]}, {"action": 39, "resource": "oLulzp3sZxImVK5y", "schedAction": 14, "schedCron": "KQYlqMmu2pvF6rP0", "schedRange": ["3bQaq1cT88H6RCW8", "gJmGzDlqxtLsR2AG", "OiPhNt2IdH8aYYUT"]}]}' '6mma833TDzk66ix8' --login_with_auth "Bearer foo"
iam-admin-delete-role-permissions-v4 '["8sAUrXr7MXxCvyy7", "caxz4MQrODLNlxiE", "jQBCZx9DJ4V97SJL"]' 'lrwXmIGamRCARuFL' --login_with_auth "Bearer foo"
iam-admin-list-assigned-users-v4 'x4rV4CXVMrDYKe2e' --login_with_auth "Bearer foo"
iam-admin-assign-user-to-role-v4 '{"assignedNamespaces": ["Tf1axo16GqT2vSLL", "iMvcu39YZJypWzpN", "XgnoKIz8O8NglJtZ"], "namespace": "Th280vflFMxIhlIT", "userId": "8AgyZJ16MMd2bzOr"}' 'Tn2huwPgyUzBUWiK' --login_with_auth "Bearer foo"
iam-admin-revoke-user-from-role-v4 '{"namespace": "oNGtvyk5xEfrJDxK", "userId": "sw5Xl7ZZrDZdbuvC"}' 'FBaVcohewKkVuGv9' --login_with_auth "Bearer foo"
iam-admin-invite-user-new-v4 '{"assignedNamespaces": ["fQXkErF0drbYrrFQ", "P6rW62CtetBW3pvA", "JJieHhveGg97PY0t"], "emailAddresses": ["xzvYwv7atn9EQv2O", "j8TFNeGtJGjKbMgC", "euAYuzrmbWofEaKS"], "isAdmin": true, "isNewStudio": false, "languageTag": "qdKu4ROnONpJ849c", "namespace": "hqeiUGQMwNwDlYSl", "roleId": "i3p8YaAdel3hHMSL"}' --login_with_auth "Bearer foo"
iam-admin-update-my-user-v4 '{"avatarUrl": "AiscGRWzkCl1ZKuP", "country": "xjDUGRGcCEPjbUy7", "dateOfBirth": "F82Adu9BYRHrVTeh", "displayName": "rqgvEtEs2LpE0qfb", "languageTag": "vdU8hlDoC9FnxqBl", "skipLoginQueue": true, "tags": ["zmzUW0vPj90jmLTt", "5YQGawcomPoiYoQ1", "f1AYq306Pysv4VPa"], "uniqueDisplayName": "ZWolXypwucUqqqff", "userName": "2iWi4yP3uqNcig6Y"}' --login_with_auth "Bearer foo"
iam-admin-disable-my-authenticator-v4 '{"factor": "cDA8Z3g62oGYwkrj", "mfaToken": "LI4EHJEEWgki9fbd"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-authenticator-v4 'vUMDZeO4U55wdCpV' --login_with_auth "Bearer foo"
iam-admin-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-backup-codes-v4 '{"factor": "pnENiTc9NESV22eR", "mfaToken": "BElD4K2Cy1tJcPAE"}' --login_with_auth "Bearer foo"
iam-admin-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-admin-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-admin-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-admin-disable-my-email-v4 '{"factor": "kCeV29QsQk100eu5", "mfaToken": "UcxuXXpt0YSPX04u"}' --login_with_auth "Bearer foo"
iam-admin-enable-my-email-v4 'EIdAwgDobopbdJeV' --login_with_auth "Bearer foo"
iam-admin-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-admin-make-factor-my-default-v4 'CiKs2vLyH9kcSBdk' --login_with_auth "Bearer foo"
iam-admin-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-authentication-with-platform-link-v4 '7MwQzn28Le5neohq' 'hCzroAzWQDve0Z2G' '2N09VIbbsz24fQKD' 'ZX6plErw0Gb0ceCb' --login_with_auth "Bearer foo"
iam-generate-token-by-new-headless-account-v4 'phW4YMhJ0S50bez9' --login_with_auth "Bearer foo"
iam-verify2fa-code-v4 'ZLHW882riiPfRQ3r' 'J0f5lwXvRNDBnmL1' 'KQn77hiP1lzkzjYD' 'true' --login_with_auth "Bearer foo"
iam-platform-token-grant-v4 'dv7BiEUqnzxs2deM' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-simultaneous-login-v4 'steam' '8UAJIHEZv5zyUUyN' --login_with_auth "Bearer foo"
iam-token-grant-v4 'urn:ietf:params:oauth:grant-type:extend_client_credentials' --login_with_auth "Basic YWRtaW46YWRtaW4="
iam-request-target-token-response-v4 'gYx2TqkhlqMnE9Wj' --login_with_auth "Bearer foo"
iam-public-list-user-id-by-platform-user-i-ds-v4 '{"pidType": "90EQzOidrWnLrXqI", "platformUserIds": ["mgDf3GaJsdCZND0w", "gYOilX1e1825iasu", "nESjcgr2drXG5NkK"]}' 'CySLA8cKCs0dFYRS' --login_with_auth "Bearer foo"
iam-public-get-user-by-platform-user-idv4 'a2OULZ0iOZJiOAh1' 'SpLhMF2Pav11FuU8' --login_with_auth "Bearer foo"
iam-public-create-test-user-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "uaO9TiTPnIh2iaIB", "policyId": "pYC4txul6VKYlNYY", "policyVersionId": "lHPwKDpJmkeoAkp3"}, {"isAccepted": false, "localizedPolicyVersionId": "pgyJYwclb4gd4QgQ", "policyId": "ut2hiPuDdOPHcN9d", "policyVersionId": "rwqytieXpIZfr5XD"}, {"isAccepted": true, "localizedPolicyVersionId": "tmiKd9vLPP0w52JR", "policyId": "AZxMWdoleYNHXeOp", "policyVersionId": "aRDwYLge851PbK2M"}], "authType": "EMAILPASSWD", "country": "Kvw5TWjAh4gy41LL", "dateOfBirth": "zQ2IjY5PeNr4JmYx", "displayName": "H2qs28hePJjMp0TK", "emailAddress": "KUBfPNI9f2oLWDPS", "password": "ZexfKVxqdxmh5QWx", "passwordMD5Sum": "uQuI7gdDTDb3WdnO", "uniqueDisplayName": "pzTrRzCCafADJfWB", "username": "spT3MLwJZquMQSPp", "verified": true}' --login_with_auth "Bearer foo"
iam-public-create-user-v4 '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "kRj3WnyAaUaQBKFe", "policyId": "dL2uduXvZUbQQ13F", "policyVersionId": "hD3NExUFipJsUiDa"}, {"isAccepted": true, "localizedPolicyVersionId": "TlRugM7a2UZgeesi", "policyId": "pbP027okM5E8tAaj", "policyVersionId": "VSvLRj306RDuaSix"}, {"isAccepted": true, "localizedPolicyVersionId": "EdloYZBkatNLc42e", "policyId": "q0O6VsXtOlQwj5xP", "policyVersionId": "vm7c5nPR0Y1sffUa"}], "authType": "EMAILPASSWD", "code": "64dFpiv8o9Gw4QtK", "country": "gyIeySoUxoMrj2J4", "dateOfBirth": "JGQZAtyjTxnlmSyj", "displayName": "EaFH2DRN6HIEqIFE", "emailAddress": "cS0ynIMOYWpUYUQM", "password": "ooiKT57rmbjEnime", "passwordMD5Sum": "R7EFBz43E9FkOPVu", "reachMinimumAge": true, "uniqueDisplayName": "fDtOjW1iSYQbcebB", "username": "d5wb5H3qppoCiHMD"}' --login_with_auth "Bearer foo"
iam-create-user-from-invitation-v4 '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "iBK2O7qYtOHV5hnp", "policyId": "jc5CNLnnEvo25aEt", "policyVersionId": "djls5oadseJg7y4Q"}, {"isAccepted": false, "localizedPolicyVersionId": "CU3fjSRaXD4HDmdv", "policyId": "hMXxiKR29LKIhNU4", "policyVersionId": "3K8bihdw3prp0UHl"}, {"isAccepted": true, "localizedPolicyVersionId": "AYGfE6hXZ7XLoWCG", "policyId": "f0dZEeXBd6mGG6SH", "policyVersionId": "cZbX2wNnT6A9zosm"}], "authType": "EMAILPASSWD", "code": "mPAUIMwa2wYq6DsU", "country": "q38bYvaWLoKzHnng", "dateOfBirth": "dfFnOfY9stXH6LYX", "displayName": "XMndxBPKmHVB7cNz", "emailAddress": "Hhvxc4xAPZ86WNnQ", "password": "OhusPn4466u8agb5", "passwordMD5Sum": "HPsBU0Eo6QJ9vBRJ", "reachMinimumAge": true, "uniqueDisplayName": "UP09fabC01Thm9f4", "username": "AWpyiKVT3OvEujx5"}' 'yjtQSCJaOHzpb623' --login_with_auth "Bearer foo"
iam-public-update-user-v4 '{"avatarUrl": "EciYoYOPVg6DLEZ6", "country": "DxpwBm2N8PdQ5mQa", "dateOfBirth": "GXEbnmWR0H3EkrHq", "displayName": "aLNdfKszYZzOg113", "languageTag": "h6fIaHSx5bClxUOB", "uniqueDisplayName": "mMwv5pmiIVnhlLoM", "userName": "emsp7o3F2LQw7Y2V"}' --login_with_auth "Bearer foo"
iam-public-update-user-email-address-v4 '{"code": "dSxgXez7VvS0C9JL", "emailAddress": "VQQPa7PPx4Zi6WaC"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-with-verification-code-v4 '{"code": "8wk7HMbJhNwZgf5n", "country": "lMDORYuXnPNJgayP", "dateOfBirth": "FcyUnKXA3mcyMmX6", "displayName": "WF8jtNAVOYqSH533", "emailAddress": "YlJ93CCGBXv4fP4V", "password": "PzhcH4UJrrCKvrOA", "reachMinimumAge": false, "uniqueDisplayName": "H4f73jAevOnES6YJ", "username": "Llb2AfUEEBbqMMKv", "validateOnly": false}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-account-v4 '{"dateOfBirth": "04mFw4HJv5T2kIQO", "displayName": "ecfLsYKTmUnKlrOs", "emailAddress": "JmEwjGYN8VNPXNsm", "password": "wTV8imJHNI0l6jJV", "uniqueDisplayName": "zF1Oi2sQuWUBBHZo", "username": "nSmzF831vlCiZAZH"}' --login_with_auth "Bearer foo"
iam-public-disable-my-authenticator-v4 '{"factor": "CWMXxVh8HTrKqVwn", "mfaToken": "pPn8N5xMRgU7cPqN"}' --login_with_auth "Bearer foo"
iam-public-enable-my-authenticator-v4 'ZrLCRRUysya4J3rv' --login_with_auth "Bearer foo"
iam-public-generate-my-authenticator-key-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-backup-codes-v4 '{"factor": "TzMTMSwrNov2GW9i", "mfaToken": "54JY23AUWFTLq0W1"}' --login_with_auth "Bearer foo"
iam-public-get-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-generate-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-enable-backup-codes-v4 --login_with_auth "Bearer foo"
iam-public-challenge-my-mfav4 --login_with_auth "Bearer foo"
iam-public-remove-trusted-device-v4 --login_with_auth "Bearer foo"
iam-public-send-my-mfa-email-code-v4 --login_with_auth "Bearer foo"
iam-public-disable-my-email-v4 '{"factor": "JqwKs1mO80L7IOHl", "mfaToken": "f6j8PZOzUiQKZqz5"}' --login_with_auth "Bearer foo"
iam-public-enable-my-email-v4 'NSp0B7LODN3Boi2s' --login_with_auth "Bearer foo"
iam-public-get-my-enabled-factors-v4 --login_with_auth "Bearer foo"
iam-public-make-factor-my-default-v4 'SAO2n4MZQt753XQB' --login_with_auth "Bearer foo"
iam-public-get-my-own-mfa-status-v4 --login_with_auth "Bearer foo"
iam-public-get-user-public-info-by-user-id-v4 '93rOW0guPoQbYzc1' --login_with_auth "Bearer foo"
iam-public-invite-user-v4 '{"additionalData": "RDVhs2lhdzxxgibu", "emailAddress": "qUuyW3cMz9YyduMo", "languageTag": "mEHcU15St4v8ry8I", "namespace": "yqNVv0KVpXJTMx3Y", "namespaceDisplayName": "8Um1iqehObg3OZ9j"}' --login_with_auth "Bearer foo"
iam-public-upgrade-headless-with-code-v4-forward '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "opeHD6iKBGm5Cj7R", "policyId": "qnJUmfDmofxvN8pR", "policyVersionId": "GoUtmbWZbEjPyq35"}, {"isAccepted": true, "localizedPolicyVersionId": "yIrA4QUKSJgECzva", "policyId": "WUCA7wKru7ry3AQ2", "policyVersionId": "sEHvSxjWoM1rNJLM"}, {"isAccepted": false, "localizedPolicyVersionId": "OOVG5cG6XxENbWql", "policyId": "X7idzjpKDfwl6XlC", "policyVersionId": "F6YxFMD8tJQwZvUV"}], "code": "Inos5RK100yH89i8", "country": "ZDPXRL8cbTAntB1S", "dateOfBirth": "Taab1UeibXg7RCe5", "displayName": "BtKcwj6PqqOgCimr", "emailAddress": "3ZQNBBkrXu9czsYr", "password": "3cFeVw70xdNTuOdL", "reachMinimumAge": false, "uniqueDisplayName": "K0M2B2hbqJin37P6", "username": "9t1KqeGz7qbPnXEu", "validateOnly": true}' --login_with_auth "Bearer foo"
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
echo "1..444"

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

#- 57 PlatformTokenRequestHandler
eval_tap 0 57 'PlatformTokenRequestHandler # SKIP deprecated' test.out

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
    '{"modules": [{"docLink": "zzkoBmMR9C4qPqJr", "groups": [{"group": "Adh1HIk7vCEq7FQ2", "groupId": "S5VeW9ddxzLPV8wD", "package": "jsnyPh5yNbYXmlAO", "permissions": [{"allowedActions": [18, 39, 50], "resource": "SC3I1SjkH42LtyZK"}, {"allowedActions": [37, 7, 94], "resource": "jn2Ps3IVT5hUZ3cn"}, {"allowedActions": [61, 66, 34], "resource": "atrjbJ5YT7uvqarT"}]}, {"group": "vrG1DXZAWlvz3c3X", "groupId": "ALMresGFfsH4aXCD", "package": "hshvEF8rHd250nyi", "permissions": [{"allowedActions": [14, 79, 6], "resource": "4ozSAg8FTLrByWOJ"}, {"allowedActions": [14, 68, 2], "resource": "oRkPs2SO9XrgXNIa"}, {"allowedActions": [96, 14, 90], "resource": "1cBXLwTfopqeZtHJ"}]}, {"group": "nRgaGfLMFbvyI5PZ", "groupId": "GzVLcmZKKKYARape", "package": "2tsNczam4Cdd1QYv", "permissions": [{"allowedActions": [46, 1, 46], "resource": "k7KHnzGASmVzePIr"}, {"allowedActions": [29, 51, 96], "resource": "41oQCuXeTRyJQrNL"}, {"allowedActions": [94, 5, 2], "resource": "qLVTN5Qf4tjPGpu2"}]}], "module": "7yxb1of79zVTWIfg", "moduleId": "dNphqe9fS1m77MAg", "package": "4KoZQPLhDSJx9jzx"}, {"docLink": "aRKph4kiIFgS4fLq", "groups": [{"group": "lrKGiS3XxjkyNfj3", "groupId": "XgTRTjI9oNBzgQ4C", "package": "Rwg0sKVeSpMny0Gr", "permissions": [{"allowedActions": [43, 18, 75], "resource": "DyMDKQhuTjtQZyIi"}, {"allowedActions": [54, 39, 26], "resource": "KY0KsxR0rCFkyiQZ"}, {"allowedActions": [11, 84, 80], "resource": "ProN4UWbQaKFrTv4"}]}, {"group": "JWElmOCxqPrq9I3X", "groupId": "JWBxTLcOef8MgIwk", "package": "rKFEtwESJCe2ksG3", "permissions": [{"allowedActions": [28, 2, 62], "resource": "PsksceGUEX8ERZcK"}, {"allowedActions": [92, 55, 62], "resource": "Lo6y7yJMowQ6LpHC"}, {"allowedActions": [43, 91, 58], "resource": "vWp3h0xPsVY8qNwB"}]}, {"group": "2TY4v9NNfQSYLFKS", "groupId": "l3FNFFJnt3rIwZdW", "package": "02Su6aCnL816aH6g", "permissions": [{"allowedActions": [83, 66, 56], "resource": "JUgU8bD5mGFFmKTT"}, {"allowedActions": [95, 49, 68], "resource": "2MxILI42BJMPkZma"}, {"allowedActions": [50, 11, 59], "resource": "58h1ltyhiSGhfqXh"}]}], "module": "xBJ7zLXioAGkWgSD", "moduleId": "dDQvpRfGe3z2rtjW", "package": "pJAlKHF0ebxhJ117"}, {"docLink": "6CeD4dWCp4wqlQJc", "groups": [{"group": "ZroNQiefBnPluOIj", "groupId": "ZyvlGDQGv6pNNowE", "package": "uVVZM28w4mnYvvlt", "permissions": [{"allowedActions": [9, 18, 38], "resource": "2WsQImTwYkiuxzLr"}, {"allowedActions": [2, 99, 73], "resource": "KCFGS97Si6XyLVPr"}, {"allowedActions": [21, 96, 68], "resource": "xyZ1OH5Nn4nMT8QO"}]}, {"group": "yTuUSD9ImtaPAocO", "groupId": "QcpBWSNrCjSNEAdo", "package": "jkCMmYyTGO07foRZ", "permissions": [{"allowedActions": [51, 64, 64], "resource": "ujpIWo0qJtqp4Q6X"}, {"allowedActions": [12, 71, 58], "resource": "633pFgA7i9tqvfHm"}, {"allowedActions": [65, 44, 38], "resource": "UZiUW5Y0CYw5OXSG"}]}, {"group": "wQkJuy9oLFcHHcra", "groupId": "LXR2n9JQvq7NKWIH", "package": "Ysii3fCh7sieJjZP", "permissions": [{"allowedActions": [54, 49, 20], "resource": "a73hX0a8Ri85PA9w"}, {"allowedActions": [82, 6, 32], "resource": "GHCIkmt4bfJOhNaI"}, {"allowedActions": [93, 33, 69], "resource": "pv7XeqO8gY3c4Sry"}]}], "module": "WB4yRaDxvxwaLM8H", "moduleId": "kVOW8PnLkgqkqYZW", "package": "PZTgKagTzdcYcko7"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateAvailablePermissionsByModule' test.out

#- 111 AdminDeleteConfigPermissionsByGroup
$PYTHON -m $MODULE 'iam-admin-delete-config-permissions-by-group' \
    '{"groupId": "U3gH239LhRx2Laa2", "moduleId": "RdtVb6VgA5yFIH3s"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 111 'AdminDeleteConfigPermissionsByGroup' test.out

#- 112 AdminUpdateModulePackage
$PYTHON -m $MODULE 'iam-admin-update-module-package' \
    '{"data": [{"moduleId": "9UyeaFi8OE7BCK4F", "package": "eVGrl5NpUG9zblWE"}, {"moduleId": "iHaUjyTHb0sSlstb", "package": "3slUe94NxhXsVcqT"}, {"moduleId": "Yi1TMBMzaOrxuKvt", "package": "UVtqbDWnJ2i9TRmJ"}]}' \
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
    '{"ageRestriction": 83, "enable": true}' \
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
    '{"ageRestriction": 34}' \
    'Vl38d4NZGtk6EmWx' \
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
    '{"ban": "C75M88TKhFYkA9aR", "comment": "NDe2IoPMSQKcg0OT", "endDate": "T9JA0ll1RimBCiQw", "reason": "uyrI87uSyXP6C0jX", "skipNotif": false, "userIds": ["8au2wcWYyj3JvHqX", "p4JR7xI59Z9tfGVs", "glnOxOXBfgBLuglk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 123 'AdminBanUserBulkV3' test.out

#- 124 AdminUnbanUserBulkV3
$PYTHON -m $MODULE 'iam-admin-unban-user-bulk-v3' \
    '{"bans": [{"banId": "d9LIoshGnFSuHmrq", "userId": "ej8PRppYY1vlV0M2"}, {"banId": "g6oreqyBzWzCgMMW", "userId": "ZuD6tmIR28xVxbtp"}, {"banId": "SKOfiIP3S6pypZqI", "userId": "Sn3msrykQFtW8QGK"}]}' \
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
    '{"clientIds": ["FZLrIfqrZuu7IwKc", "T7sAsv2TKCbYMVkX", "EHmsHwIGGsusS0zZ"], "clientUpdateRequest": {"audiences": ["RODEKPdudZsLaf8a", "ZrXW84dt0TSTmy7X", "F26K2U7xttUz8nWK"], "baseUri": "Jjv06PuffHghAQfA", "clientName": "sYXVzBenLtaAoYyR", "clientPermissions": [{"action": 12, "resource": "xAzmsbhi5QJuc2SN", "schedAction": 57, "schedCron": "MIcBMJ04508jKedx", "schedRange": ["0CVRpd7SwZw2UkjD", "zJ4NuMMgI13nplXa", "UQV5QEvKElLfbB7g"]}, {"action": 47, "resource": "kzxidLcAQWGVRg6D", "schedAction": 98, "schedCron": "5iA3JS2xeaJ08JrS", "schedRange": ["HPqdhKHn6ZjZMdr1", "C2TIQzRJY7UfYSrd", "N0JVz4U43EcV1FRy"]}, {"action": 8, "resource": "UM77XmemN8LO03mn", "schedAction": 65, "schedCron": "4v5D6ylZguO918X7", "schedRange": ["rLoexHBMBMMAYokS", "WFwajRGUyklfLVY6", "g3PO4hKAeF4GUV5m"]}], "clientPlatform": "96qcCJsVOWtu5RPs", "deletable": true, "description": "C4D0FsUo3IB2kX5R", "modulePermissions": [{"moduleId": "EQZsHyXzoIXNf0Kb", "selectedGroups": [{"groupId": "L9HyJttdgfLGO3um", "selectedActions": [24, 33, 31]}, {"groupId": "1xsGpdobYun8hcO5", "selectedActions": [5, 14, 98]}, {"groupId": "UpmA4ehxNIIlcrZz", "selectedActions": [12, 28, 1]}]}, {"moduleId": "ukAzAMaRvIUhUwgu", "selectedGroups": [{"groupId": "GgbLLN3O7CEYjxqE", "selectedActions": [23, 47, 86]}, {"groupId": "Me1AnQVj6QQjZtkN", "selectedActions": [74, 57, 26]}, {"groupId": "nDSrsSey2BqOxgwC", "selectedActions": [50, 48, 24]}]}, {"moduleId": "2MSuwsEHlwdeJyhs", "selectedGroups": [{"groupId": "HS6YqPudWviQsULL", "selectedActions": [67, 39, 27]}, {"groupId": "xfX9tqFSkGXoIcFN", "selectedActions": [23, 74, 32]}, {"groupId": "L9M53Mg0MzWS9usx", "selectedActions": [47, 16, 28]}]}], "namespace": "MxfEDE4TrtIHyyMq", "oauthAccessTokenExpiration": 3, "oauthAccessTokenExpirationTimeUnit": "9EdB9MxaF8QHGM2I", "oauthRefreshTokenExpiration": 42, "oauthRefreshTokenExpirationTimeUnit": "cNhoqcRZRNATojM7", "redirectUri": "daV0VwR3yNKDtMqM", "scopes": ["rAGpdyF6WDHn3ePB", "xQNz2IUEHMzl5jhw", "VDsuzwJ4v50eoaIB"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 127 'AdminBulkUpdateClientsV3' test.out

#- 128 AdminCreateClientV3
$PYTHON -m $MODULE 'iam-admin-create-client-v3' \
    '{"audiences": ["Th0EKkJioUpvGnkc", "HgCfaWzPUvCnfqsP", "GgJZyRwigaMu07Ze"], "baseUri": "k8WObpf0FHYfViEj", "clientId": "70KYKIfFt4GYjUt4", "clientName": "F1ZVy2qFfSr3psWj", "clientPermissions": [{"action": 84, "resource": "YL6LwGlZGF7XQPLA", "schedAction": 5, "schedCron": "Tr8RcxRQR0NYdJzf", "schedRange": ["3TMhSaynVs05nZC4", "Os7hqIH2NgARSG3Q", "QNGNH2K0UuJdeGNq"]}, {"action": 42, "resource": "0DOHKwxDF5GJhCjV", "schedAction": 69, "schedCron": "9JV5oc5IFQsrwHqF", "schedRange": ["qwVA5mozeeOjIFQf", "XV3YW3ug3nCXhD7F", "Uz1iOe0pHa0LmseI"]}, {"action": 90, "resource": "AMgK3JgZufzssA28", "schedAction": 56, "schedCron": "mG7uAojLYBsx8oqM", "schedRange": ["zbE0ljQaBtb47V69", "1j0FZp2vjOXptxzx", "6kkaZYpl52sQR9Zn"]}], "clientPlatform": "p5d1eSwrG2GBBEWr", "deletable": true, "description": "uZNwKjnX7vDIqpcj", "modulePermissions": [{"moduleId": "maq5KBCsHlwNrfKJ", "selectedGroups": [{"groupId": "rkzwR40tfd9GFXCh", "selectedActions": [40, 73, 47]}, {"groupId": "71szsNmnqZSWdEyO", "selectedActions": [97, 100, 80]}, {"groupId": "rTdDq7IqbTVv8BLs", "selectedActions": [34, 22, 87]}]}, {"moduleId": "SQVDp16qVIqXCK9d", "selectedGroups": [{"groupId": "S5JTbdJEe6mnkYAf", "selectedActions": [45, 26, 36]}, {"groupId": "kyKk0UXUF2523OTv", "selectedActions": [83, 18, 25]}, {"groupId": "oU1kUqRedwIu1TSR", "selectedActions": [36, 39, 36]}]}, {"moduleId": "V8Bu7rIjGrxUMKbv", "selectedGroups": [{"groupId": "60ixUuUhopdqGrqR", "selectedActions": [94, 78, 84]}, {"groupId": "hmzvRQb7c0vmjWq9", "selectedActions": [10, 40, 86]}, {"groupId": "PbAFn8oWQcmFkkRX", "selectedActions": [64, 62, 34]}]}], "namespace": "MVfiAMa6Pco7Mfvi", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "hc3VUxxZIgkTLqMe", "oauthClientType": "JPCbs8jWmTteJhwN", "oauthRefreshTokenExpiration": 3, "oauthRefreshTokenExpirationTimeUnit": "p0ilGQFwHUtZugbl", "redirectUri": "T3aIDKn9qJXncm5i", "scopes": ["gpAewbmnWk0E7YaP", "blcWEyNgvs5LEZrQ", "XzSQRWRs9EGnRPgY"], "secret": "lJElgJ8kx1WEeDbq", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 128 'AdminCreateClientV3' test.out

#- 129 AdminGetClientsbyNamespacebyIDV3
$PYTHON -m $MODULE 'iam-admin-get-clientsby-namespaceby-idv3' \
    'FtQMu41rnOzbsFBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 129 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 130 AdminDeleteClientV3
$PYTHON -m $MODULE 'iam-admin-delete-client-v3' \
    'g6dziWvdNcwfUBMd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 130 'AdminDeleteClientV3' test.out

#- 131 AdminUpdateClientV3
$PYTHON -m $MODULE 'iam-admin-update-client-v3' \
    '{"audiences": ["NuTaiLxFMXRpDP9x", "utntU8xHw4yYJOCV", "iHwunQwpC2eCFUAH"], "baseUri": "ZaYSvsWiNJtqXltZ", "clientName": "F6aSRmHU5iR3hXIb", "clientPermissions": [{"action": 53, "resource": "hDMQ6tBLljC7gcT3", "schedAction": 79, "schedCron": "lbrDf7q4cAnpmLiE", "schedRange": ["u4CNtX2lnqi7cHTS", "dGoLZbC3UJruU4uI", "XBZsEYogFWiH9z4E"]}, {"action": 77, "resource": "zmaZ5cg0REtUWY4f", "schedAction": 98, "schedCron": "AneXGgxNg33ZIUrI", "schedRange": ["kfmdXVvaPQzzKdFg", "7N7piT8VcrXLZnuM", "NpKEIs3GC9VTK7tk"]}, {"action": 73, "resource": "brDzNgVEcw0lxRam", "schedAction": 68, "schedCron": "6O6v4VjJf40LjUdO", "schedRange": ["RELVXUFQyVlt9jmx", "mxpfp41k1uDg59Ph", "dUXShabwyYCxTHrD"]}], "clientPlatform": "el8oThvr8CUEzw4z", "deletable": false, "description": "1QeR3EYXBFpUX9y4", "modulePermissions": [{"moduleId": "tY7o5FFi1n10vDgy", "selectedGroups": [{"groupId": "oHXIlrMl2RAukCL2", "selectedActions": [17, 1, 16]}, {"groupId": "zsFrmaGNoi3RPTgW", "selectedActions": [30, 92, 40]}, {"groupId": "t8xd8EgE15XNuw6Y", "selectedActions": [33, 38, 93]}]}, {"moduleId": "e0EJnADXC2y0DY1E", "selectedGroups": [{"groupId": "1SMK9oA4vK56dsYI", "selectedActions": [92, 75, 29]}, {"groupId": "V5pDANyJ184miBhd", "selectedActions": [98, 61, 74]}, {"groupId": "7LkcTKYpCfl6HPy5", "selectedActions": [4, 70, 72]}]}, {"moduleId": "wRMtwApGbXnR3yC6", "selectedGroups": [{"groupId": "f2MHGGedk0KzXRcl", "selectedActions": [82, 26, 6]}, {"groupId": "8Fn8TvZVTe4L2lXr", "selectedActions": [97, 23, 85]}, {"groupId": "4Xk8Hd1lRtoPMvsu", "selectedActions": [4, 30, 100]}]}], "namespace": "swEPTvzwwGnpbx8M", "oauthAccessTokenExpiration": 58, "oauthAccessTokenExpirationTimeUnit": "gsVbG6TUe3jbuQ7H", "oauthRefreshTokenExpiration": 79, "oauthRefreshTokenExpirationTimeUnit": "wEEyYAnHPp4XzVL5", "redirectUri": "McglFCrjxqqxAYqX", "scopes": ["G2V3baMkZ9JCqBIk", "UID0EE9InZNLwwAh", "W2b5OHKtUv4lTkQN"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    'xhXdj1CG0EBgst9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateClientV3' test.out

#- 132 AdminUpdateClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-client-permission-v3' \
    '{"permissions": [{"action": 41, "resource": "aQkfMLFW9B7jHZro"}, {"action": 80, "resource": "hhwnANAGp8zGqNGr"}, {"action": 4, "resource": "2MdgCH4bWxRF6fBP"}]}' \
    'a6GOuV5z0p8jaJs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateClientPermissionV3' test.out

#- 133 AdminAddClientPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-client-permissions-v3' \
    '{"permissions": [{"action": 6, "resource": "CkVi8fqVPRqNbF5y"}, {"action": 77, "resource": "9CZ94CAUVW8FoEf8"}, {"action": 39, "resource": "iDFh5RbW021cHN3Q"}]}' \
    'bzVuJZH3k54cExxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 133 'AdminAddClientPermissionsV3' test.out

#- 134 AdminDeleteClientPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-client-permission-v3' \
    '74' \
    'm7RmaOr6TLwVyE42' \
    'ApAb7CKt79wAopZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 134 'AdminDeleteClientPermissionV3' test.out

#- 135 AdminGetConfigValueV3
$PYTHON -m $MODULE 'iam-admin-get-config-value-v3' \
    '9Cw6K9h55mwUvhdB' \
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
    '{"blacklist": ["OgumV4wAsd4ifGd0", "bkWrlhtfTywRW4fm", "g6btk3mAO4EtB0hn"]}' \
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
    '[{"field": "2x1oTOX5gBQlVDx9", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["hDRJtyYEt7ygZleA", "oUuVKneoO10ytPdJ", "8SY3qoogOxoPYvdI"], "preferRegex": true, "regex": "RKKPd6mjzLxllUrF"}, "blockedWord": ["Yn7cSuO7NxKHUHg0", "c4X7fHdITmN9opaF", "0kh3pCRB3infEVxA"], "description": [{"language": "rF7TB6A6a71zAJpa", "message": ["PeudUtKPJUmAvxBx", "JNPlvvYZw4MWzWFT", "uNPf5JCSDyYy4e5q"]}, {"language": "oTZxSoZbQUnUxS6m", "message": ["68WL3HDL4yx5I0eu", "BsccHPA2v9XP9enf", "EX7lloLgIYqxFfSN"]}, {"language": "JlHCjxLNnYUlGQsF", "message": ["py9ZVlLIFwLgT78n", "ootfUs9559ilm3ca", "uhrw9Yn2z5cnbm7z"]}], "isCustomRegex": true, "letterCase": "Q7hvTlzf7XwQtVIY", "maxLength": 96, "maxRepeatingAlphaNum": 98, "maxRepeatingSpecialCharacter": 41, "minCharType": 19, "minLength": 81, "profanityFilter": "S7Bq5bcfPW4pPZB9", "regex": "YXltCxyztUnj17t3", "specialCharacterLocation": "gHBXvjvziexzOLbO", "specialCharacters": ["WbtcJUxM3AWyDkA5", "LmART6kulpM4SRtU", "E5P4kxmHtFbjqurH"]}}, {"field": "ix0QYycDH5we2Mx0", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["PT4i4mxc14iRfzJw", "Kuc7EpiQEzz5N5os", "RYO7wbYh7q02W8tk"], "preferRegex": false, "regex": "RUFmqNc8xhQqptcc"}, "blockedWord": ["NorRls7EC3nDnhFv", "DlFd7iyZpvWVJFK6", "ZuvlzGCII156hIg0"], "description": [{"language": "g8HIxpzm9AcFhH4Z", "message": ["lYY3rEuHMWwQNmCQ", "mGCF963CbsOawlRB", "QJH6fNekhk077gxa"]}, {"language": "j55huTA6AvmW0567", "message": ["BFqbrPIuxKmBXLi6", "GpnqAeMvg3w0FQ15", "20WM3TxWXSdTiKdv"]}, {"language": "a2UREoBSFtCLy2Cq", "message": ["gCG7JwJCDqkzOdFw", "LJpIPxzLE1V9U1Ng", "pH7Oc44yjRdfqZgv"]}], "isCustomRegex": false, "letterCase": "GqqjelcN0GJmPwUT", "maxLength": 100, "maxRepeatingAlphaNum": 7, "maxRepeatingSpecialCharacter": 78, "minCharType": 47, "minLength": 60, "profanityFilter": "MiPAjnWIhFrqSn4e", "regex": "rXEtU1CaD8AqsMCG", "specialCharacterLocation": "BNhmUt6fzYRn85br", "specialCharacters": ["Tu8F7cuCPh1TGZJm", "gWNHWnvOBRCt4onq", "Ro2PnMSRarKg4coy"]}}, {"field": "3AFpULIn21Nf2FNg", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["jfyX5YLaM0wmi0i1", "WABBbq8IzZsMFLX9", "ZhFXcFtfBS3ZIHof"], "preferRegex": false, "regex": "xGRJM92eX42WW2WK"}, "blockedWord": ["f5urEOpASBicX3Zw", "zZ7aVhrkmhSOEozG", "Ov8D0iVxzrec5kNw"], "description": [{"language": "JAxm0Rdm9l6nIhG5", "message": ["SilDDIsmj4h625dI", "sMKWBxF9RAIrI81Z", "R2kNzh60RQNaTEhM"]}, {"language": "XMepgzY9jLiAdMiQ", "message": ["7eDMkeBRMur18nCx", "iV9bQMHpPbvflI3L", "kRc1NgZaoYAaCCeR"]}, {"language": "gtstsU3Qecxo4bQZ", "message": ["O3P2f8TTOVf6jrr1", "OL606QpqCgxt0NgD", "Sj1T6EdeYFmrLT0H"]}], "isCustomRegex": false, "letterCase": "GHZuRVQ8tzwqMayP", "maxLength": 54, "maxRepeatingAlphaNum": 54, "maxRepeatingSpecialCharacter": 17, "minCharType": 33, "minLength": 69, "profanityFilter": "SkHi0BR2ElF6z6eJ", "regex": "KuOW61akRFizqxCm", "specialCharacterLocation": "udSXivAL3n478mhb", "specialCharacters": ["2I2yBJeCJghTrk68", "FWFzuLBdlrKjUbgZ", "Qfw6Zys3mN8fIcC9"]}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 140 'AdminUpdateNamespaceScopedInputValidations' test.out

#- 141 AdminResetNamespaceScopedInputValidations
$PYTHON -m $MODULE 'iam-admin-reset-namespace-scoped-input-validations' \
    'CkharfqaoMsGyv1R' \
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
    '{"active": true, "roleIds": ["ntCNiHBRUNCPSre5", "GmZzCQwilS3IxSjl", "yvR9PxG9Lji2Vc88"]}' \
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
    'W8aLjIxVGpdOqgux' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 147 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 148 AddThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-add-third-party-login-platform-credential-v3' \
    '{"ACSURL": "vRwI9ZBTipMRlhK9", "AWSCognitoRegion": "DMMaI4ryVDvNaruZ", "AWSCognitoUserPool": "xwTfh9gEs6GF247c", "AllowedClients": ["bBLjUr5z03wxB3E9", "hrE9f9COFrOr6wJD", "BwIDsJHNg6TvNGjw"], "AppId": "I4TbTwBufUorJoud", "AuthorizationEndpoint": "uhCEJ5XiKDIE9Yug", "ClientId": "cupLxVBcRkfhRuqk", "EmptyStrFieldList": ["OTHSia7oFd1fEmDu", "yAsQGzwJR5poI718", "RQnj4imu6XFfRcWD"], "EnableServerLicenseValidation": false, "Environment": "hq1YmGeygr2S4Yw8", "FederationMetadataURL": "NmPaBeryzX2hOPVV", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "F07gnWDULkJPQR0U", "JWKSEndpoint": "JMr8ouccGH0B4LCe", "KeyID": "2h0iFCCZgFWs5s0n", "LogoURL": "T89A88GDOUClGyzY", "NetflixCertificates": {"encryptedPrivateKey": "gnYTdim6PkRoq5TO", "encryptedPrivateKeyName": "65KWh8ztRJkXxUAj", "publicCertificate": "3jzZvEaY103YUIMu", "publicCertificateName": "SjDHz0zPWMZQNNP2", "rootCertificate": "JqQqhISTBT1Gofv4", "rootCertificateName": "SuaZ8yCB9TVZnuzg"}, "OrganizationId": "vAZJRm71EC3ENuvD", "PlatformName": "8OPsp5Z3ez84KVB7", "PrivateKey": "HeWPnVeFdy5ezlCU", "RedirectUri": "6SGzkMpTL2wxobjx", "RegisteredDomains": [{"affectedClientIDs": ["AbagqEmXn6U2VeV2", "emK3JecJA4skqCbP", "xRkIAFQh9yDdoLE2"], "domain": "s7mrVrmTJwtBTzQT", "namespaces": ["rNo1LcWNf7xHpi1J", "ZJjIRtCfqDHSlo54", "zSnRN0zGMworzym1"], "roleId": "z3ZdetOic9AQOFWp", "ssoCfg": {"googleKey": {"dItLBhvKJq9tWz9y": {}, "ui8a6jOflFJlZEhz": {}, "1QDeh05hj92bwVVx": {}}, "groupConfigs": [{"assignNamespaces": ["J62Q5AOAOyL65cPa", "OZA8BG8KcVWOX9n3", "YsjJexnFA9Umz3KP"], "group": "ICya5Fk5TPaEbX29", "roleId": "cV8v7MXctihtxMnI"}, {"assignNamespaces": ["r4b7jyfL3zMkklGC", "PISlsnVA6z0uSfNN", "pJUYzJxnOyvqmswr"], "group": "ToyBIQumxDfAxNqC", "roleId": "UtizYM97ebZcYqwf"}, {"assignNamespaces": ["IHPWMkOmrT5HL16j", "MwECnmwJv4rpqtzD", "az0WUJlBCHzJ2v9K"], "group": "8c1zOlZg30pagfP0", "roleId": "FfOMBOpeQT4zYIbU"}]}}, {"affectedClientIDs": ["4i9mLyX46Alt08rr", "nG8y2ScXkwjpAp82", "pGcxvXaG9LzHpMS5"], "domain": "3jllopwirRo3A8Wx", "namespaces": ["nR0YaMsF3f5KLtpT", "SsPMGDZTOwEP5Bhh", "0NStWIggmhfAzVdN"], "roleId": "YP7Ao1z7FeJM2fWX", "ssoCfg": {"googleKey": {"Gk7JObSHksRkabpm": {}, "vRsc7ZYvXCT6m6mR": {}, "ZAlLBczJVeil7GbG": {}}, "groupConfigs": [{"assignNamespaces": ["1ISBCkcnpxKUxLjm", "xhBS6YypRW7fNnta", "IEtDI6MbhxkQdezb"], "group": "mf392ersoZ2KbMb5", "roleId": "jal0ruZmBXlGSp85"}, {"assignNamespaces": ["q6fuGfo5wSDHnyab", "k493I3pvHKDaWhTN", "1qyxpUzWIZWJTDzW"], "group": "guhujw1EoR58uCVl", "roleId": "defonHJZAiX4abmq"}, {"assignNamespaces": ["qi90KTWwZk0HGeJN", "aBjVdMB5kMzKycYr", "hr4FnNzdT4pWwIVX"], "group": "p9avUr6IydpXW0MO", "roleId": "0eT9okl6MlWOl9fe"}]}}, {"affectedClientIDs": ["WO2bmOikTBJHTEm5", "PSeyod5L6OooYoQn", "9iHEqWO1cVCUIOx9"], "domain": "0FQdwLi3GOQkLtpu", "namespaces": ["RNeT1CULEMPaOU5n", "ukycAUlkUSZKUrsx", "NRzF3NaUuCyQyze6"], "roleId": "zPKu5sE89JW8UU0R", "ssoCfg": {"googleKey": {"sB6dvrpmInhHYzVV": {}, "lHGFSwjby6rMYkVQ": {}, "nZDUAbINRKQsxUO1": {}}, "groupConfigs": [{"assignNamespaces": ["YMxAndOj5O6IBwXJ", "jgQjgLoJyqwFVBd1", "ZjaRXEdWgS12bSbP"], "group": "gOCWUogizeWOPUMr", "roleId": "qgEIsMwNbfti0LoT"}, {"assignNamespaces": ["BcNzyoCSw1t653G3", "ydYmGzvx9bSqqyAP", "ha5b6PQTPTytHeeX"], "group": "o7gOFVLZCBWuVIRO", "roleId": "ZuqdJBi8pkn98VtL"}, {"assignNamespaces": ["NkaIQJfkFDhSeSGX", "tZU5SuIhMSaDRp17", "dUWHcjrb6qNeKpOx"], "group": "PrlG9svdqsiVTqPb", "roleId": "zY1yxl7zeEpmSPO6"}]}}], "RelyingParty": "KwlJQlj9Ii2jARwz", "SandboxId": "owk9OoiPdnq9KBqB", "Secret": "wiNCsnK8CcO1OHbp", "TeamID": "QZtwW3EwLre1bL4d", "TokenAuthenticationType": "JnkRLJbMvOGSd7uM", "TokenClaimsMapping": {"rmQ2SaLd6M7TM3wn": "JyExuo5z9RAcYgYZ", "b7cAakJpqN6eubdp": "49JFwXG0EvoSHNC9", "7eEyhnL1QH5AlYRA": "qCAC2gy1WF9QLNgD"}, "TokenEndpoint": "xAkwgfB8jIecOx5u", "UserInfoEndpoint": "gNCDd6jW6fjtBcO3", "UserInfoHTTPMethod": "fWq9qfmBv0XgJB6a", "googleAdminConsoleKey": "7uykADFpinFcH2ZM", "scopes": ["SYijqEuMfuYFUS07", "9tOpZYM1XV0Op0da", "mycnTUOoMkOppZNO"]}' \
    'kqxc42HKv5wvtPJV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 148 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 149 DeleteThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-credential-v3' \
    'suzaBciSxwzuIpGB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 149 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 150 UpdateThirdPartyLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-credential-v3' \
    '{"ACSURL": "YHTHoSVxgQCbpZx5", "AWSCognitoRegion": "yMGIQ1ZxVIefYlKB", "AWSCognitoUserPool": "JyQMqUEfDikX6yOl", "AllowedClients": ["gZrn0I6T0hvcAFTa", "SWR4VOGIY7hM6uho", "nkAe0FdTSSEluBxM"], "AppId": "47BTww3nBTVmBFZ6", "AuthorizationEndpoint": "TIs9bTi2m7eNsYEq", "ClientId": "KkeuLWDfeFeExlOF", "EmptyStrFieldList": ["jRh8mLFTJLveQSDW", "nMQGaYRxFWia7yJ2", "d87XjA0ajvb7JcGU"], "EnableServerLicenseValidation": false, "Environment": "ekxq58fikq83hqJ7", "FederationMetadataURL": "HP63Se6kVW5fkl60", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "LBv6nUU0r1rfX9st", "JWKSEndpoint": "pvJUuyPdzx8BM2wE", "KeyID": "gTtLRT5stwQFUEbT", "LogoURL": "PQ8p7VMlxEXnqHwM", "NetflixCertificates": {"encryptedPrivateKey": "yKpwphjUXvM1GqMk", "encryptedPrivateKeyName": "Z44UXgdBqtJaRyDl", "publicCertificate": "P9qIZJ5Krx6KkHag", "publicCertificateName": "EugKJxkU8Y58COtT", "rootCertificate": "NjnNSikJDg6ujKvq", "rootCertificateName": "0CIa1YCK9PlMeQpr"}, "OrganizationId": "fgLGkHX1tdBjKmCB", "PlatformName": "XETZwqdzAX28DikG", "PrivateKey": "k8cWiX44azSHcwic", "RedirectUri": "UVq2XPljTZj5R0yZ", "RegisteredDomains": [{"affectedClientIDs": ["SVQ8SSeJ4qy4PIKl", "euV271bwZ4niLSzQ", "nv0C00dtNGGzbGYS"], "domain": "Yo9fY2EBZAHQXc4X", "namespaces": ["cae7VKl0ARzGEArl", "fE1NSmtcADoZvd0L", "a7P4JI4H7uDzkOHT"], "roleId": "dnUtdrRcs3GeOsKP", "ssoCfg": {"googleKey": {"NlG7rEXi6LEqJERp": {}, "bxEq07txnvZZeAf7": {}, "QBuZK5GJlBncg8tQ": {}}, "groupConfigs": [{"assignNamespaces": ["nJOKHC16xjJZ4kiU", "3N8556ll2LQWpdES", "OBV7wZJsg7wSv9ly"], "group": "RyTdYBUljvBzvYNE", "roleId": "tfgBFikt18cQ677S"}, {"assignNamespaces": ["otDEtU2xBSEQ8rBK", "c2K6oJXxVEfnaqX8", "NuZtRUTKUvR69PIm"], "group": "y6CcwlqJ4MO3L8x1", "roleId": "H5OgzHypgsSeKCvt"}, {"assignNamespaces": ["Pz7jagBG9a1TZ87l", "tClc3RDXF5055tUl", "enimjIbm0riCaNp8"], "group": "dUBDinAB6HqIWIi5", "roleId": "Bvb1rcuEtWAF763k"}]}}, {"affectedClientIDs": ["ci7lT62BOHaso53W", "3U2Mu9ZGMWou1U0R", "VCf3gMWDAodCKqfq"], "domain": "zeexHA70NgJTxjtz", "namespaces": ["gO7W3taRvJ6lKWJw", "HO65aOFDwpqy7XOU", "3DwglyMGNll4O8EL"], "roleId": "ahcNJqRjepck1l0q", "ssoCfg": {"googleKey": {"xRyQ2pi7xuAufJak": {}, "IPXOQznHZTj8oYfW": {}, "ObyNJKVSQsaCokoG": {}}, "groupConfigs": [{"assignNamespaces": ["ynp6xcqNKJnAhrSt", "96OaARAjHLGV3sNx", "S8uLBZiVRYIyQLcs"], "group": "lTEqgVNG8Aqktgvj", "roleId": "wNJAwIpEy2ZNpojZ"}, {"assignNamespaces": ["24I2n25smsrmJFHG", "iYnyhbqxLuTZIxgi", "Uaiyy0aWrshpmb1C"], "group": "9Al7eWrbNRE0xyYP", "roleId": "UZHyLGQ52IjGpRJC"}, {"assignNamespaces": ["UJpscOTkWETSJ04c", "5MGInO4yznh2YpZv", "vmziSSiSpXeWOGay"], "group": "fRkQvoN06SpNOnuS", "roleId": "ksfm7hcIFdkdrwAc"}]}}, {"affectedClientIDs": ["K2lUda9h9FgvfhiL", "EAkA7n6516ydoRT1", "qZBrdTnGrwHeWoQX"], "domain": "PFWFaKbDgrGkv8SV", "namespaces": ["wLyS4VbHJvD0lL7a", "ZUY9d1Idud8bjYeB", "VMr7zHYmRE4X36KU"], "roleId": "OdfEmoIYwSxxAsfw", "ssoCfg": {"googleKey": {"DMivWqHHGlnAnEu6": {}, "EKYceTEqYudHlA4A": {}, "xeEIfUxJ2xMSNNBx": {}}, "groupConfigs": [{"assignNamespaces": ["CeN3pGn46fGvodt4", "13MRdG8qAPiANv2A", "r8yXV6qf6v5SgcJP"], "group": "ZPUh2nHQwpWi8HZ6", "roleId": "C0VJ0fK2m6lQ5Ao8"}, {"assignNamespaces": ["TITYiHSR2SEJh1YD", "edZdNqkXPWZfT8Zf", "dKp9q4nXuK0tJAYr"], "group": "or2XdtSCG7ZExOoI", "roleId": "pWzacOvwUsnIbQM3"}, {"assignNamespaces": ["ZAtyEWKWoZRUL7wS", "3HaMTXAX6y0STTN2", "sBEijjjpvSzGkED0"], "group": "oweFYDBPyd1jJBxb", "roleId": "rbuFay9PXgEQS487"}]}}], "RelyingParty": "1QSmsspn5sNfifK6", "SandboxId": "5tvaH9jwcO48pthy", "Secret": "YpBJDHIIxTIGI5Es", "TeamID": "sYllIqjJzuQ8GglV", "TokenAuthenticationType": "gxjOGQGlHm8VTN56", "TokenClaimsMapping": {"tJKwD8O07L9GG1ue": "nDihceaLdgPZI0fK", "W8LeQxItaK6s3Hha": "69MgxjGJx62mkfVl", "u4bGB1pyk0PpxXZD": "y5Pmbu7RrD9a5mdl"}, "TokenEndpoint": "XTCL467xHbAiD3Pr", "UserInfoEndpoint": "3mXZO1PnbSlfVRlA", "UserInfoHTTPMethod": "I8F2f3mEv09kAA5h", "googleAdminConsoleKey": "nQtd4bcivHGIEplR", "scopes": ["pcHDWcIoJ45L0Ze3", "YamxKDSZTl4UiJSC", "bG4UmG3TkMTzOcBI"]}' \
    'ciiKwRs1E7sH2G9M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 150 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 151 UpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["J6F7Rr7O15jqeKss", "Qpme6eyM48tE7eJR", "sXNeveQXqnFRYmEI"], "assignedNamespaces": ["X40XOUoLOa7oDz00", "gxcoaH6u9TVf4DvE", "zpoPRiClZ6rlwX99"], "domain": "AHMLHqguYykVWzNw", "roleId": "PcvGyieBsRUduW5l", "ssoCfg": {"googleKey": {"xSlorWEGN5bPGSOS": {}, "iiItrSrEJMBAIwTL": {}, "krMDFQfpQ9o0GJMT": {}}, "groupConfigs": [{"assignNamespaces": ["fqRRaZozM8xCBoaS", "2FMwfWNCbN5GelVO", "U0hHnsCl5k6Jxh5m"], "group": "kmQzKg0jWCjpGwh7", "roleId": "pLAi5JmzvM6JFKB8"}, {"assignNamespaces": ["ikHpl3sNRaDEC2Ok", "XA3WqypoOw0H2s0s", "ibQNBz81zRPntxpg"], "group": "i7tXIcNEcGJjOCXp", "roleId": "uix5vnPeTu9evbRo"}, {"assignNamespaces": ["v7Bm40CtZiAxk43D", "GV1SCkw8U0d4FvVm", "PMtpRMWSQ8Szi1Ir"], "group": "GidRmR5BGRJhFwxm", "roleId": "kGfPI3j4luXQuuLt"}]}}' \
    'Ya86kvL6cBZQssUU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 151 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 152 DeleteThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-delete-third-party-login-platform-domain-v3' \
    '{"domain": "XOsXMNdvW1hbvGen", "ssoGroups": ["Rbm3QtsY5WaKM5YY", "6pYrmeMIHLS8egV8", "XhgDjbrum8Uxcutm"]}' \
    'Vg8APWKxoj6MF68V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 152 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 153 PartialUpdateThirdPartyLoginPlatformDomainV3
$PYTHON -m $MODULE 'iam-partial-update-third-party-login-platform-domain-v3' \
    '{"affectedClientIDs": ["uKDoklYmkytCAH8J", "iqe7gfV1G6bYgIbV", "Kp4Kgew2mHDksA6M"], "assignedNamespaces": ["v9Nzs19eBq9a1L8S", "1yduOwscICro6P8F", "WIPeqaBeD2uBAvIX"], "domain": "Ec2CCgYcFo9A93o2", "roleId": "2UgObCOiBWdw2b03", "ssoCfg": {"googleKey": {"1dm4N41MOpmm04Bl": {}, "ZUAlYnCT11qD03er": {}, "5mdraK47FdxXisVl": {}}, "groupConfigs": [{"assignNamespaces": ["o3aVOGARFDJcGWy8", "26ilCxAxQUM5DyrP", "fBmpZIzSFUZqVR5F"], "group": "WGfH66eFCMTsLA8v", "roleId": "YVvrIAEehUV0jsjA"}, {"assignNamespaces": ["yVgxS54NNs3XdhMb", "QX9D1znEWw9p7g4U", "sQCTKDh5n9yc34xF"], "group": "8qFllM1LTrl4MP3N", "roleId": "l4T3ujvV7W6ADLtn"}, {"assignNamespaces": ["7oInn1Bz3wM3BI51", "etn17OcmSVHZ6wtP", "VAwgvxYxXJTduZp1"], "group": "nNYHREmm1cBuaRaG", "roleId": "eM8yxRfejqSbVgLd"}]}}' \
    '1FoyNFGpu5r2K0Iv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 153 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 154 RetrieveSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-retrieve-sso-login-platform-credential' \
    'Vg5LwUygH98dzTL8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 154 'RetrieveSSOLoginPlatformCredential' test.out

#- 155 AddSSOLoginPlatformCredential
$PYTHON -m $MODULE 'iam-add-sso-login-platform-credential' \
    '{"acsUrl": "azKCCNBZpwRFNYxx", "apiKey": "2dr6DDuDHXcfvXPX", "appId": "JURX3XwhOlgcpcOI", "federationMetadataUrl": "xqCMSpZxby2J9vGO", "isActive": true, "redirectUri": "eSeGb02vDPUpv5VE", "secret": "dIG82dpIbfxVFfdv", "ssoUrl": "KQVgPQw3MVXe4xBP"}' \
    'DWHRHCCVDBRjPUQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 155 'AddSSOLoginPlatformCredential' test.out

#- 156 DeleteSSOLoginPlatformCredentialV3
$PYTHON -m $MODULE 'iam-delete-sso-login-platform-credential-v3' \
    'YVxGQVFJlDDJ7z4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 156 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 157 UpdateSSOPlatformCredential
$PYTHON -m $MODULE 'iam-update-sso-platform-credential' \
    '{"acsUrl": "b5jyGID39Ung1D57", "apiKey": "FjYKlJiRIvhej77O", "appId": "SPwdzMSmrSvQdsAd", "federationMetadataUrl": "TUGpd8KFrXKFA2gd", "isActive": false, "redirectUri": "YBaRC7T5qSl7WN3n", "secret": "cPkqiTKzz72PKXjS", "ssoUrl": "hM2DvesmMIbiQfaH"}' \
    'xl2YUNRLRjgKqSSY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 157 'UpdateSSOPlatformCredential' test.out

#- 158 AdminListUserIDByPlatformUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-platform-user-i-ds-v3' \
    '{"platformUserIds": ["gZnVfa8govttlpFA", "q8oebnS4Y2zkGYTr", "9yJIveX52r6Inl9V"]}' \
    'TJB9Al3mn2DsHDHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 158 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 159 AdminGetUserByPlatformUserIDV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-platform-user-idv3' \
    'SVJzhU5Z44zgZ1fi' \
    'eLdl3Y82DOj5kPuN' \
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
    '{"config": {"minimumAllowedInterval": 89}, "type": "BDpR7SH93AE1Toj5"}' \
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
    '{"additions": [{"actions": [12, 14, 39], "resource": "VvLSJvdsGpmmUeMi"}, {"actions": [21, 64, 100], "resource": "H1fHFLSr0O4rEZTb"}, {"actions": [65, 49, 61], "resource": "77iRVFfFvWenMNV0"}], "exclusions": [{"actions": [76, 75, 98], "resource": "DaRf3pxKtJbRY5lu"}, {"actions": [59, 92, 47], "resource": "52ZuuuI7F1xpVrco"}, {"actions": [36, 52, 31], "resource": "SOEGEDYfiGPYo2K3"}], "overrides": [{"actions": [7, 78, 81], "resource": "YGkOLgReff5IHxLJ"}, {"actions": [71, 23, 10], "resource": "k5wL2oXDZ20Bw2H4"}, {"actions": [39, 13, 51], "resource": "IUkB2PAGJqOrkdlZ"}], "replacements": [{"replacement": {"actions": [55, 56, 17], "resource": "6OY0dPVMd2WDUVEQ"}, "target": "TpfyAIoF7qsANBbE"}, {"replacement": {"actions": [75, 66, 86], "resource": "A3O5hQAl6U2g9imV"}, "target": "Mh3i7j095rDL6lEu"}, {"replacement": {"actions": [57, 36, 98], "resource": "ZIMIs1dFvYokH9t2"}, "target": "u8ZZnyHKkk6Gh25t"}]}' \
    'USER' \
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
    'USER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 165 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 166 AdminGetRoleNamespacePermissionV3
$PYTHON -m $MODULE 'iam-admin-get-role-namespace-permission-v3' \
    'X9GegDnrYz0GFpSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 166 'AdminGetRoleNamespacePermissionV3' test.out

#- 167 GetAdminUsersByRoleIdV3
$PYTHON -m $MODULE 'iam-get-admin-users-by-role-id-v3' \
    'dxFsXAp1roclyXll' \
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
    '{"tagName": "FitPamSKRzDIZgSk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 169 'AdminCreateTagV3' test.out

#- 170 AdminUpdateTagV3
$PYTHON -m $MODULE 'iam-admin-update-tag-v3' \
    '{"tagName": "6suS90ZbDdmjU11Q"}' \
    'IZtkSn8QRbA5V4gj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateTagV3' test.out

#- 171 AdminDeleteTagV3
$PYTHON -m $MODULE 'iam-admin-delete-tag-v3' \
    'Wv1W6cqnvSuKswQ7' \
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
    '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["BA3sd51mDooH53vi", "bq3Qcrtt8L5dIebs", "w7EjkMnJSziEA43W"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 173 'AdminBulkUpdateUsersV3' test.out

#- 174 AdminGetBulkUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-bulk-user-ban-v3' \
    '{"bulkUserId": ["qIMJdrqHIsJ98WRj", "qYieXRthQZvzRi7p", "qpajYEHs9TIkcnrJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 174 'AdminGetBulkUserBanV3' test.out

#- 175 AdminListUserIDByUserIDsV3
$PYTHON -m $MODULE 'iam-admin-list-user-id-by-user-i-ds-v3' \
    '{"findByPublisherNamespace": false, "userIds": ["4BOKqywS6DKNSeb2", "UMWOgVeYkCvqq0tO", "15pEVG7sNihxpuuL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 175 'AdminListUserIDByUserIDsV3' test.out

#- 176 AdminBulkGetUsersPlatform
$PYTHON -m $MODULE 'iam-admin-bulk-get-users-platform' \
    '{"userIds": ["7DJCxvzZnh8oBAk1", "MNCAUmdnLaVRUu5V", "bjwPa9rYgHaxeTT3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 176 'AdminBulkGetUsersPlatform' test.out

#- 177 AdminCursorGetUserV3
$PYTHON -m $MODULE 'iam-admin-cursor-get-user-v3' \
    '{"cursor": {"cursorTime": "ebuaYPNBp9wA4LxO", "userId": "2n7WJQFzBCD9S03D"}, "fields": ["7JLsIM3VOMRvvqkX", "DMPzOB08tpk0qhZa", "th4b4HtwEYX55pJN"], "limit": 94}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 177 'AdminCursorGetUserV3' test.out

#- 178 AdminInviteUserV3
$PYTHON -m $MODULE 'iam-admin-invite-user-v3' \
    '{"emailAddresses": ["x8yneWKrOy4xcg30", "BqC5W7g7hiwumJTI", "3jlZPjoCdGiIP6cB"], "isAdmin": true, "languageTag": "Pj63MJXIuLWYb2iH", "namespace": "HVN0ZBgvrigXUT4f", "roles": ["RbawD5yOvjgOopQf", "bXmtF0WFH7F2Inhx", "tynUjuBCxkb2oF99"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 178 'AdminInviteUserV3' test.out

#- 179 AdminQueryThirdPlatformLinkHistoryV3
$PYTHON -m $MODULE 'iam-admin-query-third-platform-link-history-v3' \
    'xI1VVtVrVT6Hn8B2' \
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
    '{"listEmailAddressRequest": ["d1hZUnoQwg5uqgoH", "aFyoczck0qJsgZPf", "uelAiZBZcQGHHGI7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 182 'AdminGetBulkUserByEmailAddressV3' test.out

#- 183 AdminGetUserByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-by-user-id-v3' \
    'csI8ecZSvzXYOyts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserByUserIdV3' test.out

#- 184 AdminUpdateUserV3
$PYTHON -m $MODULE 'iam-admin-update-user-v3' \
    '{"avatarUrl": "hBcKQytQagui6lsK", "country": "F28n7UC7y1MKYVeo", "dateOfBirth": "GFrDb8unXv1iE7Yg", "displayName": "EZspOJ0NiZl6OVLx", "languageTag": "KtkBpaCG8Nu5m4ct", "skipLoginQueue": true, "tags": ["cDN7OMCehk42acy8", "wsWaPyppR3ztPSAL", "A8LlV2sccbVr6HSi"], "uniqueDisplayName": "XVzrG4EdKn8eypTz", "userName": "I497DG0ZNoJvvi4Y"}' \
    's50iE7IjZoDzMmMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserV3' test.out

#- 185 AdminGetUserBanV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-v3' \
    'oMxZZ9AutWDfVOIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserBanV3' test.out

#- 186 AdminBanUserV3
$PYTHON -m $MODULE 'iam-admin-ban-user-v3' \
    '{"ban": "hql9CdDX4xiHpdfK", "comment": "H35RWUUVEHCB5wzF", "endDate": "6oLIrAwjAsgo51XH", "reason": "JBG2PmyeFaBiT3Sy", "skipNotif": false}' \
    'ZSyfjukWmkfkiF2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 186 'AdminBanUserV3' test.out

#- 187 AdminGetUserBanSummaryV3
$PYTHON -m $MODULE 'iam-admin-get-user-ban-summary-v3' \
    'ZPuyWBVH66JU1IIC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserBanSummaryV3' test.out

#- 188 AdminUpdateUserBanV3
$PYTHON -m $MODULE 'iam-admin-update-user-ban-v3' \
    '{"enabled": false, "skipNotif": false}' \
    'NRV4lBToTcn1l44e' \
    'brKEKdeo779KG5yC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserBanV3' test.out

#- 189 AdminSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-send-verification-code-v3' \
    '{"context": "z9jVs1lYK1Mx9rEF", "emailAddress": "kDqb31AZzwiQBaGd", "languageTag": "S41VRIyAHjYxVhCb", "upgradeToken": "XbeBEoTlfR33jqIR"}' \
    'oXcCPaLXJM2B9bMo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 189 'AdminSendVerificationCodeV3' test.out

#- 190 AdminVerifyAccountV3
$PYTHON -m $MODULE 'iam-admin-verify-account-v3' \
    '{"Code": "hkWsFKIdycYHQcu7", "ContactType": "JkKBcLFRf50Y7ME2", "LanguageTag": "QmYiYqap7masUcay", "validateOnly": true}' \
    'yBYepIqtrikdAbdO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyAccountV3' test.out

#- 191 GetUserVerificationCode
$PYTHON -m $MODULE 'iam-get-user-verification-code' \
    'T6iSRdEg8NYuc4q5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 191 'GetUserVerificationCode' test.out

#- 192 AdminGetUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-get-user-deletion-status-v3' \
    'sJVzaKGDOULJbjHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserDeletionStatusV3' test.out

#- 193 AdminUpdateUserDeletionStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-deletion-status-v3' \
    '{"deletionDate": 15, "enabled": true}' \
    'fbXrH6f2GDrNbLOj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserDeletionStatusV3' test.out

#- 194 AdminListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-admin-list-user-all-platform-accounts-distinct-v3' \
    'Gz34ct0ctEeH43wY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 194 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 195 AdminUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-admin-upgrade-headless-account-v3' \
    '{"code": "uLnI7cTzIUERPlQI", "country": "99hMc4NbiJWP5r9E", "dateOfBirth": "wbIGMGJ70P9IqAyN", "displayName": "lZ2OwFSebBkXkaxt", "emailAddress": "Y97TMJH8bO4GDHT6", "password": "ZaUUkvlTKAhrxqHw", "uniqueDisplayName": "7f813qNjzlcxXsmG", "validateOnly": false}' \
    'yOM68r4W1fDZL80o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 195 'AdminUpgradeHeadlessAccountV3' test.out

#- 196 AdminDeleteUserInformationV3
$PYTHON -m $MODULE 'iam-admin-delete-user-information-v3' \
    'PQ0s7QhC8hgSgytN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserInformationV3' test.out

#- 197 AdminGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-login-histories-v3' \
    'EojK3YgWH9l7rv6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserLoginHistoriesV3' test.out

#- 198 AdminResetPasswordV3
$PYTHON -m $MODULE 'iam-admin-reset-password-v3' \
    '{"languageTag": "USINd4keCeiw7P2P", "mfaToken": "tUrPawQPaHARrhjb", "newPassword": "EU5n0PNuFyKW95dJ", "oldPassword": "sGoBIjCKlD3axSiv"}' \
    'ItV1txLINmdHTGLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 198 'AdminResetPasswordV3' test.out

#- 199 AdminUpdateUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-update-user-permission-v3' \
    '{"Permissions": [{"Action": 88, "Resource": "TN5ctYX1sZnYF3hW", "SchedAction": 25, "SchedCron": "dQGk6vneHoB1PXO1", "SchedRange": ["vT1AonFO3syvkYd7", "8GsJGLbnb4Nvw7fn", "m4MnOqnqNerQoHiD"]}, {"Action": 71, "Resource": "eGJIqnatME8GnNWf", "SchedAction": 55, "SchedCron": "1yEI9ychtyhjZSeD", "SchedRange": ["CKT4ilZB8apDTR3a", "L9sunWp7V1s8LmXm", "0FaJMIjgzU02nZWw"]}, {"Action": 57, "Resource": "rryS5a6A4tL8YKMr", "SchedAction": 96, "SchedCron": "K9KhF4KRVPoIuzAu", "SchedRange": ["QNjAfvOE2cVjFp1C", "eCEfaV4ZGGwbqOB4", "mD3E7AFHqlTTkL8c"]}]}' \
    'mpA0sZ0tgeR4UV5S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateUserPermissionV3' test.out

#- 200 AdminAddUserPermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-user-permissions-v3' \
    '{"Permissions": [{"Action": 80, "Resource": "RTpGmBUjfEU9vL8H", "SchedAction": 53, "SchedCron": "6tuVfQwYIqDWqbPm", "SchedRange": ["wQw8J7na1POTXhXL", "RU5prAdqnnPOiTVz", "AeQq6rnWJoTpYoe2"]}, {"Action": 41, "Resource": "z3HVP2Y9WqSRiwV3", "SchedAction": 96, "SchedCron": "fmNbDTMGgET2yS6C", "SchedRange": ["8a8L0vQDS4EVpBms", "Uzx64Gr4XEm0uYYu", "AmqhftIfe2zdqZ7h"]}, {"Action": 41, "Resource": "Sj52mAIMo6EW9Qhz", "SchedAction": 96, "SchedCron": "Nalwgvju62rPFMbE", "SchedRange": ["1cW57GaNZLT1z0Gq", "DZN7ftHOhVy48YYg", "1AkRh3NmbRhMxKeI"]}]}' \
    'gwq1NZmxa0ghRG02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 200 'AdminAddUserPermissionsV3' test.out

#- 201 AdminDeleteUserPermissionBulkV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-bulk-v3' \
    '[{"Action": 12, "Resource": "QpWTNKsVyK8EU8JY"}, {"Action": 4, "Resource": "6GKY0BrHiWs0B0Rh"}, {"Action": 47, "Resource": "pTuvLTJUzwXJFaWW"}]' \
    '3JVdYpfHOYoLva2c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteUserPermissionBulkV3' test.out

#- 202 AdminDeleteUserPermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-user-permission-v3' \
    '64' \
    'JscEQfBFZXcSXpU8' \
    '1S5H9XsZyvZOFJ5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserPermissionV3' test.out

#- 203 AdminGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-get-user-platform-accounts-v3' \
    'rFZYcwfQ1Q2BbcjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserPlatformAccountsV3' test.out

#- 204 AdminListAllDistinctPlatformAccountsV3
$PYTHON -m $MODULE 'iam-admin-list-all-distinct-platform-accounts-v3' \
    'pv6Nt1oz4tdgfKu4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 204 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 205 AdminGetListJusticePlatformAccounts
$PYTHON -m $MODULE 'iam-admin-get-list-justice-platform-accounts' \
    'bmK8kOKcEoCRjQJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 205 'AdminGetListJusticePlatformAccounts' test.out

#- 206 AdminGetUserMapping
$PYTHON -m $MODULE 'iam-admin-get-user-mapping' \
    'PY3p42OS9iGNElTp' \
    'MlvRDZSIuM0OXOHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserMapping' test.out

#- 207 AdminCreateJusticeUser
$PYTHON -m $MODULE 'iam-admin-create-justice-user' \
    'luvsry8AKSZxOhUh' \
    'l3Y0EshaG0uDiJNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateJusticeUser' test.out

#- 208 AdminLinkPlatformAccount
$PYTHON -m $MODULE 'iam-admin-link-platform-account' \
    '{"platformId": "uxK22saWaGvrzBdL", "platformUserId": "vFUBZDnVrcwbsD0R"}' \
    'DLxWgEWwoHpV8E1x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 208 'AdminLinkPlatformAccount' test.out

#- 209 AdminGetUserLinkHistoriesV3
$PYTHON -m $MODULE 'iam-admin-get-user-link-histories-v3' \
    'QZLa7Kw77UpCxNyx' \
    '1jjdxNePPAJ6Z9Uz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 209 'AdminGetUserLinkHistoriesV3' test.out

#- 210 AdminPlatformUnlinkV3
eval_tap 0 210 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 211 AdminPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-admin-platform-unlink-all-v3' \
    'qIhZZiK0QEG6C9w4' \
    'lVRNOF1Bg6OHZzvd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 211 'AdminPlatformUnlinkAllV3' test.out

#- 212 AdminPlatformLinkV3
$PYTHON -m $MODULE 'iam-admin-platform-link-v3' \
    'ZHoIm4tKNhPjNIQG' \
    'FxGwgnSiZtChE0uo' \
    'f77AAPI5tdPeFz9p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 212 'AdminPlatformLinkV3' test.out

#- 213 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 213 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 214 AdminDeleteUserLinkingRestrictionByPlatformIDV3
$PYTHON -m $MODULE 'iam-admin-delete-user-linking-restriction-by-platform-idv3' \
    'GYsLNEGrfy9qHKuf' \
    'Jfk0MeG3qYJr6PuC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 215 AdminGetThirdPartyPlatformTokenLinkStatusV3
$PYTHON -m $MODULE 'iam-admin-get-third-party-platform-token-link-status-v3' \
    'VK9WmDAdpLVTVsj9' \
    'pDiyybXY4v7JRFMR' \
    'aeIaQuPWPlkxeotr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 215 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 216 AdminGetUserSinglePlatformAccount
$PYTHON -m $MODULE 'iam-admin-get-user-single-platform-account' \
    'NakKGvOSvpmZZdlN' \
    'Xdx2kWmSqodNZgfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserSinglePlatformAccount' test.out

#- 217 AdminDeleteUserRolesV3
eval_tap 0 217 'AdminDeleteUserRolesV3 # SKIP deprecated' test.out

#- 218 AdminSaveUserRoleV3
$PYTHON -m $MODULE 'iam-admin-save-user-role-v3' \
    '[{"namespace": "yDVVkkqiMiRf2yCy", "roleId": "M0Tp5GJHHbsLJ73m"}, {"namespace": "CPhhmUyIwgQS9kVF", "roleId": "UbeTeB9KgnFZQ9lV"}, {"namespace": "MNyCiytnfMoO1I3K", "roleId": "ISTbn4yEa2AaBRal"}]' \
    'z5HEm4Gant6aqjKz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 218 'AdminSaveUserRoleV3' test.out

#- 219 AdminAddUserRoleV3
eval_tap 0 219 'AdminAddUserRoleV3 # SKIP deprecated' test.out

#- 220 AdminDeleteUserRoleV3
eval_tap 0 220 'AdminDeleteUserRoleV3 # SKIP deprecated' test.out

#- 221 AdminGetUserStateByUserIdV3
$PYTHON -m $MODULE 'iam-admin-get-user-state-by-user-id-v3' \
    'WDAauqLKarcLQRQt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 221 'AdminGetUserStateByUserIdV3' test.out

#- 222 AdminUpdateUserStatusV3
$PYTHON -m $MODULE 'iam-admin-update-user-status-v3' \
    '{"enabled": true, "reason": "696uxp5ieMjjOfFS"}' \
    'x3AJN97kUjwiCmWQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 222 'AdminUpdateUserStatusV3' test.out

#- 223 AdminTrustlyUpdateUserIdentity
$PYTHON -m $MODULE 'iam-admin-trustly-update-user-identity' \
    '{"emailAddress": "vbrxQpUSnos6QiHy", "password": "rcGeRv27hj73Etuf"}' \
    'HuNIp0GXpM4nbG7a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 223 'AdminTrustlyUpdateUserIdentity' test.out

#- 224 AdminVerifyUserWithoutVerificationCodeV3
$PYTHON -m $MODULE 'iam-admin-verify-user-without-verification-code-v3' \
    'ww2TANW1Or7TvLoL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 224 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 225 AdminUpdateClientSecretV3
$PYTHON -m $MODULE 'iam-admin-update-client-secret-v3' \
    '{"newSecret": "0wwHoRMNexBOron8"}' \
    'wIdUbp7xVMKfbAJf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateClientSecretV3' test.out

#- 226 AdminCheckThirdPartyLoginPlatformAvailabilityV3
$PYTHON -m $MODULE 'iam-admin-check-third-party-login-platform-availability-v3' \
    'W4iMIC52NUedhhkM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 226 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 227 GetThirdPartyLoginPlatformDefaultsV3
$PYTHON -m $MODULE 'iam-get-third-party-login-platform-defaults-v3' \
    'E18qGpSsyEPDWHcq' \
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
    '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "50c2okDTem6o62xF", "namespace": "Y6TNqoLFFS4wB6Um", "userId": "7ir0n6O3vbYVjrcE"}, {"displayName": "rgoApAxyDnHjAx7r", "namespace": "ZTvew0WVDSMNr23L", "userId": "V7xZEEv7O1lwxVTR"}, {"displayName": "ll0GIEUJtMC8NyV2", "namespace": "HLHZT3oYJlC4ie3I", "userId": "nnSA22NHTb4qXYyJ"}], "members": [{"displayName": "UAlKlTwdJEPoemVt", "namespace": "mVXTs3tCu4F9IgDT", "userId": "2tq2V2lMzfIQHCZ9"}, {"displayName": "0DqQgP6ynrQjYH0N", "namespace": "2loTnRa0KiQWPxd1", "userId": "gqlwx9CE4WcsmYtC"}, {"displayName": "kIgcwiDWQFghmIi6", "namespace": "fphDw3p9QWqwTF2p", "userId": "OJsY86xAf5y1iy01"}], "permissions": [{"action": 64, "resource": "uN7zpX9vp4QJdCrw", "schedAction": 22, "schedCron": "QdfW99JglScoOlkk", "schedRange": ["BxiXf8OBQRqXWXQ3", "JdXdFz8pc0EEziE5", "yIvijq9ix16vo60j"]}, {"action": 12, "resource": "qqSctLL4WfGq8JCD", "schedAction": 28, "schedCron": "2WHGVKDcKulj3Pde", "schedRange": ["gy4G6LOpak8CYp6D", "Pdukc04j6rbfBuKB", "co1AeO3yvvBLZPBu"]}, {"action": 8, "resource": "rNhDepQum4Dj7pR0", "schedAction": 45, "schedCron": "RTGXGRkYXifTd5nA", "schedRange": ["OF9VV7JgCOm4wL72", "9Hma0nCdCEFcf2do", "BrfHiHXXgvu496H0"]}], "roleName": "2yOVN1h41jIPOMXu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 229 'AdminCreateRoleV3' test.out

#- 230 AdminGetRoleV3
$PYTHON -m $MODULE 'iam-admin-get-role-v3' \
    'fZPWSe20JfNvtNcW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleV3' test.out

#- 231 AdminDeleteRoleV3
$PYTHON -m $MODULE 'iam-admin-delete-role-v3' \
    'tpUkw98x3tMM1bFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRoleV3' test.out

#- 232 AdminUpdateRoleV3
$PYTHON -m $MODULE 'iam-admin-update-role-v3' \
    '{"deletable": true, "isWildcard": false, "roleName": "qKD8HJ4X0DetCeJ4"}' \
    'x0wf5mQx6Hs7M5ap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 232 'AdminUpdateRoleV3' test.out

#- 233 AdminGetRoleAdminStatusV3
$PYTHON -m $MODULE 'iam-admin-get-role-admin-status-v3' \
    'PMc8ZR3bPCJ5n5s6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleAdminStatusV3' test.out

#- 234 AdminUpdateAdminRoleStatusV3
$PYTHON -m $MODULE 'iam-admin-update-admin-role-status-v3' \
    'DODBmrqEhGlkEmGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 234 'AdminUpdateAdminRoleStatusV3' test.out

#- 235 AdminRemoveRoleAdminV3
$PYTHON -m $MODULE 'iam-admin-remove-role-admin-v3' \
    'CbwodVRjZJWuCQpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 235 'AdminRemoveRoleAdminV3' test.out

#- 236 AdminGetRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-get-role-managers-v3' \
    'uJzpPO7BPxVWlRFn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 236 'AdminGetRoleManagersV3' test.out

#- 237 AdminAddRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-add-role-managers-v3' \
    '{"managers": [{"displayName": "IekrQ99ecmenxguw", "namespace": "5bO8Vh4JaKYAsoMl", "userId": "LJGMl5xFgLj4mCSh"}, {"displayName": "MFlbrRGjoBQ45Za4", "namespace": "JR4S3iac6vLeoIUL", "userId": "JlWXmQFlef1tSHJf"}, {"displayName": "6sVpwAAKKqmTy0ZS", "namespace": "yJ7IIUXlBlZMQeSn", "userId": "Og5gf1SwrbpmoF4D"}]}' \
    'vNA1wo9IAxV5C71g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRoleManagersV3' test.out

#- 238 AdminRemoveRoleManagersV3
$PYTHON -m $MODULE 'iam-admin-remove-role-managers-v3' \
    '{"managers": [{"displayName": "Tw8BJPFctwUMCRdx", "namespace": "XOBu3TWmHDVmCGFo", "userId": "D7aNFj9wORAVqRuN"}, {"displayName": "sXxRu4EQqR3KbYWt", "namespace": "FzplXVk36IpbGquP", "userId": "nIPwR1BinZ4ULwAK"}, {"displayName": "O8n42UuxEyfzZJsZ", "namespace": "d9sB6CV9KiWkbdpG", "userId": "qWQIPK6mVytM5mBR"}]}' \
    'T39gKYLk9DmjJh6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 238 'AdminRemoveRoleManagersV3' test.out

#- 239 AdminGetRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-get-role-members-v3' \
    'npTXWAUt8lgqNM4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 239 'AdminGetRoleMembersV3' test.out

#- 240 AdminAddRoleMembersV3
$PYTHON -m $MODULE 'iam-admin-add-role-members-v3' \
    '{"members": [{"displayName": "oGEvIKCe3MrLxmnj", "namespace": "mlAuaBCdhzXb6cBM", "userId": "PNMmjMi2uztFNfXg"}, {"displayName": "0UvwaZ0py16ShGom", "namespace": "FzUappaaODZaZ6Vz", "userId": "ztnntoxwsNtNxWoH"}, {"displayName": "5wVHJVaEnaycYsKk", "namespace": "gX0RMDxvlK9RnTEY", "userId": "v5eDhCxwy85vlhWw"}]}' \
    '1RCgHr3f6UqFGCvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 240 'AdminAddRoleMembersV3' test.out

#- 241 AdminRemoveRoleMembersV3
eval_tap 0 241 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 242 AdminUpdateRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v3' \
    '{"permissions": [{"action": 80, "resource": "m6EtyXqQbKWMJ0aO", "schedAction": 60, "schedCron": "ObVorIVWWLaVJwe2", "schedRange": ["KAca1aKeXUu9hINq", "KvoYKio4M51vuaFy", "qjQsTGmzItJIOkEI"]}, {"action": 89, "resource": "c6itDEsq0dHfYG6k", "schedAction": 85, "schedCron": "3GERdJdphepF9dfs", "schedRange": ["ng9FGGjJ0hRPUBFx", "M2Fr3olO10RAyIZs", "2VfCRhzfKDAGIAJu"]}, {"action": 84, "resource": "zsWGrtIgVPb7hoo8", "schedAction": 60, "schedCron": "kNPW8mWOJGtdXJGD", "schedRange": ["sxRAR3NObYp43YXM", "HqWeVjnOURxGvOhz", "9s7ktWkJDaHg6kDV"]}]}' \
    'jxhxRxjeDrqCfJEj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 242 'AdminUpdateRolePermissionsV3' test.out

#- 243 AdminAddRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v3' \
    '{"permissions": [{"action": 35, "resource": "U3INkMgjsnP8itev", "schedAction": 26, "schedCron": "PXkVnetcvAuim14W", "schedRange": ["dh1qKoSDBbyqlJyf", "VgaW6ziZF6ijZzA3", "MkosOcoAcV0T2G3v"]}, {"action": 88, "resource": "GjYReIZaDC2Au2bE", "schedAction": 32, "schedCron": "iBdljXtowifBfAw3", "schedRange": ["0kOykBuDJ0IPQeAL", "4MZwEVJe7waGyB6g", "2M5JiwtMOfDfoMgU"]}, {"action": 12, "resource": "yFBTPfnmfN5E20OR", "schedAction": 78, "schedCron": "eeExZYnGcrZHMKoT", "schedRange": ["cIXeKZzZBo6ARaQn", "NZQ1R0PGBFVnc37a", "WVjM3iVKjr5VDqak"]}]}' \
    'KdW767GAH1oiS1Ju' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 243 'AdminAddRolePermissionsV3' test.out

#- 244 AdminDeleteRolePermissionsV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v3' \
    '["O7MNoFPtRhYYIpNq", "VHbbCVwbitD5tWXZ", "VvjYqrEXKUDlmtix"]' \
    'w9FtBVAWT8PxL867' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 244 'AdminDeleteRolePermissionsV3' test.out

#- 245 AdminDeleteRolePermissionV3
$PYTHON -m $MODULE 'iam-admin-delete-role-permission-v3' \
    '75' \
    'g0NhuYvwCATIUep6' \
    '1ZsSiqW7I03oSwCf' \
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
    'YpN9jkLCsMYyyhEy' \
    'BfFFZwkC1PRjBWzT' \
    'uXttDREDWbOM3xQa' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 247 'UserAuthenticationV3' test.out

#- 248 AuthenticationWithPlatformLinkV3
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v3' \
    'raaEVt3vsBCXpIgQ' \
    'zkWzcBqVcuTTrIk6' \
    'hU0mqdwBJax1jBd6' \
    'Yng8ps5XknDJZK5g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 248 'AuthenticationWithPlatformLinkV3' test.out

#- 249 AuthenticateAndLinkForwardV3
$PYTHON -m $MODULE 'iam-authenticate-and-link-forward-v3' \
    'FHyIOnLu9WBAS0qU' \
    'swy0AnJZJdKrIn9h' \
    'HHGg1cTZsJp1b5yB' \
    '8c9gCPFDZh6JfJfg' \
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
    '4X1dZOTBgYwLjPGF' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 251 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 252 RequestOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-request-one-time-linking-code-v3' \
    'qkbTL8ifUAMUekrD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 252 'RequestOneTimeLinkingCodeV3' test.out

#- 253 ValidateOneTimeLinkingCodeV3
$PYTHON -m $MODULE 'iam-validate-one-time-linking-code-v3' \
    '0J6iuJsVjhLgaFeF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 253 'ValidateOneTimeLinkingCodeV3' test.out

#- 254 RequestTokenByOneTimeLinkCodeResponseV3
$PYTHON -m $MODULE 'iam-request-token-by-one-time-link-code-response-v3' \
    'J5QRuvEsU5Qkmsmf' \
    'FhPTfXVzS3hFUXbd' \
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
    'YU08BQZXTcZnHoYa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 257 'RequestTokenExchangeCodeV3' test.out

#- 258 AdminRetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-admin-retrieve-user-third-party-platform-token-v3' \
    'II5c5UqVvKR3ydSE' \
    'b2trPjqlB5c8a78g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 258 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 259 RevokeUserV3
$PYTHON -m $MODULE 'iam-revoke-user-v3' \
    'p4BGN4NAydb6GgyF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 259 'RevokeUserV3' test.out

#- 260 AuthorizeV3
$PYTHON -m $MODULE 'iam-authorize-v3' \
    'czEOMXF1T1sU9xsm' \
    'code' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 260 'AuthorizeV3' test.out

#- 261 TokenIntrospectionV3
$PYTHON -m $MODULE 'iam-token-introspection-v3' \
    'dTLCxJqK7dgsgrnp' \
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
    'VE1acxZoDXdPORkW' \
    'kyTcJzvDUlhTlBNp' \
    'vkjg48iVKCqEqeZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 263 'SendMFAAuthenticationCode' test.out

#- 264 Change2faMethod
$PYTHON -m $MODULE 'iam-change2fa-method' \
    '1CFaMkJVBkZU3qtk' \
    '0dM4GZGiSutb6wUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 264 'Change2faMethod' test.out

#- 265 Verify2faCode
$PYTHON -m $MODULE 'iam-verify2fa-code' \
    'EikRyHC9VWMnzbuN' \
    'QNJxCbLEhfrPxIRd' \
    'bUwkN6Tr6vRneC9J' \
    'false' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 265 'Verify2faCode' test.out

#- 266 Verify2faCodeForward
$PYTHON -m $MODULE 'iam-verify2fa-code-forward' \
    'qBsbDmsTk9UuiQwe' \
    'zvArAKJwZGVyknpO' \
    'huGhAnlnjyPBj7h3' \
    'hncU5vgL62RA2BI7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 266 'Verify2faCodeForward' test.out

#- 267 OAuthDynamicClientRegisterWithNamespaceV3
$PYTHON -m $MODULE 'iam-o-auth-dynamic-client-register-with-namespace-v3' \
    '{"client_name": "knizQ4Jx8In4w8yR", "client_uri": "FOLeTQyplscfsZvv", "grant_types": ["UpCMJRliFCmFC9uU", "xSxI4yyrZIV9M22g", "RLsc6Jwt190s6yFi"], "redirect_uris": ["DZs0wyldbDDntsSQ", "8DEsKT6Mw5xDz8as", "ARtI3TVV2QmlqRK5"], "response_types": ["roG1oZArFJBUmMx7", "nzK8rRAYvvynDPJ9", "SMRzSo0RzUoSen8C"], "scopes": ["jEhtRcnVsYOwypw6", "F21uYowkPNGANjli", "9XZkbrkh3dQNtIEw"], "token_endpoint_auth_method": "CcfPmWjX540aN2pv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 267 'OAuthDynamicClientRegisterWithNamespaceV3' test.out

#- 268 RetrieveUserThirdPartyPlatformTokenV3
$PYTHON -m $MODULE 'iam-retrieve-user-third-party-platform-token-v3' \
    'Oi5UG7agVhXIgoHE' \
    '9eEvIyV2DqxWhSV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 268 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 269 AuthCodeRequestV3
$PYTHON -m $MODULE 'iam-auth-code-request-v3' \
    'r9vk4HQDiwqJUZHP' \
    '7HM6JB2P6ZjZh9eg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 269 'AuthCodeRequestV3' test.out

#- 270 PlatformTokenGrantV3
$PYTHON -m $MODULE 'iam-platform-token-grant-v3' \
    'gvvmXZU7lVGZ6lIs' \
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
    '17PXJ8KsgqGNM6sO' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 272 'TokenRevocationV3' test.out

#- 273 SimultaneousLoginV3
$PYTHON -m $MODULE 'iam-simultaneous-login-v3' \
    'steam' \
    'UwIv84zQjc88fKtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 273 'SimultaneousLoginV3' test.out

#- 274 TokenGrantV3
$PYTHON -m $MODULE 'iam-token-grant-v3' \
    'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 274 'TokenGrantV3' test.out

#- 275 VerifyTokenV3
$PYTHON -m $MODULE 'iam-verify-token-v3' \
    'SbDQN21JlwPxpuUZ' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 275 'VerifyTokenV3' test.out

#- 276 PlatformAuthenticationV3
$PYTHON -m $MODULE 'iam-platform-authentication-v3' \
    'm1GVuI2Eihx6IJwM' \
    'zUqM16MYY2MVvo3M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticationV3' test.out

#- 277 PlatformTokenRefreshV3
$PYTHON -m $MODULE 'iam-platform-token-refresh-v3' \
    'MCL4aV6oMUzpMmsv' \
    'vKTljWspMrC4TeRT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 277 'PlatformTokenRefreshV3' test.out

#- 278 PublicGetInputValidations
eval_tap 0 278 'PublicGetInputValidations # SKIP deprecated' test.out

#- 279 PublicGetInputValidationByField
eval_tap 0 279 'PublicGetInputValidationByField # SKIP deprecated' test.out

#- 280 PublicGetCountryAgeRestrictionV3
$PYTHON -m $MODULE 'iam-public-get-country-age-restriction-v3' \
    'NUYz7N4wHLHx7FCW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 280 'PublicGetCountryAgeRestrictionV3' test.out

#- 281 PublicGetConfigValueV3
$PYTHON -m $MODULE 'iam-public-get-config-value-v3' \
    'n7iOmKIN2roJNZmg' \
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
    'EGzqDHdLpDjLIhvC' \
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
    'NlBRcFsa03Nqu13L' \
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
    'gD6kOUZXQKRTVR95' \
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
    '{"PasswordMD5Sum": "IwPCb2qOuIRbBL0n", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zggFcJQkYueQLLJP", "policyId": "h6HpodpzuBQwTS66", "policyVersionId": "qr03Mp14S8HG9ID7"}, {"isAccepted": false, "localizedPolicyVersionId": "QZEbNr6VtQiKwKuI", "policyId": "HMjiIjX7Eu0WCXd8", "policyVersionId": "GX7ygT5qlBekxw9p"}, {"isAccepted": true, "localizedPolicyVersionId": "3vyRviPljDYddTDw", "policyId": "gc6onXfoDvjI9jfJ", "policyVersionId": "FTHcHvAfosnCXqJp"}], "authType": "lcwaBHILlCC7ovjE", "code": "bjKrZ2d6IbWTfPpl", "country": "Y43FQpfFWm8VMHjC", "dateOfBirth": "8qrxvZsJd3RBYL4P", "displayName": "AqdviBvToSQ7EqHU", "emailAddress": "hHn1qP3G2kSIurSO", "password": "WI2donULQokdCSsp", "reachMinimumAge": false, "uniqueDisplayName": "7x6Jfe5YAYJeb1GU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateUserV3' test.out

#- 293 CheckUserAvailability
$PYTHON -m $MODULE 'iam-check-user-availability' \
    'dtB5G8NITA0g58cq' \
    'Zn79u2grirdqELbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 293 'CheckUserAvailability' test.out

#- 294 PublicBulkGetUsers
eval_tap 0 294 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 295 PublicSendRegistrationCode
$PYTHON -m $MODULE 'iam-public-send-registration-code' \
    '{"emailAddress": "qXaPlAMGm4h3PbLH", "languageTag": "Da7uqaaxqXPKuNAe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 295 'PublicSendRegistrationCode' test.out

#- 296 PublicVerifyRegistrationCode
$PYTHON -m $MODULE 'iam-public-verify-registration-code' \
    '{"code": "KKjcKgU263PawPB1", "emailAddress": "0d4KCtC9mqs8uXBZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyRegistrationCode' test.out

#- 297 PublicForgotPasswordV3
$PYTHON -m $MODULE 'iam-public-forgot-password-v3' \
    '{"emailAddress": "2Kxk4a5FeKFm3raY", "languageTag": "pWl0MfF3iAQb4Iiy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 297 'PublicForgotPasswordV3' test.out

#- 298 PublicValidateUserInput
$PYTHON -m $MODULE 'iam-public-validate-user-input' \
    '{"displayName": "26m51AwCv4UKmP7e", "password": "czfnYgOqXhJZ6DIo", "uniqueDisplayName": "kID1ZFk9fRCHfId0", "username": "Dhnin8RxnO0qs4Fy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 298 'PublicValidateUserInput' test.out

#- 299 GetAdminInvitationV3
$PYTHON -m $MODULE 'iam-get-admin-invitation-v3' \
    'kFXDdcUuEE9wh4CE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 299 'GetAdminInvitationV3' test.out

#- 300 CreateUserFromInvitationV3
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v3' \
    '{"PasswordMD5Sum": "OrPY29A1L1Xijb7G", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "FWcZWKcGHG9MBp1A", "policyId": "EcNUzfWwpdraZO1l", "policyVersionId": "fHzX5CHNiYaLYUlR"}, {"isAccepted": true, "localizedPolicyVersionId": "Lj5xwmP8QMJJJn2L", "policyId": "qw6aiKZbUJQ92BTV", "policyVersionId": "iMMFji1GmfmwhN25"}, {"isAccepted": true, "localizedPolicyVersionId": "yM9bc1hgFvKO2erV", "policyId": "4ccUhiQnHGDNXw2L", "policyVersionId": "4mp580sUSlEfC6ck"}], "authType": "bV2y32kG5QTZnpxY", "code": "a2jDp3LzelXaUz9A", "country": "KozXBA29DPhYa8Ks", "dateOfBirth": "jfnk7HKSWULkEKqQ", "displayName": "4ToqWjpaECYi7fBJ", "emailAddress": "aU43PzOITmqjrcuI", "password": "H9i4ICwRHM518oPa", "reachMinimumAge": true, "uniqueDisplayName": "glj6rHbkWMDSiPRc"}' \
    'EyfbUswXLyVVZqZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 300 'CreateUserFromInvitationV3' test.out

#- 301 UpdateUserV3
$PYTHON -m $MODULE 'iam-update-user-v3' \
    '{"avatarUrl": "YAdyPafGBlwnYRpU", "country": "kTKjXxvgslvMllaE", "dateOfBirth": "VugbCEifQCe5eN88", "displayName": "Z7U1e8C1HnrPGydC", "languageTag": "RGPXLKNNfCxcAJoM", "uniqueDisplayName": "hSZgpx0HtzCgr8yb", "userName": "pAO0Pgh6Uenz7Fjc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 301 'UpdateUserV3' test.out

#- 302 PublicPartialUpdateUserV3
$PYTHON -m $MODULE 'iam-public-partial-update-user-v3' \
    '{"avatarUrl": "RRIKcTVvsormCNHH", "country": "08vEf2WSsLchLBEl", "dateOfBirth": "ch9a9Knc6glMjwg8", "displayName": "OWAT7d65hchXzG4f", "languageTag": "fz0lXBDbBGrYGlea", "uniqueDisplayName": "mVgjm0xqJhfraXwz", "userName": "n0bbNK5rhgy51k1e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 302 'PublicPartialUpdateUserV3' test.out

#- 303 PublicSendVerificationCodeV3
$PYTHON -m $MODULE 'iam-public-send-verification-code-v3' \
    '{"context": "1gZ8QCEx41nhN2NM", "emailAddress": "DXEHz2uROYqy72xP", "languageTag": "htIM8Rw0xHZOUW3j", "upgradeToken": "lXYz8azHYdzaYe7W"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 303 'PublicSendVerificationCodeV3' test.out

#- 304 PublicUserVerificationV3
$PYTHON -m $MODULE 'iam-public-user-verification-v3' \
    '{"code": "jwoU21EdgoOvT13n", "contactType": "FPxMy9YNTBZTR5tZ", "languageTag": "maZGxrhAPoREvGmm", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 304 'PublicUserVerificationV3' test.out

#- 305 PublicUpgradeHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v3' \
    '{"code": "UhsD6QxKzbZ7xvbL", "country": "KNa3OJMFdrQmX2OF", "dateOfBirth": "Lws9RV6lY9IGsZjU", "displayName": "sSUE7NuCYEOWNkgU", "emailAddress": "fe6pVMS5m8aRIev5", "password": "s4q7UwwraCDr326Q", "uniqueDisplayName": "66cxtjNTXsCsfA2p", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 305 'PublicUpgradeHeadlessAccountV3' test.out

#- 306 PublicVerifyHeadlessAccountV3
$PYTHON -m $MODULE 'iam-public-verify-headless-account-v3' \
    '{"emailAddress": "f5RXgVFrsR55cpOV", "password": "3Qg6eU0Mc21ZZliC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyHeadlessAccountV3' test.out

#- 307 PublicUpdatePasswordV3
$PYTHON -m $MODULE 'iam-public-update-password-v3' \
    '{"languageTag": "ydumMW9HWHfZ3bFT", "mfaToken": "qXqdzpP7Rk1qbFWh", "newPassword": "twNaVCqf0vP284yQ", "oldPassword": "AbudR95sQ1FygQvo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdatePasswordV3' test.out

#- 308 PublicCreateJusticeUser
$PYTHON -m $MODULE 'iam-public-create-justice-user' \
    'X9pEJ3R0cuQGjCSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateJusticeUser' test.out

#- 309 PublicPlatformLinkV3
$PYTHON -m $MODULE 'iam-public-platform-link-v3' \
    'STNyM9yuMOFavgMW' \
    'yxizWKQdVExukcKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 309 'PublicPlatformLinkV3' test.out

#- 310 PublicPlatformUnlinkV3
eval_tap 0 310 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 311 PublicPlatformUnlinkAllV3
$PYTHON -m $MODULE 'iam-public-platform-unlink-all-v3' \
    'UzhKKARjqJSWImXv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 311 'PublicPlatformUnlinkAllV3' test.out

#- 312 PublicForcePlatformLinkV3
$PYTHON -m $MODULE 'iam-public-force-platform-link-v3' \
    'aLXkvZvwk0v0OKy4' \
    '5dqId3gXUWVAmaDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 312 'PublicForcePlatformLinkV3' test.out

#- 313 PublicWebLinkPlatform
$PYTHON -m $MODULE 'iam-public-web-link-platform' \
    'rn0iZsIfqeLfl0wa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 313 'PublicWebLinkPlatform' test.out

#- 314 PublicWebLinkPlatformEstablish
$PYTHON -m $MODULE 'iam-public-web-link-platform-establish' \
    'cx4istsfrFqHu6f5' \
    '4mL4hAfiqX3ThREY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 314 'PublicWebLinkPlatformEstablish' test.out

#- 315 PublicProcessWebLinkPlatformV3
$PYTHON -m $MODULE 'iam-public-process-web-link-platform-v3' \
    'kndZIrjnjuCHkx8h' \
    'm2178A4NUDAdwt7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 315 'PublicProcessWebLinkPlatformV3' test.out

#- 316 PublicGetUsersPlatformInfosV3
$PYTHON -m $MODULE 'iam-public-get-users-platform-infos-v3' \
    '{"platformId": "j6v5DLEk9Rkumkrn", "userIds": ["Y4LksFD2le3UGhQn", "nmMgk0WYv2NTpSej", "fbYniLmi1GQTjQVa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 316 'PublicGetUsersPlatformInfosV3' test.out

#- 317 ResetPasswordV3
$PYTHON -m $MODULE 'iam-reset-password-v3' \
    '{"clientId": "J9ioRZ1HvMCIXTQG", "code": "7AUUES36bRVaiOL6", "emailAddress": "Q5N2egLXRiNNV5Fy", "languageTag": "4ilLbKzQFBHQ0FHW", "newPassword": "Oul5WKkzjzRnLLFK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 317 'ResetPasswordV3' test.out

#- 318 PublicGetUserByUserIdV3
eval_tap 0 318 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 319 PublicGetUserBanHistoryV3
$PYTHON -m $MODULE 'iam-public-get-user-ban-history-v3' \
    'GFSUC1sZtVitkoRy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUserBanHistoryV3' test.out

#- 320 PublicListUserAllPlatformAccountsDistinctV3
$PYTHON -m $MODULE 'iam-public-list-user-all-platform-accounts-distinct-v3' \
    'EXWrhLNPUvlrOA50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 320 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 321 PublicGetUserInformationV3
$PYTHON -m $MODULE 'iam-public-get-user-information-v3' \
    'xGdlq3Dkm52TA4zL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 321 'PublicGetUserInformationV3' test.out

#- 322 PublicGetUserLoginHistoriesV3
$PYTHON -m $MODULE 'iam-public-get-user-login-histories-v3' \
    'BSh2QJWgWvIZGJOP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserLoginHistoriesV3' test.out

#- 323 PublicGetUserPlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-get-user-platform-accounts-v3' \
    'kJvsZhfMwJPOcRFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 323 'PublicGetUserPlatformAccountsV3' test.out

#- 324 PublicListJusticePlatformAccountsV3
$PYTHON -m $MODULE 'iam-public-list-justice-platform-accounts-v3' \
    'TeKbAMIJChPyIhVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 324 'PublicListJusticePlatformAccountsV3' test.out

#- 325 PublicLinkPlatformAccount
eval_tap 0 325 'PublicLinkPlatformAccount # SKIP deprecated' test.out

#- 326 PublicForceLinkPlatformWithProgression
$PYTHON -m $MODULE 'iam-public-force-link-platform-with-progression' \
    '{"chosenNamespaces": ["mMs1zqz6exSNhnab", "XGs0qawVMpRu5wP9", "CTLKxi1BjFMOIsJO"], "requestId": "7EUYasMTHGgaQ2UE"}' \
    'rhcMpuZW4KtmXptK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 326 'PublicForceLinkPlatformWithProgression' test.out

#- 327 PublicGetPublisherUserV3
$PYTHON -m $MODULE 'iam-public-get-publisher-user-v3' \
    'HAev0UqYpD2R7Yqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 327 'PublicGetPublisherUserV3' test.out

#- 328 PublicValidateUserByUserIDAndPasswordV3
$PYTHON -m $MODULE 'iam-public-validate-user-by-user-id-and-password-v3' \
    'dgD0wxHpQyntHsI1' \
    '1lC6BXyQW3eG0Bvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 328 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 329 PublicGetRolesV3
$PYTHON -m $MODULE 'iam-public-get-roles-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 329 'PublicGetRolesV3' test.out

#- 330 PublicGetRoleV3
$PYTHON -m $MODULE 'iam-public-get-role-v3' \
    'CoP1hIpdIWajZTyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 330 'PublicGetRoleV3' test.out

#- 331 PublicForgotPasswordWithoutNamespaceV3
$PYTHON -m $MODULE 'iam-public-forgot-password-without-namespace-v3' \
    '{"clientId": "7k7Q9zNJHkXmHB9c", "emailAddress": "u1ZdRIZ1hHCpApGu", "languageTag": "nPxVvWyQvciFGxJN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 331 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 332 PublicGetMyUserV3
$PYTHON -m $MODULE 'iam-public-get-my-user-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyUserV3' test.out

#- 333 PublicSendCodeForwardV3
$PYTHON -m $MODULE 'iam-public-send-code-forward-v3' \
    '{"context": "OaveGzkTPehZVmZi", "emailAddress": "1UYM7BApA1YByiGk", "languageTag": "JR30lAinKfKXqYE8", "upgradeToken": "GuKFRwAkAyYY8hSN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 333 'PublicSendCodeForwardV3' test.out

#- 334 PublicGetLinkHeadlessAccountToMyAccountConflictV3
$PYTHON -m $MODULE 'iam-public-get-link-headless-account-to-my-account-conflict-v3' \
    'UTpzSm7jdrPdkMMo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 334 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 335 LinkHeadlessAccountToMyAccountV3
$PYTHON -m $MODULE 'iam-link-headless-account-to-my-account-v3' \
    '{"chosenNamespaces": ["ylrI7DpmCIb5JWu7", "DAXtIeslnM3lJQMD", "xu7Auj8cqdtNaFO3"], "oneTimeLinkCode": "ABy1AeDryAFewcN6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 335 'LinkHeadlessAccountToMyAccountV3' test.out

#- 336 PublicGetMyRedirectionAfterLinkV3
$PYTHON -m $MODULE 'iam-public-get-my-redirection-after-link-v3' \
    'U8vRJ3ebbfa3ep8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 336 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 337 PublicGetMyProfileAllowUpdateStatusV3
$PYTHON -m $MODULE 'iam-public-get-my-profile-allow-update-status-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 338 PublicSendVerificationLinkV3
$PYTHON -m $MODULE 'iam-public-send-verification-link-v3' \
    '{"languageTag": "KNlb024FzQsBlwn2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 338 'PublicSendVerificationLinkV3' test.out

#- 339 PublicGetOpenidUserInfoV3
$PYTHON -m $MODULE 'iam-public-get-openid-user-info-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 339 'PublicGetOpenidUserInfoV3' test.out

#- 340 PublicVerifyUserByLinkV3
$PYTHON -m $MODULE 'iam-public-verify-user-by-link-v3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 340 'PublicVerifyUserByLinkV3' test.out

#- 341 PlatformAuthenticateSAMLV3Handler
$PYTHON -m $MODULE 'iam-platform-authenticate-samlv3-handler' \
    'pN8vqhPmlYgFAu9g' \
    'D8vsiDfzK1gMLvJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 341 'PlatformAuthenticateSAMLV3Handler' test.out

#- 342 LoginSSOClient
$PYTHON -m $MODULE 'iam-login-sso-client' \
    'KqSZCanZaGzamJ8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 342 'LoginSSOClient' test.out

#- 343 LogoutSSOClient
$PYTHON -m $MODULE 'iam-logout-sso-client' \
    'Z6lV9zpsDX7CWEoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 343 'LogoutSSOClient' test.out

#- 344 RequestTargetTokenResponseV3
$PYTHON -m $MODULE 'iam-request-target-token-response-v3' \
    'K3yLZSpydGfNnNFM' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 344 'RequestTargetTokenResponseV3' test.out

#- 345 UpgradeAndAuthenticateForwardV3
$PYTHON -m $MODULE 'iam-upgrade-and-authenticate-forward-v3' \
    'fXpIPlcaufemZ4xl' \
    'GtWc5UcGIGpI8Yhy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 345 'UpgradeAndAuthenticateForwardV3' test.out

#- 346 AdminListInvitationHistoriesV4
$PYTHON -m $MODULE 'iam-admin-list-invitation-histories-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 346 'AdminListInvitationHistoriesV4' test.out

#- 347 AdminGetDevicesByUserV4
$PYTHON -m $MODULE 'iam-admin-get-devices-by-user-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 347 'AdminGetDevicesByUserV4' test.out

#- 348 AdminGetBannedDevicesV4
$PYTHON -m $MODULE 'iam-admin-get-banned-devices-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 348 'AdminGetBannedDevicesV4' test.out

#- 349 AdminGetUserDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-user-device-bans-v4' \
    'HkINdPYamt1NNvdm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUserDeviceBansV4' test.out

#- 350 AdminBanDeviceV4
$PYTHON -m $MODULE 'iam-admin-ban-device-v4' \
    '{"comment": "y7qa1StMbwcUsu3g", "deviceId": "J0yHA6KDH87AmGMv", "deviceType": "ChuhxZJsDNCQEtOn", "enabled": true, "endDate": "j4OhaAiWk4TKx1WR", "ext": {"jiCokzg7q7bMwxVA": {}, "ujRx0pyulY8igLWA": {}, "7yUanMI437Ne6WvR": {}}, "reason": "NtbN9Eos8o1PdTDq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 350 'AdminBanDeviceV4' test.out

#- 351 AdminGetDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-get-device-ban-v4' \
    'm0SXzXNqw2oEptJs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 351 'AdminGetDeviceBanV4' test.out

#- 352 AdminUpdateDeviceBanV4
$PYTHON -m $MODULE 'iam-admin-update-device-ban-v4' \
    '{"enabled": false}' \
    'nCRn6spzE0Dj97Ar' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 352 'AdminUpdateDeviceBanV4' test.out

#- 353 AdminGenerateReportV4
$PYTHON -m $MODULE 'iam-admin-generate-report-v4' \
    'jpd7IRveArOFED1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 353 'AdminGenerateReportV4' test.out

#- 354 AdminGetDeviceTypesV4
$PYTHON -m $MODULE 'iam-admin-get-device-types-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 354 'AdminGetDeviceTypesV4' test.out

#- 355 AdminGetDeviceBansV4
$PYTHON -m $MODULE 'iam-admin-get-device-bans-v4' \
    'AfVZhADFM15pfl1N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 355 'AdminGetDeviceBansV4' test.out

#- 356 AdminDecryptDeviceV4
eval_tap 0 356 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 357 AdminUnbanDeviceV4
$PYTHON -m $MODULE 'iam-admin-unban-device-v4' \
    '2CNDu3DpGXJrOgVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 357 'AdminUnbanDeviceV4' test.out

#- 358 AdminGetUsersByDeviceV4
$PYTHON -m $MODULE 'iam-admin-get-users-by-device-v4' \
    'rneQPU35uuCoR3Wc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 358 'AdminGetUsersByDeviceV4' test.out

#- 359 AdminGetNamespaceInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 359 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 360 AdminGetNamespaceUserInvitationHistoryV4
$PYTHON -m $MODULE 'iam-admin-get-namespace-user-invitation-history-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 360 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 361 AdminCreateTestUsersV4
$PYTHON -m $MODULE 'iam-admin-create-test-users-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "j3UqRICnmZxob6ve", "policyId": "pvgW3Vmnz3WsgPS6", "policyVersionId": "R3Uev7bCsylPZDz1"}, {"isAccepted": false, "localizedPolicyVersionId": "vHbcJX1mqJ4BtZCH", "policyId": "dlmOzx9DrwT5dJMD", "policyVersionId": "gZPQtuRIVY69dhSr"}, {"isAccepted": true, "localizedPolicyVersionId": "JiNweUidBVB2vTyC", "policyId": "482FeT76mWyDrmG0", "policyVersionId": "FHQOjtRg7ST2UVRJ"}], "count": 81, "userInfo": {"country": "GCxmJgOQkViutBjV"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 361 'AdminCreateTestUsersV4' test.out

#- 362 AdminCreateUserV4
$PYTHON -m $MODULE 'iam-admin-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "os6ZMGM14H49GbRH", "policyId": "eTMH4jK8hWOlHrqy", "policyVersionId": "BElA4m1Ywb6nMhhS"}, {"isAccepted": true, "localizedPolicyVersionId": "wXeArPe089cqMuV8", "policyId": "MLxiTO3GhLJ2qx2h", "policyVersionId": "93yz3Y7YtgdQMhzp"}, {"isAccepted": false, "localizedPolicyVersionId": "RhRmllqqWYgDWbrt", "policyId": "w6qiRU6n8IKPZ1kp", "policyVersionId": "SeRooa84wgi9Qjy4"}], "authType": "EMAILPASSWD", "code": "tkYsyCJFj0ayzojV", "country": "NIrqZCtbJmJSU0ag", "dateOfBirth": "O0PXHCyo70kyuutj", "displayName": "jQDfdr0GXMgSK5Yx", "emailAddress": "6dbDNBB9LNziCP1x", "password": "QygVqAioKka1tx56", "passwordMD5Sum": "AwxAJU0XOoXFpKZ7", "reachMinimumAge": true, "uniqueDisplayName": "itLhI0sqjfua9x08", "username": "SJmn2gM2q6wuaHln"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 362 'AdminCreateUserV4' test.out

#- 363 AdminBulkUpdateUserAccountTypeV4
$PYTHON -m $MODULE 'iam-admin-bulk-update-user-account-type-v4' \
    '{"testAccount": false, "userIds": ["14f0XIJh3uxrBGEu", "meTG434DmlbwWuZp", "KPB4rzvo2R5Q7tM4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 363 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 364 AdminBulkCheckValidUserIDV4
$PYTHON -m $MODULE 'iam-admin-bulk-check-valid-user-idv4' \
    '{"userIds": ["YbPsF33KhfoL7PlF", "t47mQAQQzQAxQ8GR", "gWKOBJYYXgFmEZ8k"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 364 'AdminBulkCheckValidUserIDV4' test.out

#- 365 AdminUpdateUserV4
$PYTHON -m $MODULE 'iam-admin-update-user-v4' \
    '{"avatarUrl": "WtzrSIfMjxzBwWKz", "country": "JldpqtAlzVR0Wqkb", "dateOfBirth": "KYSr7IVc2WJyX67v", "displayName": "7JTcrppNGl78VMGk", "languageTag": "3b5E1GgAqoQkgiht", "skipLoginQueue": false, "tags": ["Nzr8kTl05oiubu5H", "Hlb7VI1cHNU3pvbp", "yJTgwl3ZOMpzNQDt"], "uniqueDisplayName": "QNlDFMazvRX5v3UC", "userName": "obMU8bzcaf0Qv0dF"}' \
    'MnEcDHueqAKTjdRp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 365 'AdminUpdateUserV4' test.out

#- 366 AdminUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-admin-update-user-email-address-v4' \
    '{"code": "gYeuitqLYJ7E9mP2", "emailAddress": "Be9WZ9kuWMnRcGzb"}' \
    'D5iC34s0kTiXwPjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 366 'AdminUpdateUserEmailAddressV4' test.out

#- 367 AdminDisableUserMFAV4
$PYTHON -m $MODULE 'iam-admin-disable-user-mfav4' \
    '{"factor": "8E3wXz4Q1L3hAG9x", "mfaToken": "OOi4DVUYo37I8Mgh"}' \
    '1DJARpi5KzpbDPfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableUserMFAV4' test.out

#- 368 AdminGetUserMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-user-mfa-status-v4' \
    'dGvodrl6UOwYZJq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 368 'AdminGetUserMFAStatusV4' test.out

#- 369 AdminListUserRolesV4
$PYTHON -m $MODULE 'iam-admin-list-user-roles-v4' \
    'OJhzlgtX87XuWOIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 369 'AdminListUserRolesV4' test.out

#- 370 AdminUpdateUserRoleV4
$PYTHON -m $MODULE 'iam-admin-update-user-role-v4' \
    '{"assignedNamespaces": ["QwptcvroohLb6q3F", "16PO9YdwqEszRnwV", "X2rvVr6DpLOyrgsL"], "roleId": "ZV9arTxBgnOqH9ly"}' \
    'v8wx2JosSHLipk5N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 370 'AdminUpdateUserRoleV4' test.out

#- 371 AdminAddUserRoleV4
$PYTHON -m $MODULE 'iam-admin-add-user-role-v4' \
    '{"assignedNamespaces": ["6e79zCfL2ar4zJmB", "2wifDA7LpND5zXLh", "rmEeBwTzs9QmLReE"], "roleId": "Z0r6n6anryoVkl4t"}' \
    'ChuDibBIH1dyZPHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 371 'AdminAddUserRoleV4' test.out

#- 372 AdminRemoveUserRoleV4
$PYTHON -m $MODULE 'iam-admin-remove-user-role-v4' \
    '{"assignedNamespaces": ["YHKqpl1Xk1CdFvYq", "foYzBc16XXXuoJGX", "CyzA8a5uh1LdVOaW"], "roleId": "OjRinmMTxEz6bdDF"}' \
    'DqRMyTZOXYRC3gIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 372 'AdminRemoveUserRoleV4' test.out

#- 373 AdminGetRolesV4
$PYTHON -m $MODULE 'iam-admin-get-roles-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 373 'AdminGetRolesV4' test.out

#- 374 AdminCreateRoleV4
$PYTHON -m $MODULE 'iam-admin-create-role-v4' \
    '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "JBlzH9CrXX7cBfnj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 374 'AdminCreateRoleV4' test.out

#- 375 AdminGetRoleV4
$PYTHON -m $MODULE 'iam-admin-get-role-v4' \
    'lfFFTD6KSEeAEd96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 375 'AdminGetRoleV4' test.out

#- 376 AdminDeleteRoleV4
$PYTHON -m $MODULE 'iam-admin-delete-role-v4' \
    'gzUY6EuVZznqQVYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 376 'AdminDeleteRoleV4' test.out

#- 377 AdminUpdateRoleV4
$PYTHON -m $MODULE 'iam-admin-update-role-v4' \
    '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "CuA2GelFQyuDWvfe"}' \
    '4Hp9aCLekZch7a3b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 377 'AdminUpdateRoleV4' test.out

#- 378 AdminUpdateRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-update-role-permissions-v4' \
    '{"permissions": [{"action": 49, "resource": "hFYqZQAUm9m9ht4J", "schedAction": 38, "schedCron": "p7LL7Yqjh4lgGGsr", "schedRange": ["Jv0EyLkZej5voHh0", "KRDJjPEF1LpvoOxT", "54t5Ffna72ji4B86"]}, {"action": 81, "resource": "jAAxGZ794ngDQya3", "schedAction": 7, "schedCron": "p1XL7HL2nKoPXxLM", "schedRange": ["tU6hLliy7em6ox8O", "9f2ojEQrZ645LOpa", "GFJniJl9RPULWpWw"]}, {"action": 95, "resource": "VHZOulL5KfkSA0am", "schedAction": 68, "schedCron": "euR4MhLQs8XliOoW", "schedRange": ["qixFdv5aDRSnCrIQ", "2kChyafmo2nIKr9k", "rylalbZWuO0OVwGU"]}]}' \
    'gR3PEWI0N4k2W2ca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 378 'AdminUpdateRolePermissionsV4' test.out

#- 379 AdminAddRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-add-role-permissions-v4' \
    '{"permissions": [{"action": 34, "resource": "nNFpYXwE37QpBIY8", "schedAction": 77, "schedCron": "g0zAUzpliq50demc", "schedRange": ["4rS3d2v2ibO04gNm", "B9r9MA5lA6x0lY16", "PWsrsxYq77iFOu0y"]}, {"action": 2, "resource": "EOp7hzPCxvetFhAg", "schedAction": 55, "schedCron": "AuVZKYNaKhi81nO4", "schedRange": ["RNjvO8rZ5NL7Ebbu", "rWcSjdGGqd31L6Kq", "JTL11T4vlBRDjj3F"]}, {"action": 74, "resource": "qMgf2PaNJqIMDWJU", "schedAction": 99, "schedCron": "RJRONKh0R0RXJ6an", "schedRange": ["zAeqD1HlhQ1rqjRE", "CHyhLYGnvEdCjYsn", "h0Y0rQluvKziVTCP"]}]}' \
    'TrqHc7vqaXxxiGOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 379 'AdminAddRolePermissionsV4' test.out

#- 380 AdminDeleteRolePermissionsV4
$PYTHON -m $MODULE 'iam-admin-delete-role-permissions-v4' \
    '["XbWC2k23JxAI3kOX", "wHnS2VOESYx49M1J", "dtImLI5eTuHqCNtV"]' \
    'lNaGzoqpAFVT8PkW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 380 'AdminDeleteRolePermissionsV4' test.out

#- 381 AdminListAssignedUsersV4
$PYTHON -m $MODULE 'iam-admin-list-assigned-users-v4' \
    '7ouFIdlTuousRcrh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 381 'AdminListAssignedUsersV4' test.out

#- 382 AdminAssignUserToRoleV4
$PYTHON -m $MODULE 'iam-admin-assign-user-to-role-v4' \
    '{"assignedNamespaces": ["XNAh3Cu4ou029lD9", "VLXNwkZWTbX0PZb0", "I9Qm4xKek7ZAZJCk"], "namespace": "1fizRJy5JoIlHjTZ", "userId": "4mDmXZIBTi05akxB"}' \
    'YozWzUW4RDVM8Y4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 382 'AdminAssignUserToRoleV4' test.out

#- 383 AdminRevokeUserFromRoleV4
$PYTHON -m $MODULE 'iam-admin-revoke-user-from-role-v4' \
    '{"namespace": "cXDH8RZqUjELC82u", "userId": "P1nMUDAKQEkOvO52"}' \
    'VTPFFuLWL0HQkTuy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 383 'AdminRevokeUserFromRoleV4' test.out

#- 384 AdminInviteUserNewV4
$PYTHON -m $MODULE 'iam-admin-invite-user-new-v4' \
    '{"assignedNamespaces": ["4fU6Ejumf9ltGde7", "x4luTsEk9TNqSiFJ", "yMByoRKUrvfixr7U"], "emailAddresses": ["FzLzGaWok215MnSN", "TPMRaYf8Chh5tiLs", "XIOSE2JSDRlSX5uO"], "isAdmin": false, "isNewStudio": true, "languageTag": "Z3Msm86Jr35oZQ3W", "namespace": "cFld5DKwJoCrYrlO", "roleId": "XZN7MoQZDN1sjuHX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 384 'AdminInviteUserNewV4' test.out

#- 385 AdminUpdateMyUserV4
$PYTHON -m $MODULE 'iam-admin-update-my-user-v4' \
    '{"avatarUrl": "DU9ZFHISuKMr6e9V", "country": "Ki3lHZdnYzFYEnOA", "dateOfBirth": "6gFO3zfSvvmLgxlU", "displayName": "5MdUdF7gHdIf6eMd", "languageTag": "0iVUmBrFwFIESxo8", "skipLoginQueue": true, "tags": ["knpCHXIr8JndNzIi", "CZiPRCujrja26Ygd", "7A1555BielNg6kfR"], "uniqueDisplayName": "gfnBT7OdjPnywuIo", "userName": "LpkJEPfnaESuOM4o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 385 'AdminUpdateMyUserV4' test.out

#- 386 AdminDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-disable-my-authenticator-v4' \
    '{"factor": "lKFVsSfgNQjKhrrr", "mfaToken": "StCg99ejNACAFAJl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 386 'AdminDisableMyAuthenticatorV4' test.out

#- 387 AdminEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-admin-enable-my-authenticator-v4' \
    'cWkS5jnhMZsQ8CVs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableMyAuthenticatorV4' test.out

#- 388 AdminGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-admin-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 388 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 389 AdminGetMyBackupCodesV4
eval_tap 0 389 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 390 AdminGenerateMyBackupCodesV4
eval_tap 0 390 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 391 AdminDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-disable-my-backup-codes-v4' \
    '{"factor": "HXHYBx7KkpRAaivn", "mfaToken": "5yFNSoKf7tdmVppu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 391 'AdminDisableMyBackupCodesV4' test.out

#- 392 AdminDownloadMyBackupCodesV4
eval_tap 0 392 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 393 AdminEnableMyBackupCodesV4
eval_tap 0 393 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 AdminGetBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 394 'AdminGetBackupCodesV4' test.out

#- 395 AdminGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 395 'AdminGenerateBackupCodesV4' test.out

#- 396 AdminEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-admin-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 396 'AdminEnableBackupCodesV4' test.out

#- 397 AdminChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-admin-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 397 'AdminChallengeMyMFAV4' test.out

#- 398 AdminSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-admin-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 398 'AdminSendMyMFAEmailCodeV4' test.out

#- 399 AdminDisableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-disable-my-email-v4' \
    '{"factor": "u6acpUdn8X5IZjtF", "mfaToken": "T6Bs8OO0CVqXF6bM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 399 'AdminDisableMyEmailV4' test.out

#- 400 AdminEnableMyEmailV4
$PYTHON -m $MODULE 'iam-admin-enable-my-email-v4' \
    'zRd2Z2WjutGAptSE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 400 'AdminEnableMyEmailV4' test.out

#- 401 AdminGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-admin-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 401 'AdminGetMyEnabledFactorsV4' test.out

#- 402 AdminMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-admin-make-factor-my-default-v4' \
    'S09ZcFGPCokMwrtV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 402 'AdminMakeFactorMyDefaultV4' test.out

#- 403 AdminGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-admin-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 403 'AdminGetMyOwnMFAStatusV4' test.out

#- 404 AdminGetMyMFAStatusV4
eval_tap 0 404 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 405 AdminInviteUserV4
eval_tap 0 405 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 406 AuthenticationWithPlatformLinkV4
$PYTHON -m $MODULE 'iam-authentication-with-platform-link-v4' \
    'vGhHzNdHMJys9gtF' \
    'xWSkvzQZjQrgnXc8' \
    '7G37jhABEz5T57IC' \
    'JiWEPnZsQ3NsS8Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 406 'AuthenticationWithPlatformLinkV4' test.out

#- 407 GenerateTokenByNewHeadlessAccountV4
$PYTHON -m $MODULE 'iam-generate-token-by-new-headless-account-v4' \
    'yzvujT8aEay0LM1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 407 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 408 Verify2faCodeV4
$PYTHON -m $MODULE 'iam-verify2fa-code-v4' \
    'pMDZuDLXNscwbXgd' \
    'wQnMuReen3aYjhar' \
    '5GRzOAfOXbaEHFX0' \
    'true' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 408 'Verify2faCodeV4' test.out

#- 409 PlatformTokenGrantV4
$PYTHON -m $MODULE 'iam-platform-token-grant-v4' \
    '28TvyyZjEMbPRNKU' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 409 'PlatformTokenGrantV4' test.out

#- 410 SimultaneousLoginV4
$PYTHON -m $MODULE 'iam-simultaneous-login-v4' \
    'steam' \
    '60X6LS9dYe42oics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 410 'SimultaneousLoginV4' test.out

#- 411 TokenGrantV4
$PYTHON -m $MODULE 'iam-token-grant-v4' \
    'password' \
    --login_with_auth "Basic YWRtaW46YWRtaW4=" \
    > test.out 2>&1
eval_tap $? 411 'TokenGrantV4' test.out

#- 412 RequestTargetTokenResponseV4
$PYTHON -m $MODULE 'iam-request-target-token-response-v4' \
    'YJevKKJR5KWRgHuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 412 'RequestTargetTokenResponseV4' test.out

#- 413 PublicListUserIDByPlatformUserIDsV4
$PYTHON -m $MODULE 'iam-public-list-user-id-by-platform-user-i-ds-v4' \
    '{"pidType": "JEAS7pSDlIS4N3VR", "platformUserIds": ["ydtvWZZFDNIc86TK", "j3grgVdqSpg9xpXC", "h79kxpJyTba2Sx7l"]}' \
    'PUWhfLYtrkZ2V3jz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 413 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 414 PublicGetUserByPlatformUserIDV4
$PYTHON -m $MODULE 'iam-public-get-user-by-platform-user-idv4' \
    'XzilslRzP96yJ7Rb' \
    'X8fkG3hcRbcSuSkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 414 'PublicGetUserByPlatformUserIDV4' test.out

#- 415 PublicCreateTestUserV4
$PYTHON -m $MODULE 'iam-public-create-test-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wzQJjmhy4f9F9usH", "policyId": "1ByGD8DDRW0KNwlK", "policyVersionId": "cveutOHZ2aWSL11m"}, {"isAccepted": true, "localizedPolicyVersionId": "t8zG7Mwy6qt1KRlD", "policyId": "GxhO1YbPoWmG714Z", "policyVersionId": "A04yxGcMcYyromMV"}, {"isAccepted": true, "localizedPolicyVersionId": "PXPlSv6kWXBTTodp", "policyId": "LcEI0mWFWKlSwI38", "policyVersionId": "LyDyLTQxmA6nDD3E"}], "authType": "EMAILPASSWD", "country": "feJdwskeVjYAe1CN", "dateOfBirth": "RQX4T37n6lgMV9tM", "displayName": "XN2kDg7INFTJO4FU", "emailAddress": "T152zR0PBTEvM3Tg", "password": "MsAS5t3TYXNAGl1x", "passwordMD5Sum": "y1H8Ag2XY2TnyPCV", "uniqueDisplayName": "sWzhPIeHkoUSeT3l", "username": "v51D9Vwsfzatv4Jz", "verified": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 415 'PublicCreateTestUserV4' test.out

#- 416 PublicCreateUserV4
$PYTHON -m $MODULE 'iam-public-create-user-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VNAJbSLBzqs2u1En", "policyId": "tDzkQLgWQHXc3bRY", "policyVersionId": "KbJGFP8HZNLJ7aPb"}, {"isAccepted": false, "localizedPolicyVersionId": "MRrbKjoifZAWt13I", "policyId": "SgdwAum4b3t1Ph8x", "policyVersionId": "HfEAlyda8FPutbAg"}, {"isAccepted": true, "localizedPolicyVersionId": "GHo6ESwn8otu3o1B", "policyId": "2P8cdPJAnmCFUZdH", "policyVersionId": "9CHHozRud9g15dSB"}], "authType": "EMAILPASSWD", "code": "NpmibPCLiJaHXEyu", "country": "LQOO6qVUihFznsLF", "dateOfBirth": "P3013gsIOArelbYw", "displayName": "YTtGsRNij1bUAIrK", "emailAddress": "Yw673JvA3stZ6FN0", "password": "omme6HiOrbuq9cXa", "passwordMD5Sum": "r8FKACMfaESKKo0R", "reachMinimumAge": true, "uniqueDisplayName": "MIxqQycDpbOcYim2", "username": "syYc8YuKlQjnj5Qj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 416 'PublicCreateUserV4' test.out

#- 417 CreateUserFromInvitationV4
$PYTHON -m $MODULE 'iam-create-user-from-invitation-v4' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2W89U6PA5Byr1VJK", "policyId": "sNpin9ZAg5mDVmep", "policyVersionId": "TMiQqOA7WiIi8k4T"}, {"isAccepted": false, "localizedPolicyVersionId": "A6suz0JPLhBV8H4R", "policyId": "s8p9AflDjkRQna4a", "policyVersionId": "fJC9mgf0blFr8NUm"}, {"isAccepted": true, "localizedPolicyVersionId": "dS49CybTerX6wW5H", "policyId": "LYxM5DN6DJmnjBd7", "policyVersionId": "q6U3V1i7ip9ibQlR"}], "authType": "EMAILPASSWD", "code": "MWoB0LkwHKKIT2D8", "country": "YJKnP2TmDSwAt1UG", "dateOfBirth": "NieMe0c6eA8xCvVN", "displayName": "gS0wUvETmRwwaH21", "emailAddress": "xuey3fB1KN5EzSmB", "password": "6aO1JqypofIkM1Wv", "passwordMD5Sum": "c2CcOra4RXenU5na", "reachMinimumAge": false, "uniqueDisplayName": "6UuNARNfA4hpoNUA", "username": "wafK1QxxK2sBBkQz"}' \
    '8nIgoYpZYIYto2cp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 417 'CreateUserFromInvitationV4' test.out

#- 418 PublicUpdateUserV4
$PYTHON -m $MODULE 'iam-public-update-user-v4' \
    '{"avatarUrl": "XUnj1kXAEnU9CvpI", "country": "jJ6tB2fqN6D76apW", "dateOfBirth": "4CsuQx2nME1E8lGI", "displayName": "gW2AWqhlJfHgWSAj", "languageTag": "BmziLkAEWkqMo2uv", "uniqueDisplayName": "4G0hb2TC5zbxqSMQ", "userName": "f3ZXRgmEXKPavNUD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 418 'PublicUpdateUserV4' test.out

#- 419 PublicUpdateUserEmailAddressV4
$PYTHON -m $MODULE 'iam-public-update-user-email-address-v4' \
    '{"code": "slWRgXzKcDEz6ivQ", "emailAddress": "vlpRKagGd8OJWfXg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 419 'PublicUpdateUserEmailAddressV4' test.out

#- 420 PublicUpgradeHeadlessAccountWithVerificationCodeV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-with-verification-code-v4' \
    '{"code": "Bkof2DgN1OHBaKIf", "country": "5hoyD0oT4csEU6rw", "dateOfBirth": "lyAZXRltXTRz9WtM", "displayName": "Mb9e3S9biXun5fD0", "emailAddress": "BBCts02Kgz1gL82A", "password": "Nle3vQP0F7CVBRFO", "reachMinimumAge": false, "uniqueDisplayName": "8D7APHhihwdNSBKp", "username": "qJ8V1kQHisGldXgq", "validateOnly": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 420 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 421 PublicUpgradeHeadlessAccountV4
$PYTHON -m $MODULE 'iam-public-upgrade-headless-account-v4' \
    '{"dateOfBirth": "vAi5e5Cp2Id8Pqgb", "displayName": "ZMgBinMuWrJOAvHx", "emailAddress": "G7UhRxqteme7V0mE", "password": "4XANjqP7L1mgHDq7", "uniqueDisplayName": "oo2SQp9UXJYEGGpt", "username": "55fVsBfrc4OJ06MA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 421 'PublicUpgradeHeadlessAccountV4' test.out

#- 422 PublicDisableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-disable-my-authenticator-v4' \
    '{"factor": "INAypeu3ZwgLF3XS", "mfaToken": "MYkGVjcYe2wwruEu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 422 'PublicDisableMyAuthenticatorV4' test.out

#- 423 PublicEnableMyAuthenticatorV4
$PYTHON -m $MODULE 'iam-public-enable-my-authenticator-v4' \
    '9pKFWxMrOrO7m2fU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableMyAuthenticatorV4' test.out

#- 424 PublicGenerateMyAuthenticatorKeyV4
$PYTHON -m $MODULE 'iam-public-generate-my-authenticator-key-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 424 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 425 PublicGetMyBackupCodesV4
eval_tap 0 425 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 426 PublicGenerateMyBackupCodesV4
eval_tap 0 426 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 427 PublicDisableMyBackupCodesV4
$PYTHON -m $MODULE 'iam-public-disable-my-backup-codes-v4' \
    '{"factor": "VM4vgvN5a9nlua2q", "mfaToken": "F5WhoaEpbMKCe8F6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyBackupCodesV4' test.out

#- 428 PublicDownloadMyBackupCodesV4
eval_tap 0 428 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 429 PublicEnableMyBackupCodesV4
eval_tap 0 429 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 430 PublicGetBackupCodesV4
$PYTHON -m $MODULE 'iam-public-get-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 430 'PublicGetBackupCodesV4' test.out

#- 431 PublicGenerateBackupCodesV4
$PYTHON -m $MODULE 'iam-public-generate-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 431 'PublicGenerateBackupCodesV4' test.out

#- 432 PublicEnableBackupCodesV4
$PYTHON -m $MODULE 'iam-public-enable-backup-codes-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 432 'PublicEnableBackupCodesV4' test.out

#- 433 PublicChallengeMyMFAV4
$PYTHON -m $MODULE 'iam-public-challenge-my-mfav4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 433 'PublicChallengeMyMFAV4' test.out

#- 434 PublicRemoveTrustedDeviceV4
$PYTHON -m $MODULE 'iam-public-remove-trusted-device-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 434 'PublicRemoveTrustedDeviceV4' test.out

#- 435 PublicSendMyMFAEmailCodeV4
$PYTHON -m $MODULE 'iam-public-send-my-mfa-email-code-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 435 'PublicSendMyMFAEmailCodeV4' test.out

#- 436 PublicDisableMyEmailV4
$PYTHON -m $MODULE 'iam-public-disable-my-email-v4' \
    '{"factor": "OE3PKy2vHH6XrTj3", "mfaToken": "i1nC0J9A8DUtbT9N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 436 'PublicDisableMyEmailV4' test.out

#- 437 PublicEnableMyEmailV4
$PYTHON -m $MODULE 'iam-public-enable-my-email-v4' \
    'imqnzt0awizcaXFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 437 'PublicEnableMyEmailV4' test.out

#- 438 PublicGetMyEnabledFactorsV4
$PYTHON -m $MODULE 'iam-public-get-my-enabled-factors-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 438 'PublicGetMyEnabledFactorsV4' test.out

#- 439 PublicMakeFactorMyDefaultV4
$PYTHON -m $MODULE 'iam-public-make-factor-my-default-v4' \
    'kKf2QcbDNp9wVglo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 439 'PublicMakeFactorMyDefaultV4' test.out

#- 440 PublicGetMyOwnMFAStatusV4
$PYTHON -m $MODULE 'iam-public-get-my-own-mfa-status-v4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 440 'PublicGetMyOwnMFAStatusV4' test.out

#- 441 PublicGetMyMFAStatusV4
eval_tap 0 441 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 442 PublicGetUserPublicInfoByUserIdV4
$PYTHON -m $MODULE 'iam-public-get-user-public-info-by-user-id-v4' \
    'Pqugy2zhY3CjOqLP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 442 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 443 PublicInviteUserV4
$PYTHON -m $MODULE 'iam-public-invite-user-v4' \
    '{"additionalData": "kNLoeCULsEptE9wd", "emailAddress": "sebmIkQbE3nPbd7Y", "languageTag": "NYQJL8jGfdMvM0zE", "namespace": "HmThs6Oydk9jSSY0", "namespaceDisplayName": "aqjjeExTo07XGD7r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 443 'PublicInviteUserV4' test.out

#- 444 PublicUpgradeHeadlessWithCodeV4Forward
$PYTHON -m $MODULE 'iam-public-upgrade-headless-with-code-v4-forward' \
    '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dvtuyipF1FB9RNF3", "policyId": "G6sPweMmOIXU6IcF", "policyVersionId": "kTWMTXNI4WIT2qYu"}, {"isAccepted": true, "localizedPolicyVersionId": "8Uxptb2o5jdTreVK", "policyId": "h6flE9FaNdFDCH0B", "policyVersionId": "MCufX5Ln9YKDyW9w"}, {"isAccepted": false, "localizedPolicyVersionId": "SXGvHGabfCgecNkn", "policyId": "WoEbRoZQ4VuKeTQQ", "policyVersionId": "XDNtjgypGgBtsGOx"}], "code": "HfW3WBHUGCPEvc97", "country": "uDKDBhngmXpNaXSg", "dateOfBirth": "g2yJzaaUc8p87eTT", "displayName": "m092rucPAhnaYqSL", "emailAddress": "kr3tlvhwbpOwvWyV", "password": "ZbXXgvJKjvhZn4m8", "reachMinimumAge": true, "uniqueDisplayName": "8MGlijaR3VVk7nD0", "username": "9WBTm7Hy1AvjH8TO", "validateOnly": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 444 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
