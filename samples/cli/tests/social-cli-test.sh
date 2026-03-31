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
social-bulk-get-stat-cycle '{"cycleIds": ["oDLjWjkY1aXlFcDt", "6DaDpv8N7ZQVqGj6", "bPngUNB1vRodwpzS"]}' --login_with_auth "Bearer foo"
social-export-stat-cycle --login_with_auth "Bearer foo"
social-import-stat-cycle --login_with_auth "Bearer foo"
social-get-stat-cycle 'gOjchIua5tWEIC32' --login_with_auth "Bearer foo"
social-update-stat-cycle '{"cycleType": "DAILY", "description": "gY1TXp38zsCTCrbC", "end": "1971-12-10T00:00:00Z", "name": "uL0Sly6XM4OI18mA", "resetDate": 88, "resetDay": 76, "resetMonth": 78, "resetTime": "czNIicXm7agSrjJW", "seasonPeriod": 83, "start": "1971-12-17T00:00:00Z"}' 'REAu2D6QVKNCWP75' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'TB0i7pKxR8dl0zRV' --login_with_auth "Bearer foo"
social-reset-stat-cycle 'W4EZG9m0XcgGVbMq' --login_with_auth "Bearer foo"
social-bulk-add-stats '{"statCodes": ["SszE8GHavj7AorKs", "xwkosAVerXpc1C8X", "fwHuKeb9l3rGN9A3"]}' 'sNm84hddSpHt0P7M' --login_with_auth "Bearer foo"
social-stop-stat-cycle 'IIR7CkyF6C7duuyZ' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items '0GhDogqrhBRd8lDR' '6qVNPRZYdFLIAjGG' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item '[{"inc": 0.5674858188791598, "statCode": "ddVCvu9vx5KQ7KYn", "userId": "IuMBvaO35llzQRaT"}, {"inc": 0.9324202714469481, "statCode": "kPxUfofvnnSuB0y5", "userId": "WUlrMdI4sNveabnt"}, {"inc": 0.44868259205564254, "statCode": "SxTeIv53HGCiljvj", "userId": "KoyD6SCwGrncqmLt"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value '[{"inc": 0.1518722433862172, "statCode": "QHAf8TgoNm03VLis", "userId": "V6zwPuo3td6TC6I3"}, {"inc": 0.1832763030207929, "statCode": "MjGSWN2laRlxfcjH", "userId": "fYakUCTqGkE7wcWf"}, {"inc": 0.47315633753071085, "statCode": "slpJSqGAXQ0yYoNR", "userId": "Kd3IL5TAQ6iiPlSC"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items '2uE4o5Vwdo3fePqI' '["JA8IHtrkmu0hpDDW", "VAla2l5BYNtIuS5S", "5XUdjsoqwGyzzWi9"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item '[{"statCode": "gwQYv7t1o7TTr1Dm", "userId": "rhZv15T7quIOvBMc"}, {"statCode": "aYmvCkGZ5dAgqxpB", "userId": "FmaLoxozr6wfNPX2"}, {"statCode": "bOItRMvqtlB2jJCS", "userId": "QT279ZZPYGu0rdlg"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat '{"capCycleOverride": false, "cycleIds": ["hkkK6KKXNB3Gv0Iq", "RBaAkLnvxkT1X68c", "mDc3fxU8MyKrQpM4"], "cycleOverrides": [{"cycleId": "mF51TkhjYnaq6foW", "maximum": 0.34727053930874796, "minimum": 0.7992755215754995}, {"cycleId": "a3bMrXsDr6kILsSS", "maximum": 0.39911652978498113, "minimum": 0.4825982429531729}, {"cycleId": "dmykmoPYgc2L4jk4", "maximum": 0.601197850873372, "minimum": 0.23972943158936733}], "defaultValue": 0.8450331781700982, "description": "LSP0pf4IxjUkl535", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.7980589456189408, "minimum": 0.1750964491930096, "name": "sUC9b6i5lZC9xv32", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "8c5csSovoqsZNBdt", "tags": ["uwjRHpKKTlmVr9Xu", "e9NDUPVJf6c2Z0QZ", "xfgPubTDIHrvqATh"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'pf3vneSD2Tb3g7mS' --login_with_auth "Bearer foo"
social-get-stat 'QUhAEtrmjqU6YE3p' --login_with_auth "Bearer foo"
social-delete-stat '4lSck0ZHn5GI39YB' --login_with_auth "Bearer foo"
social-update-stat '{"capCycleOverride": true, "cycleIds": ["ipcCx9Zw5D2L7vIY", "1GXlvPG6bFYReVHQ", "hGGSyEW4ZJJ42d3P"], "cycleOverrides": [{"cycleId": "BddN8S48l9lyNApf", "maximum": 0.1864684982252216, "minimum": 0.37342561101293503}, {"cycleId": "qMrj3oZk03QXcKMD", "maximum": 0.8206979157414905, "minimum": 0.4733386061021079}, {"cycleId": "DxHSZjtqXyJ58f7G", "maximum": 0.04363832473342566, "minimum": 0.8733826502287724}], "defaultValue": 0.9488332054873553, "description": "SaiGVkydwYWQG26y", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.7293239407716042, "minimum": 0.45140416990647114, "name": "cvrbYCwZtxFHyPLt", "setAsGlobal": true, "setBy": "SERVER", "tags": ["Ct81P1ktfIovmv9g", "sR5cJcHm3SZLxoRD", "ilbyDPUIj88cekdq"], "visibility": "SHOWALL"}' 'FfRByjlBiuFM3FIo' --login_with_auth "Bearer foo"
social-get-stat-items 'Vk8T3GpAnkCmBUqg' --login_with_auth "Bearer foo"
social-delete-tied-stat '2SCnqntX9y1aZSWM' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'iVi10sG6vxkfUcmq' 'RRbceJ5i0EeDxOgB' --login_with_auth "Bearer foo"
social-get-user-stat-items 'nhhqElIaDml48wdN' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '[{"statCode": "FLTm5T50x9WT0GfH"}, {"statCode": "2rtOa4EXsXzOXQAk"}, {"statCode": "4mqrxzTtuLl4XlbG"}]' 'L8QOxtjzm8y2wNhm' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '[{"inc": 0.35667293233257635, "statCode": "oYZyI4EFZKBcYrCE"}, {"inc": 0.4345330617427259, "statCode": "E7WIsfmx40NLRc6m"}, {"inc": 0.9776874179871229, "statCode": "heKnWhzfe2NubeoK"}]' 'FeIaFQCYoDPICpnd' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '[{"inc": 0.3360554289139005, "statCode": "EEQlULdJz4mnRBkM"}, {"inc": 0.6370456147088626, "statCode": "xvvKgAT8mJrYq6hR"}, {"inc": 0.16674711973607925, "statCode": "loqxM3gpwxcfMy9X"}]' 'zjjI5YbsKoADkzJE' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '[{"statCode": "N2VHzih3bit0VWn3"}, {"statCode": "CO39PXDNxtXgeO3F"}, {"statCode": "gkXhjDzaQY3snn2Z"}]' 'kP7cFdP43e5dC9XI' --login_with_auth "Bearer foo"
social-create-user-stat-item 'BudfZgrbHDIDm4hM' 'zF4TxodenSrUTvfq' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'U0bfoMm5cTtFWbot' 'QyXJRcQWsmqPNs92' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '{"inc": 0.0673659575717882}' 'pxk0i8VxsZNereSv' 'f9699mCEHThUJkET' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '{"additionalData": {"AsSp7gh4TeUTkOkA": {}, "YfJB8AT9t4Tv207Y": {}, "2QD3oD5fLCr3OOlX": {}}}' 'Vv8ZGF7uYnGzpipN' 'DigNJma1MbqqZtfN' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'Wql4nmwAft4gqkNN' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 '{"cycleIds": ["lWkD9eOziYRFOn0j", "JLHC9LxhvNXTwGBC", "tohLtl9Zuhytm5UD"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'rT6QXCs5SPBbRPZT' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'F6oQAXVG7tnsZg5Q' 'gXjvyGJPN4eXbJE5' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item '[{"inc": 0.7582042857393838, "statCode": "s2GcyomQoIXimBJe", "userId": "hyxlNsjUgxBkF6wF"}, {"inc": 0.6762168411735996, "statCode": "oJeQediogEhhM2rI", "userId": "izGdKvOPdq5xrgxS"}, {"inc": 0.20024791841532885, "statCode": "y1DN9LFkYW5DQyj4", "userId": "bj5Ro2ogaKt2ujQS"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value '[{"inc": 0.0032072387754096265, "statCode": "3Zdb65UXmy0Zp6iI", "userId": "aTIKUkmkk9QM0NBM"}, {"inc": 0.4279508363856612, "statCode": "9ORxpzwLR2AK6eXU", "userId": "GPJsw1fiP80G9Pcl"}, {"inc": 0.38548732186909707, "statCode": "cft2ulIJzPyrVEiO", "userId": "G4UcqsuGKHhMRWLV"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 '[{"statCode": "d3DlhLuIpomM8sm1", "userId": "MiaI1mX2tJoARtdb"}, {"statCode": "Be7udsMrok0WvGYY", "userId": "nx4V709xbnGezKsD"}, {"statCode": "wG2omOR2nvYI9TVq", "userId": "JdvzcWbfUpaXp5JM"}]' --login_with_auth "Bearer foo"
social-create-stat-1 '{"capCycleOverride": false, "cycleIds": ["k1jglaDXTvKCWwNT", "yerCSa8SRgwsAj1i", "Ahd2wrS0uPdjhdin"], "cycleOverrides": [{"cycleId": "png5BLy8wbhMssAH", "maximum": 0.15461882444317065, "minimum": 0.0119883776218076}, {"cycleId": "pIkY9Rf4wP57dBZN", "maximum": 0.7029092164357783, "minimum": 0.9769106252403886}, {"cycleId": "8YbCtmKy8M9zVrjf", "maximum": 0.5163075963776832, "minimum": 0.8027961926369758}], "defaultValue": 0.8243448650244485, "description": "nqAQUoY1GjlIIk0i", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.8597945716801909, "minimum": 0.15331801666462286, "name": "02o7JjTXAQN0qdsk", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "QV0TqI8EFnmDbxIx", "tags": ["MGql5ElEa9EIIlGc", "izwiilatuUjjt9lI", "i4YKlONk2Q5Y4Jva"], "visibility": "SHOWALL"}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'B3CfR3ncDlwi3v3M' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'FFJ1KesKoELCpobB' 'EG8X645xpdXpai0r' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'YaT5hOPjaf3H0tYi' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '[{"statCode": "ghU0VUfcYHJbBfAK"}, {"statCode": "SiPW3VgsZXiR1DJ7"}, {"statCode": "HVWqMkNSawQUWDFJ"}]' 'vJBWic7UkBeIXuqD' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'uAXI66bQ71w0deoV' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '[{"inc": 0.99783116349035, "statCode": "Lx5RDA1l2XcrciYN"}, {"inc": 0.4882908600118975, "statCode": "zvSZIPkhSgORcz5S"}, {"inc": 0.9281319739701115, "statCode": "BvmgBLxh4ijFnE3T"}]' 'am69qSZ7PC6f6Qkm' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '[{"inc": 0.8337762623088953, "statCode": "XElW9YfRSse6AAz3"}, {"inc": 0.7134157573782393, "statCode": "4czz0QKFlAVmVLu4"}, {"inc": 0.4208309794758702, "statCode": "Oec0z8eBeeoip68J"}]' '1nsv4W2OJhtafxMS' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '[{"statCode": "JlHeb34sZKHcl5LL"}, {"statCode": "LOexL4fZvWtND2tc"}, {"statCode": "BFpX8lNtFEJ7tnkY"}]' '6Mca5afj12K2IzrB' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'vvWm4udE0OXudXgN' 'ne8kJATwlc6esUp6' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'Sw1I98jeZQ7hfxnh' 'Ld3Knaknoed9DHhL' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '{"inc": 0.6601869863376142}' 'qQGhCUr6iTrjyEga' 'rAdNJOIG36I6tRbR' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '{"inc": 0.03667370223413058}' 'rEveMdAdiPKDUVSC' '00PYeDcagginxnFI' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'na3yddcbsPheTH26' 'IUJNvYuGRUvpZaHC' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 '[{"additionalData": {"uESOiIZsMfB4ZH3m": {}, "tgWgU4pCAKxeE70C": {}, "aunQNxot371W9G4A": {}}, "additionalKey": "vQkqsGnmyo5JJTUV", "requestId": "mb8GEXFTlEMEsFzY", "statCode": "qwgK1Np5nodqpLm7", "updateStrategy": "INCREMENT", "userId": "6mTJ0sQs6XNbjvqh", "value": 0.21084042001579928}, {"additionalData": {"UVLWu8olKdxL6ozR": {}, "mDD0jJvlfV5OemPY": {}, "dYT7DROCjtuzFMbA": {}}, "additionalKey": "G9YI89hmguB8FOTj", "requestId": "MLo4b9rIzqYkEpst", "statCode": "yVTBcrM8rG0rH0zc", "updateStrategy": "MIN", "userId": "wK7PpUlcIW32iK7M", "value": 0.5296816255523396}, {"additionalData": {"t1ixY5rA1WoVeJIe": {}, "PF8ZrQzP4zvtdxdb": {}, "ZUpd6FJtHJ1pyVwy": {}}, "additionalKey": "KQLY6FEO65Rb3z7C", "requestId": "YLM8IlsHqffnrfsG", "statCode": "lfPaZKBwa3Ddb60u", "updateStrategy": "INCREMENT", "userId": "LuC3brWdTYCfHkIy", "value": 0.712832103289334}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'ok5DiXZtLW87rGys' '["ryod3dNQrmsApRA6", "HX3RwrKt2ecozL0T", "Og54vCE48L5oLF6M"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items '4lNa4JUMSHNgqRqC' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '[{"additionalData": {"V7usamANkZlOX9Sf": {}, "o95HgXqKhTPkwfLM": {}, "9uSybRzWek2gZvRr": {}}, "requestId": "vr0n9d9lvccKMLhr", "statCode": "TrcBE2ItBS3KtKZW", "updateStrategy": "INCREMENT", "value": 0.16933823362385636}, {"additionalData": {"QuaS7RBx3vim02jB": {}, "OxrZDyvpcLYOWA8N": {}, "jxOnaEok4nOOCzfs": {}}, "requestId": "flhjbngJOUn18G5M", "statCode": "lfDTk8aG40Nlncce", "updateStrategy": "MIN", "value": 0.28036762848201013}, {"additionalData": {"KEDpEY8VnocGAjci": {}, "0V3tBf2jnHGKXphn": {}, "50c9tNLDljhZ2jxL": {}}, "requestId": "RX3z46OCaGBeMfPl", "statCode": "Nos4yBRjrERHEonA", "updateStrategy": "OVERRIDE", "value": 0.516726598764509}]' 'mEu0q1p6QCyY6vSk' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id '{"statCodes": ["VFWdsbYuVEGVxYhe", "vt1j1Rx59hesNWy2", "R3j5mNZ6vwv7K8As"]}' 'NvZ85DDKDAF8KDsB' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '[{"additionalData": {"ZOuYQJ03BAHZ7c53": {}, "q7akMpcmnnx6RVBr": {}, "op9v7aZK3h65hbN1": {}}, "statCode": "5zfQSfQrtfF3TQN0"}, {"additionalData": {"OcNDLr36vzohZyjM": {}, "QAg5mPYhrLTyU8Oh": {}, "gfY9JQYGF4bYXEcE": {}}, "statCode": "Nx9xZlAchob44lON"}, {"additionalData": {"DDwMvgI0HlyPR7wZ": {}, "NiVsF6xG2mXEQdbz": {}, "IVy8alncV7vWgSHd": {}}, "statCode": "fo07UctPErqxyMyO"}]' 'K06MqQBErxgjVByc' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'vU4PbmRDcrg0DjQj' 'BECXvea7H1m2lJFR' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '{"additionalData": {"Z3ZprZ60zMjhTHeh": {}, "94TSenE5hCFkIf5w": {}, "eqZ18MH57l2Zsrh9": {}}, "updateStrategy": "OVERRIDE", "value": 0.4840164883210344}' 'TtYmGukz3MnlrjcH' 'p6B8Vj7rXFgDnDkd' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 '[{"additionalData": {"Z9bpjb1tdA3QhjCM": {}, "W64f4XhIjSoTB2NM": {}, "KtezapPr2QEPx3zT": {}}, "additionalKey": "xBGtEJIYppuUSsKo", "requestId": "Hw2hyd12uSE7BEv3", "statCode": "aevq6iohU1cg4W1I", "updateStrategy": "MIN", "userId": "sJxlZcCTpTdRtCHv", "value": 0.3235788362063715}, {"additionalData": {"k6B6XTmSLyn50sig": {}, "BVZxiKdV57GvRyd9": {}, "UuL02Le8HSCslsDd": {}}, "additionalKey": "4M1F5qRIblS7Nz81", "requestId": "GRazPAANjfBoldFO", "statCode": "yqA2clJ5gEOaCgM6", "updateStrategy": "MAX", "userId": "tZdIs0xf4czdt7zq", "value": 0.20751154372907588}, {"additionalData": {"SKxOEQlVcx6GqsBq": {}, "8vdhWVnuYLgpZehK": {}, "0G2nmyuViB9kRTcS": {}}, "additionalKey": "QdTnNYGeAfYFG3wS", "requestId": "kHKufBdS3ZOokZB4", "statCode": "cXnAXyuGz6LlxHv8", "updateStrategy": "MIN", "userId": "rHSppnIZkNnTn3rz", "value": 0.5451416364549245}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '5NvAtcvNedgS1fUf' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '[{"additionalData": {"KmihDbmu8ePWlQMV": {}, "DXEHeiGTnwyEw6hI": {}, "WDZrpP7rz3ISW510": {}}, "requestId": "kHr4isTKWjmv67nu", "statCode": "HCXWfwnwGioVwVzm", "updateStrategy": "MAX", "value": 0.7544871974339976}, {"additionalData": {"tKp6M9I6nEwnZhsj": {}, "wJeGwaPSDMZz95OY": {}, "KiqaZD63xe5rruJV": {}}, "requestId": "fLGea0ZtlzUcuHAX", "statCode": "z0UV31MfuGaXsAuG", "updateStrategy": "MIN", "value": 0.4980909513992162}, {"additionalData": {"35YhyiDV90SeI5yp": {}, "pBHoytVznCgNyx9f": {}, "bT63ShEh8PbGikLj": {}}, "requestId": "gjcj34uulU6FYBZs", "statCode": "WFbr3RSP0W9nBhvh", "updateStrategy": "INCREMENT", "value": 0.5946425272076389}]' '8lbSEEelxnb5QxWG' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '{"additionalData": {"2HFnZlA6HKWW4fI1": {}, "IQcoBQELcNlZkqTZ": {}, "rKgXNwvm4e5GX6H7": {}}, "updateStrategy": "MAX", "value": 0.6541670487473189}' 'ixhtAoKiVm6URT95' 'XhnUcvWB28Mpusuh' --login_with_auth "Bearer foo"
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
echo "1..100"

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
    'hDJ5slzgiWZEtyd5' \
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
    '{"cycleType": "WEEKLY", "description": "NGehQ2aTjTDfKFDX", "end": "1985-03-28T00:00:00Z", "id": "7eGL5YhJDWh9YWqc", "name": "0qgV6d9yOfIMLds2", "resetDate": 60, "resetDay": 9, "resetMonth": 3, "resetTime": "ntgn3DhqciwIeShF", "seasonPeriod": 87, "start": "1993-02-19T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    '{"cycleIds": ["Kb9vvxuJlhXbWhbw", "SfJiQFC2gXoda0kg", "PwToC6knjVwVnzaq"]}' \
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
    '16yUSpSOAjHJWwfC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '{"cycleType": "DAILY", "description": "Iwqejxe18rNdb8Ot", "end": "1979-03-06T00:00:00Z", "name": "j1mqUav7k05HAQlt", "resetDate": 28, "resetDay": 80, "resetMonth": 91, "resetTime": "BsznlBUqnLT4AbGp", "seasonPeriod": 40, "start": "1984-10-25T00:00:00Z"}' \
    '0vJjFIYWOaNdsimm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'kW2miH3xRHAKy4Qx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 ResetStatCycle
$PYTHON -m $MODULE 'social-reset-stat-cycle' \
    'ZkaXZ7vmiEd0JPxV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ResetStatCycle' test.out

#- 37 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    '{"statCodes": ["yQpshaDwNqTbbFMX", "AMfVXe0GZeMgsRsm", "H1EQrYmkPKTPOlhT"]}' \
    'tSiZNCxuogFteTHJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkAddStats' test.out

#- 38 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'e4BhSSQkQD6WmOt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'StopStatCycle' test.out

#- 39 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'D7ufFVTOhvQpfbBk' \
    'e8aEdd36xj6wySol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchStatItems' test.out

#- 40 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    '[{"inc": 0.3126996493297881, "statCode": "DxsbzxrlaKEfkoYj", "userId": "Y2o6ouRW9UtNquwC"}, {"inc": 0.8892083147452017, "statCode": "WgumrIz4NhGztZpr", "userId": "4U4fwQIiLXgmRasv"}, {"inc": 0.14713019134454497, "statCode": "O4lj8m3XEwP2b4gd", "userId": "3xOeii8Jnmssep2x"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItem' test.out

#- 41 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.475914014658104, "statCode": "2NY0kABeGs9yxahl", "userId": "d1pO0Gyf5PO3COyM"}, {"inc": 0.34914754614687615, "statCode": "czgEpzZ3FbtxfhcR", "userId": "C7IVYa6iZ5uFRYNn"}, {"inc": 0.8878476720198079, "statCode": "SHiWxF0YbuU5ar5q", "userId": "TLWUCy0Afgc050XI"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkIncUserStatItemValue' test.out

#- 42 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'ZRW491e94mQjVOOB' \
    '["nIWhunElqZUodp3I", "htCSHy1ei1fIrPvf", "HnRN06EjRwEQlNap"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkFetchOrDefaultStatItems' test.out

#- 43 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    '[{"statCode": "JRfk4f9Zcw1pEHAy", "userId": "NFxcVTKuAQTGh5Bx"}, {"statCode": "jWOozGoDtsUuYo5p", "userId": "8ED5QZAufwNa8lzf"}, {"statCode": "jv9oYMXMjlVHY1AH", "userId": "wF3vGoav7MK0PcLn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkResetUserStatItem' test.out

#- 44 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetStats' test.out

#- 45 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    '{"capCycleOverride": true, "cycleIds": ["VAdMDcb4qlkiFAam", "qvZI2KwjqPBiWXad", "mUHVbMPimNhcZsU3"], "cycleOverrides": [{"cycleId": "e41s3rH34mB2yPlR", "maximum": 0.24919227940998334, "minimum": 0.7862832563870826}, {"cycleId": "jmHZAAvKTH8MuqIg", "maximum": 0.8451692126398147, "minimum": 0.46242335370375376}, {"cycleId": "zkguwuJCW7EEFB67", "maximum": 0.43349467352846593, "minimum": 0.6481712103077063}], "defaultValue": 0.4695928366605717, "description": "bi9BzupBsFpYc77G", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.12666277184845032, "minimum": 0.9924348630663049, "name": "tRk8knYSV30lnroQ", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "e8ae1Il4aAtEbu4I", "tags": ["jGdqthRxTjQ7gkZE", "kF2I03dIjvBbA6bf", "Y8rG0q0Q2Qd2JzRb"], "visibility": "SERVERONLY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreateStat' test.out

#- 46 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'ExportStats' test.out

#- 47 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'ImportStats' test.out

#- 48 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'mQr17W65br34rBBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'QueryStats' test.out

#- 49 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '9tU6TDm5GloFSKWM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetStat' test.out

#- 50 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    '1eym5ydC6p25xCWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteStat' test.out

#- 51 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '{"capCycleOverride": true, "cycleIds": ["n4Yr2svKM6pqLGZ0", "bwwm5iGzXtcknrgi", "TBujELAUK6mQ5iZg"], "cycleOverrides": [{"cycleId": "dKupvXO6aj4hCmTC", "maximum": 0.8973100888771991, "minimum": 0.9095135804056562}, {"cycleId": "jxW4pIDwdqXpmRmu", "maximum": 0.31425287921131007, "minimum": 0.9854283707234422}, {"cycleId": "H9XyWI8bp8fQxRuX", "maximum": 0.9839909354222671, "minimum": 0.8600563626188485}], "defaultValue": 0.3228982572544572, "description": "YmtrHJbEGTUj7YjE", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.5267391183533281, "minimum": 0.8496538192301671, "name": "2zccA8wvLsWUNd6l", "setAsGlobal": true, "setBy": "SERVER", "tags": ["IfHgKjI9mwJSrN8j", "SYht83AdvBaagTiR", "J8daGTVX3Bb7jlz5"], "visibility": "SERVERONLY"}' \
    '76PxLv9HBEUe89Aw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateStat' test.out

#- 52 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'Ew1HO4FnKtx4XLKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetStatItems' test.out

#- 53 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'mlDr19uJ3nq6Verz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteTiedStat' test.out

#- 54 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'VCcI8y3Cz0YqCKUh' \
    '5RD9vNAp4jinFpnQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatCycleItems' test.out

#- 55 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '5xF9wwbvMZyeDeRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetUserStatItems' test.out

#- 56 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '[{"statCode": "VfPUa6xVVBcq3wZp"}, {"statCode": "FIYeAg79HcLJXJ7m"}, {"statCode": "pVI6eTYAjdPlCiQQ"}]' \
    'C35cj4KyOVgvnWbf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkCreateUserStatItems' test.out

#- 57 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.7033538601906298, "statCode": "JtsB7cUQZ2QUAxJr"}, {"inc": 0.5637918642559644, "statCode": "NPXppPNO3AfmXcgw"}, {"inc": 0.46019541923148677, "statCode": "3IN6tvKgLB9QmJIO"}]' \
    'q9dP5szG71utjsQ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItem1' test.out

#- 58 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 0.45641015185458467, "statCode": "rRb9gUCeVz7fWbZI"}, {"inc": 0.05204587139181982, "statCode": "hevfZvyV7AcodcZw"}, {"inc": 0.580907366230275, "statCode": "jYDdmJOlzwm9Su4F"}]' \
    'nS98QqftSjq7sn8y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkIncUserStatItemValue1' test.out

#- 59 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "reciPLfkVyyJsbGp"}, {"statCode": "O6JgehDJxEN7JlZc"}, {"statCode": "8LMq1o2jZWu4yA3r"}]' \
    '0u4q1bTHXIjfJKyF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkResetUserStatItem1' test.out

#- 60 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'lM0u1uuoVdn9yVoS' \
    'lKNchPHNL4X3LLaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'CreateUserStatItem' test.out

#- 61 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'PGdqLE8SohhhuiTn' \
    'JarYYkHBDdSzBXdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteUserStatItems' test.out

#- 62 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '{"inc": 0.010096891021884158}' \
    'pwhd5IQYBQuxLvPu' \
    'WYvE3fsNy9Z9OhxX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'IncUserStatItemValue' test.out

#- 63 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '{"additionalData": {"vCp9y7fLD2qfCXnl": {}, "UnqxT1WsRNMZcA92": {}, "hzC7MNa8vVe4MHX6": {}}}' \
    'AgMep90AyyUJyAK5' \
    'PRMRMwdvl0hv6g62' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'ResetUserStatItemValue' test.out

#- 64 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetGlobalStatItems1' test.out

#- 65 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'GxBW2tQF5tkTjgJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetGlobalStatItemByStatCode1' test.out

#- 66 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetStatCycles1' test.out

#- 67 BulkGetStatCycle1
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle-1' \
    '{"cycleIds": ["MYvNQOsDa4bkcgep", "qtxjbrztee7QLTGA", "ak7Kaol01DK97D2x"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkGetStatCycle1' test.out

#- 68 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'nik42miteR5eQAe1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetStatCycle1' test.out

#- 69 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'rzmmgqBPRmd6mO4o' \
    'I8KDqebm83raNBJ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkFetchStatItems1' test.out

#- 70 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 0.400515889534622, "statCode": "7axEkvI4oxZEDxGi", "userId": "BnNbn0zaf7CaOSlH"}, {"inc": 0.7990127939703575, "statCode": "rUSA6sMJzA5mtqIS", "userId": "Q83TTbtefXWznDe4"}, {"inc": 0.5986362179607086, "statCode": "QdXfFBii2RAMEX5R", "userId": "MjBFVZGYzQqV8d9m"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItem' test.out

#- 71 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.4780317294213675, "statCode": "dUIoiIJFNxuNOmUS", "userId": "Ww18T1IxVWCxdvPL"}, {"inc": 0.9917046792836373, "statCode": "e4P01vxP8xj1LyEi", "userId": "rURERnEMzpImW6sj"}, {"inc": 0.42035607522796903, "statCode": "HyCK5tNanGBrkzUv", "userId": "ck3xTtmOFMebS4Ad"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItemValue' test.out

#- 72 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "lNzwog2IhErkNhNc", "userId": "ECWwchW6zL9SkbLl"}, {"statCode": "rNXnGanMazb8jvRW", "userId": "enURH48aJuALEcSq"}, {"statCode": "cE15u6D31DjOsrs3", "userId": "CUYATdqnQGbqiqOk"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItem2' test.out

#- 73 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    '{"capCycleOverride": true, "cycleIds": ["nFe9FmN86sK5LOq4", "eATj7eGjodd7CcJU", "rI6MAugK5kypNrp2"], "cycleOverrides": [{"cycleId": "ft5jGcMICPUYnfG6", "maximum": 0.1452152265162484, "minimum": 0.18671963083605625}, {"cycleId": "9U4jReteIMgzISom", "maximum": 0.4607078184093497, "minimum": 0.2909174158727458}, {"cycleId": "odJrhQW41q2OspCZ", "maximum": 0.02906965542380391, "minimum": 0.3115073700009704}], "defaultValue": 0.8939229595185059, "description": "Uta5I0uGcL1koyHj", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.23240354877606706, "minimum": 0.1857975316295879, "name": "YLETRpABAmO2EGvJ", "setAsGlobal": true, "setBy": "SERVER", "statCode": "S93yOxNInDByhnol", "tags": ["zjPpucddXJ5zifF8", "zOj84O6tgohjtC7b", "uO6ti0QP2ssiJ66O"], "visibility": "SHOWALL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateStat1' test.out

#- 74 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'xpE7BYtzB0B4CxyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicListMyStatCycleItems' test.out

#- 75 PublicListMyStatItems
$PYTHON -m $MODULE 'social-public-list-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicListMyStatItems' test.out

#- 76 PublicListAllMyStatItems
$PYTHON -m $MODULE 'social-public-list-all-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicListAllMyStatItems' test.out

#- 77 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'rUpIFvORxTi79DpS' \
    'jb39ukcR6c2E2r3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetUserStatCycleItems1' test.out

#- 78 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'k3IfAKEbqcNXSGCC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryUserStatItems1' test.out

#- 79 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "vNowNmdpcJgF88yS"}, {"statCode": "Nq4Mj7mulP4tQ6R1"}, {"statCode": "OqKVOTniBgLsNhdg"}]' \
    'Q0JWZjNRSzOTqcVN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicBulkCreateUserStatItems' test.out

#- 80 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'X3ahvxw9gwwhTnjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryUserStatItems' test.out

#- 81 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.9359192851685224, "statCode": "wKZGW4y3f0R9s2kn"}, {"inc": 0.048856599431708614, "statCode": "hhZhwAiLsZs4pmLD"}, {"inc": 0.5538166906578245, "statCode": "Qch4IjDq9aT3qZyI"}]' \
    '0rYsWucAkXsVJbXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicBulkIncUserStatItem1' test.out

#- 82 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 0.9518244986515744, "statCode": "eRZa7WwIc895ImqK"}, {"inc": 0.9497375821449067, "statCode": "tVsaUq3stUh5J5Z9"}, {"inc": 0.5243764883181351, "statCode": "iBiSAylX5cS0IeHp"}]' \
    'WCugmfOL0QQpxsuD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkIncUserStatItemValue2' test.out

#- 83 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "8PGqku59eFJrOXyD"}, {"statCode": "Yz9vMUOPG0iHDT8Q"}, {"statCode": "bF7gHPTPQbvLt2NR"}]' \
    'qJGIKzLyH1y72L13' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItem3' test.out

#- 84 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'Ornyx34luLdvtsTK' \
    'XMjiw6gYPvfn2Qt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateUserStatItem' test.out

#- 85 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'iyq3Nyk8ncu2Z3eD' \
    'HH9WaVO4iKhDcJ7T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteUserStatItems1' test.out

#- 86 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '{"inc": 0.4653936241874749}' \
    'cNIsQ3PuppUxDSK8' \
    'aOTGMudcxlCV4cNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItem' test.out

#- 87 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '{"inc": 0.5740671284510934}' \
    'GQ57lPdinpjS2DRf' \
    'Gt9GlyZVQ4X67tPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicIncUserStatItemValue' test.out

#- 88 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'STpPq3xjrElvvDgw' \
    '0ag7kSWE0Hiqm5Iu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'ResetUserStatItemValue1' test.out

#- 89 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"LryiEXqvUWDjU1G0": {}, "EVjVZw1ToLuPakQN": {}, "1MpOs1RVFrcg2CXx": {}}, "additionalKey": "epx78fvsyhE2BKty", "requestId": "TDSIM7mkmvZ7Cmsh", "statCode": "4US8o4jfMANPpmZD", "updateStrategy": "INCREMENT", "userId": "nmnlVljdWYmELe74", "value": 0.25223337761620646}, {"additionalData": {"38vumnxAnYBTxaTI": {}, "z0jcgDI8Pkz96vd8": {}, "0msqIm5bufnBqrpL": {}}, "additionalKey": "eqhwVhjnnjKMEmtb", "requestId": "iWsAQHbMrKYi0Zxs", "statCode": "5SWCqZXHLLa31oQf", "updateStrategy": "OVERRIDE", "userId": "95pFJUAJsyAfeKOu", "value": 0.0913629194854898}, {"additionalData": {"V4f15NohXu6opxQG": {}, "Rt6PqlkL0diRhLC1": {}, "0ih2EQfY3XCv4hdO": {}}, "additionalKey": "a6FdZhNMd1onFjGR", "requestId": "bxtABPXDmgNEJBhg", "statCode": "Gq5GIDhNC66szbCC", "updateStrategy": "INCREMENT", "userId": "ZkwbYkBLyO6A0Fqf", "value": 0.11976224529767965}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItemV2' test.out

#- 90 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'naB3YxKNdOTacCcJ' \
    '["fIfXshuLUk5Wdpxj", "Zx5noXPhPUTKbono", "ucNmzwOZOK56sDkc"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'BulkFetchOrDefaultStatItems1' test.out

#- 91 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'i5rZ8iMlOuksQJCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'AdminListUsersStatItems' test.out

#- 92 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"RFiZWwJ7NrTb1XTB": {}, "9YQzUJ9XlYJ8BzP6": {}, "EUmUXGM5anIloyj9": {}}, "requestId": "lhbvuQdW2jwKUckc", "statCode": "794ryY91lX8DD4MY", "updateStrategy": "MAX", "value": 0.4405213540521631}, {"additionalData": {"iCoeC5weXJl7PeiM": {}, "H8z8dVej8N2yv6VT": {}, "nOK7xAvM7tuL81ls": {}}, "requestId": "R7xxSVp3Gd2TK0Hz", "statCode": "YviTgYmx82JVBRLP", "updateStrategy": "MIN", "value": 0.9473885052875869}, {"additionalData": {"Iz8tne5dbguBF6Gs": {}, "vvdl8jHz9x7XZIjU": {}, "4IK9lOLaZaMphKCq": {}}, "requestId": "Tq3EVheJjoEEXBLI", "statCode": "xGnNuhoJM3WWPvvC", "updateStrategy": "MAX", "value": 0.9685347189153597}]' \
    'jISd97KORRhxSWLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem' test.out

#- 93 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["6LuxJF3sbeqWBdQu", "WfgBAKx27MSBqabU", "LNfHRD3V15QaGGL4"]}' \
    'XOGkkoMUZn1YXj5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkGetOrDefaultByUserId' test.out

#- 94 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"FZeOCOR9NvBQZSJP": {}, "OIKrRBrYVzi9ui3l": {}, "vozTt9TsH7A0TuU2": {}}, "statCode": "aL4bPkk11sys6Gdk"}, {"additionalData": {"Dcos5uVJ0BJfZ0jv": {}, "A54CSqZFDsO1skRj": {}, "OU1SMfQVQa6blj9R": {}}, "statCode": "dd85bdYUumPKVSZC"}, {"additionalData": {"g3XTc9vQe0dHJfF6": {}, "KIuvnRCa9JktyBdx": {}, "kZKrEWFw9GYxjiiO": {}}, "statCode": "QAD77ci0vfWVZoRR"}]' \
    'MPi57HyKKz5nyI6u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkResetUserStatItemValues' test.out

#- 95 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'lKNKoXa0dgx1JgjC' \
    '56pda3YhtQxpCYME' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'DeleteUserStatItems2' test.out

#- 96 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    '{"additionalData": {"6x21pdX2QSPAd9sx": {}, "oLnWGP1PafIjLX8c": {}, "e0KbNN7Ycl2JfmQp": {}}, "updateStrategy": "MAX", "value": 0.6966472592330999}' \
    'vSoaGk4ktF5wnJDg' \
    '9Q3WXiydCOInVols' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue' test.out

#- 97 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"r6CHmj763vLwtYEJ": {}, "TSiXjcY5ZPkv90ly": {}, "KSTWLxSFZ0LpupEi": {}}, "additionalKey": "5DbkVs3qFTi1t530", "requestId": "Wj1WfzIvc3VlSXrA", "statCode": "3XUGud4tVjmxEf4X", "updateStrategy": "MIN", "userId": "ak7ISDrBVg6NuDZv", "value": 0.671550558588841}, {"additionalData": {"b1kuUfNfUDe4g7q6": {}, "PHEaqbzHvDDl1jiL": {}, "w3XMGBA6JXDpA1tI": {}}, "additionalKey": "C45C0oaGouFu4hXO", "requestId": "NgUwJnUpryDeRcpU", "statCode": "vlrw2MwC1uuokpaI", "updateStrategy": "MAX", "userId": "jCPrFa05Xl5TPC5G", "value": 0.6517765380732322}, {"additionalData": {"DS44bmm7jPdKLddf": {}, "dsUqjXVzW1QqxnWR": {}, "5sheLgsAF4ctv5gu": {}}, "additionalKey": "ycGiq9j2EyIknfLD", "requestId": "pgHnMOn8nc3gUZ8Z", "statCode": "FyyEr0KBXuJBqK4Q", "updateStrategy": "MIN", "userId": "18uux9xBomQFPFWy", "value": 0.9260578816098265}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem1' test.out

#- 98 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'cwNPI6aFo0MVwDZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublicQueryUserStatItems2' test.out

#- 99 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"IXFNEL3uWVRz3V7Y": {}, "bJM3bNLWHAbCZixe": {}, "2cQ6O30lpzcBQMAE": {}}, "requestId": "cNcJqrKxnMzSYoc4", "statCode": "ZjiMY4H34B6wVd8i", "updateStrategy": "MAX", "value": 0.9176912906470676}, {"additionalData": {"acYHbrryHB6GO9zP": {}, "3FaepA3b3YJ9nJM6": {}, "vtT27xv85K5MU2qm": {}}, "requestId": "beqaVemINdClpF7O", "statCode": "vlBIEgjse5kd6GED", "updateStrategy": "MAX", "value": 0.19805622735528616}, {"additionalData": {"IE2kLTnJwc5XmkCu": {}, "L5W4tKt6G3j9LYdG": {}, "7xVPqBqe9RDQMBSY": {}}, "requestId": "AFLqp8PF5hCcoukW", "statCode": "pnbz4ys7j6lxuU3u", "updateStrategy": "OVERRIDE", "value": 0.49554807393710365}]' \
    'G0qfKegvFTD1sPyk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'BulkUpdateUserStatItem2' test.out

#- 100 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"S8YLmwtYgWGcA0h4": {}, "G1LZ1HaX5UBMbsF4": {}, "4VTsLDRzdq22cbny": {}}, "updateStrategy": "INCREMENT", "value": 0.8938330633013124}' \
    'ggFDh2kaZP7pnnVf' \
    'xPwc259HF9ejHaIL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
