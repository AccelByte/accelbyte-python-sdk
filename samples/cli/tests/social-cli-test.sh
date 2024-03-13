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
social-bulk-get-stat-cycle --body '{"cycleIds": ["DG8aMVGLiBNrDjqo", "xcwgGLXpUL4pp2nc", "yiuATus9hsfpFDcS"]}' --login_with_auth "Bearer foo"
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
social-create-stat --body '{"cycleIds": ["8xIfkOVW2grREOLx", "KB4EYOkQ1jMD3cym", "0KOww3HICQLfl7MU"], "defaultValue": 0.4426899784977135, "description": "G7qtPu64yAtURKLR", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.9665989331813947, "minimum": 0.9002513785924169, "name": "8HGS6rDgMdIIlhS1", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "gXjvyGJPN4eXbJE5", "tags": ["FPoJeQediogEhhM2", "ehyxlNsjUgxBkF6w", "Vs2GcyomQoIXimBJ"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'rIizGdKvOPdq5xrg' --login_with_auth "Bearer foo"
social-get-stat 'xSmy1DN9LFkYW5DQ' --login_with_auth "Bearer foo"
social-delete-stat 'yj4bj5Ro2ogaKt2u' --login_with_auth "Bearer foo"
social-update-stat 'jQSa3Zdb65UXmy0Z' --body '{"cycleIds": ["0NBMA9ORxpzwLR2A", "K6eXUGPJsw1fiP80", "p6iIaTIKUkmkk9QM"], "defaultValue": 0.5280999080777553, "description": "9Pclxcft2ulIJzPy", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "XuNFviMarv8mnfHK", "tags": ["8CCmE2lPnsbD3SGE", "HBvepnDCjgyJlXe3", "dlwuUccE536ugBp3"]}' --login_with_auth "Bearer foo"
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
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["LLLOexL4fZvWtND2", "MSJlHeb34sZKHcl5", "tcBFpX8lNtFEJ7tn"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'kY6Mca5afj12K2Iz' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'rBvvWm4udE0OXudX' 'gNne8kJATwlc6esU' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.2534802354227611, "statCode": "6Sw1I98jeZQ7hfxn", "userId": "hLd3Knaknoed9DHh"}, {"inc": 0.6111161210033355, "statCode": "OqQGhCUr6iTrjyEg", "userId": "arAdNJOIG36I6tRb"}, {"inc": 0.6985900831794724, "statCode": "crEveMdAdiPKDUVS", "userId": "C00PYeDcagginxnF"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.5559466170815047, "statCode": "na3yddcbsPheTH26", "userId": "IUJNvYuGRUvpZaHC"}, {"inc": 0.33040256553239433, "statCode": "ESOiIZsMfB4ZH3mt", "userId": "gWgU4pCAKxeE70Ca"}, {"inc": 0.33002418695502167, "statCode": "nQNxot371W9G4AvQ", "userId": "kqsGnmyo5JJTUVmb"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "8GEXFTlEMEsFzYqw", "userId": "gK1Np5nodqpLm7Fh"}, {"statCode": "JBNXzAFdO0Khqf6k", "userId": "iTdSGv2LFjAKY7Cb"}, {"statCode": "gsWqFWZX7kPBom8F", "userId": "9GLLTG8phc3n4iLo"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["IllKlpO2pqiXJF3W", "GRaoQomSJC4DdrKF", "7SUQPLG59e0k5ZtX"], "defaultValue": 0.9463803715347646, "description": "wK7PpUlcIW32iK7M", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.03785487545041544, "minimum": 0.9572081253675198, "name": "KY3uVoJXTIMtpgki", "setAsGlobal": false, "setBy": "SERVER", "statCode": "zP4zvtdxdbZUpd6F", "tags": ["sHqffnrfsGlfPaZK", "EO65Rb3z7CYLM8Il", "JtHJ1pyVwyKQLY6F"]}' --login_with_auth "Bearer foo"
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
social-bulk-reset-user-stat-item-values 'DJ3w3UNgIGj2jZtE' --body '[{"additionalData": {"YT8sIPSE1XXPzySa": {}, "0sZoFS6xCOWMpyh9": {}, "pMsQgb64ELbzDMwy": {}}, "statCode": "o4nIRysQdbufXjYn"}, {"additionalData": {"SoIFeouC2m38kXrD": {}, "ZWlGVE9sJ4NpUtKp": {}, "6M9I6nEwnZhsjwJe": {}}, "statCode": "GwaPSDMZz95OYKiq"}, {"additionalData": {"aZD63xe5rruJVfLG": {}, "ea0ZtlzUcuHAXz0U": {}, "V31MfuGaXsAuGsZa": {}}, "statCode": "SHevO0TQNEI3kfab"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'xJWWSI1ECUo1NPpe' 'FhUztXDgB7n4C97u' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'APP8PATLpUpxeJls' 'BJT6Hh3OMjAjq2mK' --body '{"additionalData": {"8lbSEEelxnb5QxWG": {}, "2HFnZlA6HKWW4fI1": {}, "IQcoBQELcNlZkqTZ": {}}, "updateStrategy": "MIN", "value": 0.3558288409385535}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"mbwFEnAZaWsQJtRY": {}, "oagRJK5PX9UcOvhP": {}, "yE11TRT2SKseoe8V": {}}, "additionalKey": "Lie0LBa36KNzjf00", "statCode": "5CXNGehQ2aTjTDfK", "updateStrategy": "MAX", "userId": "DXC7eGL5YhJDWh9Y", "value": 0.7847006297741399}, {"additionalData": {"qc0qgV6d9yOfIMLd": {}, "s2DbPcaoMdtRLTmS": {}, "vTkQQgB7exYvmHMx": {}}, "additionalKey": "r5hPCJJztJBg0tTJ", "statCode": "g46IewOXE2AkCh3Q", "updateStrategy": "INCREMENT", "userId": "ZsUf8lGFXcmwTERH", "value": 0.03430090676573494}, {"additionalData": {"lOdxIwqejxe18rNd": {}, "b8Otq6j1mqUav7k0": {}, "5HAQltnSojV4jT65": {}}, "additionalKey": "yclX2FtAz0vJjFIY", "statCode": "WOaNdsimmkW2miH3", "updateStrategy": "MIN", "userId": "3Hht1SwqTsKKKo37", "value": 0.6342712576087517}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'HDOQe91Ps3ztUIV0' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'dS6hIH9c4Vfkyrwp' --body '[{"additionalData": {"uXxbaERbfgPmi0eH": {}, "kt1mr9EOIFg0dnWI": {}, "YN2NVL70Iw157g00": {}}, "statCode": "jr9b8MuYmmeKTmBN", "updateStrategy": "MIN", "value": 0.3522980848331104}, {"additionalData": {"QpfbBke8aEdd36xj": {}, "6wySoltDxsbzxrla": {}, "KEfkoYjY2o6ouRW9": {}}, "statCode": "UtNquwC3WgumrIz4", "updateStrategy": "MIN", "value": 0.11402313156374744}, {"additionalData": {"GztZpr4U4fwQIiLX": {}, "gmRasvjO4lj8m3XE": {}, "wP2b4gd3xOeii8Jn": {}}, "statCode": "mssep2xD2NY0kABe", "updateStrategy": "MIN", "value": 0.3053130410179361}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '9yxahld1pO0Gyf5P' 'O3COyMvczgEpzZ3F' --body '{"additionalData": {"btxfhcRC7IVYa6iZ": {}, "5uFRYNn3SHiWxF0Y": {}, "buU5ar5qTLWUCy0A": {}}, "updateStrategy": "INCREMENT", "value": 0.17682115808331467}' --login_with_auth "Bearer foo"
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
echo "1..98"

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
    '6C2cVWf6ttvbU1PO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    '6ApCD2VXidT7w0Oc' \
    '15N8WXBPp17PAewq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["Sm5x3B4t7WQnp8jX", "Zedgt5cyNe27HLtw", "tVOaxgP6Jbct8puM"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'ybYGxD9IPmmsLmu3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'kaPj0O4zd8Tb7cUN' \
    --body '{"achievements": ["GPTBxiFFCrn7djjs", "69FTFVGUVhvKhJCm", "eisql14mUHVbMPim"], "attributes": {"NhcZsU3VAdMDcb4q": "lkiFAamqvZI2Kwjq", "PBiWXade41s3rH34": "mB2yPlRpWjmHZAAv", "KTH8MuqIg0Czkguw": "uJCW7EEFB67AODbi"}, "avatarUrl": "9BzupBsFpYc77GtR", "inventories": ["UcCFeY5g4XgBsbfz", "qxBPNe8ae1Il4aAt", "Ebu4IjGdqthRxTjQ"], "label": "7gkZEY8rG0q0Q2Qd", "profileName": "2JzRbkF2I03dIjvB", "statistics": ["bA6bfbYaJCJjfk2T", "Uvn95FhO7VW3mbDV", "MDu87t0ldWf7iSGI"], "tags": ["iKFtWtn4Yr2svKM6", "pqLGZ0TBujELAUK6", "mQ5iZgbwwm5iGzXt"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'cknrgidKupvXO6aj' \
    '4hCmTC34jxW4pIDw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'dqXpmRmut9H9XyWI' \
    '8bp8fQxRuX91uYmt' \
    --body '{"achievements": ["rHJbEGTUj7YjERL1", "rEQG02zccA8wvLsW", "UNd6lPKvqDejvqkl"], "attributes": {"TSvDwuOrP9lzpiX0": "VuFpZum7izxe7NPz", "jOa8E7wY76PxLv9H": "BEUe89AwEw1HO4Fn", "Ktx4XLKAmlDr19uJ": "3nq6VerzVCcI8y3C"}, "avatarUrl": "z0YqCKUh5RD9vNAp", "inventories": ["4jinFpnQ5xF9wwbv", "MZyeDeRnVfPUa6xV", "VBcq3wZpFIYeAg79"], "label": "HcLJXJ7mpVI6eTYA", "profileName": "jdPlCiQQC35cj4Ky", "statistics": ["OVgvnWbfRJtsB7cU", "QZ2QUAxJrINPXppP", "NO3AfmXcgwC3IN6t"], "tags": ["vKgLB9QmJIOq9dP5", "szG71utjsQ4CrRb9", "gUCeVz7fWbZIdhev"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'fZvyV7AcodcZwKjY' \
    'DdmJOlzwm9Su4FnS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    '98QqftSjq7sn8yre' \
    'ciPLfkVyyJsbGpO6' \
    'JgehDJxEN7JlZc8L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'Mq1o2jZWu4yA3r0u' \
    '4q1bTHXIjfJKyFlM' \
    '0u1uuoVdn9yVoSlK' \
    --body '{"name": "NchPHNL4X3LLaGPG", "value": "dqLE8SohhhuiTnJa"}' \
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
    'rYYkHBDdSzBXdxap' \
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
    --body '{"cycleType": "MONTHLY", "description": "mv34h6T7EsufmfxK", "end": "1997-06-24T00:00:00Z", "name": "B4LM6H6QXmpZ9X3f", "resetDate": 96, "resetDay": 91, "resetMonth": 51, "resetTime": "R1l9xLPBsmAUrD9L", "seasonPeriod": 70, "start": "1996-03-09T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["8vVe4MHX6AgMep90", "sRNMZcA92hzC7MNa", "AyyUJyAK5PRMRMwd"]}' \
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
    'vl0hv6g62GxBW2tQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'F5tkTjgJaMYvNQOs' \
    --body '{"cycleType": "SEASONAL", "description": "KlG56HlzGr7XjdyR", "end": "1989-01-31T00:00:00Z", "name": "unZPkp6ccIBnWyPw", "resetDate": 61, "resetDay": 26, "resetMonth": 76, "resetTime": "j7gyQ7XdIszGRj46", "seasonPeriod": 58, "start": "1973-11-30T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'QAe1rzmmgqBPRmd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'mO4oI8KDqebm83ra' \
    --body '{"statCodes": ["NBJ5y7axEkvI4oxZ", "EDxGiBnNbn0zaf7C", "aOSlHXrUSA6sMJzA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    '5mtqISQ83TTbtefX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'WznDe4LQdXfFBii2' \
    'RAMEX5RMjBFVZGYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.6851927906565324, "statCode": "qV8d9mDdUIoiIJFN", "userId": "xuNOmUSWw18T1IxV"}, {"inc": 0.7810442833292774, "statCode": "CxdvPL9e4P01vxP8", "userId": "xj1LyEirURERnEMz"}, {"inc": 0.2425899986055129, "statCode": "ImW6sjAHyCK5tNan", "userId": "GBrkzUvck3xTtmOF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6208203442723365, "statCode": "ebS4AdlNzwog2IhE", "userId": "rkNhNcECWwchW6zL"}, {"inc": 0.9984842575649617, "statCode": "SkbLlrNXnGanMazb", "userId": "8jvRWenURH48aJuA"}, {"inc": 0.61040766106394, "statCode": "EcSqcE15u6D31DjO", "userId": "srs3CUYATdqnQGbq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'iqOkNeATj7eGjodd' \
    '["7CcJUrI6MAugK5ky", "pNrp2nFe9FmN86sK", "5LOq4ft5jGcMICPU"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "YnfG6jl9U4jReteI", "userId": "MgzISomCsodJrhQW"}, {"statCode": "41q2OspCZbt3Uta5", "userId": "I0uGcL1koyHjCH5o"}, {"statCode": "lYLETRpABAmO2EGv", "userId": "J4UMS93yOxNInDBy"}]' \
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
    --body '{"cycleIds": ["tC7bzjPpucddXJ5z", "J66OzOj84O6tgohj", "hnoluO6ti0QP2ssi"], "defaultValue": 0.13888898729627375, "description": "fF8y959anrNSleyw", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.2870733224124047, "minimum": 0.7567692394299385, "name": "pIFvORxTi79DpSjb", "setAsGlobal": true, "setBy": "SERVER", "statCode": "fZ2hxcJ2Fnemn7M2", "tags": ["3SzUo4hNBDh9ZFP1", "OW0nXOErQPS4VsRo", "YIK69yg9ADCGiXaL"]}' \
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
    's2xjHkinOD975nAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'HCmhNHSXuqIHsxva' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'UoXDmwWsukxncuD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'QxCXMd00YBWCaVVm' \
    --body '{"cycleIds": ["U7JLMQyMWzYQCAaP", "M45mfIZsWhkS476d", "GGJwJ00UH197MJ6z"], "defaultValue": 0.5738013960011612, "description": "goxGJoJaSzUtY4ZD", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "b0U4pH16NUsVY21N", "tags": ["aURydf8ZyyZeHAWG", "VIs7NRen2Y3Ns0QJ", "QeaWytPfds1BYx0E"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'gJUbUJRMbkcTglbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    '86FyOjApNHBVfNOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'RcjY3YYT9oTynmfI' \
    'uBWgJTNFfM8M0IW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'oe8KDgy0xZfAcNg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '4Ws8TIP1LKiFQoLD' \
    --body '[{"statCode": "vumfqrgSfnx2h61X"}, {"statCode": "9dN1MGRXBJ6mVV7J"}, {"statCode": "S9qjNLwvI8JdiY3R"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'RiLilmOGF6dLLIeI' \
    --body '[{"inc": 0.7716541387693733, "statCode": "IjMcdlbdRXTGIrdN"}, {"inc": 0.6018242333033923, "statCode": "5gJPqTAjgqaTHf1A"}, {"inc": 0.6342179623120566, "statCode": "TJ9Yk997XkGOdC6I"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'txDT8p4n4XCFkD1A' \
    --body '[{"inc": 0.5679511266621261, "statCode": "LCwszbZxuHSgDOK8"}, {"inc": 0.03144201535172064, "statCode": "joF7bL2635KbtZTG"}, {"inc": 0.5788534607039014, "statCode": "pqgl2IzNXGTuQPID"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'por7t1aJLNNz6QIV' \
    --body '[{"statCode": "C9Mfuc8VOsnmnlVl"}, {"statCode": "jdWYmELe74p38vum"}, {"statCode": "nxAnYBTxaTIz0jcg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'DI8Pkz96vd80msqI' \
    'm5bufnBqrpLeqhwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'hjnnjKMEmtbiWsAQ' \
    'HbMrKYi0Zxs5SWCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'ZXHLLa31oQf7BULn' \
    'ZDhutDM6BqguqD5x' \
    --body '{"inc": 0.3841276978287843}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'GxBWtnTKUe2znsqP' \
    'zPkwCBo2SwCUsTag' \
    --body '{"additionalData": {"4MLAo3m61P2xaNfm": {}, "n8Onb1a9gMz0F2UB": {}, "RmMhAbUWmFhdYLWz": {}}}' \
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
    'Muv3zkUY0n0BAZkw' \
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
    --body '{"cycleIds": ["bYkBLyO6A0Fqfhna", "B3YxKNdOTacCcJfI", "fXshuLUk5WdpxjZx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    '5noXPhPUTKbonouc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'NmzwOZOK56sDkci5' \
    'rZ8iMlOuksQJCiRF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.12923845177783866, "statCode": "ZWwJ7NrTb1XTB9YQ", "userId": "zUJ9XlYJ8BzP6EUm"}, {"inc": 0.7427430827634866, "statCode": "XGM5anIloyj9lhbv", "userId": "uQdW2jwKUckc794r"}, {"inc": 0.3952417421069452, "statCode": "Y91lX8DD4MYXlrJ8", "userId": "1lHvv9rqvEoM8YmV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.1534799857444592, "statCode": "AkO3HKsEp6KlqwW4", "userId": "djrexcbHdEtoQvpV"}, {"inc": 0.8896182754008543, "statCode": "44RctmTozCi8HeV6", "userId": "jbalHmqBBfi7sSF5"}, {"inc": 0.4479446806973577, "statCode": "oGiTCVsXsygWbjE2", "userId": "opXtdsJQeJ1too0q"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "vxphTLEEBGTtZyTj", "userId": "dKNKgYazujsmSmyl"}, {"statCode": "T1YtxIq73aMb48jI", "userId": "Sd97KORRhxSWLWLN"}, {"statCode": "fHRD3V15QaGGL46L", "userId": "uxJF3sbeqWBdQuWf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["GkkoMUZn1YXj5zFZ", "gBAKx27MSBqabUXO", "eOCOR9NvBQZSJPOI"], "defaultValue": 0.5812507582758247, "description": "rRBrYVzi9ui3lvoz", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.4316332616918226, "minimum": 0.8421213096238773, "name": "TuU2aL4bPkk11sys", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "cT3u6Zc2FbrTFznT", "tags": ["gDIwZIRWf6T3by2k", "dcEfU61OJYMnW49r", "YSCdnFKLc0xcTjqj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'Wynp1ck1vT90C6o8' \
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
    '6cSRL9cgbUmulhe9' \
    '8oaFKlQicdrxVhrt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'wSd9QWVMYz7TU1Ts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'xsChSclSkb5aBi9K' \
    --body '[{"statCode": "9zyv6gFZXI5nXJ7h"}, {"statCode": "Li6HweweRmyo91dI"}, {"statCode": "n7QqXBDXJcrqKmXD"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'woEV6tCdrxw1KOPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'uvHuYrGWDK41uMOC' \
    --body '[{"inc": 0.848777735563325, "statCode": "mRvSoaGk4ktF5wnJ"}, {"inc": 0.4754894521944931, "statCode": "g9Q3WXiydCOInVol"}, {"inc": 0.30259905458748615, "statCode": "r6CHmj763vLwtYEJ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'TSiXjcY5ZPkv90ly' \
    --body '[{"inc": 0.5862040940131901, "statCode": "STWLxSFZ0LpupEi5"}, {"inc": 0.47445927335674964, "statCode": "bkVs3qFTi1t530Wj"}, {"inc": 0.8580099459982431, "statCode": "WfzIvc3VlSXrA3XU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'Gud4tVjmxEf4XvVh' \
    --body '[{"statCode": "FJTxFHITBg9x4unq"}, {"statCode": "3eOMHIKeTyBG5dCU"}, {"statCode": "oExnKfV3869IN4V1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'OdhH4GVU7Exlkmc4' \
    'xYiLjLyZrXr9Bhtz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'n8jAdTn6xBhrciry' \
    'Lm67rkadH5Y41SLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'CPrFa05Xl5TPC5GO' \
    'DS44bmm7jPdKLddf' \
    --body '{"inc": 0.0610710212990363}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'sUqjXVzW1QqxnWR5' \
    'sheLgsAF4ctv5guy' \
    --body '{"inc": 0.03356148554564842}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'Giq9j2EyIknfLDpg' \
    'HnMOn8nc3gUZ8ZFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"yEr0KBXuJBqK4QtE": {}, "ydPWLPBYiR3UbJc1": {}, "ZYapx7C477etqgfO": {}}, "additionalKey": "JDUT0uKAPrARya2I", "statCode": "MlNiXpF4qvsUUpHq", "updateStrategy": "MAX", "userId": "cQ6O30lpzcBQMAEc", "value": 0.6362444218093614}, {"additionalData": {"cJqrKxnMzSYoc4Zj": {}, "iMY4H34B6wVd8ipc": {}, "KDwQeUWtjCC2UH6j": {}}, "additionalKey": "zMO3AfmOS5mQNyRP", "statCode": "ZFPNP56l1AT6OLKm", "updateStrategy": "INCREMENT", "userId": "hCZxxPPdPwOtEuWB", "value": 0.7101468849361725}, {"additionalData": {"O2jJepUnEEgja2mI": {}, "E2kLTnJwc5XmkCuL": {}, "5W4tKt6G3j9LYdG7": {}}, "additionalKey": "xVPqBqe9RDQMBSYA", "statCode": "FLqp8PF5hCcoukWp", "updateStrategy": "MAX", "userId": "jjwMv4vrIPRtvhQI", "value": 0.3926207758154576}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'LarjaLOKnX51yAB8' \
    '["Pa3uNGKhaLlJzJMS", "nJIIgsAVmaGYxUX1", "B9oVuzG2CnYX2YBF"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    '2g7TVtzYEHUodh3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'UfBthbepUCTWiZ1u' \
    --body '[{"additionalData": {"qh7GAi4FEIu44u83": {}, "ZLRxYlYqlpq03BGd": {}, "Ik4oEogFVGR71rJO": {}}, "statCode": "By6lsj1AKGBjnHma", "updateStrategy": "OVERRIDE", "value": 0.9009152079584349}, {"additionalData": {"VAl6tXFbnATCzUOI": {}, "zVcy9k3ie64Vnwa0": {}, "ClGQJultJe32AiwK": {}}, "statCode": "adEoIVmprwPsa9YD", "updateStrategy": "INCREMENT", "value": 0.8812829432364382}, {"additionalData": {"CX0rITajpwHITGeH": {}, "TnqRbzBB9ZFgJbQ3": {}, "Fj1umx4ItzkMJ7cu": {}}, "statCode": "df4r916GPrhn2etV", "updateStrategy": "MIN", "value": 0.18768738728794565}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'J80YJ41U4ooQ980y' \
    --body '[{"additionalData": {"wmg1pWpWit1QC7FK": {}, "e0fnHUlmU1unGKM0": {}, "tgfeWy47bbwMI4gG": {}}, "statCode": "mvK9gW596FwBNrFX"}, {"additionalData": {"t3TAuKBwBcD12ae6": {}, "r3hHwya4NpdOzg3h": {}, "r6ucHf7dbh2iKNUl": {}}, "statCode": "0qJqzoKMRMG541PA"}, {"additionalData": {"iNjULsx4SnKNXLMU": {}, "aDSwwQlnNRZJHBSB": {}, "4fZWEFIZs28Ff1kZ": {}}, "statCode": "p1Zktx3N7WNMYIfc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkResetUserStatItemValues' test.out

#- 93 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'DKbLu8pnK34oA1ke' \
    'YXJvtggDdXjbdjMB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeleteUserStatItems2' test.out

#- 94 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'ahFZZGMTcqnWrIpr' \
    'Ov0BJ9Sgl7H1sdH2' \
    --body '{"additionalData": {"RIJz1eI7Q5pu9Put": {}, "Lf6IrvZoBGQbO4S3": {}, "rURGWUzPAE6SdV4D": {}}, "updateStrategy": "MAX", "value": 0.5683411590112284}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'UpdateUserStatItemValue' test.out

#- 95 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"oF2FI3vyyqRzc20O": {}, "7FdsJP1G9tyBTfER": {}, "XdvgD1Qf7Ot2DkUt": {}}, "additionalKey": "3yexZBRvxYnEBhXt", "statCode": "AVxCd3meTrT7cF9o", "updateStrategy": "OVERRIDE", "userId": "0OCKDJE3RMUddwSS", "value": 0.11064758074215064}, {"additionalData": {"xCu8zru1DhGAYOHR": {}, "5BWa9VzIkaQEl1iU": {}, "ProNB6hI6IpGcToW": {}}, "additionalKey": "gFvdRhG9NwV3zDuq", "statCode": "VlVTypcYPK8IxrSZ", "updateStrategy": "MIN", "userId": "OqO4U0bitNQLzwRo", "value": 0.7800357914279006}, {"additionalData": {"nR0AbkCPY70Fmvvi": {}, "VIBbcujF8Vk5qb8N": {}, "hWWwaxyMchkt8l5I": {}}, "additionalKey": "PSrwrJl7wYIVw13N", "statCode": "Co9yXlbQ52FTHTCj", "updateStrategy": "OVERRIDE", "userId": "XAblkT8VGgSH8MGZ", "value": 0.5213690175948839}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem1' test.out

#- 96 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'wiVj7eDTaka9ABfX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryUserStatItems2' test.out

#- 97 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '1IByPEOuPhGspRi3' \
    --body '[{"additionalData": {"bhPQvBBJI5Jxytpc": {}, "ubN4AUUPFPscZsXe": {}, "JOD4DMtqfIGiGJov": {}}, "statCode": "gWSRxZ8N4UQ2fg3V", "updateStrategy": "MIN", "value": 0.23866486193102554}, {"additionalData": {"2x0hL5DuBDqMyIAz": {}, "Wze94MEdJFAy2JTl": {}, "lJkRGB8jqJEd6eqq": {}}, "statCode": "sBVyONV0JRtozI0j", "updateStrategy": "MAX", "value": 0.9033985672872533}, {"additionalData": {"F3LD1EDwBXw5uBYe": {}, "QZOzATNSV9E9yyNb": {}, "7yaLXzAVYymOuhCk": {}}, "statCode": "Zu4htrsf8eIFSovT", "updateStrategy": "INCREMENT", "value": 0.01474603875607916}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'BulkUpdateUserStatItem2' test.out

#- 98 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'Msq8ePN1oco2jx8U' \
    'pe8SjMvpqM8puggO' \
    --body '{"additionalData": {"EdG47gD5i2Ni6AnW": {}, "n3NdEPhNHSH7eKDf": {}, "RcngEpTnRUQr3RLO": {}}, "updateStrategy": "INCREMENT", "value": 0.861036958201772}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
