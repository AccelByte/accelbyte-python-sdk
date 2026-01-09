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
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
social-get-stat-cycles --login_with_auth "Bearer foo"
social-create-stat-cycle '{"cycleType": "WEEKLY", "description": "Dc09nIW0Oaiw9B0D", "end": "1999-02-03T00:00:00Z", "id": "ktQG0h5JAav5kRa6", "name": "2WopBJHPtcDs8bBZ", "resetDate": 76, "resetDay": 59, "resetMonth": 70, "resetTime": "XLx8bbgorQeFbQ1g", "seasonPeriod": 32, "start": "1979-10-13T00:00:00Z"}' --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle '{"cycleIds": ["oDLjWjkY1aXlFcDt", "bPngUNB1vRodwpzS", "6DaDpv8N7ZQVqGj6"]}' --login_with_auth "Bearer foo"
social-export-stat-cycle --login_with_auth "Bearer foo"
social-import-stat-cycle --login_with_auth "Bearer foo"
social-get-stat-cycle 'gOjchIua5tWEIC32' --login_with_auth "Bearer foo"
social-update-stat-cycle '{"cycleType": "DAILY", "description": "gY1TXp38zsCTCrbC", "end": "1971-12-10T00:00:00Z", "name": "uL0Sly6XM4OI18mA", "resetDate": 88, "resetDay": 76, "resetMonth": 78, "resetTime": "czNIicXm7agSrjJW", "seasonPeriod": 83, "start": "1971-12-17T00:00:00Z"}' 'REAu2D6QVKNCWP75' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'TB0i7pKxR8dl0zRV' --login_with_auth "Bearer foo"
social-bulk-add-stats '{"statCodes": ["W4EZG9m0XcgGVbMq", "SszE8GHavj7AorKs", "xwkosAVerXpc1C8X"]}' 'fwHuKeb9l3rGN9A3' --login_with_auth "Bearer foo"
social-stop-stat-cycle 'sNm84hddSpHt0P7M' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'IIR7CkyF6C7duuyZ' '0GhDogqrhBRd8lDR' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item '[{"inc": 0.9508467347488675, "statCode": "qVNPRZYdFLIAjGGJ", "userId": "ddVCvu9vx5KQ7KYn"}, {"inc": 0.5503561783847083, "statCode": "uMBvaO35llzQRaT5", "userId": "kPxUfofvnnSuB0y5"}, {"inc": 0.7753086850269054, "statCode": "UlrMdI4sNveabntB", "userId": "SxTeIv53HGCiljvj"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value '[{"inc": 0.593530524265602, "statCode": "oyD6SCwGrncqmLtj", "userId": "QHAf8TgoNm03VLis"}, {"inc": 0.7710944775273898, "statCode": "6zwPuo3td6TC6I3l", "userId": "MjGSWN2laRlxfcjH"}, {"inc": 0.08696964881724256, "statCode": "YakUCTqGkE7wcWfD", "userId": "slpJSqGAXQ0yYoNR"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'Kd3IL5TAQ6iiPlSC' '["2uE4o5Vwdo3fePqI", "JA8IHtrkmu0hpDDW", "VAla2l5BYNtIuS5S"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item '[{"statCode": "5XUdjsoqwGyzzWi9", "userId": "gwQYv7t1o7TTr1Dm"}, {"statCode": "rhZv15T7quIOvBMc", "userId": "aYmvCkGZ5dAgqxpB"}, {"statCode": "FmaLoxozr6wfNPX2", "userId": "bOItRMvqtlB2jJCS"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat '{"capCycleOverride": false, "cycleIds": ["5SepjChB3V0v52Dl", "79ZZPYGu0rdlgdWy", "OtXi3choQrpOsDBU"], "cycleOverrides": [{"cycleId": "ym6puQ23xoJ8aeCn", "maximum": 0.008015318635925528, "minimum": 0.6127826328044578}, {"cycleId": "pUKp44YUDjasWIPU", "maximum": 0.34991329621526146, "minimum": 0.19996545679792355}, {"cycleId": "EejtGeoyIPa8ZRrv", "maximum": 0.15264149132678073, "minimum": 0.15660600519286194}], "defaultValue": 0.9639393332061913, "description": "il35MXbN9oCMNqq9", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.5494607844760753, "minimum": 0.3830343397717245, "name": "jUkl535X3ateEKDp", "setAsGlobal": true, "setBy": "SERVER", "statCode": "b6i5lZC9xv32e8c5", "tags": ["csSovoqsZNBdte9N", "PubTDIHrvqAThuwj", "DUPVJf6c2Z0QZxfg"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'HpKKTlmVr9XuoJbR' --login_with_auth "Bearer foo"
social-get-stat 'FQSKVPHbn4Xxtu7L' --login_with_auth "Bearer foo"
social-delete-stat 'QRENjEEztx1WsYSi' --login_with_auth "Bearer foo"
social-update-stat '{"capCycleOverride": false, "cycleIds": ["Cx9Zw5D2L7vIYhGG", "lvPG6bFYReVHQipc", "qan0nSBJroav91GX"], "cycleOverrides": [{"cycleId": "SyEW4ZJJ42d3PBdd", "maximum": 0.6415406385582566, "minimum": 0.9834107062411301}, {"cycleId": "S48l9lyNApflxqMr", "maximum": 0.15070534010752035, "minimum": 0.8969884329934427}, {"cycleId": "oZk03QXcKMDYDDxH", "maximum": 0.7253143389194583, "minimum": 0.8280537397695681}], "defaultValue": 0.14893701811610782, "description": "tqXyJ58f7Gc26Sai", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.3736668978274773, "minimum": 0.40600380570279226, "name": "fTcyiuATus9hsfpF", "setAsGlobal": true, "setBy": "CLIENT", "tags": ["cSDG8aMVGLiBNrDj", "qoxcwgGLXpUL4pp2", "ncYAHdNzDmeIP6rO"], "visibility": "SHOWALL"}' '5cJcHm3SZLxoRDFu' --login_with_auth "Bearer foo"
social-get-stat-items 'uuySj29a9LJE8HoR' --login_with_auth "Bearer foo"
social-delete-tied-stat 'S1X2PFAAMwzHPxB1' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'UskYs4Yw20DOqOBS' 'C2DKHRuPMMWH8Yb3' --login_with_auth "Bearer foo"
social-get-user-stat-items '3T5UBJCjfcnLRfxe' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '[{"statCode": "CSz9WEi8KlloeH0J"}, {"statCode": "T1yduat2vQR3biBf"}, {"statCode": "su4jmsRE2w1yEkLg"}]' 'h3tIYt4SqYUTLDx9' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '[{"inc": 0.10358946754932674, "statCode": "IiDandpGT2t24aOM"}, {"inc": 0.1279585198513582, "statCode": "5eC3IHeHSKLCa3xr"}, {"inc": 0.0690155398903819, "statCode": "NDUWehwH3q31A806"}]' 'DJgas4b6z3LNUj7f' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '[{"inc": 0.06329427710661795, "statCode": "gLA84Z8YYk6QEgJj"}, {"inc": 0.4427188149715525, "statCode": "bEDoNf3n0hEoRCAc"}, {"inc": 0.09558144465134844, "statCode": "80zfFyabWAgIUXiI"}]' '07A68eaqC2J9jyEW' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '[{"statCode": "6GLbc0NaKDUL3sa1"}, {"statCode": "3lk1dQBHO86IlBhn"}, {"statCode": "etU4RwTqUXlTDBzO"}]' 'uYsaZA2yyd4mbqoO' --login_with_auth "Bearer foo"
social-create-user-stat-item 'fADMMAXFaY9eKa69' '9bRVhyaKwwrAP2aM' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'lu7WtjCtoYetOO84' '7g8OudOfjnCuHZ3c' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '{"inc": 0.9058766915850781}' '6IjGa23YvYmmDg7V' 'YPXIuvUYTZBRujIU' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '{"additionalData": {"E1Tq5jyAZvkRCMNF": {}, "Iurjh2imdb4rbkXj": {}, "0ZwsVC0gL97ZVJSP": {}}}' 'qJiwv1qlYB1RSKs6' 'gQxC3Gb7S0o4zGYY' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 '7KQI1AeFgPqaOkvo' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 '{"cycleIds": ["2grREOLx0KOww3HI", "1aolB4lkKB4EYOkQ", "1jMD3cym8xIfkOVW"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'CQLfl7MUBG7qtPu6' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 '4yAtURKLRkb738HG' 'S6rDgMdIIlhS1fSi' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item '[{"inc": 0.6194309801332272, "statCode": "9331m7Ta1PsKc50K", "userId": "v6ecnEevcAx2K2zk"}, {"inc": 0.70266392374966, "statCode": "enmPZnGBt4P7Wnbd", "userId": "SJtjX7ZshZyZl5x4"}, {"inc": 0.027527089446428343, "statCode": "RXBHUTrDzZSKscfO", "userId": "cYu3dpCROYqUiGKX"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value '[{"inc": 0.7741640891832536, "statCode": "FCmpo6sPwVOEDSJs", "userId": "EK5QpNhlI2iS5EpG"}, {"inc": 0.11368011488929797, "statCode": "hvXYck0upMzUYnb7", "userId": "6tFkEORV3bu1bNCt"}, {"inc": 0.805446585032919, "statCode": "7W40V6Do5sYadCCF", "userId": "rHHC3DpZxkrQDXuN"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 '[{"statCode": "FviMarv8mnfHK8CC", "userId": "mE2lPnsbD3SGEdlw"}, {"statCode": "uUccE536ugBp3HBv", "userId": "epnDCjgyJlXe36mg"}, {"statCode": "WjLfFmteue9nzJ6f", "userId": "H24T805tVg8JqU0j"}]' --login_with_auth "Bearer foo"
social-create-stat-1 '{"capCycleOverride": false, "cycleIds": ["pjvsugAOS7u8RiWy", "1jglaDXTvKCWwNTA", "erCSa8SRgwsAj1ik"], "cycleOverrides": [{"cycleId": "hd2wrS0uPdjhdinp", "maximum": 0.215402419626326, "minimum": 0.10228951106599649}, {"cycleId": "5BLy8wbhMssAHjap", "maximum": 0.5564536685751856, "minimum": 0.17726375362031255}, {"cycleId": "Y9Rf4wP57dBZNR88", "maximum": 0.8183943632941597, "minimum": 0.017269482860450158}], "defaultValue": 0.4544904640247678, "description": "tmKy8M9zVrjfGXZn", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.6898625787780174, "minimum": 0.7473945979563804, "name": "oY1GjlIIk0iKoTTS", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "YcmQbTU5JX8ccLjM", "tags": ["NYIWekp18lOC3mNq", "XJRk0eaKQDOJvrTe", "fglSs6g4iY9u02aC"], "visibility": "SHOWALL"}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items '7Bl0LcghVHfPEspx' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'whRON0bc1eMbEIjo' 'wLqc3ecjXJbZDKKo' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'xLE1Y3Dymtj3giPg' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '[{"statCode": "4x4yiPX6ues1Hhhk"}, {"statCode": "g1yLVbLFzHEP8cM4"}, {"statCode": "NTwr0KHaAsmTej52"}]' 'WKi6tArAURt9plCS' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'Vq8PdH6hJPUAc0RV' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '[{"inc": 0.3619279324621498, "statCode": "XgAgntLMCuaXBWQi"}, {"inc": 0.9423379967266184, "statCode": "BqPg4xr0lCancUZG"}, {"inc": 0.45315291519733336, "statCode": "HsZYoLfR1KtOv7Zy"}]' '0b65uvuKNuy0ytZQ' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '[{"inc": 0.9536531935834603, "statCode": "M6Nzy1adnSKOLFKx"}, {"inc": 0.858196051368173, "statCode": "dX4LuWJu3pDMUAee"}, {"inc": 0.8288483277277857, "statCode": "97SBROPYuG6XqP6o"}]' 'o7G73zdxTgOfnwId' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '[{"statCode": "lNa29fDLh741IslK"}, {"statCode": "HzGlLKWUtDQs61OQ"}, {"statCode": "AoxyyQpRWCiiPDGQ"}]' 'hNPEwiJCf2XJVrlz' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'qQls1ozhLVA3kE8j' 'KvgatOEBM70TdlNB' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'JYOmpu1VCarzBsV6' 'xnZ5Jrzzjrcaug6C' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '{"inc": 0.7836751184539907}' 'VG8SWP3glU6muswV' 'JnNnN7kAa7j0riFc' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '{"inc": 0.928834610140798}' 'HTHQIoVsGo7dwV9D' 'BqFKHQkETJyTlUrw' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'DTnoujQD4IEiH9Z5' 'qXn3aoRtlqOECohV' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 '[{"additionalData": {"iHA5CzgFSy8X1A3P": {}, "rIfapq5AAeMe4L3m": {}, "DWORBVXTIIJM9XsY": {}}, "additionalKey": "IIZxiXNMR9BgaWcF", "requestId": "X3SUBhyoTsMWPAxU", "statCode": "MkawaGpAyrIwMif3", "updateStrategy": "OVERRIDE", "userId": "gK1Np5nodqpLm7Fh", "value": 0.5714505255701021}, {"additionalData": {"BNXzAFdO0Khqf6ki": {}, "TdSGv2LFjAKY7Cbg": {}, "sWqFWZX7kPBom8F9": {}}, "additionalKey": "GLLTG8phc3n4iLoI", "requestId": "llKlpO2pqiXJF3WG", "statCode": "RaoQomSJC4DdrKF7", "updateStrategy": "OVERRIDE", "userId": "PLG59e0k5ZtX6wK7", "value": 0.6693850090234078}, {"additionalData": {"pUlcIW32iK7MGt1i": {}, "xY5rA1WoVeJIePF8": {}, "ZrQzP4zvtdxdbZUp": {}}, "additionalKey": "d6FJtHJ1pyVwyKQL", "requestId": "Y6FEO65Rb3z7CYLM", "statCode": "8IlsHqffnrfsGlfP", "updateStrategy": "INCREMENT", "userId": "ZgKg4uKxaCgcGLuC", "value": 0.9031408978210173}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'brWdTYCfHkIySok5' '["DiXZtLW87rGysryo", "d3dNQrmsApRA6HX3", "RwrKt2ecozL0TOg5"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items '4vCE48L5oLF6M4lN' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '[{"additionalData": {"a4JUMSHNgqRqCV7u": {}, "samANkZlOX9Sfo95": {}, "HgXqKhTPkwfLM9uS": {}}, "requestId": "ybRzWek2gZvRrvr0", "statCode": "n9d9lvccKMLhrTrc", "updateStrategy": "OVERRIDE", "value": 0.17729018246621575}, {"additionalData": {"OmvrAejcq2LgkQua": {}, "S7RBx3vim02jBOxr": {}, "ZDyvpcLYOWA8NjxO": {}}, "requestId": "naEok4nOOCzfsflh", "statCode": "jbngJOUn18G5MlfD", "updateStrategy": "MAX", "value": 0.248154714506733}, {"additionalData": {"cVfRwNj547fH0XrK": {}, "EDpEY8VnocGAjci0": {}, "V3tBf2jnHGKXphn5": {}}, "requestId": "0c9tNLDljhZ2jxLR", "statCode": "X3z46OCaGBeMfPlN", "updateStrategy": "MAX", "value": 0.936591940396026}]' 'w3VifnKqmTSoGH1X' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id '{"statCodes": ["XSxSc3aZPV87pna0", "EfY6QAYn6WQ5UBEU", "1QAOHfZiGhxOdcuD"]}' '8gxefTYKhuxaEc7M' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '[{"additionalData": {"4P7UckSC6ePeN8i4": {}, "GrFES9z7xueHpATH": {}, "ccee9GXhKcjmSEwd": {}}, "statCode": "rkEnnqKzFsLfYalU"}, {"additionalData": {"lfwEQKjU7eHGebSV": {}, "u0LQ40kepEaC4dfi": {}, "OMZfEhHr39pysFO3": {}}, "statCode": "Zvc1BZG99LyvfvHE"}, {"additionalData": {"sJKQQewVLMUoAnaR": {}, "cYp7FUjfIGaffofl": {}, "EIByYqeKN0meGelY": {}}, "statCode": "F5wWaDhukU4khGG4"}]' 'vZFTYnPkmSu4PWam' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 '1jxR7SETWjteoc8f' 'gvZDDhoO05oKqymx' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '{"additionalData": {"LD1Lcvw6T6mZEiwx": {}, "xElpMYSWIeVzm7z9": {}, "noowmlTIKVowi0RY": {}}, "updateStrategy": "MIN", "value": 0.7633244698133896}' 'N4ZONJREdUQ3z9F1' 'BxNNgnke4akncw7w' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 '[{"additionalData": {"u9TmXfJWBPrx9Ns8": {}, "eLzYEvwSWTaLQjct": {}, "vrK2jhsYpKPlXn77": {}}, "additionalKey": "AtYoFzLAATPY8P8P", "requestId": "3cfoivvQxevecWw7", "statCode": "Rry0KK5rgAGO0dW8", "updateStrategy": "MIN", "userId": "3aevq6iohU1cg4W1", "value": 0.5512755158781829}, {"additionalData": {"S3Uv1BpWoJBaqdg2": {}, "FHcunsS1lnaO2m9v": {}, "qjhbeK2qN8g6x2Py": {}}, "additionalKey": "YDo5R3hLiD5sf5y1", "requestId": "JsxJNGmyt0SQDUDo", "statCode": "WBZVGLlkUetzCAWc", "updateStrategy": "MAX", "userId": "x1aMjgGim51T107X", "value": 0.5602796308575712}, {"additionalData": {"ZRZ7tZdIs0xf4czd": {}, "t7zqmSKxOEQlVcx6": {}, "GqsBq8vdhWVnuYLg": {}}, "additionalKey": "pZehK0G2nmyuViB9", "requestId": "kRTcSQdTnNYGeAfY", "statCode": "FG3wSkHKufBdS3ZO", "updateStrategy": "MAX", "userId": "jS6rDWUwfhKvrf2A", "value": 0.012660960667523868}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'H4yCWrHSppnIZkNn' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '[{"additionalData": {"Tn3rzH5NvAtcvNed": {}, "gS1fUfKmihDbmu8e": {}, "PWlQMVDXEHeiGTnw": {}}, "requestId": "yEw6hIWDZrpP7rz3", "statCode": "ISW510kHr4isTKWj", "updateStrategy": "MAX", "value": 0.33752754588465905}, {"additionalData": {"C2m38kXrDZWlGVE9": {}, "sJ4NpUtKp6M9I6nE": {}, "wnZhsjwJeGwaPSDM": {}}, "requestId": "Zz95OYKiqaZD63xe", "statCode": "5rruJVfLGea0Ztlz", "updateStrategy": "OVERRIDE", "value": 0.032592501148858144}, {"additionalData": {"uHAXz0UV31MfuGaX": {}, "sAuGsZaSHevO0TQN": {}, "EI3kfabxJWWSI1EC": {}}, "requestId": "Uo1NPpeFhUztXDgB", "statCode": "7n4C97uAPP8PATLp", "updateStrategy": "MAX", "value": 0.8073395965533818}]' 'BZsWFbr3RSP0W9nB' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '{"additionalData": {"hvhf8Q0DtJMcYQdN": {}, "66bswAgt65X4N1LQ": {}, "ZmB61JMdtwCVUrYQ": {}}, "updateStrategy": "MIN", "value": 0.17578975908602912}' 'qTZrKgXNwvm4e5GX' '6H742OixhtAoKiVm' --login_with_auth "Bearer foo"
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
echo "1..99"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespaceSlotConfig
eval_tap 0 2 'GetNamespaceSlotConfig # SKIP deprecated' test.out

#- 3 UpdateNamespaceSlotConfig
eval_tap 0 3 'UpdateNamespaceSlotConfig # SKIP deprecated' test.out

#- 4 DeleteNamespaceSlotConfig
eval_tap 0 4 'DeleteNamespaceSlotConfig # SKIP deprecated' test.out

#- 5 GetUserSlotConfig
eval_tap 0 5 'GetUserSlotConfig # SKIP deprecated' test.out

#- 6 UpdateUserSlotConfig
eval_tap 0 6 'UpdateUserSlotConfig # SKIP deprecated' test.out

#- 7 DeleteUserSlotConfig
eval_tap 0 7 'DeleteUserSlotConfig # SKIP deprecated' test.out

#- 8 GetUserProfiles
eval_tap 0 8 'GetUserProfiles # SKIP deprecated' test.out

#- 9 GetProfile
eval_tap 0 9 'GetProfile # SKIP deprecated' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
eval_tap 0 12 'PublicGetUserGameProfiles # SKIP deprecated' test.out

#- 13 PublicGetUserProfiles
eval_tap 0 13 'PublicGetUserProfiles # SKIP deprecated' test.out

#- 14 PublicCreateProfile
eval_tap 0 14 'PublicCreateProfile # SKIP deprecated' test.out

#- 15 PublicGetProfile
eval_tap 0 15 'PublicGetProfile # SKIP deprecated' test.out

#- 16 PublicUpdateProfile
eval_tap 0 16 'PublicUpdateProfile # SKIP deprecated' test.out

#- 17 PublicDeleteProfile
eval_tap 0 17 'PublicDeleteProfile # SKIP deprecated' test.out

#- 18 PublicGetProfileAttribute
eval_tap 0 18 'PublicGetProfileAttribute # SKIP deprecated' test.out

#- 19 PublicUpdateAttribute
eval_tap 0 19 'PublicUpdateAttribute # SKIP deprecated' test.out

#- 20 PublicGetUserNamespaceSlots
eval_tap 0 20 'PublicGetUserNamespaceSlots # SKIP deprecated' test.out

#- 21 PublicCreateUserNamespaceSlot
eval_tap 0 21 'PublicCreateUserNamespaceSlot # SKIP deprecated' test.out

#- 22 PublicGetSlotData
eval_tap 0 22 'PublicGetSlotData # SKIP deprecated' test.out

#- 23 PublicUpdateUserNamespaceSlot
eval_tap 0 23 'PublicUpdateUserNamespaceSlot # SKIP deprecated' test.out

#- 24 PublicDeleteUserNamespaceSlot
eval_tap 0 24 'PublicDeleteUserNamespaceSlot # SKIP deprecated' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
eval_tap 0 25 'PublicUpdateUserNamespaceSlotMetadata # SKIP deprecated' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code' \
    '6URT95XhnUcvWB28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
$PYTHON -m $MODULE 'social-get-stat-cycles' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
$PYTHON -m $MODULE 'social-create-stat-cycle' \
    '{"cycleType": "DAILY", "description": "pusuhhDJ5slzgiWZ", "end": "1986-02-10T00:00:00Z", "id": "tyd56LfxnbY97jjY", "name": "gXchCbkXX26uEdCf", "resetDate": 87, "resetDay": 14, "resetMonth": 1, "resetTime": "9YWqc0qgV6d9yOfI", "seasonPeriod": 80, "start": "1986-11-01T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    '{"cycleIds": ["hXbWhbwPwToC6knj", "tDMrentgn3Dhqciw", "IeShF9RKb9vvxuJl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 ExportStatCycle
$PYTHON -m $MODULE 'social-export-stat-cycle' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ExportStatCycle' test.out

#- 32 ImportStatCycle
$PYTHON -m $MODULE 'social-import-stat-cycle' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ImportStatCycle' test.out

#- 33 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'VwVnzaqSfJiQFC2g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '{"cycleType": "DAILY", "description": "IZsUf8lGFXcmwTER", "end": "1988-10-16T00:00:00Z", "name": "clOdxIwqejxe18rN", "resetDate": 6, "resetDay": 33, "resetMonth": 3, "resetTime": "s2nEZhpByfHZinxN", "seasonPeriod": 11, "start": "1988-02-18T00:00:00Z"}' \
    'AQltnSojV4jT65yc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'lX2FtAz0vJjFIYWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    '{"statCodes": ["aNdsimmkW2miH3xR", "HAKy4QxZkaXZ7vmi", "Ed0JPxVyQpshaDwN"]}' \
    'qTbbFMXAMfVXe0GZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'eMgsRsmH1EQrYmkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'KTPOlhTtSiZNCxuo' \
    'gFteTHJe4BhSSQkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    '[{"inc": 0.47340493854805665, "statCode": "6WmOt6D7ufFVTOhv", "userId": "QpfbBke8aEdd36xj"}, {"inc": 0.9365490541183076, "statCode": "wySoltDxsbzxrlaK", "userId": "EfkoYjY2o6ouRW9U"}, {"inc": 0.32247445927415186, "statCode": "NquwC3WgumrIz4Nh", "userId": "GztZpr4U4fwQIiLX"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.09757455995797537, "statCode": "mRasvjO4lj8m3XEw", "userId": "P2b4gd3xOeii8Jnm"}, {"inc": 0.2920343404347916, "statCode": "sep2xD2NY0kABeGs", "userId": "9yxahld1pO0Gyf5P"}, {"inc": 0.6553506388431433, "statCode": "3COyMvczgEpzZ3Fb", "userId": "txfhcRC7IVYa6iZ5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'uFRYNn3SHiWxF0Yb' \
    '["uU5ar5qTLWUCy0Af", "gc050XIZRW491e94", "mQjVOOBnIWhunElq"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    '[{"statCode": "ZUodp3IhtCSHy1ei", "userId": "1fIrPvfHnRN06EjR"}, {"statCode": "wEQlNapJRfk4f9Zc", "userId": "w1pEHAyNFxcVTKuA"}, {"statCode": "QTGh5BxjWOozGoDt", "userId": "sUuYo5p8ED5QZAuf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkResetUserStatItem' test.out

#- 43 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetStats' test.out

#- 44 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    '{"capCycleOverride": true, "cycleIds": ["69FTFVGUVhvKhJCm", "eisql14mUHVbMPim", "GPTBxiFFCrn7djjs"], "cycleOverrides": [{"cycleId": "NhcZsU3VAdMDcb4q", "maximum": 0.18821351977440048, "minimum": 0.16616746935667892}, {"cycleId": "iFAamqvZI2KwjqPB", "maximum": 0.14138789637062388, "minimum": 0.7786481947646955}, {"cycleId": "Xade41s3rH34mB2y", "maximum": 0.6625632678634237, "minimum": 0.18589548357745922}], "defaultValue": 0.7007202849512658, "description": "pWjmHZAAvKTH8Muq", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.9082582176378495, "minimum": 0.864764795947631, "name": "cK8QTwiIAvxSvNDl", "setAsGlobal": false, "setBy": "SERVER", "statCode": "M5nQFMGzs7fzjgyc", "tags": ["nQLYXxm09wpGAbpE", "44mEh9tRk8knYSV3", "0lnroQehMDli6t9u"], "visibility": "SERVERONLY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreateStat' test.out

#- 45 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'ExportStats' test.out

#- 46 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'ImportStats' test.out

#- 47 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'jQ7gkZEY8rG0q0Q2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'Qd2JzRbkF2I03dIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'vBbA6bfbYaJCJjfk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '{"capCycleOverride": true, "cycleIds": ["VMDu87t0ldWf7iSG", "TUvn95FhO7VW3mbD", "IiKFtWtn4Yr2svKM"], "cycleOverrides": [{"cycleId": "6pqLGZ0TBujELAUK", "maximum": 0.9400700903242161, "minimum": 0.20279507701129695}, {"cycleId": "Q5iZgbwwm5iGzXtc", "maximum": 0.1693140889632596, "minimum": 0.213382431321527}, {"cycleId": "rgidKupvXO6aj4hC", "maximum": 0.20587177466662598, "minimum": 0.7261061268474385}], "defaultValue": 0.4605837201672598, "description": "34jxW4pIDwdqXpmR", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.31425287921131007, "minimum": 0.9854283707234422, "name": "H9XyWI8bp8fQxRuX", "setAsGlobal": true, "setBy": "SERVER", "tags": ["RL1rEQG02zccA8wv", "LsWUNd6lPKvqDejv", "YmtrHJbEGTUj7YjE"], "visibility": "SHOWALL"}' \
    'AdvBaagTiRJ8daGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'VX3Bb7jlz5IfHgKj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'I9mwJSrN8jkIykR2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'zbaI6PD7fEscShnG' \
    'UGUtV9GJ279GDbLN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'wjm3FK0nnX2poMfZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '[{"statCode": "1hDHtbh4HtMlFgvh"}, {"statCode": "2Dp2SoiIPp1yvfAH"}, {"statCode": "S0VgLu11A3HTovFi"}]' \
    '4tPAGfleyCA6jEtc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.26476579126639943, "statCode": "snzoVILjkwW61duF"}, {"inc": 0.982149522230911, "statCode": "7aUyrdt4XSpWBAet"}, {"inc": 0.29173833619333234, "statCode": "anzqP8oxfrtbECD1"}]' \
    'CYPwaiBAxfYL8Avt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 0.9582135576688109, "statCode": "0ZUT2fSk3LL0calq"}, {"inc": 0.3768373959547563, "statCode": "EewuGS469k2hG0WK"}, {"inc": 0.31464658653062627, "statCode": "4sUmanYxM0UHZVNY"}]' \
    'zGMNIpWoSLkUrfuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "4U3WeYeA9t2ENKKW"}, {"statCode": "rFtHIi1CMgKAOG5i"}, {"statCode": "DcCR5PbCvDLil8wj"}]' \
    '9cKM3Ar6MF35hCER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    '4nGmWGgTJfHlJl4t' \
    'HGa4XfZcd9CVnGqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'X9FieeEssWEUl07b' \
    'hwntCVqiYOJf5KwM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '{"inc": 0.8272843550581785}' \
    'QjzvjSozv6CTRDl0' \
    'zp9CzHFwinkBNi4g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '{"additionalData": {"vqgl6TZ9TGVPmv34": {}, "h6T7EsufmfxKYB4L": {}, "M6H6QXmpZ9X3fUSR": {}}}' \
    '1l9xLPBsmAUrD9L1' \
    'IiD6MlcEPhMDFzjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'ResetUserStatItemValue' test.out

#- 63 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetGlobalStatItems1' test.out

#- 64 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'Z3sIhzOx2CXKlvIo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItemByStatCode1' test.out

#- 65 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycles1' test.out

#- 66 BulkGetStatCycle1
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle-1' \
    '{"cycleIds": ["3lt9qfx2UDcgVE7L", "9FK6e0MrPc4vtxk9", "mU3pIxM9n8D2eLMe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'hVKlG56HlzGr7Xjd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'yRJunZPkp6ccIBnW' \
    'yPw8mj7gyQ7XdIsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 0.5250070626808134, "statCode": "Rj46COPipH1MWVTH", "userId": "G0qHJCWEfOJpZm9y"}, {"inc": 0.48543621005523285, "statCode": "YWNGMy2pgSGSUOK6", "userId": "8eqGJtWf1Ybgg8rd"}, {"inc": 0.3551138117998558, "statCode": "Y9bmrvHmO07KNqX9", "userId": "LM2IwEsdOGBXBwnz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.4771633302690801, "statCode": "X8v3xgC1Ge9PdbTT", "userId": "AJ2Gp1r0sVZ6LJAO"}, {"inc": 0.06155508623730355, "statCode": "dIL2l3hPjNDKv2LW", "userId": "fXqjr8fS79En3wYo"}, {"inc": 0.35594943450878735, "statCode": "BdkaZ3y6i38XQjLD", "userId": "RqkpiFK5BtiQ272U"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "o9UBJWodpdwsX1jo", "userId": "rcyR0x3YiHF8ITGP"}, {"statCode": "RQBCgIs1Q2lzxl0y", "userId": "F5m77TTh4gUoj8u2"}, {"statCode": "WRcLiEtzVlnkflfn", "userId": "7pHY48F1dl1q92m3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    '{"capCycleOverride": false, "cycleIds": ["8aJuALEcSqcE15u6", "D31DjOsrs3CUYATd", "qnQGbqiqOkNeATj7"], "cycleOverrides": [{"cycleId": "eGjodd7CcJUrI6MA", "maximum": 0.3327919233370803, "minimum": 0.10798277533376766}, {"cycleId": "K5kypNrp2nFe9FmN", "maximum": 0.9725765661882, "minimum": 0.9497973272764323}, {"cycleId": "sK5LOq4ft5jGcMIC", "maximum": 0.6765712948537894, "minimum": 0.7468764014749314}], "defaultValue": 0.8146867114991143, "description": "nfG6jl9U4jReteIM", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.5881225501053617, "minimum": 0.6587395019152568, "name": "KiAVQXXOmqFHLbyX", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "gCNiXH8uenbC5Cph", "tags": ["gMweexsIAP5vHLjB", "J9iqMcBL4BzhDUjh", "KPwbwcvQU5kG8bXG"], "visibility": "SERVERONLY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'P2ssiJ66OzOj84O6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicListMyStatCycleItems' test.out

#- 74 PublicListMyStatItems
$PYTHON -m $MODULE 'social-public-list-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatItems' test.out

#- 75 PublicListAllMyStatItems
$PYTHON -m $MODULE 'social-public-list-all-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicListAllMyStatItems' test.out

#- 76 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'tgohjtC7bzjPpucd' \
    'dXJ5zifF8y959anr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'NSleywHbHig6IKWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "Z77KeRWdECaFGzfZ"}, {"statCode": "2hxcJ2Fnemn7M23S"}, {"statCode": "zUo4hNBDh9ZFP1OW"}]' \
    '0nXOErQPS4VsRoYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'K69yg9ADCGiXaLs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.38168109314703, "statCode": "jHkinOD975nARHCm"}, {"inc": 0.12432139904634631, "statCode": "NHSXuqIHsxvaUoXD"}, {"inc": 0.19532147324593485, "statCode": "wWsukxncuD3QxCXM"}]' \
    'd00YBWCaVVmM45mf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 0.5644157104199067, "statCode": "ZsWhkS476dGGJwJ0"}, {"inc": 0.8463552444718847, "statCode": "UH197MJ6zU7JLMQy"}, {"inc": 0.6281284898914946, "statCode": "WzYQCAaPJgoxGJoJ"}]' \
    'aSzUtY4ZD0Xtb0U4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "pH16NUsVY21NVIs7"}, {"statCode": "NRen2Y3Ns0QJQeaW"}, {"statCode": "ytPfds1BYx0EaURy"}]' \
    'df8ZyyZeHAWGgJUb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'UJRMbkcTglbU86Fy' \
    'OjApNHBVfNOURcjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    '3YYT9oTynmfIuBWg' \
    'JTNFfM8M0IW4oe8K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '{"inc": 0.47851726275018913}' \
    'gy0xZfAcNg14Ws8T' \
    'IP1LKiFQoLDvumfq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '{"inc": 0.27985254774019663}' \
    'gSfnx2h61X9dN1MG' \
    'RXBJ6mVV7JS9qjNL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'wvI8JdiY3RRiLilm' \
    'OGF6dLLIeIVIjMcd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"lbdRXTGIrdNL5gJP": {}, "qTAjgqaTHf1ANTJ9": {}, "Yk997XkGOdC6ItxD": {}}, "additionalKey": "T8p4n4XCFkD1AJLC", "requestId": "wszbZxuHSgDOK8bj", "statCode": "oF7bL2635KbtZTGJ", "updateStrategy": "MIN", "userId": "syhE2BKtyTDSIM7m", "value": 0.16520744734597403}, {"additionalData": {"mvZ7Cmsh4US8o4jf": {}, "MANPpmZDdMiCxmuC": {}, "CVuFjS1GC1d2b92B": {}}, "additionalKey": "4vEgj3HOmhcWm428", "requestId": "XejRF94NIY9nMrBZ", "statCode": "o0lNUBDShHD32vvL", "updateStrategy": "MAX", "userId": "8FPwTiXfLcxDC9Yn", "value": 0.06195973815112099}, {"additionalData": {"02mECIQhfIhHtADU": {}, "Q9zimQTQT95pFJUA": {}, "JsyAfeKOufV4f15N": {}}, "additionalKey": "ohXu6opxQGRt6Pql", "requestId": "kL0diRhLC10ih2EQ", "statCode": "fY3XCv4hdOa6FdZh", "updateStrategy": "MAX", "userId": "Md1onFjGRbxtABPX", "value": 0.47758787440722417}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'mgNEJBhgGq5GIDhN' \
    '["C66szbCCf73IFbRk", "PSSITz4TjCrJHXGX", "ku2YVuOzhxHmnrrV"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    '9ZGWrZ05sxe6A6Rp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"mKDebNkylbynkgT9": {}, "vayLLiizac7Ge6zK": {}, "Jdlt7rjF5RaJwvkW": {}}, "requestId": "Vco2LTo5ijlvDF8q", "statCode": "BWCQ9dLWYyS8zdhM", "updateStrategy": "INCREMENT", "value": 0.9337452683662852}, {"additionalData": {"anIloyj9lhbvuQdW": {}, "2jwKUckc794ryY91": {}, "lX8DD4MYXlrJ81lH": {}}, "requestId": "vv9rqvEoM8YmVjAk", "statCode": "O3HKsEp6KlqwW4dj", "updateStrategy": "MIN", "value": 0.3463695129626536}, {"additionalData": {"M7tuL81lsR7xxSVp": {}, "3Gd2TK0HzYviTgYm": {}, "x82JVBRLPZ6Iz8tn": {}}, "requestId": "e5dbguBF6Gsvvdl8", "statCode": "jHz9x7XZIjU4IK9l", "updateStrategy": "MAX", "value": 0.6068029412588357}]' \
    'aZaMphKCqTq3EVhe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["JjoEEXBLIxGnNuho", "EdqQpoGkUWNizk5U", "JM3WWPvvCiCf33Vi"]}' \
    'cPAGv6c1ESC6hZYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"YZbzf5aANNNs5kgS": {}, "ZZNUHbIT9szApmWJ": {}, "O5vzzXZj08a6K1XR": {}}, "statCode": "VfriSpPFnZBJZkDn"}, {"additionalData": {"Eiyfa2LrnpZxNnLR": {}, "H36bqS2oFY76PU1A": {}, "ziBOHEAj1cT3u6Zc": {}}, "statCode": "2FbrTFznTgDIwZIR"}, {"additionalData": {"Wf6T3by2kYSCdnFK": {}, "Lc0xcTjqjdcEfU61": {}, "OJYMnW49rWynp1ck": {}}, "statCode": "1vT90C6o86cSRL9c"}]' \
    'gbUmulhe98oaFKlQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'icdrxVhrtwSd9QWV' \
    'MYz7TU1TsxsChScl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    '{"additionalData": {"Skb5aBi9K9zyv6gF": {}, "ZXI5nXJ7hLi6Hwew": {}, "eRmyo91dIn7QqXBD": {}}, "updateStrategy": "INCREMENT", "value": 0.6867398938605643}' \
    'SPAd9sxoLnWGP1Pa' \
    'fIjLX8ce0KbNN7Yc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"l2JfmQplvGjVQ4ae": {}, "bjfgGu472oWJlfgl": {}, "LM4xjfkNL4lU6jaG": {}}, "additionalKey": "fsD1cfswmeFpvtDt", "requestId": "etoQVFL8LNW11vtp", "statCode": "aTxi7k489jRCn48b", "updateStrategy": "MIN", "userId": "FTi1t530Wj1WfzIv", "value": 0.04276672311611929}, {"additionalData": {"3VlSXrA3XUGud4tV": {}, "jmxEf4XvVhFJTxFH": {}, "ITBg9x4unq3eOMHI": {}}, "additionalKey": "KeTyBG5dCUoExnKf", "requestId": "V3869IN4V1OdhH4G", "statCode": "VU7Exlkmc4xYiLjL", "updateStrategy": "OVERRIDE", "userId": "ouFu4hXONgUwJnUp", "value": 0.2816368560684618}, {"additionalData": {"yDeRcpUvlrw2MwC1": {}, "uuokpaIjL0Vxe5n9": {}, "Lx3QcFo9gxOgvDc7": {}}, "additionalKey": "xMrRKvw8ISP2WKmC", "requestId": "RRXBxlalCHtWlKxL", "statCode": "pS8fLWoQ5nuJhatQ", "updateStrategy": "OVERRIDE", "userId": "xR7dvBVC5zgOKLTD", "value": 0.20625086908485724}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'He8c1eJ9sde7Ryt4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"udIv22M18uux9xBo": {}, "mQFPFWy5cwNPI6aF": {}, "o0MVwDZCIXFNEL3u": {}}, "requestId": "WVRz3V7YbJM3bNLW", "statCode": "HAbCZixe2cQ6O30l", "updateStrategy": "MIN", "value": 0.04777363245456523}, {"additionalData": {"0HjUcnkpU9oVzl2k": {}, "BuLFXIeCEKZUTz3G": {}, "vCAZ5j24acYHbrry": {}}, "requestId": "HB6GO9zP3FaepA3b", "statCode": "3YJ9nJM6vtT27xv8", "updateStrategy": "OVERRIDE", "value": 0.9234349931546829}, {"additionalData": {"MU2qmbeqaVemINdC": {}, "lpF7OvlBIEgjse5k": {}, "d6GEDo08yq5E5Hle": {}}, "requestId": "Loog4me2NBFp62xl", "statCode": "XvVcJerTPW02PWsH", "updateStrategy": "MAX", "value": 0.4795587330436307}]' \
    'QMBSYAFLqp8PF5hC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"coukWpnbz4ys7j6l": {}, "xuU3u2HEG0qfKegv": {}, "FTD1sPykS8YLmwtY": {}}, "updateStrategy": "INCREMENT", "value": 0.607628068144747}' \
    'lJzJMSnJIIgsAVma' \
    'GYxUX1B9oVuzG2Cn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
