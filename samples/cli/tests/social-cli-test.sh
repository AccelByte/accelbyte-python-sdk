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
social-get-user-profiles 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
social-get-profile 'H9UzVRiXbqlAw7r6' 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["a62WopBJHPtcDs8b", "BZLCXLx8bbgorQeF", "bQ1g7qbPngUNB1vR"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'odwpzS6DaDpv8N7Z' --login_with_auth "Bearer foo"
social-public-create-profile 'QVqGj6oDLjWjkY1a' --body '{"achievements": ["XlFcDtgOjchIua5t", "WEIC32ogW7olvbTg", "rhRTcPiSuL0Sly6X"], "attributes": {"M4OI18mAQLnzjMf8": "GZ2WBZqxYG3aREAu", "2D6QVKNCWP75TB0i": "7pKxR8dl0zRVW4EZ", "G9m0XcgGVbMqSszE": "8GHavj7AorKsxwko"}, "avatarUrl": "sAVerXpc1C8XfwHu", "inventories": ["Keb9l3rGN9A3sNm8", "4hddSpHt0P7MIIR7", "CkyF6C7duuyZ0GhD"], "label": "ogqrhBRd8lDR6qVN", "profileName": "PRZYdFLIAjGGJddV", "statistics": ["Cvu9vx5KQ7KYnIuM", "BvaO35llzQRaT5kP", "xUfofvnnSuB0y5WU"], "tags": ["lrMdI4sNveabntBS", "xTeIv53HGCiljvjK", "oyD6SCwGrncqmLtj"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'QHAf8TgoNm03VLis' 'V6zwPuo3td6TC6I3' --login_with_auth "Bearer foo"
social-public-update-profile 'lMjGSWN2laRlxfcj' 'HfYakUCTqGkE7wcW' --body '{"achievements": ["fDslpJSqGAXQ0yYo", "NRKd3IL5TAQ6iiPl", "SC2uE4o5Vwdo3feP"], "attributes": {"qIJA8IHtrkmu0hpD": "DWVAla2l5BYNtIuS", "5S5XUdjsoqwGyzzW": "i9gwQYv7t1o7TTr1", "DmrhZv15T7quIOvB": "McaYmvCkGZ5dAgqx"}, "avatarUrl": "pBFmaLoxozr6wfNP", "inventories": ["X2bOItRMvqtlB2jJ", "CSQT279ZZPYGu0rd", "lgdWyOtXi3choQrp"], "label": "OsDBU5SepjChB3V0", "profileName": "v52Dlym6puQ23xoJ", "statistics": ["8aeCnaLpUKp44YUD", "jasWIPUvmEejtGeo", "yIPa8ZRrvjj7il35"], "tags": ["MXbN9oCMNqq98SjT", "vhZNkSQ70D0H6BXk", "sUC9b6i5lZC9xv32"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'e8c5csSovoqsZNBd' 'te9NDUPVJf6c2Z0Q' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'ZxfgPubTDIHrvqAT' 'huwjRHpKKTlmVr9X' 'uoJbRFQSKVPHbn4X' --login_with_auth "Bearer foo"
social-public-update-attribute 'xtu7LQRENjEEztx1' 'WsYSiZqan0nSBJro' 'av91GXlvPG6bFYRe' --body '{"name": "VHQipcCx9Zw5D2L7", "value": "vIYhGGSyEW4ZJJ42"}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'd3PBddN8S48l9lyN' --login_with_auth "Bearer foo"
social-get-stat-cycles --login_with_auth "Bearer foo"
social-create-stat-cycle --body '{"cycleType": "SEASONAL", "description": "nNjkfZrQvGgbLdLs", "end": "1987-01-19T00:00:00Z", "name": "zHkBMr1yrOMlNFSr", "resetDate": 96, "resetDay": 63, "resetMonth": 18, "resetTime": "f7Gc26SaiGVkydwY", "seasonPeriod": 99, "start": "1972-12-14T00:00:00Z"}' --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle --body '{"cycleIds": ["xcwgGLXpUL4pp2nc", "yiuATus9hsfpFDcS", "DG8aMVGLiBNrDjqo"]}' --login_with_auth "Bearer foo"
social-export-stat-cycle --login_with_auth "Bearer foo"
social-import-stat-cycle --login_with_auth "Bearer foo"
social-get-stat-cycle 'YAHdNzDmeIP6rOvD' --login_with_auth "Bearer foo"
social-update-stat-cycle 'z9KOsb392k6YmJFf' --body '{"cycleType": "SEASONAL", "description": "ByjlBiuFM3FIoVk8", "end": "1994-11-30T00:00:00Z", "name": "GpAnkCmBUqg2SCnq", "resetDate": 27, "resetDay": 39, "resetMonth": 47, "resetTime": "9y1aZSWMiVi10sG6", "seasonPeriod": 44, "start": "1990-07-11T00:00:00Z"}' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'MWH8Yb33T5UBJCjf' --login_with_auth "Bearer foo"
social-bulk-add-stats 'cnLRfxeCSz9WEi8K' --body '{"statCodes": ["lloeH0JT1yduat2v", "QR3biBfsu4jmsRE2", "w1yEkLgh3tIYt4Sq"]}' --login_with_auth "Bearer foo"
social-stop-stat-cycle 'YUTLDx9gIiDandpG' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'T2t24aOMh5eC3IHe' 'HSKLCa3xreNDUWeh' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.36326192251567047, "statCode": "H3q31A806DJgas4b", "userId": "6z3LNUj7fdgLA84Z"}, {"inc": 0.9716137217718558, "statCode": "YYk6QEgJjBbEDoNf", "userId": "3n0hEoRCAcf80zfF"}, {"inc": 0.39625271392208805, "statCode": "abWAgIUXiI07A68e", "userId": "aqC2J9jyEW6GLbc0"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.6417094043899652, "statCode": "aKDUL3sa13lk1dQB", "userId": "HO86IlBhnetU4RwT"}, {"inc": 0.2720093084721341, "statCode": "UXlTDBzOuYsaZA2y", "userId": "yd4mbqoOfADMMAXF"}, {"inc": 0.008592069683210024, "statCode": "Y9eKa699bRVhyaKw", "userId": "wrAP2aMlu7WtjCto"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'YetOO847g8OudOfj' '["nCuHZ3c46IjGa23Y", "vYmmDg7VYPXIuvUY", "TZBRujIUE1Tq5jyA"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "ZvkRCMNFIurjh2im", "userId": "db4rbkXj0ZwsVC0g"}, {"statCode": "L97ZVJSPqJiwv1ql", "userId": "YB1RSKs6gQxC3Gb7"}, {"statCode": "S0o4zGYY7KQI1AeF", "userId": "gPqaOkvo1aolB4lk"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"cycleIds": ["8xIfkOVW2grREOLx", "0KOww3HICQLfl7MU", "KB4EYOkQ1jMD3cym"], "defaultValue": 0.4426899784977135, "description": "G7qtPu64yAtURKLR", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.9665989331813947, "minimum": 0.9002513785924169, "name": "8HGS6rDgMdIIlhS1", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "gXjvyGJPN4eXbJE5", "tags": ["FPoJeQediogEhhM2", "Vs2GcyomQoIXimBJ", "ehyxlNsjUgxBkF6w"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'rIizGdKvOPdq5xrg' --login_with_auth "Bearer foo"
social-get-stat 'xSmy1DN9LFkYW5DQ' --login_with_auth "Bearer foo"
social-delete-stat 'yj4bj5Ro2ogaKt2u' --login_with_auth "Bearer foo"
social-update-stat 'jQSa3Zdb65UXmy0Z' --body '{"cycleIds": ["p6iIaTIKUkmkk9QM", "K6eXUGPJsw1fiP80", "0NBMA9ORxpzwLR2A"], "defaultValue": 0.5280999080777553, "description": "9Pclxcft2ulIJzPy", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "XuNFviMarv8mnfHK", "tags": ["HBvepnDCjgyJlXe3", "8CCmE2lPnsbD3SGE", "dlwuUccE536ugBp3"]}' --login_with_auth "Bearer foo"
social-get-stat-items '6mgWjLfFmteue9nz' --login_with_auth "Bearer foo"
social-delete-tied-stat 'J6fH24T805tVg8Jq' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'U0jZpjvsugAOS7u8' 'RiWyerCSa8SRgwsA' --login_with_auth "Bearer foo"
social-get-user-stat-items 'j1ik1jglaDXTvKCW' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'wNTAhd2wrS0uPdjh' --body '[{"statCode": "dinpng5BLy8wbhMs"}, {"statCode": "sAHjapIkY9Rf4wP5"}, {"statCode": "7dBZNR88YbCtmKy8"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'M9zVrjfGXZnqAQUo' --body '[{"inc": 0.8121654306211946, "statCode": "1GjlIIk0iKoTTS1j"}, {"inc": 0.8463202912559402, "statCode": "2o7JjTXAQN0qdskd"}, {"inc": 0.6840302618249898, "statCode": "V0TqI8EFnmDbxIxi"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '4YKlONk2Q5Y4Jvai' --body '[{"inc": 0.41760234258501727, "statCode": "wiilatuUjjt9lIMG"}, {"inc": 0.26542533899073995, "statCode": "l5ElEa9EIIlGcHB3"}, {"inc": 0.456432552092487, "statCode": "fR3ncDlwi3v3MFFJ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '1KesKoELCpobBEG8' --body '[{"statCode": "X645xpdXpai0rYaT"}, {"statCode": "5hOPjaf3H0tYighU"}, {"statCode": "0VUfcYHJbBfAKSiP"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'W3VgsZXiR1DJ7HVW' 'qMkNSawQUWDFJvJB' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'Wic7UkBeIXuqDuAX' 'I66bQ71w0deoV9Lx' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '5RDA1l2XcrciYNEz' 'vSZIPkhSgORcz5S5' --body '{"inc": 0.4391870900778726}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'vmgBLxh4ijFnE3Ta' 'm69qSZ7PC6f6QkmZ' --body '{"additionalData": {"XElW9YfRSse6AAz3": {}, "S4czz0QKFlAVmVLu": {}, "4AOec0z8eBeeoip6": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 '8J1nsv4W2OJhtafx' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["LLLOexL4fZvWtND2", "tcBFpX8lNtFEJ7tn", "MSJlHeb34sZKHcl5"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'kY6Mca5afj12K2Iz' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'rBvvWm4udE0OXudX' 'gNne8kJATwlc6esU' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.2534802354227611, "statCode": "6Sw1I98jeZQ7hfxn", "userId": "hLd3Knaknoed9DHh"}, {"inc": 0.6111161210033355, "statCode": "OqQGhCUr6iTrjyEg", "userId": "arAdNJOIG36I6tRb"}, {"inc": 0.6985900831794724, "statCode": "crEveMdAdiPKDUVS", "userId": "C00PYeDcagginxnF"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.5559466170815047, "statCode": "na3yddcbsPheTH26", "userId": "IUJNvYuGRUvpZaHC"}, {"inc": 0.33040256553239433, "statCode": "ESOiIZsMfB4ZH3mt", "userId": "gWgU4pCAKxeE70Ca"}, {"inc": 0.33002418695502167, "statCode": "nQNxot371W9G4AvQ", "userId": "kqsGnmyo5JJTUVmb"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "8GEXFTlEMEsFzYqw", "userId": "gK1Np5nodqpLm7Fh"}, {"statCode": "JBNXzAFdO0Khqf6k", "userId": "iTdSGv2LFjAKY7Cb"}, {"statCode": "gsWqFWZX7kPBom8F", "userId": "9GLLTG8phc3n4iLo"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["GRaoQomSJC4DdrKF", "IllKlpO2pqiXJF3W", "7SUQPLG59e0k5ZtX"], "defaultValue": 0.9463803715347646, "description": "wK7PpUlcIW32iK7M", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.03785487545041544, "minimum": 0.9572081253675198, "name": "KY3uVoJXTIMtpgki", "setAsGlobal": false, "setBy": "SERVER", "statCode": "zP4zvtdxdbZUpd6F", "tags": ["sHqffnrfsGlfPaZK", "JtHJ1pyVwyKQLY6F", "EO65Rb3z7CYLM8Il"]}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'Bwa3Ddb60ufPpzwj' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 '1QGIFmlVf4jvapse' 'E9LN9bvhOrHflIOd' --login_with_auth "Bearer foo"
social-public-query-user-stat-items '6X3viLvtEk4mTIpU' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'A9gxo8SV38nEhoXm' --body '[{"statCode": "M2W7l6jHMA2rG3na"}, {"statCode": "kopAywelu01nryEJ"}, {"statCode": "0NqoTow0qiOiC4j0"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'iktm0ZPLkLOsp0LZ' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '5njN86Hl8kUXzt6b' --body '[{"inc": 0.7246596221221085, "statCode": "c6bWvgpVyW9dD1kO"}, {"inc": 0.1961296688676144, "statCode": "vrAejcq2LgkQuaS7"}, {"inc": 0.7093057288788248, "statCode": "Bx3vim02jBOxrZDy"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'vpcLYOWA8NjxOnaE' --body '[{"inc": 0.23644773656226692, "statCode": "k4nOOCzfsflhjbng"}, {"inc": 0.5651488256014353, "statCode": "OUn18G5MlfDTk8aG"}, {"inc": 0.9081239827493028, "statCode": "0NlncceIZSwgAIkg"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'zh4pTU0Am4DZhl0b' --body '[{"statCode": "QxFJ3sWCqQpQ2FbK"}, {"statCode": "PFMycMSQ4qfAacR0"}, {"statCode": "LgB5BUXvjcu2s6w3"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'VifnKqmTSoGH1XEf' 'Y6QAYn6WQ5UBEU1Q' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'AOHfZiGhxOdcuDXS' 'xSc3aZPV87pna08g' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'xefTYKhuxaEc7M4P' '7UckSC6ePeN8i4Gr' --body '{"inc": 0.5027672399023325}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'ES9z7xueHpATHcce' 'e9GXhKcjmSEwdrkE' --body '{"inc": 0.21596728999214065}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'nqKzFsLfYalUlfwE' 'QKjU7eHGebSVu0LQ' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"40kepEaC4dfiOMZf": {}, "EhHr39pysFO3Zvc1": {}, "BZG99LyvfvHEsJKQ": {}}, "additionalKey": "QewVLMUoAnaRcYp7", "statCode": "FUjfIGaffoflEIBy", "updateStrategy": "MIN", "userId": "qeKN0meGelYF5wWa", "value": 0.4716212600876927}, {"additionalData": {"hukU4khGG4vZFTYn": {}, "PkmSu4PWam1jxR7S": {}, "ETWjteoc8fgvZDDh": {}}, "additionalKey": "oO05oKqymxLD1Lcv", "statCode": "w6T6mZEiwxxElpMY", "updateStrategy": "INCREMENT", "userId": "zMjhTHeh94TSenE5", "value": 0.12251394415895478}, {"additionalData": {"CFkIf5weqZ18MH57": {}, "l2Zsrh90ETtYmGuk": {}, "z3MnlrjcHp6B8Vj7": {}}, "additionalKey": "rXFgDnDkdZ9bpjb1", "statCode": "tdA3QhjCMW64f4Xh", "updateStrategy": "MAX", "userId": "PlXn77AtYoFzLAAT", "value": 0.6762475646156243}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'Y8P8P3cfoivvQxev' '["ecWw7Rry0KK5rgAG", "O0dW8rX2MVUGKSZ4", "GcLkt4pK32sJxlZc"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'CTpTdRtCHvuk6B6X' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'TmSLyn50sigBVZxi' --body '[{"additionalData": {"KdV57GvRyd9UuL02": {}, "Le8HSCslsDd4M1F5": {}, "qRIblS7Nz81GRazP": {}}, "statCode": "AANjfBoldFOyqA2c", "updateStrategy": "MAX", "value": 0.9216017840759192}, {"additionalData": {"1T107XIZRZ7tZdIs": {}, "0xf4czdt7zqmSKxO": {}, "EQlVcx6GqsBq8vdh": {}}, "statCode": "WVnuYLgpZehK0G2n", "updateStrategy": "MAX", "value": 0.19165326944475225}, {"additionalData": {"W4tLqX7OICf5oD1e": {}, "6oI9FmYel0kOw72o": {}, "8Zkgk0jS6rDWUwfh": {}}, "statCode": "Kvrf2AaH4yCWrHSp", "updateStrategy": "MAX", "value": 0.3491430298233973}]' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id 'DJ3w3UNgIGj2jZtE' --body '{"statCodes": ["pMsQgb64ELbzDMwy", "YT8sIPSE1XXPzySa", "0sZoFS6xCOWMpyh9"]}' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'o4nIRysQdbufXjYn' --body '[{"additionalData": {"SoIFeouC2m38kXrD": {}, "ZWlGVE9sJ4NpUtKp": {}, "6M9I6nEwnZhsjwJe": {}}, "statCode": "GwaPSDMZz95OYKiq"}, {"additionalData": {"aZD63xe5rruJVfLG": {}, "ea0ZtlzUcuHAXz0U": {}, "V31MfuGaXsAuGsZa": {}}, "statCode": "SHevO0TQNEI3kfab"}, {"additionalData": {"xJWWSI1ECUo1NPpe": {}, "FhUztXDgB7n4C97u": {}, "APP8PATLpUpxeJls": {}}, "statCode": "BJT6Hh3OMjAjq2mK"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 '8lbSEEelxnb5QxWG' '2HFnZlA6HKWW4fI1' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'IQcoBQELcNlZkqTZ' 'rKgXNwvm4e5GX6H7' --body '{"additionalData": {"42OixhtAoKiVm6UR": {}, "T95XhnUcvWB28Mpu": {}, "suhhDJ5slzgiWZEt": {}}, "updateStrategy": "OVERRIDE", "value": 0.8407890353884947}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"5CXNGehQ2aTjTDfK": {}, "FDXC7eGL5YhJDWh9": {}, "YWqc0qgV6d9yOfIM": {}}, "additionalKey": "Lds2DbPcaoMdtRLT", "statCode": "mSvTkQQgB7exYvmH", "updateStrategy": "INCREMENT", "userId": "xr5hPCJJztJBg0tT", "value": 0.5713013959607043}, {"additionalData": {"g46IewOXE2AkCh3Q": {}, "IZsUf8lGFXcmwTER": {}, "HclOdxIwqejxe18r": {}}, "additionalKey": "Ndb8Otq6j1mqUav7", "statCode": "k05HAQltnSojV4jT", "updateStrategy": "MIN", "userId": "5yclX2FtAz0vJjFI", "value": 0.8084879909065992}, {"additionalData": {"WOaNdsimmkW2miH3": {}, "xRHAKy4QxZkaXZ7v": {}, "miEd0JPxVyQpshaD": {}}, "additionalKey": "wNqTbbFMXAMfVXe0", "statCode": "GZeMgsRsmH1EQrYm", "updateStrategy": "MAX", "userId": "Hkt1mr9EOIFg0dnW", "value": 0.5502562242120688}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'YN2NVL70Iw157g00' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'jr9b8MuYmmeKTmBN' --body '[{"additionalData": {"vGYxEQdf3ewoGGoY": {}, "7xmFNAmjDDCvs78m": {}, "cMdiS76YApGJ9ufw": {}}, "statCode": "LYkqIgLuZS6hsQry", "updateStrategy": "MAX", "value": 0.9116686097250422}, {"additionalData": {"NhGztZpr4U4fwQIi": {}, "LXgmRasvjO4lj8m3": {}, "XEwP2b4gd3xOeii8": {}}, "statCode": "Jnmssep2xD2NY0kA", "updateStrategy": "OVERRIDE", "value": 0.8886942048917099}, {"additionalData": {"cvRFaTC11W0TGTCm": {}, "4fZWuk6pQxDQpKqx": {}, "LGeMvr9TsvcMQ7dB": {}}, "statCode": "saIecRxIsZvD6rmz", "updateStrategy": "MIN", "value": 0.8090404564533572}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'buU5ar5qTLWUCy0A' 'fgc050XIZRW491e9' --body '{"additionalData": {"4mQjVOOBnIWhunEl": {}, "qZUodp3IhtCSHy1e": {}, "i1fIrPvfHnRN06Ej": {}}, "updateStrategy": "MIN", "value": 0.824101928565507}' --login_with_auth "Bearer foo"
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
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'edgt5cyNe27HLtwt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'VOaxgP6Jbct8puMy' \
    'bYGxD9IPmmsLmu3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["aPj0O4zd8Tb7cUNG", "PTBxiFFCrn7djjs6", "9FTFVGUVhvKhJCme"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'isql14mUHVbMPimN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'hcZsU3VAdMDcb4ql' \
    --body '{"achievements": ["kiFAamqvZI2KwjqP", "BiWXade41s3rH34m", "B2yPlRpWjmHZAAvK"], "attributes": {"TH8MuqIg0Czkguwu": "JCW7EEFB67AODbi9", "BzupBsFpYc77GtRU": "cCFeY5g4XgBsbfzq", "xBPNe8ae1Il4aAtE": "bu4IjGdqthRxTjQ7"}, "avatarUrl": "gkZEY8rG0q0Q2Qd2", "inventories": ["JzRbkF2I03dIjvBb", "A6bfbYaJCJjfk2TU", "vn95FhO7VW3mbDVM"], "label": "Du87t0ldWf7iSGIi", "profileName": "KFtWtn4Yr2svKM6p", "statistics": ["qLGZ0TBujELAUK6m", "Q5iZgbwwm5iGzXtc", "knrgidKupvXO6aj4"], "tags": ["hCmTC34jxW4pIDwd", "qXpmRmut9H9XyWI8", "bp8fQxRuX91uYmtr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'HJbEGTUj7YjERL1r' \
    'EQG02zccA8wvLsWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'Nd6lPKvqDejvqklT' \
    'SvDwuOrP9lzpiX0V' \
    --body '{"achievements": ["uFpZum7izxe7NPzj", "Oa8E7wY76PxLv9HB", "EUe89AwEw1HO4FnK"], "attributes": {"tx4XLKAmlDr19uJ3": "nq6VerzVCcI8y3Cz", "0YqCKUh5RD9vNAp4": "jinFpnQ5xF9wwbvM", "ZyeDeRnVfPUa6xVV": "Bcq3wZpFIYeAg79H"}, "avatarUrl": "cLJXJ7mpVI6eTYAj", "inventories": ["dPlCiQQC35cj4KyO", "VgvnWbfRJtsB7cUQ", "Z2QUAxJrINPXppPN"], "label": "O3AfmXcgwC3IN6tv", "profileName": "KgLB9QmJIOq9dP5s", "statistics": ["zG71utjsQ4CrRb9g", "UCeVz7fWbZIdhevf", "ZvyV7AcodcZwKjYD"], "tags": ["dmJOlzwm9Su4FnS9", "8QqftSjq7sn8yrec", "iPLfkVyyJsbGpO6J"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'gehDJxEN7JlZc8LM' \
    'q1o2jZWu4yA3r0u4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'q1bTHXIjfJKyFlM0' \
    'u1uuoVdn9yVoSlKN' \
    'chPHNL4X3LLaGPGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'qLE8SohhhuiTnJar' \
    'YYkHBDdSzBXdxapw' \
    'hd5IQYBQuxLvPuWY' \
    --body '{"name": "vE3fsNy9Z9OhxXvC", "value": "p9y7fLD2qfCXnlUn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

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
    'qxT1WsRNMZcA92hz' \
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
    --body '{"cycleType": "SEASONAL", "description": "zjHZ3sIhzOx2CXKl", "end": "1982-02-07T00:00:00Z", "name": "IomU3pIxM9n8D2eL", "resetDate": 78, "resetDay": 79, "resetMonth": 8, "resetTime": "wdvl0hv6g62GxBW2", "seasonPeriod": 39, "start": "1992-09-11T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["F5tkTjgJaMYvNQOs", "tee7QLTGAak7Kaol", "Da4bkcgepqtxjbrz"]}' \
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
    '01DK97D2xnik42mi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'teR5eQAe1rzmmgqB' \
    --body '{"cycleType": "MONTHLY", "description": "md6mO4oI8KDqebm8", "end": "1999-11-17T00:00:00Z", "name": "raNBJ5y7axEkvI4o", "resetDate": 47, "resetDay": 66, "resetMonth": 73, "resetTime": "EDxGiBnNbn0zaf7C", "seasonPeriod": 0, "start": "1980-12-01T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'vHmO07KNqX9LM2Iw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'EsdOGBXBwnzDX8v3' \
    --body '{"statCodes": ["xgC1Ge9PdbTTAJ2G", "p1r0sVZ6LJAOddIL", "2l3hPjNDKv2LWfXq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'jr8fS79En3wYowBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'kaZ3y6i38XQjLDRq' \
    'kpiFK5BtiQ272Uo9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.7502273786260932, "statCode": "BJWodpdwsX1jorcy", "userId": "R0x3YiHF8ITGPRQB"}, {"inc": 0.4553280519010152, "statCode": "gIs1Q2lzxl0yF5m7", "userId": "7TTh4gUoj8u2WRcL"}, {"inc": 0.14362596719327758, "statCode": "EtzVlnkflfn7pHY4", "userId": "8F1dl1q92m3iRlfn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.44434410043364503, "statCode": "Ak0CwiAsR65yQ9ss", "userId": "uHdGmxncCEr0Kcge"}, {"inc": 0.26435103364974577, "statCode": "zGbruNB72HHMkjzy", "userId": "BB4UFKiaoV0VOem2"}, {"inc": 0.40011405671845546, "statCode": "qPsMFxKybPkbuS6x", "userId": "9cLJ1APnNlsa2bRB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'r27fVMWuAfDqLMR9' \
    '["19IZPKOKiAVQXXOm", "qFHLbyXmgCNiXH8u", "enbC5CphgMweexsI"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "AP5vHLjBJ9iqMcBL", "userId": "4BzhDUjhKPwbwcvQ"}, {"statCode": "U5kG8bXGFmPAnOkD", "userId": "iJq4xQye7HqnVK3Y"}, {"statCode": "VeOWs9mfVQh3jLBt", "userId": "n9pxpE7BYtzB0B4C"}]' \
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
    --body '{"cycleIds": ["r3vk3IfAKEbqcNXS", "DpSjb39ukcR6c2E2", "xyQrUpIFvORxTi79"], "defaultValue": 0.5248689091061357, "description": "CCvNowNmdpcJgF88", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.1567813293783098, "minimum": 0.9675709796033036, "name": "mulP4tQ6R1OqKVOT", "setAsGlobal": false, "setBy": "SERVER", "statCode": "iBgLsNhdgQ0JWZjN", "tags": ["y3f0R9s2kndhhZhw", "9gwwhTnjN6wKZGW4", "RSzOTqcVNX3ahvxw"]}' \
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
    'AiLsZs4pmLDIQch4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'IjDq9aT3qZyI0rYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'WucAkXsVJbXi7eRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'a7WwIc895ImqK6tV' \
    --body '{"cycleIds": ["BiSAylX5cS0IeHpW", "saUq3stUh5J5Z9Gi", "CugmfOL0QQpxsuD8"], "defaultValue": 0.6686240695047839, "description": "Gqku59eFJrOXyDYz", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "OPG0iHDT8QbF7gHP", "tags": ["TPQbvLt2NRqJGIKz", "4luLdvtsTKXMjiw6", "LyH1y72L13Ornyx3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'gYPvfn2Qt9iyq3Ny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'k8ncu2Z3eDHH9WaV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'O4iKhDcJ7TCcNIsQ' \
    '3PuppUxDSK8aOTGM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'udcxlCV4cNbJGQ57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'lPdinpjS2DRfGt9G' \
    --body '[{"statCode": "lyZVQ4X67tPZSTpP"}, {"statCode": "q3xjrElvvDgw0ag7"}, {"statCode": "kSWE0Hiqm5IuLryi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'EXqvUWDjU1G0EVjV' \
    --body '[{"inc": 0.8356307939110674, "statCode": "w1ToLuPakQN1MpOs"}, {"inc": 0.8642490667129303, "statCode": "RVFrcg2CXxepx78f"}, {"inc": 0.3406149316819217, "statCode": "syhE2BKtyTDSIM7m"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'kmvZ7Cmsh4US8o4j' \
    --body '[{"inc": 0.08545997729969179, "statCode": "MANPpmZDdMiCxmuC"}, {"inc": 0.4627577049857907, "statCode": "VuFjS1GC1d2b92B4"}, {"inc": 0.3424850047652934, "statCode": "Egj3HOmhcWm428Xe"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'jRF94NIY9nMrBZo0' \
    --body '[{"statCode": "lNUBDShHD32vvL28"}, {"statCode": "FPwTiXfLcxDC9Ynd"}, {"statCode": "02mECIQhfIhHtADU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'Q9zimQTQT95pFJUA' \
    'JsyAfeKOufV4f15N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'ohXu6opxQGRt6Pql' \
    'kL0diRhLC10ih2EQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'fY3XCv4hdOa6FdZh' \
    'NMd1onFjGRbxtABP' \
    --body '{"inc": 0.7971662216885855}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'DmgNEJBhgGq5GIDh' \
    'NC66szbCCf73IFbR' \
    --body '{"additionalData": {"kPSSITz4TjCrJHXG": {}, "Xku2YVuOzhxHmnrr": {}, "V9ZGWrZ05sxe6A6R": {}}}' \
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
    'pmKDebNkylbynkgT' \
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
    --body '{"cycleIds": ["WVco2LTo5ijlvDF8", "9vayLLiizac7Ge6z", "KJdlt7rjF5RaJwvk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'qBWCQ9dLWYyS8zdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'MeBXH8x6HdVfZVDA' \
    'iU6iJOF7JKZFNk2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.5965946688634427, "statCode": "y59X8iOg2sVBiCoe", "userId": "C5weXJl7PeiMH8z8"}, {"inc": 0.06370440248931963, "statCode": "Vej8N2yv6VTnOK7x", "userId": "AvM7tuL81lsR7xxS"}, {"inc": 0.771281539693816, "statCode": "p3Gd2TK0HzYviTgY", "userId": "mx82JVBRLPZ6Iz8t"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.21061135478833115, "statCode": "e5dbguBF6Gsvvdl8", "userId": "jHz9x7XZIjU4IK9l"}, {"inc": 0.6544492337317687, "statCode": "LaZaMphKCqTq3EVh", "userId": "eJjoEEXBLIxGnNuh"}, {"inc": 0.23280433795007416, "statCode": "JM3WWPvvCiCf33Vi", "userId": "EdqQpoGkUWNizk5U"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "cPAGv6c1ESC6hZYT", "userId": "YZbzf5aANNNs5kgS"}, {"statCode": "ZZNUHbIT9szApmWJ", "userId": "O5vzzXZj08a6K1XR"}, {"statCode": "VfriSpPFnZBJZkDn", "userId": "Eiyfa2LrnpZxNnLR"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["ziBOHEAj1cT3u6Zc", "H36bqS2oFY76PU1A", "2FbrTFznTgDIwZIR"], "defaultValue": 0.7883196684585093, "description": "f6T3by2kYSCdnFKL", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.9444181601256213, "minimum": 0.028809995640097452, "name": "lj9Rdd85bdYUumPK", "setAsGlobal": true, "setBy": "SERVER", "statCode": "ynp1ck1vT90C6o86", "tags": ["oaFKlQicdrxVhrtw", "cSRL9cgbUmulhe98", "Sd9QWVMYz7TU1Tsx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'sChSclSkb5aBi9K9' \
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
    'zyv6gFZXI5nXJ7hL' \
    'i6HweweRmyo91dIn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    '7QqXBDXJcrqKmXDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'oEV6tCdrxw1KOPhu' \
    --body '[{"statCode": "vHuYrGWDK41uMOC0"}, {"statCode": "mRvSoaGk4ktF5wnJ"}, {"statCode": "Dg9Q3WXiydCOInVo"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'lsr6CHmj763vLwtY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'EJTSiXjcY5ZPkv90' \
    --body '[{"inc": 0.1831824480104497, "statCode": "yKSTWLxSFZ0LpupE"}, {"inc": 0.1387831643174845, "statCode": "5DbkVs3qFTi1t530"}, {"inc": 0.7744722724143777, "statCode": "j1WfzIvc3VlSXrA3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'XUGud4tVjmxEf4Xv' \
    --body '[{"inc": 0.767960825328173, "statCode": "hFJTxFHITBg9x4un"}, {"inc": 0.2644475241504006, "statCode": "3eOMHIKeTyBG5dCU"}, {"inc": 0.23946370549577967, "statCode": "ExnKfV3869IN4V1O"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'dhH4GVU7Exlkmc4x' \
    --body '[{"statCode": "YiLjLyZrXr9Bhtzn"}, {"statCode": "8jAdTn6xBhrciryL"}, {"statCode": "m67rkadH5Y41SLjC"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'PrFa05Xl5TPC5GOD' \
    'S44bmm7jPdKLddfd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'sUqjXVzW1QqxnWR5' \
    'sheLgsAF4ctv5guy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'cGiq9j2EyIknfLDp' \
    'gHnMOn8nc3gUZ8ZF' \
    --body '{"inc": 0.3991429977306752}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'yEr0KBXuJBqK4QtE' \
    'ydPWLPBYiR3UbJc1' \
    --body '{"inc": 0.8332200152434388}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'Yapx7C477etqgfOJ' \
    'DUT0uKAPrARya2IM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"lNiXpF4qvsUUpHqi": {}, "33TcBGkc0HjUcnkp": {}, "U9oVzl2kBuLFXIeC": {}}, "additionalKey": "EKZUTz3GvCAZ5j24", "statCode": "acYHbrryHB6GO9zP", "updateStrategy": "OVERRIDE", "userId": "FaepA3b3YJ9nJM6v", "value": 0.3224153780261153}, {"additionalData": {"T27xv85K5MU2qmbe": {}, "qaVemINdClpF7Ovl": {}, "BIEgjse5kd6GEDo0": {}}, "additionalKey": "8yq5E5HleLoog4me", "statCode": "2NBFp62xlXvVcJer", "updateStrategy": "OVERRIDE", "userId": "PW02PWsHiKYArAxn", "value": 0.5904703111265034}, {"additionalData": {"BfBfDlrQQuAc10Dj": {}, "jwMv4vrIPRtvhQIy": {}, "LarjaLOKnX51yAB8": {}}, "additionalKey": "Pa3uNGKhaLlJzJMS", "statCode": "nJIIgsAVmaGYxUX1", "updateStrategy": "OVERRIDE", "userId": "4VTsLDRzdq22cbny", "value": 0.5857607432624365}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    '3ggFDh2kaZP7pnnV' \
    '["fxPwc259HF9ejHaI", "LQruAuYyJLYGqMv8", "24ouSgkpK70uJmUL"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    '0uzElixc023dIvDi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'A0tQWlHwBcTtztx3' \
    --body '[{"additionalData": {"VAl6tXFbnATCzUOI": {}, "zVcy9k3ie64Vnwa0": {}, "ClGQJultJe32AiwK": {}}, "statCode": "adEoIVmprwPsa9YD", "updateStrategy": "INCREMENT", "value": 0.8812829432364382}, {"additionalData": {"CX0rITajpwHITGeH": {}, "TnqRbzBB9ZFgJbQ3": {}, "Fj1umx4ItzkMJ7cu": {}}, "statCode": "df4r916GPrhn2etV", "updateStrategy": "MIN", "value": 0.18768738728794565}, {"additionalData": {"J80YJ41U4ooQ980y": {}, "wmg1pWpWit1QC7FK": {}, "e0fnHUlmU1unGKM0": {}}, "statCode": "tgfeWy47bbwMI4gG", "updateStrategy": "MAX", "value": 0.7186676363600055}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    'WdDwD7WJHzgNZUKs' \
    --body '{"statCodes": ["I5y0mR3zMyTsftKq", "nsIJctAdxyZVKHA9", "DkaSOWgtg8yw8lHE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'bVDwBAqanOlscRIW' \
    --body '[{"additionalData": {"w82k5K5VTkdubkOF": {}, "ldMCQ98JH4n0Jtgq": {}, "zZv5kVu4S95mj8YR": {}}, "statCode": "vae4f4lhBPbarbWE"}, {"additionalData": {"m8bVtZcfVCPdQhim": {}, "9QKUAFTVYelIlGJg": {}, "9wdc8bihhWjfZpfc": {}}, "statCode": "FBUsnnDJlmD1iEok"}, {"additionalData": {"bUiYzCQh2iNTwtno": {}, "hddMzMTQ9P7sYLDW": {}, "AJOA75K4BYJ2fkqY": {}}, "statCode": "JoF2FI3vyyqRzc20"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'O7FdsJP1G9tyBTfE' \
    'RXdvgD1Qf7Ot2DkU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    't3yexZBRvxYnEBhX' \
    'tAVxCd3meTrT7cF9' \
    --body '{"additionalData": {"oVCh89wNOkKYssVe": {}, "jcL3kR3hCGNgaJmu": {}, "ALlMQl9RLrthbfp0": {}}, "updateStrategy": "INCREMENT", "value": 0.13687682425812564}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"UProNB6hI6IpGcTo": {}, "WgFvdRhG9NwV3zDu": {}, "qVlVTypcYPK8IxrS": {}}, "additionalKey": "ZuxWl0Je4fJIyFAm", "statCode": "3DQht4JwnPS2urJq", "updateStrategy": "INCREMENT", "userId": "viVIBbcujF8Vk5qb", "value": 0.9685335664573869}, {"additionalData": {"NhWWwaxyMchkt8l5": {}, "IPSrwrJl7wYIVw13": {}, "NCo9yXlbQ52FTHTC": {}}, "additionalKey": "j6SEAzT7TOpyiuvv", "statCode": "QUm29Iacq4XRLaA6", "updateStrategy": "OVERRIDE", "userId": "3nTMtXSAyejnny0J", "value": 0.3369573630112389}, {"additionalData": {"13b6o5uB2XM6IHy7": {}, "EEvHyLmcvrZZOdwe": {}, "1x8RjU6Bi8JXE52s": {}}, "additionalKey": "UBBq2SimQQoLbe5Y", "statCode": "OJvxGRxUzrTwagH7", "updateStrategy": "OVERRIDE", "userId": "yIAzWze94MEdJFAy", "value": 0.8784982818150321}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'JTllJkRGB8jqJEd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'eqqsBVyONV0JRtoz' \
    --body '[{"additionalData": {"I0jpliCFQ6WgJpGP": {}, "igdc5VyC4qvWjVac": {}, "1cQvSxgTNIUzxDgB": {}}, "statCode": "lIbuzm7DzJ20NFRJ", "updateStrategy": "INCREMENT", "value": 0.23602518822432983}, {"additionalData": {"vTGXaMsq8ePN1oco": {}, "2jx8Upe8SjMvpqM8": {}, "puggOEdG47gD5i2N": {}}, "statCode": "i6AnWn3NdEPhNHSH", "updateStrategy": "INCREMENT", "value": 0.09704946419717153}, {"additionalData": {"QffkNOmubxEJr2qE": {}, "AuJbpZSrcbc4LWfK": {}, "aY5c1tP5TDuI5f6m": {}}, "statCode": "4KC07CnsZe32hqEc", "updateStrategy": "OVERRIDE", "value": 0.9062180434710408}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'tz6aeXZOYwbwjMNd' \
    'xKWlBfnRyFS0Ed7g' \
    --body '{"additionalData": {"TM5AVrtBQiDTcNnZ": {}, "a6Zuxk6u6HXXdiC9": {}, "ZDj4E4mv12FNXypo": {}}, "updateStrategy": "MAX", "value": 0.18855750949540429}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
