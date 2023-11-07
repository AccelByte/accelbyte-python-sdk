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
social-bulk-get-stat-cycle --body '{"cycleIds": ["yiuATus9hsfpFDcS", "xcwgGLXpUL4pp2nc", "DG8aMVGLiBNrDjqo"]}' --login_with_auth "Bearer foo"
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
social-create-stat --body '{"cycleIds": ["0KOww3HICQLfl7MU", "8xIfkOVW2grREOLx", "KB4EYOkQ1jMD3cym"], "defaultValue": 0.4426899784977135, "description": "G7qtPu64yAtURKLR", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.018629476179174542, "minimum": 0.6988306187111987, "name": "PZTF6oQAXVG7tnsZ", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "5QgXjvyGJPN4eXbJ", "tags": ["6wFPoJeQediogEhh", "E5Vs2GcyomQoIXim", "BJehyxlNsjUgxBkF"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'M2rIizGdKvOPdq5x' --login_with_auth "Bearer foo"
social-get-stat 'rgxSmy1DN9LFkYW5' --login_with_auth "Bearer foo"
social-delete-stat 'DQyj4bj5Ro2ogaKt' --login_with_auth "Bearer foo"
social-update-stat '2ujQSa3Zdb65UXmy' --body '{"cycleIds": ["QM0NBMA9ORxpzwLR", "2AK6eXUGPJsw1fiP", "0Zp6iIaTIKUkmkk9"], "defaultValue": 0.9716918984737875, "description": "0G9Pclxcft2ulIJz", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "rQDXuNFviMarv8mn", "tags": ["SGEdlwuUccE536ug", "Bp3HBvepnDCjgyJl", "fHK8CCmE2lPnsbD3"]}' --login_with_auth "Bearer foo"
social-get-stat-items 'Xe36mgWjLfFmteue' --login_with_auth "Bearer foo"
social-delete-tied-stat '9nzJ6fH24T805tVg' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items '8JqU0jZpjvsugAOS' '7u8RiWyerCSa8SRg' --login_with_auth "Bearer foo"
social-get-user-stat-items 'wsAj1ik1jglaDXTv' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'KCWwNTAhd2wrS0uP' --body '[{"statCode": "djhdinpng5BLy8wb"}, {"statCode": "hMssAHjapIkY9Rf4"}, {"statCode": "wP57dBZNR88YbCtm"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'Ky8M9zVrjfGXZnqA' --body '[{"inc": 0.6898625787780174, "statCode": "UoY1GjlIIk0iKoTT"}, {"inc": 0.7202669160855811, "statCode": "1j02o7JjTXAQN0qd"}, {"inc": 0.2921785714730101, "statCode": "kdQV0TqI8EFnmDbx"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'Ixi4YKlONk2Q5Y4J' --body '[{"inc": 0.3502298658773175, "statCode": "aizwiilatuUjjt9l"}, {"inc": 0.5543996217702082, "statCode": "MGql5ElEa9EIIlGc"}, {"inc": 0.5375753585770515, "statCode": "B3CfR3ncDlwi3v3M"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'FFJ1KesKoELCpobB' --body '[{"statCode": "EG8X645xpdXpai0r"}, {"statCode": "YaT5hOPjaf3H0tYi"}, {"statCode": "ghU0VUfcYHJbBfAK"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'SiPW3VgsZXiR1DJ7' 'HVWqMkNSawQUWDFJ' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'vJBWic7UkBeIXuqD' 'uAXI66bQ71w0deoV' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '9Lx5RDA1l2XcrciY' 'NEzvSZIPkhSgORcz' --body '{"inc": 0.9351387794582325}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'S5BvmgBLxh4ijFnE' '3Tam69qSZ7PC6f6Q' --body '{"additionalData": {"kmZXElW9YfRSse6A": {}, "Az3S4czz0QKFlAVm": {}, "VLu4AOec0z8eBeeo": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'ip68J1nsv4W2OJht' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["cl5LLLOexL4fZvWt", "afxMSJlHeb34sZKH", "ND2tcBFpX8lNtFEJ"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 '7tnkY6Mca5afj12K' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 '2IzrBvvWm4udE0OX' 'udXgNne8kJATwlc6' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.06643478035275929, "statCode": "sUp6Sw1I98jeZQ7h", "userId": "fxnhLd3Knaknoed9"}, {"inc": 0.47165086077270413, "statCode": "HhLOqQGhCUr6iTrj", "userId": "yEgarAdNJOIG36I6"}, {"inc": 0.31534837905474267, "statCode": "RbRcrEveMdAdiPKD", "userId": "UVSC00PYeDcaggin"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.37121030043209935, "statCode": "nFIna3yddcbsPheT", "userId": "H26IUJNvYuGRUvpZ"}, {"inc": 0.010544701389554323, "statCode": "HCuESOiIZsMfB4ZH", "userId": "3mtgWgU4pCAKxeE7"}, {"inc": 0.850741273139212, "statCode": "CaunQNxot371W9G4", "userId": "AvQkqsGnmyo5JJTU"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "Vmb8GEXFTlEMEsFz", "userId": "YqwgK1Np5nodqpLm"}, {"statCode": "7FhJBNXzAFdO0Khq", "userId": "f6kiTdSGv2LFjAKY"}, {"statCode": "7CbgsWqFWZX7kPBo", "userId": "m8F9GLLTG8phc3n4"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["iLoIllKlpO2pqiXJ", "rKF7SUQPLG59e0k5", "F3WGRaoQomSJC4Dd"], "defaultValue": 0.8327543277373785, "description": "tX6wK7PpUlcIW32i", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.3117353719176619, "minimum": 0.8563166008085898, "name": "ixY5rA1WoVeJIePF", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "rQzP4zvtdxdbZUpd", "tags": ["6FJtHJ1pyVwyKQLY", "IlsHqffnrfsGlfPa", "6FEO65Rb3z7CYLM8"]}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'ZKBwa3Ddb60ufPpz' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'wj1QGIFmlVf4jvap' 'seE9LN9bvhOrHflI' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'Od6X3viLvtEk4mTI' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'pUA9gxo8SV38nEho' --body '[{"statCode": "XmM2W7l6jHMA2rG3"}, {"statCode": "nakopAywelu01nry"}, {"statCode": "EJ0NqoTow0qiOiC4"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'j0iktm0ZPLkLOsp0' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'LZ5njN86Hl8kUXzt' --body '[{"inc": 0.9395912604231841, "statCode": "bSc6bWvgpVyW9dD1"}, {"inc": 0.17729018246621575, "statCode": "OmvrAejcq2LgkQua"}, {"inc": 0.7133813307542322, "statCode": "7RBx3vim02jBOxrZ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'DyvpcLYOWA8NjxOn' --body '[{"inc": 0.011796405572552904, "statCode": "Eok4nOOCzfsflhjb"}, {"inc": 0.21310325107239647, "statCode": "gJOUn18G5MlfDTk8"}, {"inc": 0.0034339633955551285, "statCode": "G40NlncceIZSwgAI"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'kgzh4pTU0Am4DZhl' --body '[{"statCode": "0bQxFJ3sWCqQpQ2F"}, {"statCode": "bKPFMycMSQ4qfAac"}, {"statCode": "R0LgB5BUXvjcu2s6"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'w3VifnKqmTSoGH1X' 'EfY6QAYn6WQ5UBEU' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 '1QAOHfZiGhxOdcuD' 'XSxSc3aZPV87pna0' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '8gxefTYKhuxaEc7M' '4P7UckSC6ePeN8i4' --body '{"inc": 0.5286725271358397}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'rFES9z7xueHpATHc' 'cee9GXhKcjmSEwdr' --body '{"inc": 0.16530452093918546}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'EnnqKzFsLfYalUlf' 'wEQKjU7eHGebSVu0' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"LQ40kepEaC4dfiOM": {}, "ZfEhHr39pysFO3Zv": {}, "c1BZG99LyvfvHEsJ": {}}, "additionalKey": "KQQewVLMUoAnaRcY", "statCode": "p7FUjfIGaffoflEI", "updateStrategy": "OVERRIDE", "userId": "iVsF6xG2mXEQdbzI", "value": 0.762429794538497}, {"additionalData": {"y8alncV7vWgSHdfo": {}, "07UctPErqxyMyOK0": {}, "6MqQBErxgjVBycvU": {}}, "additionalKey": "4PbmRDcrg0DjQjBE", "statCode": "CXvea7H1m2lJFRZ3", "updateStrategy": "MAX", "userId": "YSWIeVzm7z9noowm", "value": 0.17977343551809388}, {"additionalData": {"TIKVowi0RY2VN4ZO": {}, "NJREdUQ3z9F1BxNN": {}, "gnke4akncw7wu9Tm": {}}, "additionalKey": "XfJWBPrx9Ns8eLzY", "statCode": "EvwSWTaLQjctvrK2", "updateStrategy": "MAX", "userId": "f4XhIjSoTB2NMKte", "value": 0.4181891412231791}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'apPr2QEPx3zTxBGt' '["EJIYppuUSsKoHw2h", "yd12uSE7BEv3aevq", "6iohU1cg4W1IS3Uv"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items '1BpWoJBaqdg2FHcu' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'nsS1lnaO2m9vqjhb' --body '[{"additionalData": {"eK2qN8g6x2PyYDo5": {}, "R3hLiD5sf5y1JsxJ": {}, "NGmyt0SQDUDoWBZV": {}}, "statCode": "GLlkUetzCAWc9x1a", "updateStrategy": "OVERRIDE", "value": 0.15943715175018125}, {"additionalData": {"gGim51T107XIZRZ7": {}, "tZdIs0xf4czdt7zq": {}, "mSKxOEQlVcx6GqsB": {}}, "statCode": "q8vdhWVnuYLgpZeh", "updateStrategy": "OVERRIDE", "value": 0.5269429818236662}, {"additionalData": {"2nmyuViB9kRTcSQd": {}, "TnNYGeAfYFG3wSkH": {}, "KufBdS3ZOokZB4cX": {}}, "statCode": "nAXyuGz6LlxHv8Sw", "updateStrategy": "OVERRIDE", "value": 0.5462234170324839}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'SppnIZkNnTn3rzH5' --body '[{"additionalData": {"NvAtcvNedgS1fUfK": {}, "mihDbmu8ePWlQMVD": {}, "XEHeiGTnwyEw6hIW": {}}, "statCode": "DZrpP7rz3ISW510k"}, {"additionalData": {"Hr4isTKWjmv67nuH": {}, "CXWfwnwGioVwVzmm": {}, "BVVFfpqx1AeLtzcP": {}}, "statCode": "J3jtDYBo4FUTH7CG"}, {"additionalData": {"fKSyxgRR1DiCqSMz": {}, "pqIFGLkDs7ACC1Rg": {}, "BfoNrHlFi2qJLgmB": {}}, "statCode": "LE35YhyiDV90SeI5"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'yppBHoytVznCgNyx' '9fbT63ShEh8PbGik' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'Ljgjcj34uulU6FYB' 'ZsWFbr3RSP0W9nBh' --body '{"additionalData": {"vhf8Q0DtJMcYQdN6": {}, "6bswAgt65X4N1LQZ": {}, "mB61JMdtwCVUrYQu": {}}, "updateStrategy": "INCREMENT", "value": 0.27263628675720664}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"TZrKgXNwvm4e5GX6": {}, "H742OixhtAoKiVm6": {}, "URT95XhnUcvWB28M": {}}, "additionalKey": "pusuhhDJ5slzgiWZ", "statCode": "Etyd56LfxnbY97jj", "updateStrategy": "OVERRIDE", "userId": "gXchCbkXX26uEdCf", "value": 0.6874472358611973}, {"additionalData": {"aMAQuTKfC0I2kNjC": {}, "MDtDMrentgn3Dhqc": {}, "iwIeShF9RKb9vvxu": {}}, "additionalKey": "JlhXbWhbwPwToC6k", "statCode": "njVwVnzaqSfJiQFC", "updateStrategy": "MAX", "userId": "gXoda0kg16yUSpSO", "value": 0.4338744319954274}, {"additionalData": {"jHJWwfCjYwWkLob9": {}, "gKLqs2nEZhpByfHZ": {}, "inxNfgPAwkMBsznl": {}}, "additionalKey": "BUqnLT4AbGptKaWN", "statCode": "vPbpg7yrRvXfZ6rv", "updateStrategy": "INCREMENT", "userId": "iH3xRHAKy4QxZkaX", "value": 0.8348114433739707}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '7vmiEd0JPxVyQpsh' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'aDwNqTbbFMXAMfVX' --body '[{"additionalData": {"e0GZeMgsRsmH1EQr": {}, "YmkPKTPOlhTtSiZN": {}, "CxuogFteTHJe4BhS": {}}, "statCode": "SQkQD6WmOt6D7ufF", "updateStrategy": "MAX", "value": 0.7370693716154849}, {"additionalData": {"OhvQpfbBke8aEdd3": {}, "6xj6wySoltDxsbzx": {}, "rlaKEfkoYjY2o6ou": {}}, "statCode": "RW9UtNquwC3Wgumr", "updateStrategy": "OVERRIDE", "value": 0.4170149053391362}, {"additionalData": {"4NhGztZpr4U4fwQI": {}, "iLXgmRasvjO4lj8m": {}, "3XEwP2b4gd3xOeii": {}}, "statCode": "8Jnmssep2xD2NY0k", "updateStrategy": "OVERRIDE", "value": 0.15305482924001368}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '3cvRFaTC11W0TGTC' 'm4fZWuk6pQxDQpKq' --body '{"additionalData": {"xLGeMvr9TsvcMQ7d": {}, "BsaIecRxIsZvD6rm": {}, "zVr5XT1Nxw0v1dMQ": {}}, "updateStrategy": "OVERRIDE", "value": 0.7082167033426856}' --login_with_auth "Bearer foo"
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
echo "1..96"

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
    'rbk6C2cVWf6ttvbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    '1PO6ApCD2VXidT7w' \
    '0Oc15N8WXBPp17PA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["ewqSm5x3B4t7WQnp", "8jXZedgt5cyNe27H", "LtwtVOaxgP6Jbct8"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'puMybYGxD9IPmmsL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'mu3kaPj0O4zd8Tb7' \
    --body '{"achievements": ["cUNGPTBxiFFCrn7d", "jjs69FTFVGUVhvKh", "JCmeisql14mUHVbM"], "attributes": {"PimNhcZsU3VAdMDc": "b4qlkiFAamqvZI2K", "wjqPBiWXade41s3r": "H34mB2yPlRpWjmHZ", "AAvKTH8MuqIg0Czk": "guwuJCW7EEFB67AO"}, "avatarUrl": "Dbi9BzupBsFpYc77", "inventories": ["GtRUcCFeY5g4XgBs", "bfzqxBPNe8ae1Il4", "aAtEbu4IjGdqthRx"], "label": "TjQ7gkZEY8rG0q0Q", "profileName": "2Qd2JzRbkF2I03dI", "statistics": ["jvBbA6bfbYaJCJjf", "k2TUvn95FhO7VW3m", "bDVMDu87t0ldWf7i"], "tags": ["SGIiKFtWtn4Yr2sv", "KM6pqLGZ0TBujELA", "UK6mQ5iZgbwwm5iG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'zXtcknrgidKupvXO' \
    '6aj4hCmTC34jxW4p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'IDwdqXpmRmut9H9X' \
    'yWI8bp8fQxRuX91u' \
    --body '{"achievements": ["YmtrHJbEGTUj7YjE", "RL1rEQG02zccA8wv", "LsWUNd6lPKvqDejv"], "attributes": {"qklTSvDwuOrP9lzp": "iX0VuFpZum7izxe7", "NPzjOa8E7wY76PxL": "v9HBEUe89AwEw1HO", "4FnKtx4XLKAmlDr1": "9uJ3nq6VerzVCcI8"}, "avatarUrl": "y3Cz0YqCKUh5RD9v", "inventories": ["NAp4jinFpnQ5xF9w", "wbvMZyeDeRnVfPUa", "6xVVBcq3wZpFIYeA"], "label": "g79HcLJXJ7mpVI6e", "profileName": "TYAjdPlCiQQC35cj", "statistics": ["4KyOVgvnWbfRJtsB", "7cUQZ2QUAxJrINPX", "ppPNO3AfmXcgwC3I"], "tags": ["N6tvKgLB9QmJIOq9", "dP5szG71utjsQ4Cr", "Rb9gUCeVz7fWbZId"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'hevfZvyV7AcodcZw' \
    'KjYDdmJOlzwm9Su4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'FnS98QqftSjq7sn8' \
    'yreciPLfkVyyJsbG' \
    'pO6JgehDJxEN7JlZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'c8LMq1o2jZWu4yA3' \
    'r0u4q1bTHXIjfJKy' \
    'FlM0u1uuoVdn9yVo' \
    --body '{"name": "SlKNchPHNL4X3LLa", "value": "GPGdqLE8SohhhuiT"}' \
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
    'nJarYYkHBDdSzBXd' \
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
    --body '{"cycleType": "SEASONAL", "description": "GVPmv34h6T7Esufm", "end": "1973-06-21T00:00:00Z", "name": "xKYB4LM6H6QXmpZ9", "resetDate": 44, "resetDay": 59, "resetMonth": 12, "resetTime": "p9y7fLD2qfCXnlUn", "seasonPeriod": 33, "start": "1982-11-02T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["MNa8vVe4MHX6AgMe", "p90AyyUJyAK5PRMR", "T1WsRNMZcA92hzC7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'Mwdvl0hv6g62GxBW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '2tQF5tkTjgJaMYvN' \
    --body '{"cycleType": "ANNUALLY", "description": "sDa4bkcgepqtxjbr", "end": "1984-12-27T00:00:00Z", "name": "tee7QLTGAak7Kaol", "resetDate": 46, "resetDay": 61, "resetMonth": 26, "resetTime": "K97D2xnik42miteR", "seasonPeriod": 58, "start": "1973-11-30T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'QAe1rzmmgqBPRmd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'mO4oI8KDqebm83ra' \
    --body '{"statCodes": ["NBJ5y7axEkvI4oxZ", "EDxGiBnNbn0zaf7C", "aOSlHXrUSA6sMJzA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    '5mtqISQ83TTbtefX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'WznDe4LQdXfFBii2' \
    'RAMEX5RMjBFVZGYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.6851927906565324, "statCode": "qV8d9mDdUIoiIJFN", "userId": "xuNOmUSWw18T1IxV"}, {"inc": 0.7810442833292774, "statCode": "CxdvPL9e4P01vxP8", "userId": "xj1LyEirURERnEMz"}, {"inc": 0.2425899986055129, "statCode": "ImW6sjAHyCK5tNan", "userId": "GBrkzUvck3xTtmOF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6208203442723365, "statCode": "ebS4AdlNzwog2IhE", "userId": "rkNhNcECWwchW6zL"}, {"inc": 0.9984842575649617, "statCode": "SkbLlrNXnGanMazb", "userId": "8jvRWenURH48aJuA"}, {"inc": 0.61040766106394, "statCode": "EcSqcE15u6D31DjO", "userId": "srs3CUYATdqnQGbq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'iqOkNeATj7eGjodd' \
    '["7CcJUrI6MAugK5ky", "pNrp2nFe9FmN86sK", "5LOq4ft5jGcMICPU"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "YnfG6jl9U4jReteI", "userId": "MgzISomCsodJrhQW"}, {"statCode": "41q2OspCZbt3Uta5", "userId": "I0uGcL1koyHjCH5o"}, {"statCode": "lYLETRpABAmO2EGv", "userId": "J4UMS93yOxNInDBy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkResetUserStatItem' test.out

#- 41 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetStats' test.out

#- 42 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"cycleIds": ["hnoluO6ti0QP2ssi", "J66OzOj84O6tgohj", "tC7bzjPpucddXJ5z"], "defaultValue": 0.13888898729627375, "description": "fF8y959anrNSleyw", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.5426350063624478, "minimum": 0.14225848978067424, "name": "g6IKWVZ77KeRWdEC", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "FGzfZ2hxcJ2Fnemn", "tags": ["sRoYIK69yg9ADCGi", "FP1OW0nXOErQPS4V", "7M23SzUo4hNBDh9Z"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'CreateStat' test.out

#- 43 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'ExportStats' test.out

#- 44 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'ImportStats' test.out

#- 45 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'XaLs2xjHkinOD975' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'nARHCmhNHSXuqIHs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'xvaUoXDmwWsukxnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'uD3QxCXMd00YBWCa' \
    --body '{"cycleIds": ["76dGGJwJ00UH197M", "VVmM45mfIZsWhkS4", "J6zU7JLMQyMWzYQC"], "defaultValue": 0.4213326359933013, "description": "aPJgoxGJoJaSzUtY", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "0Xtb0U4pH16NUsVY", "tags": ["0QJQeaWytPfds1BY", "x0EaURydf8ZyyZeH", "21NVIs7NRen2Y3Ns"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'AWGgJUbUJRMbkcTg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetStatItems' test.out

#- 50 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'lbU86FyOjApNHBVf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteTiedStat' test.out

#- 51 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'NOURcjY3YYT9oTyn' \
    'mfIuBWgJTNFfM8M0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatCycleItems' test.out

#- 52 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'IW4oe8KDgy0xZfAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetUserStatItems' test.out

#- 53 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'Ng14Ws8TIP1LKiFQ' \
    --body '[{"statCode": "oLDvumfqrgSfnx2h"}, {"statCode": "61X9dN1MGRXBJ6mV"}, {"statCode": "V7JS9qjNLwvI8Jdi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkCreateUserStatItems' test.out

#- 54 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'Y3RRiLilmOGF6dLL' \
    --body '[{"inc": 0.5603905446661724, "statCode": "eIVIjMcdlbdRXTGI"}, {"inc": 0.288528493282996, "statCode": "dNL5gJPqTAjgqaTH"}, {"inc": 0.09283281005138877, "statCode": "1ANTJ9Yk997XkGOd"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItem1' test.out

#- 55 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'C6ItxDT8p4n4XCFk' \
    --body '[{"inc": 0.4757783172094233, "statCode": "1AJLCwszbZxuHSgD"}, {"inc": 0.6611527893419903, "statCode": "K8bjoF7bL2635Kbt"}, {"inc": 0.8239575025865994, "statCode": "TGJpqgl2IzNXGTuQ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkIncUserStatItemValue1' test.out

#- 56 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'PIDpor7t1aJLNNz6' \
    --body '[{"statCode": "QIVC9Mfuc8VOsnmn"}, {"statCode": "lVljdWYmELe74p38"}, {"statCode": "vumnxAnYBTxaTIz0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem1' test.out

#- 57 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'jcgDI8Pkz96vd80m' \
    'sqIm5bufnBqrpLeq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateUserStatItem' test.out

#- 58 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'hwVhjnnjKMEmtbiW' \
    'sAQHbMrKYi0Zxs5S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeleteUserStatItems' test.out

#- 59 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'WCqZXHLLa31oQf7B' \
    'ULnZDhutDM6Bqguq' \
    --body '{"inc": 0.47678937589690285}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'IncUserStatItemValue' test.out

#- 60 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '5xxGxBWtnTKUe2zn' \
    'sqPzPkwCBo2SwCUs' \
    --body '{"additionalData": {"Tag4MLAo3m61P2xa": {}, "Nfmn8Onb1a9gMz0F": {}, "2UBRmMhAbUWmFhdY": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'ResetUserStatItemValue' test.out

#- 61 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItems1' test.out

#- 62 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'LWzMuv3zkUY0n0BA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetGlobalStatItemByStatCode1' test.out

#- 63 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetStatCycles1' test.out

#- 64 BulkGetStatCycle1
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle-1' \
    --body '{"cycleIds": ["JfIfXshuLUk5Wdpx", "hnaB3YxKNdOTacCc", "ZkwbYkBLyO6A0Fqf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'BulkGetStatCycle1' test.out

#- 65 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'jZx5noXPhPUTKbon' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetStatCycle1' test.out

#- 66 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'oucNmzwOZOK56sDk' \
    'ci5rZ8iMlOuksQJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkFetchStatItems1' test.out

#- 67 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.13212650044153063, "statCode": "RFiZWwJ7NrTb1XTB", "userId": "9YQzUJ9XlYJ8BzP6"}, {"inc": 0.4854275637940776, "statCode": "UmUXGM5anIloyj9l", "userId": "hbvuQdW2jwKUckc7"}, {"inc": 0.9919628026841799, "statCode": "4ryY91lX8DD4MYXl", "userId": "rJ81lHvv9rqvEoM8"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItem' test.out

#- 68 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.8133125940948874, "statCode": "mVjAkO3HKsEp6Klq", "userId": "wW4djrexcbHdEtoQ"}, {"inc": 0.34792807667334624, "statCode": "pV344RctmTozCi8H", "userId": "eV6jbalHmqBBfi7s"}, {"inc": 0.7130159032405058, "statCode": "F5BoGiTCVsXsygWb", "userId": "jE2opXtdsJQeJ1to"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicBulkIncUserStatItemValue' test.out

#- 69 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "o0qvxphTLEEBGTtZ", "userId": "yTjdKNKgYazujsmS"}, {"statCode": "mylT1YtxIq73aMb4", "userId": "8jISd97KORRhxSWL"}, {"statCode": "WLNfHRD3V15QaGGL", "userId": "46LuxJF3sbeqWBdQ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkResetUserStatItem2' test.out

#- 70 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["uWfgBAKx27MSBqab", "zFZeOCOR9NvBQZSJ", "UXOGkkoMUZn1YXj5"], "defaultValue": 0.669084082841231, "description": "OIKrRBrYVzi9ui3l", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.6297692985305396, "minimum": 0.21879437364785648, "name": "LRH36bqS2oFY76PU", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "ziBOHEAj1cT3u6Zc", "tags": ["2FbrTFznTgDIwZIR", "Wf6T3by2kYSCdnFK", "Lc0xcTjqjdcEfU61"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'CreateStat1' test.out

#- 71 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'OJYMnW49rWynp1ck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatCycleItems' test.out

#- 72 PublicListMyStatItems
$PYTHON -m $MODULE 'social-public-list-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicListMyStatItems' test.out

#- 73 PublicListAllMyStatItems
$PYTHON -m $MODULE 'social-public-list-all-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicListAllMyStatItems' test.out

#- 74 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    '1vT90C6o86cSRL9c' \
    'gbUmulhe98oaFKlQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetUserStatCycleItems1' test.out

#- 75 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'icdrxVhrtwSd9QWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryUserStatItems' test.out

#- 76 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'MYz7TU1TsxsChScl' \
    --body '[{"statCode": "Skb5aBi9K9zyv6gF"}, {"statCode": "ZXI5nXJ7hLi6Hwew"}, {"statCode": "eRmyo91dIn7QqXBD"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicBulkCreateUserStatItems' test.out

#- 77 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'XJcrqKmXDwoEV6tC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems1' test.out

#- 78 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'drxw1KOPhuvHuYrG' \
    --body '[{"inc": 0.7779234867757407, "statCode": "DK41uMOC0mRvSoaG"}, {"inc": 0.16584379972332208, "statCode": "4ktF5wnJDg9Q3WXi"}, {"inc": 0.40165653968276915, "statCode": "dCOInVolsr6CHmj7"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkIncUserStatItem1' test.out

#- 79 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '63vLwtYEJTSiXjcY' \
    --body '[{"inc": 0.9296924328346707, "statCode": "ZPkv90lyKSTWLxSF"}, {"inc": 0.8324264566069397, "statCode": "0LpupEi5DbkVs3qF"}, {"inc": 0.7373387475007153, "statCode": "i1t530Wj1WfzIvc3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkIncUserStatItemValue2' test.out

#- 80 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'VlSXrA3XUGud4tVj' \
    --body '[{"statCode": "mxEf4XvVhFJTxFHI"}, {"statCode": "TBg9x4unq3eOMHIK"}, {"statCode": "eTyBG5dCUoExnKfV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'BulkResetUserStatItem3' test.out

#- 81 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    '3869IN4V1OdhH4GV' \
    'U7Exlkmc4xYiLjLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicCreateUserStatItem' test.out

#- 82 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'ZrXr9Bhtzn8jAdTn' \
    '6xBhrciryLm67rka' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeleteUserStatItems1' test.out

#- 83 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'dH5Y41SLjCPrFa05' \
    'Xl5TPC5GODS44bmm' \
    --body '{"inc": 0.9646932584973479}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItem' test.out

#- 84 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'jPdKLddfdsUqjXVz' \
    'W1QqxnWR5sheLgsA' \
    --body '{"inc": 0.5132283771029152}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicIncUserStatItemValue' test.out

#- 85 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '4ctv5guycGiq9j2E' \
    'yIknfLDpgHnMOn8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'ResetUserStatItemValue1' test.out

#- 86 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"c3gUZ8ZFyyEr0KBX": {}, "uJBqK4QtEydPWLPB": {}, "YiR3UbJc1ZYapx7C": {}}, "additionalKey": "477etqgfOJDUT0uK", "statCode": "APrARya2IMlNiXpF", "updateStrategy": "MIN", "userId": "AbCZixe2cQ6O30lp", "value": 0.4063588220623148}, {"additionalData": {"cBQMAEcNcJqrKxnM": {}, "zSYoc4ZjiMY4H34B": {}, "6wVd8ipcKDwQeUWt": {}}, "additionalKey": "jCC2UH6jzMO3AfmO", "statCode": "S5mQNyRPZFPNP56l", "updateStrategy": "OVERRIDE", "userId": "5MU2qmbeqaVemINd", "value": 0.4530724314406136}, {"additionalData": {"lpF7OvlBIEgjse5k": {}, "d6GEDo08yq5E5Hle": {}, "Loog4me2NBFp62xl": {}}, "additionalKey": "XvVcJerTPW02PWsH", "statCode": "iKYArAxnKBfBfDlr", "updateStrategy": "OVERRIDE", "userId": "QuAc10DjjwMv4vrI", "value": 0.6636273666167015}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'BulkUpdateUserStatItemV2' test.out

#- 87 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'RtvhQIyLarjaLOKn' \
    '["X51yAB8Pa3uNGKha", "LlJzJMSnJIIgsAVm", "aGYxUX1B9oVuzG2C"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'BulkFetchOrDefaultStatItems1' test.out

#- 88 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'nYX2YBF2g7TVtzYE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'AdminListUsersStatItems' test.out

#- 89 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'HUodh3iUfBthbepU' \
    --body '[{"additionalData": {"CTWiZ1uqh7GAi4FE": {}, "Iu44u83ZLRxYlYql": {}, "pq03BGdIk4oEogFV": {}}, "statCode": "GR71rJOBy6lsj1AK", "updateStrategy": "OVERRIDE", "value": 0.4512919711943466}, {"additionalData": {"jnHmaAu4YK87DYAW": {}, "WcbcbGWmKgE8CZ4A": {}, "ELr5lraa5v5P5Cj8": {}}, "statCode": "hgFsqHC9h5JPiMEt", "updateStrategy": "INCREMENT", "value": 0.6682130812327097}, {"additionalData": {"sa9YD92CX0rITajp": {}, "wHITGeHTnqRbzBB9": {}, "ZFgJbQ3Fj1umx4It": {}}, "statCode": "zkMJ7cudf4r916GP", "updateStrategy": "MIN", "value": 0.02248246317347735}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkUpdateUserStatItem' test.out

#- 90 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '1cIOJPS3lJ80YJ41' \
    --body '[{"additionalData": {"U4ooQ980ywmg1pWp": {}, "Wit1QC7FKe0fnHUl": {}, "mU1unGKM0tgfeWy4": {}}, "statCode": "7bbwMI4gGmvK9gW5"}, {"additionalData": {"96FwBNrFXt3TAuKB": {}, "wBcD12ae6r3hHwya": {}, "4NpdOzg3hr6ucHf7": {}}, "statCode": "dbh2iKNUl0qJqzoK"}, {"additionalData": {"MRMG541PAiNjULsx": {}, "4SnKNXLMUaDSwwQl": {}, "nNRZJHBSB4fZWEFI": {}}, "statCode": "Zs28Ff1kZp1Zktx3"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'BulkResetUserStatItemValues' test.out

#- 91 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'N7WNMYIfcDKbLu8p' \
    'nK34oA1keYXJvtgg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteUserStatItems2' test.out

#- 92 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'DdXjbdjMBahFZZGM' \
    'TcqnWrIprOv0BJ9S' \
    --body '{"additionalData": {"gl7H1sdH2RIJz1eI": {}, "7Q5pu9PutLf6IrvZ": {}, "oBGQbO4S3rURGWUz": {}}, "updateStrategy": "OVERRIDE", "value": 0.9095863214431321}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'UpdateUserStatItemValue' test.out

#- 93 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"BYJ2fkqYJoF2FI3v": {}, "yyqRzc20O7FdsJP1": {}, "G9tyBTfERXdvgD1Q": {}}, "additionalKey": "f7Ot2DkUt3yexZBR", "statCode": "vxYnEBhXtAVxCd3m", "updateStrategy": "INCREMENT", "userId": "fiZrthVvyX0OCKDJ", "value": 0.4852896792554614}, {"additionalData": {"3RMUddwSSgxCu8zr": {}, "u1DhGAYOHR5BWa9V": {}, "zIkaQEl1iUProNB6": {}}, "additionalKey": "hI6IpGcToWgFvdRh", "statCode": "G9NwV3zDuqVlVTyp", "updateStrategy": "INCREMENT", "userId": "Cqeg67d4RWOqO4U0", "value": 0.016171074704162014}, {"additionalData": {"itNQLzwRoWnR0Abk": {}, "CPY70FmvviVIBbcu": {}, "jF8Vk5qb8NhWWwax": {}}, "additionalKey": "yMchkt8l5IPSrwrJ", "statCode": "l7wYIVw13NCo9yXl", "updateStrategy": "INCREMENT", "userId": "6Dl5TFwBY6HKXAbl", "value": 0.17404409294712053}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkUpdateUserStatItem1' test.out

#- 94 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'T8VGgSH8MGZGwiVj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryUserStatItems2' test.out

#- 95 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '7eDTaka9ABfX1IBy' \
    --body '[{"additionalData": {"PEOuPhGspRi3bhPQ": {}, "vBBJI5JxytpcubN4": {}, "AUUPFPscZsXeJOD4": {}}, "statCode": "DMtqfIGiGJovgWSR", "updateStrategy": "MIN", "value": 0.2021210181115065}, {"additionalData": {"QQoLbe5YOJvxGRxU": {}, "zrTwagH7BMT1IZKT": {}, "dNFVBQ1crBXAupAT": {}}, "statCode": "O8uXsqVpdiWo8SjD", "updateStrategy": "OVERRIDE", "value": 0.6544303121052703}, {"additionalData": {"NV0JRtozI0jpliCF": {}, "Q6WgJpGPigdc5VyC": {}, "4qvWjVac1cQvSxgT": {}}, "statCode": "NIUzxDgBlIbuzm7D", "updateStrategy": "OVERRIDE", "value": 0.3176970897449478}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'BulkUpdateUserStatItem2' test.out

#- 96 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'rsf8eIFSovTGXaMs' \
    'q8ePN1oco2jx8Upe' \
    --body '{"additionalData": {"8SjMvpqM8puggOEd": {}, "G47gD5i2Ni6AnWn3": {}, "NdEPhNHSH7eKDfRc": {}}, "updateStrategy": "MAX", "value": 0.6580483548928762}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
