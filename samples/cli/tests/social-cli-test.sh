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
social-bulk-get-stat-cycle '{"cycleIds": ["bPngUNB1vRodwpzS", "oDLjWjkY1aXlFcDt", "6DaDpv8N7ZQVqGj6"]}' --login_with_auth "Bearer foo"
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
social-create-stat '{"capCycleOverride": false, "cycleIds": ["5SepjChB3V0v52Dl", "79ZZPYGu0rdlgdWy", "OtXi3choQrpOsDBU"], "cycleOverrides": [{"cycleId": "ym6puQ23xoJ8aeCn", "maximum": 0.008015318635925528, "minimum": 0.6127826328044578}, {"cycleId": "pUKp44YUDjasWIPU", "maximum": 0.34991329621526146, "minimum": 0.19996545679792355}, {"cycleId": "EejtGeoyIPa8ZRrv", "maximum": 0.15264149132678073, "minimum": 0.15660600519286194}], "defaultValue": 0.9639393332061913, "description": "il35MXbN9oCMNqq9", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.5494607844760753, "minimum": 0.3830343397717245, "name": "jUkl535X3ateEKDp", "setAsGlobal": true, "setBy": "SERVER", "statCode": "b6i5lZC9xv32e8c5", "tags": ["PubTDIHrvqAThuwj", "DUPVJf6c2Z0QZxfg", "csSovoqsZNBdte9N"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'HpKKTlmVr9XuoJbR' --login_with_auth "Bearer foo"
social-get-stat 'FQSKVPHbn4Xxtu7L' --login_with_auth "Bearer foo"
social-delete-stat 'QRENjEEztx1WsYSi' --login_with_auth "Bearer foo"
social-update-stat '{"capCycleOverride": false, "cycleIds": ["Cx9Zw5D2L7vIYhGG", "qan0nSBJroav91GX", "lvPG6bFYReVHQipc"], "cycleOverrides": [{"cycleId": "SyEW4ZJJ42d3PBdd", "maximum": 0.6415406385582566, "minimum": 0.9834107062411301}, {"cycleId": "S48l9lyNApflxqMr", "maximum": 0.15070534010752035, "minimum": 0.8969884329934427}, {"cycleId": "oZk03QXcKMDYDDxH", "maximum": 0.7253143389194583, "minimum": 0.8280537397695681}], "defaultValue": 0.14893701811610782, "description": "tqXyJ58f7Gc26Sai", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "ZxzfTcyiuATus9hs", "tags": ["4pp2ncYAHdNzDmeI", "NrDjqoxcwgGLXpUL", "fpFDcSDG8aMVGLiB"], "visibility": "SERVERONLY"}' 'rOvDz9KOsb392k6Y' --login_with_auth "Bearer foo"
social-get-stat-items 'mJFfRByjlBiuFM3F' --login_with_auth "Bearer foo"
social-delete-tied-stat 'IoVk8T3GpAnkCmBU' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'qg2SCnqntX9y1aZS' 'WMiVi10sG6vxkfUc' --login_with_auth "Bearer foo"
social-get-user-stat-items 'mqRRbceJ5i0EeDxO' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '[{"statCode": "gBnhhqElIaDml48w"}, {"statCode": "dNFLTm5T50x9WT0G"}, {"statCode": "fH2rtOa4EXsXzOXQ"}]' 'Ak4mqrxzTtuLl4Xl' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '[{"inc": 0.02296110519730865, "statCode": "GL8QOxtjzm8y2wNh"}, {"inc": 0.1969588298649767, "statCode": "woYZyI4EFZKBcYrC"}, {"inc": 0.4904130800173423, "statCode": "AE7WIsfmx40NLRc6"}]' 'm8heKnWhzfe2Nube' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '[{"inc": 0.22834764388134643, "statCode": "KFeIaFQCYoDPICpn"}, {"inc": 0.051020373198568336, "statCode": "uEEQlULdJz4mnRBk"}, {"inc": 0.615849222453333, "statCode": "NxvvKgAT8mJrYq6h"}]' 'RkloqxM3gpwxcfMy' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '[{"statCode": "9XzjjI5YbsKoADkz"}, {"statCode": "JEN2VHzih3bit0VW"}, {"statCode": "n3CO39PXDNxtXgeO"}]' '3FgkXhjDzaQY3snn' --login_with_auth "Bearer foo"
social-create-user-stat-item '2ZkP7cFdP43e5dC9' 'XIBudfZgrbHDIDm4' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'hMzF4TxodenSrUTv' 'fqU0bfoMm5cTtFWb' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '{"inc": 0.23928292766464732}' 'tQyXJRcQWsmqPNs9' '2epxk0i8VxsZNere' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '{"additionalData": {"Svf9699mCEHThUJk": {}, "ETAsSp7gh4TeUTkO": {}, "kAYfJB8AT9t4Tv20": {}}}' '7Y2QD3oD5fLCr3OO' 'lXVv8ZGF7uYnGzpi' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'pNDigNJma1MbqqZt' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 '{"cycleIds": ["0jJLHC9LxhvNXTwG", "NNlWkD9eOziYRFOn", "fNWql4nmwAft4gqk"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'BCtohLtl9Zuhytm5' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'UDrT6QXCs5SPBbRP' 'ZTF6oQAXVG7tnsZg' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item '[{"inc": 0.9240994134230933, "statCode": "QgXjvyGJPN4eXbJE", "userId": "5Vs2GcyomQoIXimB"}, {"inc": 0.5648573220061599, "statCode": "ehyxlNsjUgxBkF6w", "userId": "FPoJeQediogEhhM2"}, {"inc": 0.28292168216448643, "statCode": "IizGdKvOPdq5xrgx", "userId": "Smy1DN9LFkYW5DQy"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value '[{"inc": 0.15385804021369198, "statCode": "4bj5Ro2ogaKt2ujQ", "userId": "Sa3Zdb65UXmy0Zp6"}, {"inc": 0.1347106192034444, "statCode": "IaTIKUkmkk9QM0NB", "userId": "MA9ORxpzwLR2AK6e"}, {"inc": 0.7908365016126964, "statCode": "UGPJsw1fiP80G9Pc", "userId": "lxcft2ulIJzPyrVE"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 '[{"statCode": "iOG4UcqsuGKHhMRW", "userId": "LVd3DlhLuIpomM8s"}, {"statCode": "m1MiaI1mX2tJoARt", "userId": "dbBe7udsMrok0WvG"}, {"statCode": "YYnx4V709xbnGezK", "userId": "sDwG2omOR2nvYI9T"}]' --login_with_auth "Bearer foo"
social-create-stat-1 '{"capCycleOverride": true, "cycleIds": ["jZpjvsugAOS7u8Ri", "ik1jglaDXTvKCWwN", "WyerCSa8SRgwsAj1"], "cycleOverrides": [{"cycleId": "TAhd2wrS0uPdjhdi", "maximum": 0.22010864138186348, "minimum": 0.24772340966222495}, {"cycleId": "ng5BLy8wbhMssAHj", "maximum": 0.0119883776218076, "minimum": 0.2572014414749628}, {"cycleId": "IkY9Rf4wP57dBZNR", "maximum": 0.9769106252403886, "minimum": 0.9686281249845696}], "defaultValue": 0.8183943632941597, "description": "bCtmKy8M9zVrjfGX", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.4350136541789411, "minimum": 0.6898625787780174, "name": "UoY1GjlIIk0iKoTT", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "1ORYcmQbTU5JX8cc", "tags": ["2aCNYIWekp18lOC3", "LjMXJRk0eaKQDOJv", "rTefglSs6g4iY9u0"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'IMGql5ElEa9EIIlG' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'cHB3CfR3ncDlwi3v' '3MFFJ1KesKoELCpo' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'bBEG8X645xpdXpai' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '[{"statCode": "0rYaT5hOPjaf3H0t"}, {"statCode": "YighU0VUfcYHJbBf"}, {"statCode": "AKSiPW3VgsZXiR1D"}]' 'J7HVWqMkNSawQUWD' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'FJvJBWic7UkBeIXu' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '[{"inc": 0.26207370193028456, "statCode": "DuAXI66bQ71w0deo"}, {"inc": 0.7667572407821657, "statCode": "9Lx5RDA1l2XcrciY"}, {"inc": 0.6335392873237635, "statCode": "EzvSZIPkhSgORcz5"}]' 'S5BvmgBLxh4ijFnE' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '[{"inc": 0.8887375914230002, "statCode": "Tam69qSZ7PC6f6Qk"}, {"inc": 0.20642245936899384, "statCode": "ZXElW9YfRSse6AAz"}, {"inc": 0.9022401379348886, "statCode": "S4czz0QKFlAVmVLu"}]' '4AOec0z8eBeeoip6' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '[{"statCode": "8J1nsv4W2OJhtafx"}, {"statCode": "MSJlHeb34sZKHcl5"}, {"statCode": "LLLOexL4fZvWtND2"}]' 'tcBFpX8lNtFEJ7tn' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'kY6Mca5afj12K2Iz' 'rBvvWm4udE0OXudX' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'gNne8kJATwlc6esU' 'p6Sw1I98jeZQ7hfx' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '{"inc": 0.2121819787480902}' 'hLd3Knaknoed9DHh' 'LOqQGhCUr6iTrjyE' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '{"inc": 0.09936158457460786}' 'arAdNJOIG36I6tRb' 'RcrEveMdAdiPKDUV' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'SC00PYeDcagginxn' 'FIna3yddcbsPheTH' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 '[{"additionalData": {"26IUJNvYuGRUvpZa": {}, "HCuESOiIZsMfB4ZH": {}, "3mtgWgU4pCAKxeE7": {}}, "additionalKey": "0CaunQNxot371W9G", "statCode": "4AvQkqsGnmyo5JJT", "updateStrategy": "OVERRIDE", "userId": "Vmb8GEXFTlEMEsFz", "value": 0.8151719799918371}, {"additionalData": {"qwgK1Np5nodqpLm7": {}, "FhJBNXzAFdO0Khqf": {}, "6kiTdSGv2LFjAKY7": {}}, "additionalKey": "CbgsWqFWZX7kPBom", "statCode": "8F9GLLTG8phc3n4i", "updateStrategy": "INCREMENT", "userId": "oIllKlpO2pqiXJF3", "value": 0.7783490878173022}, {"additionalData": {"GRaoQomSJC4DdrKF": {}, "7SUQPLG59e0k5ZtX": {}, "6wK7PpUlcIW32iK7": {}}, "additionalKey": "MGt1ixY5rA1WoVeJ", "statCode": "IePF8ZrQzP4zvtdx", "updateStrategy": "INCREMENT", "userId": "iHKxbWCYzo8yO2KT", "value": 0.5962182536810265}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 '9tmmOnYnOpas6ghP' '["1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc", "GLuC3brWdTYCfHkI"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'ySok5DiXZtLW87rG' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '[{"additionalData": {"ysryod3dNQrmsApR": {}, "A6HX3RwrKt2ecozL": {}, "0TOg54vCE48L5oLF": {}}, "statCode": "6M4lNa4JUMSHNgqR", "updateStrategy": "MIN", "value": 0.8557972420451819}, {"additionalData": {"nryEJ0NqoTow0qiO": {}, "iC4j0iktm0ZPLkLO": {}, "sp0LZ5njN86Hl8kU": {}}, "statCode": "Xzt6bSc6bWvgpVyW", "updateStrategy": "INCREMENT", "value": 0.28469928709799797}, {"additionalData": {"cBE2ItBS3KtKZWe8": {}, "aoFzAyBME74HUtip": {}, "UWYhWV1qx8CzPML5": {}}, "statCode": "2faXUr9Sk4lq2faB", "updateStrategy": "INCREMENT", "value": 0.18293825109334605}]' 'hjbngJOUn18G5Mlf' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id '{"statCodes": ["DTk8aG40NlncceIZ", "SwgAIkgzh4pTU0Am", "4DZhl0bQxFJ3sWCq"]}' 'QpQ2FbKPFMycMSQ4' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '[{"additionalData": {"qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}, "oGH1XEfY6QAYn6WQ": {}}, "statCode": "5UBEU1QAOHfZiGhx"}, {"additionalData": {"OdcuDXSxSc3aZPV8": {}, "7pna08gxefTYKhux": {}, "aEc7M4P7UckSC6eP": {}}, "statCode": "eN8i4GrFES9z7xue"}, {"additionalData": {"HpATHccee9GXhKcj": {}, "mSEwdrkEnnqKzFsL": {}, "fYalUlfwEQKjU7eH": {}}, "statCode": "GebSVu0LQ40kepEa"}]' 'C4dfiOMZfEhHr39p' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'ysFO3Zvc1BZG99Ly' 'vfvHEsJKQQewVLMU' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '{"additionalData": {"oAnaRcYp7FUjfIGa": {}, "ffoflEIByYqeKN0m": {}, "eGelYF5wWaDhukU4": {}}, "updateStrategy": "MAX", "value": 0.3515558699415049}' 'WgSHdfo07UctPErq' 'xyMyOK06MqQBErxg' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 '[{"additionalData": {"jVBycvU4PbmRDcrg": {}, "0DjQjBECXvea7H1m": {}, "2lJFRZ3ZprZ60zMj": {}}, "additionalKey": "hTHeh94TSenE5hCF", "statCode": "kIf5weqZ18MH57l2", "updateStrategy": "MIN", "userId": "z9F1BxNNgnke4akn", "value": 0.038992816104582384}, {"additionalData": {"w7wu9TmXfJWBPrx9": {}, "Ns8eLzYEvwSWTaLQ": {}, "jctvrK2jhsYpKPlX": {}}, "additionalKey": "n77AtYoFzLAATPY8", "statCode": "P8P3cfoivvQxevec", "updateStrategy": "MIN", "userId": "sKoHw2hyd12uSE7B", "value": 0.48991575071320836}, {"additionalData": {"v3aevq6iohU1cg4W": {}, "1IS3Uv1BpWoJBaqd": {}, "g2FHcunsS1lnaO2m": {}}, "additionalKey": "9vqjhbeK2qN8g6x2", "statCode": "PyYDo5R3hLiD5sf5", "updateStrategy": "OVERRIDE", "userId": "CslsDd4M1F5qRIbl", "value": 0.7144319954422568}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '7Nz81GRazPAANjfB' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '[{"additionalData": {"oldFOyqA2clJ5gEO": {}, "aCgM6Yn6RugbNEIp": {}, "GBFUjOn5mM7k8nbL": {}}, "statCode": "zvtCIW5ynMKquUic", "updateStrategy": "OVERRIDE", "value": 0.6017960315739521}, {"additionalData": {"gpZehK0G2nmyuViB": {}, "9kRTcSQdTnNYGeAf": {}, "YFG3wSkHKufBdS3Z": {}}, "statCode": "OokZB4cXnAXyuGz6", "updateStrategy": "OVERRIDE", "value": 0.18800382325545661}, {"additionalData": {"xHv8SwyagYvDJ3w3": {}, "UNgIGj2jZtEYT8sI": {}, "PSE1XXPzySa0sZoF": {}}, "statCode": "S6xCOWMpyh9pMsQg", "updateStrategy": "INCREMENT", "value": 0.3876321684031234}]' 'Ew6hIWDZrpP7rz3I' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '{"additionalData": {"SW510kHr4isTKWjm": {}, "v67nuHCXWfwnwGio": {}, "VwVzmmBVVFfpqx1A": {}}, "updateStrategy": "INCREMENT", "value": 0.3684751734954248}' 'nZhsjwJeGwaPSDMZ' 'z95OYKiqaZD63xe5' --login_with_auth "Bearer foo"
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
    'rruJVfLGea0ZtlzU' \
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
    '{"cycleType": "ANNUALLY", "description": "C1RgBfoNrHlFi2qJ", "end": "1990-06-01T00:00:00Z", "id": "gmBLE35YhyiDV90S", "name": "eI5yppBHoytVznCg", "resetDate": 81, "resetDay": 30, "resetMonth": 50, "resetTime": "1NPpeFhUztXDgB7n", "seasonPeriod": 22, "start": "1985-11-05T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    '{"cycleIds": ["2mK8lbSEEelxnb5Q", "97uAPP8PATLpUpxe", "JlsBJT6Hh3OMjAjq"]}' \
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
    'xWG2HFnZlA6HKWW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '{"cycleType": "ANNUALLY", "description": "B61JMdtwCVUrYQue", "end": "1994-01-22T00:00:00Z", "name": "rKgXNwvm4e5GX6H7", "resetDate": 29, "resetDay": 83, "resetMonth": 1, "resetTime": "ixhtAoKiVm6URT95", "seasonPeriod": 15, "start": "1998-04-18T00:00:00Z"}' \
    'TRT2SKseoe8VLie0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'LBa36KNzjf005CXN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    '{"statCodes": ["GehQ2aTjTDfKFDXC", "7eGL5YhJDWh9YWqc", "0qgV6d9yOfIMLds2"]}' \
    'DbPcaoMdtRLTmSvT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'kQQgB7exYvmHMxr5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'hPCJJztJBg0tTJg4' \
    '6IewOXE2AkCh3QIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    '[{"inc": 0.291831440032868, "statCode": "Uf8lGFXcmwTERHcl", "userId": "OdxIwqejxe18rNdb"}, {"inc": 0.9709228640924814, "statCode": "Otq6j1mqUav7k05H", "userId": "AQltnSojV4jT65yc"}, {"inc": 0.18745043807665662, "statCode": "X2FtAz0vJjFIYWOa", "userId": "NdsimmkW2miH3xRH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.43348375195078226, "statCode": "Ky4QxZkaXZ7vmiEd", "userId": "0JPxVyQpshaDwNqT"}, {"inc": 0.031159394391757522, "statCode": "bFMXAMfVXe0GZeMg", "userId": "sRsmH1EQrYmkPKTP"}, {"inc": 0.6541501677404488, "statCode": "lhTtSiZNCxuogFte", "userId": "THJe4BhSSQkQD6Wm"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'Ot6D7ufFVTOhvQpf' \
    '["bBke8aEdd36xj6wy", "SoltDxsbzxrlaKEf", "koYjY2o6ouRW9UtN"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    '[{"statCode": "quwC3WgumrIz4NhG", "userId": "ztZpr4U4fwQIiLXg"}, {"statCode": "mRasvjO4lj8m3XEw", "userId": "P2b4gd3xOeii8Jnm"}, {"statCode": "ssep2xD2NY0kABeG", "userId": "s9yxahld1pO0Gyf5"}]' \
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
    '{"capCycleOverride": true, "cycleIds": ["xfhcRC7IVYa6iZ5u", "FRYNn3SHiWxF0Ybu", "COyMvczgEpzZ3Fbt"], "cycleOverrides": [{"cycleId": "U5ar5qTLWUCy0Afg", "maximum": 0.04417312483268665, "minimum": 0.854757397513505}, {"cycleId": "50XIZRW491e94mQj", "maximum": 0.7648963664884181, "minimum": 0.6514375171155258}, {"cycleId": "OBnIWhunElqZUodp", "maximum": 0.894589132063131, "minimum": 0.557206924643622}], "defaultValue": 0.12173679964673378, "description": "tCSHy1ei1fIrPvfH", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.9834592726277699, "minimum": 0.1497089244388432, "name": "XZedgt5cyNe27HLt", "setAsGlobal": true, "setBy": "SERVER", "statCode": "tVOaxgP6Jbct8puM", "tags": ["GPTBxiFFCrn7djjs", "kaPj0O4zd8Tb7cUN", "ybYGxD9IPmmsLmu3"], "visibility": "SHOWALL"}' \
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
    'VGUVhvKhJCmeisql' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '14mUHVbMPimNhcZs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'U3VAdMDcb4qlkiFA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '{"capCycleOverride": false, "cycleIds": ["cLVVYamQc4wcG5nD", "BLJoJHbiQ5duE5p4", "yGlElXdEAOrVSnLo"], "cycleOverrides": [{"cycleId": "cfs2E41cK8QTwiIA", "maximum": 0.34488119545658147, "minimum": 0.385587636478646}, {"cycleId": "SvNDlmM5nQFMGzs7", "maximum": 0.09637399202245267, "minimum": 0.40866603558743564}, {"cycleId": "jgyc44mEh9tRk8kn", "maximum": 0.80868313535509, "minimum": 0.7236604127345291}], "defaultValue": 0.7622093356809309, "description": "30lnroQehMDli6t9", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "AtEbu4IjGdqthRxT", "tags": ["vBbA6bfbYaJCJjfk", "jQ7gkZEY8rG0q0Q2", "Qd2JzRbkF2I03dIj"], "visibility": "SHOWALL"}' \
    'TUvn95FhO7VW3mbD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'VMDu87t0ldWf7iSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'IiKFtWtn4Yr2svKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    '6pqLGZ0TBujELAUK' \
    '6mQ5iZgbwwm5iGzX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'tcknrgidKupvXO6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '[{"statCode": "j4hCmTC34jxW4pID"}, {"statCode": "wdqXpmRmut9H9XyW"}, {"statCode": "I8bp8fQxRuX91uYm"}]' \
    'trHJbEGTUj7YjERL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.8676193786055345, "statCode": "rEQG02zccA8wvLsW"}, {"inc": 0.7438783026906521, "statCode": "Nd6lPKvqDejvqklT"}, {"inc": 0.7112316937330803, "statCode": "vDwuOrP9lzpiX0Vu"}]' \
    'FpZum7izxe7NPzjO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 0.003354249230162476, "statCode": "8E7wY76PxLv9HBEU"}, {"inc": 0.0788904762535827, "statCode": "89AwEw1HO4FnKtx4"}, {"inc": 0.8022652161559567, "statCode": "LKAmlDr19uJ3nq6V"}]' \
    'erzVCcI8y3Cz0YqC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "KUh5RD9vNAp4jinF"}, {"statCode": "pnQ5xF9wwbvMZyeD"}, {"statCode": "eRnVfPUa6xVVBcq3"}]' \
    'wZpFIYeAg79HcLJX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'J7mpVI6eTYAjdPlC' \
    'iQQC35cj4KyOVgvn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'WbfRJtsB7cUQZ2QU' \
    'AxJrINPXppPNO3Af' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '{"inc": 0.203690416162293}' \
    'XcgwC3IN6tvKgLB9' \
    'QmJIOq9dP5szG71u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '{"additionalData": {"tjsQ4CrRb9gUCeVz": {}, "7fWbZIdhevfZvyV7": {}, "AcodcZwKjYDdmJOl": {}}}' \
    'zwm9Su4FnS98Qqft' \
    'Sjq7sn8yreciPLfk' \
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
    'VyyJsbGpO6JgehDJ' \
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
    '{"cycleIds": ["XIjfJKyFlM0u1uuo", "ZWu4yA3r0u4q1bTH", "xEN7JlZc8LMq1o2j"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'Vdn9yVoSlKNchPHN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'L4X3LLaGPGdqLE8S' \
    'ohhhuiTnJarYYkHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 0.47324153117174617, "statCode": "dSzBXdxapwhd5IQY", "userId": "BQuxLvPuWYvE3fsN"}, {"inc": 0.3898038189193449, "statCode": "9Z9OhxXvCp9y7fLD", "userId": "2qfCXnlUnqxT1WsR"}, {"inc": 0.6376671688759302, "statCode": "MZcA92hzC7MNa8vV", "userId": "e4MHX6AgMep90Ayy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.7556872620050598, "statCode": "JyAK5PRMRMwdvl0h", "userId": "v6g62GxBW2tQF5tk"}, {"inc": 0.7313628987674657, "statCode": "jgJaMYvNQOsDa4bk", "userId": "cgepqtxjbrztee7Q"}, {"inc": 0.60123095043241, "statCode": "TGAak7Kaol01DK97", "userId": "D2xnik42miteR5eQ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "Ae1rzmmgqBPRmd6m", "userId": "O4oI8KDqebm83raN"}, {"statCode": "BJ5y7axEkvI4oxZE", "userId": "DxGiBnNbn0zaf7Ca"}, {"statCode": "OSlHXrUSA6sMJzA5", "userId": "mtqISQ83TTbtefXW"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    '{"capCycleOverride": true, "cycleIds": ["2l3hPjNDKv2LWfXq", "xgC1Ge9PdbTTAJ2G", "p1r0sVZ6LJAOddIL"], "cycleOverrides": [{"cycleId": "jr8fS79En3wYowBd", "maximum": 0.17584389795615674, "minimum": 0.01272650345483517}, {"cycleId": "Z3y6i38XQjLDRqkp", "maximum": 0.14440186224452622, "minimum": 0.5146096543329901}, {"cycleId": "K5BtiQ272Uo9UBJW", "maximum": 0.22622800576380897, "minimum": 0.06426117052198788}], "defaultValue": 0.24756563565647582, "description": "dwsX1jorcyR0x3Yi", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.5259144509865498, "minimum": 0.662242929034752, "name": "RQBCgIs1Q2lzxl0y", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "77TTh4gUoj8u2WRc", "tags": ["Y48F1dl1q92m3iRl", "LiEtzVlnkflfn7pH", "fnBAk0CwiAsR65yQ"], "visibility": "SHOWALL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'ssuHdGmxncCEr0Kc' \
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
    'geqzGbruNB72HHMk' \
    'jzyBB4UFKiaoV0VO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'em2yqPsMFxKybPkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "uS6x9cLJ1APnNlsa"}, {"statCode": "2bRBr27fVMWuAfDq"}, {"statCode": "LMR919IZPKOKiAVQ"}]' \
    'XXOmqFHLbyXmgCNi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'XH8uenbC5CphgMwe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.06992910744355008, "statCode": "xsIAP5vHLjBJ9iqM"}, {"inc": 0.04265255734383688, "statCode": "BL4BzhDUjhKPwbwc"}, {"inc": 0.35077579411228554, "statCode": "QU5kG8bXGFmPAnOk"}]' \
    'DiJq4xQye7HqnVK3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 0.8101057369994028, "statCode": "VeOWs9mfVQh3jLBt"}, {"inc": 0.210449513114236, "statCode": "9pxpE7BYtzB0B4Cx"}, {"inc": 0.3964501212733611, "statCode": "QrUpIFvORxTi79Dp"}]' \
    'Sjb39ukcR6c2E2r3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "vk3IfAKEbqcNXSGC"}, {"statCode": "CvNowNmdpcJgF88y"}, {"statCode": "SNq4Mj7mulP4tQ6R"}]' \
    '1OqKVOTniBgLsNhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'gQ0JWZjNRSzOTqcV' \
    'NX3ahvxw9gwwhTnj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'N6wKZGW4y3f0R9s2' \
    'kndhhZhwAiLsZs4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '{"inc": 0.19822120456472303}' \
    'LDIQch4IjDq9aT3q' \
    'ZyI0rYsWucAkXsVJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '{"inc": 0.02407928902545764}' \
    'Xi7eRZa7WwIc895I' \
    'mqK6tVsaUq3stUh5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'J5Z9GiBiSAylX5cS' \
    '0IeHpWCugmfOL0QQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"pxsuD8PGqku59eFJ": {}, "rOXyDYz9vMUOPG0i": {}, "HDT8QbF7gHPTPQbv": {}}, "additionalKey": "Lt2NRqJGIKzLyH1y", "statCode": "72L13Ornyx34luLd", "updateStrategy": "MIN", "userId": "M8M0IW4oe8KDgy0x", "value": 0.8349180808585688}, {"additionalData": {"fAcNg14Ws8TIP1LK": {}, "iFQoLDvumfqrgSfn": {}, "x2h61X9dN1MGRXBJ": {}}, "additionalKey": "6mVV7JS9qjNLwvI8", "statCode": "JdiY3RRiLilmOGF6", "updateStrategy": "INCREMENT", "userId": "S2DRfGt9GlyZVQ4X", "value": 0.9480168725224126}, {"additionalData": {"7tPZSTpPq3xjrElv": {}, "vDgw0ag7kSWE0Hiq": {}, "m5IuLryiEXqvUWDj": {}}, "additionalKey": "U1G0EVjVZw1ToLuP", "statCode": "akQN1MpOs1RVFrcg", "updateStrategy": "OVERRIDE", "userId": "35KbtZTGJpqgl2Iz", "value": 0.6295451247107073}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'XGTuQPIDpor7t1aJ' \
    '["LNNz6QIVC9Mfuc8V", "OsnmnlVljdWYmELe", "74p38vumnxAnYBTx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'aTIz0jcgDI8Pkz96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"vd80msqIm5bufnBq": {}, "rpLeqhwVhjnnjKME": {}, "mtbiWsAQHbMrKYi0": {}}, "statCode": "Zxs5SWCqZXHLLa31", "updateStrategy": "MAX", "value": 0.6791514135377062}, {"additionalData": {"TQT95pFJUAJsyAfe": {}, "KOufV4f15NohXu6o": {}, "pxQGRt6PqlkL0diR": {}}, "statCode": "hLC10ih2EQfY3XCv", "updateStrategy": "MAX", "value": 0.8780850921832322}, {"additionalData": {"xaNfmn8Onb1a9gMz": {}, "0F2UBRmMhAbUWmFh": {}, "dYLWzMuv3zkUY0n0": {}}, "statCode": "BAZkwbYkBLyO6A0F", "updateStrategy": "MIN", "value": 0.7395693815787462}]' \
    'jCrJHXGXku2YVuOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["sxe6A6RpmKDebNky", "lbynkgT9vayLLiiz", "hxHmnrrV9ZGWrZ05"]}' \
    'ac7Ge6zKJdlt7rjF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"5RaJwvkWVco2LTo5": {}, "ijlvDF8qBWCQ9dLW": {}, "YyS8zdhMeBXH8x6H": {}}, "statCode": "dVfZVDAiU6iJOF7J"}, {"additionalData": {"KZFNk2NKy59X8iOg": {}, "2sVBiCoeC5weXJl7": {}, "PeiMH8z8dVej8N2y": {}}, "statCode": "v6VTnOK7xAvM7tuL"}, {"additionalData": {"81lsR7xxSVp3Gd2T": {}, "K0HzYviTgYmx82JV": {}, "BRLPZ6Iz8tne5dbg": {}}, "statCode": "uBF6Gsvvdl8jHz9x"}]' \
    '7XZIjU4IK9lOLaZa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'MphKCqTq3EVheJjo' \
    'EEXBLIxGnNuhoJM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    '{"additionalData": {"WWPvvCiCf33ViEdq": {}, "QpoGkUWNizk5UcPA": {}, "Gv6c1ESC6hZYTYZb": {}}, "updateStrategy": "OVERRIDE", "value": 0.06532953744939896}' \
    'qWBdQuWfgBAKx27M' \
    'SBqabUXOGkkoMUZn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"1YXj5zFZeOCOR9Nv": {}, "BQZSJPOIKrRBrYVz": {}, "i9ui3lvozTt9TsH7": {}}, "additionalKey": "A0TuU2aL4bPkk11s", "statCode": "ys6GdkDcos5uVJ0B", "updateStrategy": "INCREMENT", "userId": "znTgDIwZIRWf6T3b", "value": 0.4009578473790638}, {"additionalData": {"2kYSCdnFKLc0xcTj": {}, "qjdcEfU61OJYMnW4": {}, "9rWynp1ck1vT90C6": {}}, "additionalKey": "o86cSRL9cgbUmulh", "statCode": "e98oaFKlQicdrxVh", "updateStrategy": "MIN", "userId": "iiOQAD77ci0vfWVZ", "value": 0.24146605499775442}, {"additionalData": {"RRMPi57HyKKz5nyI": {}, "6ulKNKoXa0dgx1Jg": {}, "jC56pda3YhtQxpCY": {}}, "additionalKey": "ME6x21pdX2QSPAd9", "statCode": "sxoLnWGP1PafIjLX", "updateStrategy": "MIN", "userId": "ce0KbNN7Ycl2JfmQ", "value": 0.24429429476147146}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'lvGjVQ4aebjfgGu4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"72oWJlfglLM4xjfk": {}, "NL4lU6jaGfsD1cfs": {}, "wmeFpvtDtetoQVFL": {}}, "statCode": "8LNW11vtpaTxi7k4", "updateStrategy": "MAX", "value": 0.999343454279926}, {"additionalData": {"jRCn48bvkCPfKofw": {}, "XOIZZQAJza84lKKm": {}, "VOaTS6xBbNrSUAW2": {}}, "statCode": "ak7ISDrBVg6NuDZv", "updateStrategy": "MAX", "value": 0.026209371272083448}, {"additionalData": {"1kuUfNfUDe4g7q6P": {}, "HEaqbzHvDDl1jiLw": {}, "3XMGBA6JXDpA1tIC": {}}, "statCode": "45C0oaGouFu4hXON", "updateStrategy": "INCREMENT", "value": 0.21728826871059914}]' \
    '8jAdTn6xBhrciryL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"m67rkadH5Y41SLjC": {}, "PrFa05Xl5TPC5GOD": {}, "S44bmm7jPdKLddfd": {}}, "updateStrategy": "MIN", "value": 0.6630578395451037}' \
    '2WKmCRRXBxlalCHt' \
    'WlKxLpS8fLWoQ5nu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
