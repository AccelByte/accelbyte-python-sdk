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
social-bulk-get-stat-cycle '{"cycleIds": ["bPngUNB1vRodwpzS", "6DaDpv8N7ZQVqGj6", "oDLjWjkY1aXlFcDt"]}' --login_with_auth "Bearer foo"
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
social-create-stat '{"capCycleOverride": false, "cycleIds": ["OtXi3choQrpOsDBU", "79ZZPYGu0rdlgdWy", "5SepjChB3V0v52Dl"], "cycleOverrides": [{"cycleId": "ym6puQ23xoJ8aeCn", "maximum": 0.008015318635925528, "minimum": 0.6127826328044578}, {"cycleId": "pUKp44YUDjasWIPU", "maximum": 0.34991329621526146, "minimum": 0.19996545679792355}, {"cycleId": "EejtGeoyIPa8ZRrv", "maximum": 0.15264149132678073, "minimum": 0.15660600519286194}], "defaultValue": 0.9639393332061913, "description": "il35MXbN9oCMNqq9", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.5494607844760753, "minimum": 0.3830343397717245, "name": "jUkl535X3ateEKDp", "setAsGlobal": true, "setBy": "SERVER", "statCode": "b6i5lZC9xv32e8c5", "tags": ["PubTDIHrvqAThuwj", "DUPVJf6c2Z0QZxfg", "csSovoqsZNBdte9N"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
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
social-bulk-get-stat-cycle-1 '{"cycleIds": ["fNWql4nmwAft4gqk", "0jJLHC9LxhvNXTwG", "NNlWkD9eOziYRFOn"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'BCtohLtl9Zuhytm5' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'UDrT6QXCs5SPBbRP' 'ZTF6oQAXVG7tnsZg' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item '[{"inc": 0.9240994134230933, "statCode": "QgXjvyGJPN4eXbJE", "userId": "5Vs2GcyomQoIXimB"}, {"inc": 0.5648573220061599, "statCode": "ehyxlNsjUgxBkF6w", "userId": "FPoJeQediogEhhM2"}, {"inc": 0.28292168216448643, "statCode": "IizGdKvOPdq5xrgx", "userId": "Smy1DN9LFkYW5DQy"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value '[{"inc": 0.15385804021369198, "statCode": "4bj5Ro2ogaKt2ujQ", "userId": "Sa3Zdb65UXmy0Zp6"}, {"inc": 0.1347106192034444, "statCode": "IaTIKUkmkk9QM0NB", "userId": "MA9ORxpzwLR2AK6e"}, {"inc": 0.7908365016126964, "statCode": "UGPJsw1fiP80G9Pc", "userId": "lxcft2ulIJzPyrVE"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 '[{"statCode": "iOG4UcqsuGKHhMRW", "userId": "LVd3DlhLuIpomM8s"}, {"statCode": "m1MiaI1mX2tJoARt", "userId": "dbBe7udsMrok0WvG"}, {"statCode": "YYnx4V709xbnGezK", "userId": "sDwG2omOR2nvYI9T"}]' --login_with_auth "Bearer foo"
social-create-stat-1 '{"capCycleOverride": true, "cycleIds": ["WyerCSa8SRgwsAj1", "jZpjvsugAOS7u8Ri", "ik1jglaDXTvKCWwN"], "cycleOverrides": [{"cycleId": "TAhd2wrS0uPdjhdi", "maximum": 0.22010864138186348, "minimum": 0.24772340966222495}, {"cycleId": "ng5BLy8wbhMssAHj", "maximum": 0.0119883776218076, "minimum": 0.2572014414749628}, {"cycleId": "IkY9Rf4wP57dBZNR", "maximum": 0.9769106252403886, "minimum": 0.9686281249845696}], "defaultValue": 0.8183943632941597, "description": "bCtmKy8M9zVrjfGX", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.4350136541789411, "minimum": 0.6898625787780174, "name": "UoY1GjlIIk0iKoTT", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "1ORYcmQbTU5JX8cc", "tags": ["LjMXJRk0eaKQDOJv", "2aCNYIWekp18lOC3", "rTefglSs6g4iY9u0"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
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
social-bulk-update-user-stat-item-v2 '[{"additionalData": {"26IUJNvYuGRUvpZa": {}, "HCuESOiIZsMfB4ZH": {}, "3mtgWgU4pCAKxeE7": {}}, "additionalKey": "0CaunQNxot371W9G", "requestId": "4AvQkqsGnmyo5JJT", "statCode": "UVmb8GEXFTlEMEsF", "updateStrategy": "OVERRIDE", "userId": "if3BOdkocVTd4Bxq", "value": 0.5180620026852448}, {"additionalData": {"WV6mTJ0sQs6XNbjv": {}, "qhnUVLWu8olKdxL6": {}, "ozRmDD0jJvlfV5Oe": {}}, "additionalKey": "mPYdYT7DROCjtuzF", "requestId": "MbAG9YI89hmguB8F", "statCode": "OTjMLo4b9rIzqYkE", "updateStrategy": "MAX", "userId": "KF7SUQPLG59e0k5Z", "value": 0.3082829893212059}, {"additionalData": {"X6wK7PpUlcIW32iK": {}, "7MGt1ixY5rA1WoVe": {}, "JIePF8ZrQzP4zvtd": {}}, "additionalKey": "xdbZUpd6FJtHJ1py", "requestId": "VwyKQLY6FEO65Rb3", "statCode": "z7CYLM8IlsHqffnr", "updateStrategy": "INCREMENT", "userId": "Z44B1GZgKg4uKxaC", "value": 0.10507453119934851}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'cGLuC3brWdTYCfHk' '["IySok5DiXZtLW87r", "Gysryod3dNQrmsAp", "RA6HX3RwrKt2ecoz"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'L0TOg54vCE48L5oL' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '[{"additionalData": {"F6M4lNa4JUMSHNgq": {}, "RqCV7usamANkZlOX": {}, "9Sfo95HgXqKhTPkw": {}}, "requestId": "fLM9uSybRzWek2gZ", "statCode": "vRrvr0n9d9lvccKM", "updateStrategy": "OVERRIDE", "value": 0.12702272667453873}, {"additionalData": {"rTrcBE2ItBS3KtKZ": {}, "We8aoFzAyBME74HU": {}, "tipUWYhWV1qx8CzP": {}}, "requestId": "ML52faXUr9Sk4lq2", "statCode": "faBcAXXKlhvyH8pa", "updateStrategy": "MIN", "value": 0.182244802825397}, {"additionalData": {"fDTk8aG40NlncceI": {}, "ZSwgAIkgzh4pTU0A": {}, "m4DZhl0bQxFJ3sWC": {}}, "requestId": "qQpQ2FbKPFMycMSQ", "statCode": "4qfAacR0LgB5BUXv", "updateStrategy": "MAX", "value": 0.0888648632057818}]' 'PlNos4yBRjrERHEo' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id '{"statCodes": ["GVxYheR3j5mNZ6vw", "nAZR8GmEu0q1p6QC", "yY6vSkVFWdsbYuVE"]}' 'v7K8Asvt1j1Rx59h' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '[{"additionalData": {"esNWy2NvZ85DDKDA": {}, "F8KDsBZOuYQJ03BA": {}, "HZ7c53q7akMpcmnn": {}}, "statCode": "x6RVBrop9v7aZK3h"}, {"additionalData": {"65hbN15zfQSfQrtf": {}, "F3TQN0OcNDLr36vz": {}, "ohZyjMQAg5mPYhrL": {}}, "statCode": "TyU8OhgfY9JQYGF4"}, {"additionalData": {"bYXEcENx9xZlAcho": {}, "b44lONDDwMvgI0Hl": {}, "yPR7wZNiVsF6xG2m": {}}, "statCode": "XEQdbzIVy8alncV7"}]' 'vWgSHdfo07UctPEr' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'qxyMyOK06MqQBErx' 'gjVBycvU4PbmRDcr' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '{"additionalData": {"g0DjQjBECXvea7H1": {}, "m2lJFRZ3ZprZ60zM": {}, "jhTHeh94TSenE5hC": {}}, "updateStrategy": "MAX", "value": 0.16878568268382088}' 'If5weqZ18MH57l2Z' 'srh90ETtYmGukz3M' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 '[{"additionalData": {"nlrjcHp6B8Vj7rXF": {}, "gDnDkdZ9bpjb1tdA": {}, "3QhjCMW64f4XhIjS": {}}, "additionalKey": "oTB2NMKtezapPr2Q", "requestId": "EPx3zTxBGtEJIYpp", "statCode": "uUSsKoHw2hyd12uS", "updateStrategy": "OVERRIDE", "userId": "0dW8rX2MVUGKSZ4G", "value": 0.04192303198323766}, {"additionalData": {"Lkt4pK32sJxlZcCT": {}, "pTdRtCHvuk6B6XTm": {}, "SLyn50sigBVZxiKd": {}}, "additionalKey": "V57GvRyd9UuL02Le", "requestId": "8HSCslsDd4M1F5qR", "statCode": "IblS7Nz81GRazPAA", "updateStrategy": "OVERRIDE", "userId": "jfBoldFOyqA2clJ5", "value": 0.10101506754076439}, {"additionalData": {"EOaCgM6Yn6RugbNE": {}, "IpGBFUjOn5mM7k8n": {}, "bLzvtCIW5ynMKquU": {}}, "additionalKey": "icAeIVXtoWAXhMlW", "requestId": "4tLqX7OICf5oD1e6", "statCode": "oI9FmYel0kOw72o8", "updateStrategy": "MAX", "userId": "3ZOokZB4cXnAXyuG", "value": 0.4055658734850458}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '6LlxHv8SwyagYvDJ' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '[{"additionalData": {"3w3UNgIGj2jZtEYT": {}, "8sIPSE1XXPzySa0s": {}, "ZoFS6xCOWMpyh9pM": {}}, "requestId": "sQgb64ELbzDMwyo4", "statCode": "nIRysQdbufXjYnSo", "updateStrategy": "INCREMENT", "value": 0.15921069105162533}, {"additionalData": {"mv67nuHCXWfwnwGi": {}, "oVwVzmmBVVFfpqx1": {}, "AeLtzcPJ3jtDYBo4": {}}, "requestId": "FUTH7CGfKSyxgRR1", "statCode": "DiCqSMzpqIFGLkDs", "updateStrategy": "OVERRIDE", "value": 0.420187747136228}, {"additionalData": {"CC1RgBfoNrHlFi2q": {}, "JLgmBLE35YhyiDV9": {}, "0SeI5yppBHoytVzn": {}}, "requestId": "CgNyx9fbT63ShEh8", "statCode": "PbGikLjgjcj34uul", "updateStrategy": "MAX", "value": 0.9483850803530488}]' 'FYBZsWFbr3RSP0W9' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '{"additionalData": {"nBhvhf8Q0DtJMcYQ": {}, "dN66bswAgt65X4N1": {}, "LQZmB61JMdtwCVUr": {}}, "updateStrategy": "MAX", "value": 0.6894439743781626}' 'ue84dwmbwFEnAZaW' 'sQJtRYoagRJK5PX9' --login_with_auth "Bearer foo"
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
    'UcOvhPyE11TRT2SK' \
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
    '{"cycleType": "MONTHLY", "description": "8MpusuhhDJ5slzgi", "end": "1996-07-20T00:00:00Z", "id": "ZEtyd56LfxnbY97j", "name": "jYgXchCbkXX26uEd", "resetDate": 59, "resetDay": 61, "resetMonth": 10, "resetTime": "Wh9YWqc0qgV6d9yO", "seasonPeriod": 12, "start": "1985-10-12T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    '{"cycleIds": ["JlhXbWhbwPwToC6k", "iwIeShF9RKb9vvxu", "MDtDMrentgn3Dhqc"]}' \
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
    'njVwVnzaqSfJiQFC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '{"cycleType": "DAILY", "description": "gXoda0kg16yUSpSO", "end": "1984-09-10T00:00:00Z", "name": "jHJWwfCjYwWkLob9", "resetDate": 12, "resetDay": 36, "resetMonth": 76, "resetTime": "Ndb8Otq6j1mqUav7", "seasonPeriod": 21, "start": "1983-11-25T00:00:00Z"}' \
    '5HAQltnSojV4jT65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'yclX2FtAz0vJjFIY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    '{"statCodes": ["WOaNdsimmkW2miH3", "xRHAKy4QxZkaXZ7v", "miEd0JPxVyQpshaD"]}' \
    'wNqTbbFMXAMfVXe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'GZeMgsRsmH1EQrYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'kPKTPOlhTtSiZNCx' \
    'uogFteTHJe4BhSSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    '[{"inc": 0.16406511399336088, "statCode": "QD6WmOt6D7ufFVTO", "userId": "hvQpfbBke8aEdd36"}, {"inc": 0.3740714561410565, "statCode": "j6wySoltDxsbzxrl", "userId": "aKEfkoYjY2o6ouRW"}, {"inc": 0.9870730997473032, "statCode": "UtNquwC3WgumrIz4", "userId": "NhGztZpr4U4fwQIi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.6096819945529608, "statCode": "XgmRasvjO4lj8m3X", "userId": "EwP2b4gd3xOeii8J"}, {"inc": 0.21536850534350627, "statCode": "mssep2xD2NY0kABe", "userId": "Gs9yxahld1pO0Gyf"}, {"inc": 0.9291387281230615, "statCode": "PO3COyMvczgEpzZ3", "userId": "FbtxfhcRC7IVYa6i"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'Z5uFRYNn3SHiWxF0' \
    '["YbuU5ar5qTLWUCy0", "Afgc050XIZRW491e", "94mQjVOOBnIWhunE"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    '[{"statCode": "lqZUodp3IhtCSHy1", "userId": "ei1fIrPvfHnRN06E"}, {"statCode": "jRwEQlNapJRfk4f9", "userId": "Zcw1pEHAyNFxcVTK"}, {"statCode": "uAQTGh5BxjWOozGo", "userId": "DtsUuYo5p8ED5QZA"}]' \
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
    '{"capCycleOverride": true, "cycleIds": ["js69FTFVGUVhvKhJ", "UNGPTBxiFFCrn7dj", "Cmeisql14mUHVbMP"], "cycleOverrides": [{"cycleId": "imNhcZsU3VAdMDcb", "maximum": 0.9134261065495806, "minimum": 0.26557429040350133}, {"cycleId": "lkiFAamqvZI2Kwjq", "maximum": 0.6656977665959348, "minimum": 0.4437018686683094}, {"cycleId": "iWXade41s3rH34mB", "maximum": 0.871377698595972, "minimum": 0.3964678587048721}], "defaultValue": 0.6625632678634237, "description": "lRpWjmHZAAvKTH8M", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.5593516252858038, "minimum": 0.11102745594745023, "name": "0CzkguwuJCW7EEFB", "setAsGlobal": true, "setBy": "SERVER", "statCode": "lmM5nQFMGzs7fzjg", "tags": ["V30lnroQehMDli6t", "yc44mEh9tRk8knYS", "9unQLYXxm09wpGAb"], "visibility": "SERVERONLY"}' \
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
    'xTjQ7gkZEY8rG0q0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'Q2Qd2JzRbkF2I03d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'IjvBbA6bfbYaJCJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '{"capCycleOverride": false, "cycleIds": ["5GloFSKWM1eym5yd", "5br34rBBN9tU6TDm", "C6p25xCWTqUOYZEN"], "cycleOverrides": [{"cycleId": "J1QHZQxPRXH7uxBJ", "maximum": 0.4992520864522154, "minimum": 0.49629725959098003}, {"cycleId": "CQE1li3Bg7Jxc9pU", "maximum": 0.2130407341724292, "minimum": 0.8278006243354238}, {"cycleId": "mvhidwCkZwqjYLfT", "maximum": 0.1395383560565303, "minimum": 0.46122663065707536}], "defaultValue": 0.6519492879947406, "description": "1NDBvQvRPnAz4VzW", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "mut9H9XyWI8bp8fQ", "tags": ["zccA8wvLsWUNd6lP", "xRuX91uYmtrHJbEG", "TUj7YjERL1rEQG02"], "visibility": "SHOWALL"}' \
    'vqDejvqklTSvDwuO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'rP9lzpiX0VuFpZum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    '7izxe7NPzjOa8E7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'Y76PxLv9HBEUe89A' \
    'wEw1HO4FnKtx4XLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'AmlDr19uJ3nq6Ver' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '[{"statCode": "zVCcI8y3Cz0YqCKU"}, {"statCode": "h5RD9vNAp4jinFpn"}, {"statCode": "Q5xF9wwbvMZyeDeR"}]' \
    'nVfPUa6xVVBcq3wZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.25016945923179756, "statCode": "FIYeAg79HcLJXJ7m"}, {"inc": 0.24666741326885389, "statCode": "VI6eTYAjdPlCiQQC"}, {"inc": 0.8959132600977202, "statCode": "5cj4KyOVgvnWbfRJ"}]' \
    'tsB7cUQZ2QUAxJrI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 0.6302033947007941, "statCode": "PXppPNO3AfmXcgwC"}, {"inc": 0.8909856721953473, "statCode": "IN6tvKgLB9QmJIOq"}, {"inc": 0.9939114889321672, "statCode": "dP5szG71utjsQ4Cr"}]' \
    'Rb9gUCeVz7fWbZId' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "hevfZvyV7AcodcZw"}, {"statCode": "KjYDdmJOlzwm9Su4"}, {"statCode": "FnS98QqftSjq7sn8"}]' \
    'yreciPLfkVyyJsbG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'pO6JgehDJxEN7JlZ' \
    'c8LMq1o2jZWu4yA3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'r0u4q1bTHXIjfJKy' \
    'FlM0u1uuoVdn9yVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '{"inc": 0.7129673255248871}' \
    'lKNchPHNL4X3LLaG' \
    'PGdqLE8SohhhuiTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '{"additionalData": {"JarYYkHBDdSzBXdx": {}, "apwhd5IQYBQuxLvP": {}, "uWYvE3fsNy9Z9Ohx": {}}}' \
    'XvCp9y7fLD2qfCXn' \
    'lUnqxT1WsRNMZcA9' \
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
    '2hzC7MNa8vVe4MHX' \
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
    '{"cycleIds": ["6AgMep90AyyUJyAK", "5PRMRMwdvl0hv6g6", "2GxBW2tQF5tkTjgJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'aMYvNQOsDa4bkcge' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'pqtxjbrztee7QLTG' \
    'Aak7Kaol01DK97D2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 0.37824366212287963, "statCode": "nik42miteR5eQAe1", "userId": "rzmmgqBPRmd6mO4o"}, {"inc": 0.558072124250172, "statCode": "8KDqebm83raNBJ5y", "userId": "7axEkvI4oxZEDxGi"}, {"inc": 0.445946216774323, "statCode": "nNbn0zaf7CaOSlHX", "userId": "rUSA6sMJzA5mtqIS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.6922012228091685, "statCode": "83TTbtefXWznDe4L", "userId": "QdXfFBii2RAMEX5R"}, {"inc": 0.6256032126858132, "statCode": "jBFVZGYzQqV8d9mD", "userId": "dUIoiIJFNxuNOmUS"}, {"inc": 0.7888372949430221, "statCode": "w18T1IxVWCxdvPL9", "userId": "e4P01vxP8xj1LyEi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "rURERnEMzpImW6sj", "userId": "AHyCK5tNanGBrkzU"}, {"statCode": "vck3xTtmOFMebS4A", "userId": "dlNzwog2IhErkNhN"}, {"statCode": "cECWwchW6zL9SkbL", "userId": "lrNXnGanMazb8jvR"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    '{"capCycleOverride": false, "cycleIds": ["xncCEr0KcgeqzGbr", "q92m3iRlfnBAk0Cw", "iAsR65yQ9ssuHdGm"], "cycleOverrides": [{"cycleId": "uNB72HHMkjzyBB4U", "maximum": 0.5036420693631035, "minimum": 0.5878484812552071}, {"cycleId": "iaoV0VOem2yqPsMF", "maximum": 0.3723616680478653, "minimum": 0.5932493582204903}, {"cycleId": "ybPkbuS6x9cLJ1AP", "maximum": 0.2204257884406441, "minimum": 0.6410696583820839}], "defaultValue": 0.17810173800877505, "description": "sa2bRBr27fVMWuAf", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.600691132822434, "minimum": 0.6221008341804233, "name": "R919IZPKOKiAVQXX", "setAsGlobal": false, "setBy": "SERVER", "statCode": "q2OspCZbt3Uta5I0", "tags": ["UMS93yOxNInDByhn", "LETRpABAmO2EGvJ4", "uGcL1koyHjCH5olY"], "visibility": "SERVERONLY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    '5kG8bXGFmPAnOkDi' \
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
    'Jq4xQye7HqnVK3YV' \
    'eOWs9mfVQh3jLBtn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    '9pxpE7BYtzB0B4Cx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "yQrUpIFvORxTi79D"}, {"statCode": "pSjb39ukcR6c2E2r"}, {"statCode": "3vk3IfAKEbqcNXSG"}]' \
    'CCvNowNmdpcJgF88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'ySNq4Mj7mulP4tQ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.7072937448596271, "statCode": "1OqKVOTniBgLsNhd"}, {"inc": 0.10106693178201542, "statCode": "Q0JWZjNRSzOTqcVN"}, {"inc": 0.8007117681418295, "statCode": "3ahvxw9gwwhTnjN6"}]' \
    'wKZGW4y3f0R9s2kn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 0.048856599431708614, "statCode": "hhZhwAiLsZs4pmLD"}, {"inc": 0.5538166906578245, "statCode": "Qch4IjDq9aT3qZyI"}, {"inc": 0.8526991487668788, "statCode": "rYsWucAkXsVJbXi7"}]' \
    'eRZa7WwIc895ImqK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "6tVsaUq3stUh5J5Z"}, {"statCode": "9GiBiSAylX5cS0Ie"}, {"statCode": "HpWCugmfOL0QQpxs"}]' \
    'uD8PGqku59eFJrOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'yDYz9vMUOPG0iHDT' \
    '8QbF7gHPTPQbvLt2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'NRqJGIKzLyH1y72L' \
    '13Ornyx34luLdvts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '{"inc": 0.7287683401110656}' \
    'KXMjiw6gYPvfn2Qt' \
    '9iyq3Nyk8ncu2Z3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '{"inc": 0.46813926278904405}' \
    'HH9WaVO4iKhDcJ7T' \
    'CcNIsQ3PuppUxDSK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '8aOTGMudcxlCV4cN' \
    'bJGQ57lPdinpjS2D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"RfGt9GlyZVQ4X67t": {}, "PZSTpPq3xjrElvvD": {}, "gw0ag7kSWE0Hiqm5": {}}, "additionalKey": "IuLryiEXqvUWDjU1", "requestId": "G0EVjVZw1ToLuPak", "statCode": "QN1MpOs1RVFrcg2C", "updateStrategy": "OVERRIDE", "userId": "KbtZTGJpqgl2IzNX", "value": 0.5291373411566048}, {"additionalData": {"TuQPIDpor7t1aJLN": {}, "Nz6QIVC9Mfuc8VOs": {}, "nmnlVljdWYmELe74": {}}, "additionalKey": "p38vumnxAnYBTxaT", "requestId": "Iz0jcgDI8Pkz96vd", "statCode": "80msqIm5bufnBqrp", "updateStrategy": "INCREMENT", "userId": "D32vvL28FPwTiXfL", "value": 0.047321012531548856}, {"additionalData": {"xDC9Ynd02mECIQhf": {}, "IhHtADUQ9zimQTQT": {}, "95pFJUAJsyAfeKOu": {}}, "additionalKey": "fV4f15NohXu6opxQ", "requestId": "GRt6PqlkL0diRhLC", "statCode": "10ih2EQfY3XCv4hd", "updateStrategy": "INCREMENT", "userId": "a6FdZhNMd1onFjGR", "value": 0.024962491348893612}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'xtABPXDmgNEJBhgG' \
    '["q5GIDhNC66szbCCf", "73IFbRkPSSITz4Tj", "CrJHXGXku2YVuOzh"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'xHmnrrV9ZGWrZ05s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"xe6A6RpmKDebNkyl": {}, "bynkgT9vayLLiiza": {}, "c7Ge6zKJdlt7rjF5": {}}, "requestId": "RaJwvkWVco2LTo5i", "statCode": "jlvDF8qBWCQ9dLWY", "updateStrategy": "OVERRIDE", "value": 0.4854275637940776}, {"additionalData": {"UmUXGM5anIloyj9l": {}, "hbvuQdW2jwKUckc7": {}, "94ryY91lX8DD4MYX": {}}, "requestId": "lrJ81lHvv9rqvEoM", "statCode": "8YmVjAkO3HKsEp6K", "updateStrategy": "MAX", "value": 0.72597684908515}, {"additionalData": {"nOK7xAvM7tuL81ls": {}, "R7xxSVp3Gd2TK0Hz": {}, "YviTgYmx82JVBRLP": {}}, "requestId": "Z6Iz8tne5dbguBF6", "statCode": "Gsvvdl8jHz9x7XZI", "updateStrategy": "MAX", "value": 0.31405867451014435}]' \
    'oo0qvxphTLEEBGTt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["SmylT1YtxIq73aMb", "48jISd97KORRhxSW", "ZyTjdKNKgYazujsm"]}' \
    'LWLNfHRD3V15QaGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"L46LuxJF3sbeqWBd": {}, "QuWfgBAKx27MSBqa": {}, "bUXOGkkoMUZn1YXj": {}}, "statCode": "5zFZeOCOR9NvBQZS"}, {"additionalData": {"JPOIKrRBrYVzi9ui": {}, "3lvozTt9TsH7A0Tu": {}, "U2aL4bPkk11sys6G": {}}, "statCode": "dkDcos5uVJ0BJfZ0"}, {"additionalData": {"jvA54CSqZFDsO1sk": {}, "RjOU1SMfQVQa6blj": {}, "9Rdd85bdYUumPKVS": {}}, "statCode": "ZCg3XTc9vQe0dHJf"}]' \
    'F6KIuvnRCa9JktyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'dxkZKrEWFw9GYxji' \
    'iOQAD77ci0vfWVZo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    '{"additionalData": {"RRMPi57HyKKz5nyI": {}, "6ulKNKoXa0dgx1Jg": {}, "jC56pda3YhtQxpCY": {}}, "updateStrategy": "MAX", "value": 0.4870425311301779}' \
    '6x21pdX2QSPAd9sx' \
    'oLnWGP1PafIjLX8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"e0KbNN7Ycl2JfmQp": {}, "lvGjVQ4aebjfgGu4": {}, "72oWJlfglLM4xjfk": {}}, "additionalKey": "NL4lU6jaGfsD1cfs", "requestId": "wmeFpvtDtetoQVFL", "statCode": "8LNW11vtpaTxi7k4", "updateStrategy": "MAX", "userId": "9jRCn48bvkCPfKof", "value": 0.3693022711163183}, {"additionalData": {"XOIZZQAJza84lKKm": {}, "VOaTS6xBbNrSUAW2": {}, "ak7ISDrBVg6NuDZv": {}}, "additionalKey": "Pb1kuUfNfUDe4g7q", "requestId": "6PHEaqbzHvDDl1ji", "statCode": "Lw3XMGBA6JXDpA1t", "updateStrategy": "INCREMENT", "userId": "C45C0oaGouFu4hXO", "value": 0.6304544092505399}, {"additionalData": {"gUwJnUpryDeRcpUv": {}, "lrw2MwC1uuokpaIj": {}, "L0Vxe5n9Lx3QcFo9": {}}, "additionalKey": "gxOgvDc7xMrRKvw8", "requestId": "ISP2WKmCRRXBxlal", "statCode": "CHtWlKxLpS8fLWoQ", "updateStrategy": "OVERRIDE", "userId": "nuJhatQPxR7dvBVC", "value": 0.9216141559629522}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'zgOKLTDmHe8c1eJ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"sde7Ryt4udIv22M1": {}, "8uux9xBomQFPFWy5": {}, "cwNPI6aFo0MVwDZC": {}}, "requestId": "IXFNEL3uWVRz3V7Y", "statCode": "bJM3bNLWHAbCZixe", "updateStrategy": "MAX", "value": 0.04016782260141416}, {"additionalData": {"Q6O30lpzcBQMAEcN": {}, "cJqrKxnMzSYoc4Zj": {}, "iMY4H34B6wVd8ipc": {}}, "requestId": "KDwQeUWtjCC2UH6j", "statCode": "zMO3AfmOS5mQNyRP", "updateStrategy": "MIN", "value": 0.5109263265805998}, {"additionalData": {"PNP56l1AT6OLKmZh": {}, "CZxxPPdPwOtEuWBS": {}, "O2jJepUnEEgja2mI": {}}, "requestId": "E2kLTnJwc5XmkCuL", "statCode": "5W4tKt6G3j9LYdG7", "updateStrategy": "OVERRIDE", "value": 0.676878718816811}]' \
    'W02PWsHiKYArAxnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"BfBfDlrQQuAc10Dj": {}, "jwMv4vrIPRtvhQIy": {}, "LarjaLOKnX51yAB8": {}}, "updateStrategy": "INCREMENT", "value": 0.9771327219516386}' \
    'YLmwtYgWGcA0h4G1' \
    'LZ1HaX5UBMbsF44V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
