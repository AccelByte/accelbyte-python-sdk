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
social-bulk-get-stat-cycle --body '{"cycleIds": ["yiuATus9hsfpFDcS", "DG8aMVGLiBNrDjqo", "xcwgGLXpUL4pp2nc"]}' --login_with_auth "Bearer foo"
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
social-create-stat --body '{"cycleIds": ["0KOww3HICQLfl7MU", "KB4EYOkQ1jMD3cym", "8xIfkOVW2grREOLx"], "defaultValue": 0.4426899784977135, "description": "G7qtPu64yAtURKLR", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.018629476179174542, "minimum": 0.6988306187111987, "name": "PZTF6oQAXVG7tnsZ", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "5QgXjvyGJPN4eXbJ", "tags": ["BJehyxlNsjUgxBkF", "E5Vs2GcyomQoIXim", "6wFPoJeQediogEhh"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'M2rIizGdKvOPdq5x' --login_with_auth "Bearer foo"
social-get-stat 'rgxSmy1DN9LFkYW5' --login_with_auth "Bearer foo"
social-delete-stat 'DQyj4bj5Ro2ogaKt' --login_with_auth "Bearer foo"
social-update-stat '2ujQSa3Zdb65UXmy' --body '{"cycleIds": ["QM0NBMA9ORxpzwLR", "0Zp6iIaTIKUkmkk9", "2AK6eXUGPJsw1fiP"], "defaultValue": 0.9716918984737875, "description": "0G9Pclxcft2ulIJz", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "rQDXuNFviMarv8mn", "tags": ["Bp3HBvepnDCjgyJl", "fHK8CCmE2lPnsbD3", "SGEdlwuUccE536ug"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'Xe36mgWjLfFmteue' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items '9nzJ6fH24T805tVg' '8JqU0jZpjvsugAOS' --login_with_auth "Bearer foo"
social-get-user-stat-items '7u8RiWyerCSa8SRg' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'wsAj1ik1jglaDXTv' --body '[{"statCode": "KCWwNTAhd2wrS0uP"}, {"statCode": "djhdinpng5BLy8wb"}, {"statCode": "hMssAHjapIkY9Rf4"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'wP57dBZNR88YbCtm' --body '[{"inc": 0.5838524971967956, "statCode": "y8M9zVrjfGXZnqAQ"}, {"inc": 0.7473945979563804, "statCode": "oY1GjlIIk0iKoTTS"}, {"inc": 0.8597945716801909, "statCode": "j02o7JjTXAQN0qds"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'kdQV0TqI8EFnmDbx' --body '[{"inc": 0.5534369147054269, "statCode": "xi4YKlONk2Q5Y4Jv"}, {"inc": 0.0026796460449423076, "statCode": "izwiilatuUjjt9lI"}, {"inc": 0.615086415850493, "statCode": "Gql5ElEa9EIIlGcH"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'B3CfR3ncDlwi3v3M' --body '[{"statCode": "FFJ1KesKoELCpobB"}, {"statCode": "EG8X645xpdXpai0r"}, {"statCode": "YaT5hOPjaf3H0tYi"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'ghU0VUfcYHJbBfAK' 'SiPW3VgsZXiR1DJ7' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'HVWqMkNSawQUWDFJ' 'vJBWic7UkBeIXuqD' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'uAXI66bQ71w0deoV' '9Lx5RDA1l2XcrciY' --body '{"inc": 0.6335392873237635}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'EzvSZIPkhSgORcz5' 'S5BvmgBLxh4ijFnE' --body '{"additionalData": {"3Tam69qSZ7PC6f6Q": {}, "kmZXElW9YfRSse6A": {}, "Az3S4czz0QKFlAVm": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'VLu4AOec0z8eBeeo' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["afxMSJlHeb34sZKH", "cl5LLLOexL4fZvWt", "ip68J1nsv4W2OJht"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'ND2tcBFpX8lNtFEJ' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 '7tnkY6Mca5afj12K' '2IzrBvvWm4udE0OX' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.32729271686342376, "statCode": "dXgNne8kJATwlc6e", "userId": "sUp6Sw1I98jeZQ7h"}, {"inc": 0.09332751486148827, "statCode": "xnhLd3Knaknoed9D", "userId": "HhLOqQGhCUr6iTrj"}, {"inc": 0.3986340303141622, "statCode": "EgarAdNJOIG36I6t", "userId": "RbRcrEveMdAdiPKD"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.7435338327774325, "statCode": "VSC00PYeDcagginx", "userId": "nFIna3yddcbsPheT"}, {"inc": 0.5455204059662524, "statCode": "26IUJNvYuGRUvpZa", "userId": "HCuESOiIZsMfB4ZH"}, {"inc": 0.9020625993443624, "statCode": "mtgWgU4pCAKxeE70", "userId": "CaunQNxot371W9G4"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "AvQkqsGnmyo5JJTU", "userId": "Vmb8GEXFTlEMEsFz"}, {"statCode": "YqwgK1Np5nodqpLm", "userId": "7FhJBNXzAFdO0Khq"}, {"statCode": "f6kiTdSGv2LFjAKY", "userId": "7CbgsWqFWZX7kPBo"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["m8F9GLLTG8phc3n4", "iLoIllKlpO2pqiXJ", "F3WGRaoQomSJC4Dd"], "defaultValue": 0.27518089297225323, "description": "KF7SUQPLG59e0k5Z", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.9463803715347646, "minimum": 0.3616357547557504, "name": "K7PpUlcIW32iK7MG", "setAsGlobal": true, "setBy": "SERVER", "statCode": "1ixY5rA1WoVeJIeP", "tags": ["Upd6FJtHJ1pyVwyK", "QLY6FEO65Rb3z7CY", "F8ZrQzP4zvtdxdbZ"]}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'LM8IlsHqffnrfsGl' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'fPaZKBwa3Ddb60uf' 'Ppzwj1QGIFmlVf4j' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'vapseE9LN9bvhOrH' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'flIOd6X3viLvtEk4' --body '[{"statCode": "mTIpUA9gxo8SV38n"}, {"statCode": "EhoXmM2W7l6jHMA2"}, {"statCode": "rG3nakopAywelu01"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'nryEJ0NqoTow0qiO' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'iC4j0iktm0ZPLkLO' --body '[{"inc": 0.3000162466204199, "statCode": "p0LZ5njN86Hl8kUX"}, {"inc": 0.4161331749307099, "statCode": "t6bSc6bWvgpVyW9d"}, {"inc": 0.477513008078878, "statCode": "1kOmvrAejcq2LgkQ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'uaS7RBx3vim02jBO' --body '[{"inc": 0.3869274093820547, "statCode": "rZDyvpcLYOWA8Njx"}, {"inc": 0.6530574784468347, "statCode": "naEok4nOOCzfsflh"}, {"inc": 0.1466553494522188, "statCode": "bngJOUn18G5MlfDT"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'k8aG40NlncceIZSw' --body '[{"statCode": "gAIkgzh4pTU0Am4D"}, {"statCode": "Zhl0bQxFJ3sWCqQp"}, {"statCode": "Q2FbKPFMycMSQ4qf"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'AacR0LgB5BUXvjcu' '2s6w3VifnKqmTSoG' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'H1XEfY6QAYn6WQ5U' 'BEU1QAOHfZiGhxOd' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'cuDXSxSc3aZPV87p' 'na08gxefTYKhuxaE' --body '{"inc": 0.04177178169315854}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '7M4P7UckSC6ePeN8' 'i4GrFES9z7xueHpA' --body '{"inc": 0.7281117739937756}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'Hccee9GXhKcjmSEw' 'drkEnnqKzFsLfYal' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"UlfwEQKjU7eHGebS": {}, "Vu0LQ40kepEaC4df": {}, "iOMZfEhHr39pysFO": {}}, "additionalKey": "3Zvc1BZG99LyvfvH", "statCode": "EsJKQQewVLMUoAna", "updateStrategy": "INCREMENT", "userId": "NDDwMvgI0HlyPR7w", "value": 0.8297574859571167}, {"additionalData": {"NiVsF6xG2mXEQdbz": {}, "IVy8alncV7vWgSHd": {}, "fo07UctPErqxyMyO": {}}, "additionalKey": "K06MqQBErxgjVByc", "statCode": "vU4PbmRDcrg0DjQj", "updateStrategy": "OVERRIDE", "userId": "1Lcvw6T6mZEiwxxE", "value": 0.1807064928084683}, {"additionalData": {"pMYSWIeVzm7z9noo": {}, "wmlTIKVowi0RY2VN": {}, "4ZONJREdUQ3z9F1B": {}}, "additionalKey": "xNNgnke4akncw7wu", "statCode": "9TmXfJWBPrx9Ns8e", "updateStrategy": "OVERRIDE", "userId": "9bpjb1tdA3QhjCMW", "value": 0.9443098148577128}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 '4f4XhIjSoTB2NMKt' '["ezapPr2QEPx3zTxB", "GtEJIYppuUSsKoHw", "2hyd12uSE7BEv3ae"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'vq6iohU1cg4W1IS3' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'Uv1BpWoJBaqdg2FH' --body '[{"additionalData": {"cunsS1lnaO2m9vqj": {}, "hbeK2qN8g6x2PyYD": {}, "o5R3hLiD5sf5y1Js": {}}, "statCode": "xJNGmyt0SQDUDoWB", "updateStrategy": "MAX", "value": 0.007290565697094631}, {"additionalData": {"zPAANjfBoldFOyqA": {}, "2clJ5gEOaCgM6Yn6": {}, "RugbNEIpGBFUjOn5": {}}, "statCode": "mM7k8nbLzvtCIW5y", "updateStrategy": "MAX", "value": 0.3518265457763815}, {"additionalData": {"dhWVnuYLgpZehK0G": {}, "2nmyuViB9kRTcSQd": {}, "TnNYGeAfYFG3wSkH": {}}, "statCode": "KufBdS3ZOokZB4cX", "updateStrategy": "MAX", "value": 0.35891325350117964}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'fhKvrf2AaH4yCWrH' --body '[{"additionalData": {"SppnIZkNnTn3rzH5": {}, "NvAtcvNedgS1fUfK": {}, "mihDbmu8ePWlQMVD": {}}, "statCode": "XEHeiGTnwyEw6hIW"}, {"additionalData": {"DZrpP7rz3ISW510k": {}, "Hr4isTKWjmv67nuH": {}, "CXWfwnwGioVwVzmm": {}}, "statCode": "BVVFfpqx1AeLtzcP"}, {"additionalData": {"J3jtDYBo4FUTH7CG": {}, "fKSyxgRR1DiCqSMz": {}, "pqIFGLkDs7ACC1Rg": {}}, "statCode": "BfoNrHlFi2qJLgmB"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'LE35YhyiDV90SeI5' 'yppBHoytVznCgNyx' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '9fbT63ShEh8PbGik' 'Ljgjcj34uulU6FYB' --body '{"additionalData": {"ZsWFbr3RSP0W9nBh": {}, "vhf8Q0DtJMcYQdN6": {}, "6bswAgt65X4N1LQZ": {}}, "updateStrategy": "MAX", "value": 0.08587936640563187}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"I1IQcoBQELcNlZkq": {}, "TZrKgXNwvm4e5GX6": {}, "H742OixhtAoKiVm6": {}}, "additionalKey": "URT95XhnUcvWB28M", "statCode": "pusuhhDJ5slzgiWZ", "updateStrategy": "OVERRIDE", "userId": "f005CXNGehQ2aTjT", "value": 0.4837063558649929}, {"additionalData": {"fKFDXC7eGL5YhJDW": {}, "h9YWqc0qgV6d9yOf": {}, "IMLds2DbPcaoMdtR": {}}, "additionalKey": "LTmSvTkQQgB7exYv", "statCode": "mHMxr5hPCJJztJBg", "updateStrategy": "MAX", "userId": "tTJg46IewOXE2AkC", "value": 0.12873420196197172}, {"additionalData": {"3QIZsUf8lGFXcmwT": {}, "ERHclOdxIwqejxe1": {}, "8rNdb8Otq6j1mqUa": {}}, "additionalKey": "v7k05HAQltnSojV4", "statCode": "jT65yclX2FtAz0vJ", "updateStrategy": "MAX", "userId": "vPbpg7yrRvXfZ6rv", "value": 0.09943930158831127}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'vEY3Hht1SwqTsKKK' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'o37NHDOQe91Ps3zt' --body '[{"additionalData": {"UIV0dS6hIH9c4Vfk": {}, "yrwpuXxbaERbfgPm": {}, "i0eHkt1mr9EOIFg0": {}}, "statCode": "dnWIYN2NVL70Iw15", "updateStrategy": "INCREMENT", "value": 0.6784281719056766}, {"additionalData": {"kQD6WmOt6D7ufFVT": {}, "OhvQpfbBke8aEdd3": {}, "6xj6wySoltDxsbzx": {}}, "statCode": "rlaKEfkoYjY2o6ou", "updateStrategy": "MIN", "value": 0.7866765081773304}, {"additionalData": {"9UtNquwC3WgumrIz": {}, "4NhGztZpr4U4fwQI": {}, "iLXgmRasvjO4lj8m": {}}, "statCode": "3XEwP2b4gd3xOeii", "updateStrategy": "MAX", "value": 0.4699612795906344}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'vPRCzBrVUxmDOj3c' 'vRFaTC11W0TGTCm4' --body '{"additionalData": {"fZWuk6pQxDQpKqxL": {}, "GeMvr9TsvcMQ7dBs": {}, "aIecRxIsZvD6rmzV": {}}, "updateStrategy": "MIN", "value": 0.8090404564533572}' --login_with_auth "Bearer foo"
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
echo "1..95"

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
    'buU5ar5qTLWUCy0A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'fgc050XIZRW491e9' \
    '4mQjVOOBnIWhunEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["qZUodp3IhtCSHy1e", "i1fIrPvfHnRN06Ej", "RwEQlNapJRfk4f9Z"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'cw1pEHAyNFxcVTKu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'AQTGh5BxjWOozGoD' \
    --body '{"achievements": ["tsUuYo5p8ED5QZAu", "fwNa8lzfjv9oYMXM", "jlVHY1AHwF3vGoav"], "attributes": {"7MK0PcLnEkcokKwc": "Q0baDT9OyJ2h23GU", "S2amU7syGlElXdEA": "OrVSnLocLVVYamQc", "4wcG5nDBLJoJHbiQ": "5duE5p4cfs2E41cK"}, "avatarUrl": "8QTwiIAvxSvNDlmM", "inventories": ["5nQFMGzs7fzjgyc4", "4mEh9tRk8knYSV30", "lnroQehMDli6t9un"], "label": "QLYXxm09wpGAbpEm", "profileName": "DY9vLh3u6EDsUmrV", "statistics": ["6kH4OotKwG3UC6XC", "nnZxF8CmQr17W65b", "r34rBBN9tU6TDm5G"], "tags": ["loFSKWM1eym5ydC6", "p25xCWTqUOYZENJ1", "QHZQxPRXH7uxBJEE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'CQE1li3Bg7Jxc9pU' \
    'nZmvhidwCkZwqjYL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'fTiCO1NDBvQvRPnA' \
    'z4VzW0CpoBCbyJsF' \
    --body '{"achievements": ["5IjF1c0W338HS6CB", "gVRyihYNZ84CVhzi", "XV8HwSmvcvcDKF19"], "attributes": {"yVRafCjOuSYht83A": "dvBaagTiRJ8daGTV", "X3Bb7jlz5IfHgKjI": "9mwJSrN8jkIykR2z", "baI6PD7fEscShnGU": "GUtV9GJ279GDbLNw"}, "avatarUrl": "jm3FK0nnX2poMfZ1", "inventories": ["hDHtbh4HtMlFgvh2", "Dp2SoiIPp1yvfAHS", "0VgLu11A3HTovFi4"], "label": "tPAGfleyCA6jEtcq", "profileName": "snzoVILjkwW61duF", "statistics": ["87aUyrdt4XSpWBAe", "tsanzqP8oxfrtbEC", "D1CYPwaiBAxfYL8A"], "tags": ["vt70ZUT2fSk3LL0c", "alqxEewuGS469k2h", "G0WKt4sUmanYxM0U"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'HZVNYzGMNIpWoSLk' \
    'Urfuf4U3WeYeA9t2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'ENKKWrFtHIi1CMgK' \
    'AOG5iDcCR5PbCvDL' \
    'il8wj9cKM3Ar6MF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    '5hCER4nGmWGgTJfH' \
    'lJl4tHGa4XfZcd9C' \
    'VnGqMX9FieeEssWE' \
    --body '{"name": "Ul07bhwntCVqiYOJ", "value": "f5KwMZQjzvjSozv6"}' \
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
    'CTRDl0zp9CzHFwin' \
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
    --body '{"cycleType": "DAILY", "description": "arYYkHBDdSzBXdxa", "end": "1979-12-07T00:00:00Z", "name": "whd5IQYBQuxLvPuW", "resetDate": 45, "resetDay": 57, "resetMonth": 61, "resetTime": "4LM6H6QXmpZ9X3fU", "seasonPeriod": 91, "start": "1983-12-22T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["Na8vVe4MHX6AgMep", "7fLD2qfCXnlUnqxT", "1WsRNMZcA92hzC7M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkGetStatCycle' test.out

#- 31 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    '90AyyUJyAK5PRMRM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetStatCycle' test.out

#- 32 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'wdvl0hv6g62GxBW2' \
    --body '{"cycleType": "MONTHLY", "description": "9FK6e0MrPc4vtxk9", "end": "1974-06-04T00:00:00Z", "name": "VKlG56HlzGr7Xjdy", "resetDate": 90, "resetDay": 40, "resetMonth": 74, "resetTime": "ee7QLTGAak7Kaol0", "seasonPeriod": 61, "start": "1977-11-01T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateStatCycle' test.out

#- 33 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'j7gyQ7XdIszGRj46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteStatCycle' test.out

#- 34 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'COPipH1MWVTHG0qH' \
    --body '{"statCodes": ["JCWEfOJpZm9yEYWN", "GMy2pgSGSUOK68eq", "GJtWf1Ybgg8rdwY9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkAddStats' test.out

#- 35 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'bmrvHmO07KNqX9LM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'StopStatCycle' test.out

#- 36 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    '2IwEsdOGBXBwnzDX' \
    '8v3xgC1Ge9PdbTTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkFetchStatItems' test.out

#- 37 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.573791376383402, "statCode": "2Gp1r0sVZ6LJAOdd", "userId": "IL2l3hPjNDKv2LWf"}, {"inc": 0.7930980223511337, "statCode": "qjr8fS79En3wYowB", "userId": "dkaZ3y6i38XQjLDR"}, {"inc": 0.25838317705549696, "statCode": "kpiFK5BtiQ272Uo9", "userId": "UBJWodpdwsX1jorc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItem' test.out

#- 38 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.394397953272166, "statCode": "R0x3YiHF8ITGPRQB", "userId": "CgIs1Q2lzxl0yF5m"}, {"inc": 0.953092213634209, "statCode": "7TTh4gUoj8u2WRcL", "userId": "iEtzVlnkflfn7pHY"}, {"inc": 0.9114537092166836, "statCode": "8F1dl1q92m3iRlfn", "userId": "BAk0CwiAsR65yQ9s"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkIncUserStatItemValue' test.out

#- 39 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'suHdGmxncCEr0Kcg' \
    '["eqzGbruNB72HHMkj", "zyBB4UFKiaoV0VOe", "m2yqPsMFxKybPkbu"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkFetchOrDefaultStatItems' test.out

#- 40 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "S6x9cLJ1APnNlsa2", "userId": "bRBr27fVMWuAfDqL"}, {"statCode": "MR919IZPKOKiAVQX", "userId": "XOmqFHLbyXmgCNiX"}, {"statCode": "H8uenbC5CphgMwee", "userId": "xsIAP5vHLjBJ9iqM"}]' \
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
    --body '{"cycleIds": ["OkDiJq4xQye7HqnV", "cBL4BzhDUjhKPwbw", "cvQU5kG8bXGFmPAn"], "defaultValue": 0.5823944669665422, "description": "3YVeOWs9mfVQh3jL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.08464690454639123, "minimum": 0.5088989734199413, "name": "8y959anrNSleywHb", "setAsGlobal": false, "setBy": "SERVER", "statCode": "g6IKWVZ77KeRWdEC", "tags": ["aFGzfZ2hxcJ2Fnem", "ZFP1OW0nXOErQPS4", "n7M23SzUo4hNBDh9"]}' \
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
    'VsRoYIK69yg9ADCG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'QueryStats' test.out

#- 46 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'iXaLs2xjHkinOD97' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetStat' test.out

#- 47 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    '5nARHCmhNHSXuqIH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteStat' test.out

#- 48 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'sxvaUoXDmwWsukxn' \
    --body '{"cycleIds": ["476dGGJwJ00UH197", "aVVmM45mfIZsWhkS", "cuD3QxCXMd00YBWC"], "defaultValue": 0.6281114473732753, "description": "J6zU7JLMQyMWzYQC", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "aPJgoxGJoJaSzUtY", "tags": ["3Ns0QJQeaWytPfds", "sVY21NVIs7NRen2Y", "4ZD0Xtb0U4pH16NU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateStat' test.out

#- 49 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    '1BYx0EaURydf8Zyy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteTiedStat' test.out

#- 50 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'ZeHAWGgJUbUJRMbk' \
    'cTglbU86FyOjApNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatCycleItems' test.out

#- 51 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'BVfNOURcjY3YYT9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetUserStatItems' test.out

#- 52 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'TynmfIuBWgJTNFfM' \
    --body '[{"statCode": "8M0IW4oe8KDgy0xZ"}, {"statCode": "fAcNg14Ws8TIP1LK"}, {"statCode": "iFQoLDvumfqrgSfn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkCreateUserStatItems' test.out

#- 53 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'x2h61X9dN1MGRXBJ' \
    --body '[{"inc": 0.936691220709901, "statCode": "mVV7JS9qjNLwvI8J"}, {"inc": 0.05717521935937164, "statCode": "iY3RRiLilmOGF6dL"}, {"inc": 0.5984370371458572, "statCode": "IeIVIjMcdlbdRXTG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItem1' test.out

#- 54 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'IrdNL5gJPqTAjgqa' \
    --body '[{"inc": 0.7278186389088511, "statCode": "Hf1ANTJ9Yk997XkG"}, {"inc": 0.653837891883325, "statCode": "dC6ItxDT8p4n4XCF"}, {"inc": 0.1631183661035409, "statCode": "D1AJLCwszbZxuHSg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkIncUserStatItemValue1' test.out

#- 55 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'DOK8bjoF7bL2635K' \
    --body '[{"statCode": "btZTGJpqgl2IzNXG"}, {"statCode": "TuQPIDpor7t1aJLN"}, {"statCode": "Nz6QIVC9Mfuc8VOs"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkResetUserStatItem1' test.out

#- 56 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'nmnlVljdWYmELe74' \
    'p38vumnxAnYBTxaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CreateUserStatItem' test.out

#- 57 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'Iz0jcgDI8Pkz96vd' \
    '80msqIm5bufnBqrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'DeleteUserStatItems' test.out

#- 58 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'LeqhwVhjnnjKMEmt' \
    'biWsAQHbMrKYi0Zx' \
    --body '{"inc": 0.2987475552783321}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'IncUserStatItemValue' test.out

#- 59 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '5SWCqZXHLLa31oQf' \
    '7BULnZDhutDM6Bqg' \
    --body '{"additionalData": {"uqD5xxGxBWtnTKUe": {}, "2znsqPzPkwCBo2Sw": {}, "CUsTag4MLAo3m61P": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'ResetUserStatItemValue' test.out

#- 60 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItems1' test.out

#- 61 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    '2xaNfmn8Onb1a9gM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetGlobalStatItemByStatCode1' test.out

#- 62 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycles1' test.out

#- 63 BulkGetStatCycle1
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle-1' \
    --body '{"cycleIds": ["hdYLWzMuv3zkUY0n", "0BAZkwbYkBLyO6A0", "z0F2UBRmMhAbUWmF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkGetStatCycle1' test.out

#- 64 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'FqfhnaB3YxKNdOTa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetStatCycle1' test.out

#- 65 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'cCcJfIfXshuLUk5W' \
    'dpxjZx5noXPhPUTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'BulkFetchStatItems1' test.out

#- 66 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.026132577369900045, "statCode": "onoucNmzwOZOK56s", "userId": "Dkci5rZ8iMlOuksQ"}, {"inc": 0.5726258569160539, "statCode": "CiRFiZWwJ7NrTb1X", "userId": "TB9YQzUJ9XlYJ8Bz"}, {"inc": 0.6731257723186048, "statCode": "6EUmUXGM5anIloyj", "userId": "9lhbvuQdW2jwKUck"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicBulkIncUserStatItem' test.out

#- 67 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.03529704977565595, "statCode": "794ryY91lX8DD4MY", "userId": "XlrJ81lHvv9rqvEo"}, {"inc": 0.6203107918220043, "statCode": "8YmVjAkO3HKsEp6K", "userId": "lqwW4djrexcbHdEt"}, {"inc": 0.24033421502448848, "statCode": "QvpV344RctmTozCi", "userId": "8HeV6jbalHmqBBfi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkIncUserStatItemValue' test.out

#- 68 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "7sSF5BoGiTCVsXsy", "userId": "gWbjE2opXtdsJQeJ"}, {"statCode": "1too0qvxphTLEEBG", "userId": "TtZyTjdKNKgYazuj"}, {"statCode": "smSmylT1YtxIq73a", "userId": "Mb48jISd97KORRhx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkResetUserStatItem2' test.out

#- 69 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["BdQuWfgBAKx27MSB", "GGL46LuxJF3sbeqW", "SWLWLNfHRD3V15Qa"], "defaultValue": 0.2634024823242028, "description": "abUXOGkkoMUZn1YX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.5022152732323547, "minimum": 0.8320318877424995, "name": "eOCOR9NvBQZSJPOI", "setAsGlobal": false, "setBy": "SERVER", "statCode": "DnEiyfa2LrnpZxNn", "tags": ["1AziBOHEAj1cT3u6", "Zc2FbrTFznTgDIwZ", "LRH36bqS2oFY76PU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'CreateStat1' test.out

#- 70 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'IRWf6T3by2kYSCdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicListMyStatCycleItems' test.out

#- 71 PublicListMyStatItems
$PYTHON -m $MODULE 'social-public-list-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicListMyStatItems' test.out

#- 72 PublicListAllMyStatItems
$PYTHON -m $MODULE 'social-public-list-all-my-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicListAllMyStatItems' test.out

#- 73 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'FKLc0xcTjqjdcEfU' \
    '61OJYMnW49rWynp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetUserStatCycleItems1' test.out

#- 74 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'ck1vT90C6o86cSRL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryUserStatItems' test.out

#- 75 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '9cgbUmulhe98oaFK' \
    --body '[{"statCode": "lQicdrxVhrtwSd9Q"}, {"statCode": "WVMYz7TU1TsxsChS"}, {"statCode": "clSkb5aBi9K9zyv6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicBulkCreateUserStatItems' test.out

#- 76 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'gFZXI5nXJ7hLi6Hw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems1' test.out

#- 77 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'eweRmyo91dIn7QqX' \
    --body '[{"inc": 0.446290845082727, "statCode": "DXJcrqKmXDwoEV6t"}, {"inc": 0.45433937510413747, "statCode": "drxw1KOPhuvHuYrG"}, {"inc": 0.7779234867757407, "statCode": "DK41uMOC0mRvSoaG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicBulkIncUserStatItem1' test.out

#- 78 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'k4ktF5wnJDg9Q3WX' \
    --body '[{"inc": 0.1354116283430632, "statCode": "ydCOInVolsr6CHmj"}, {"inc": 0.9519622812514654, "statCode": "63vLwtYEJTSiXjcY"}, {"inc": 0.9296924328346707, "statCode": "ZPkv90lyKSTWLxSF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkIncUserStatItemValue2' test.out

#- 79 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'Z0LpupEi5DbkVs3q' \
    --body '[{"statCode": "FTi1t530Wj1WfzIv"}, {"statCode": "c3VlSXrA3XUGud4t"}, {"statCode": "VjmxEf4XvVhFJTxF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkResetUserStatItem3' test.out

#- 80 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'HITBg9x4unq3eOMH' \
    'IKeTyBG5dCUoExnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicCreateUserStatItem' test.out

#- 81 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'fV3869IN4V1OdhH4' \
    'GVU7Exlkmc4xYiLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems1' test.out

#- 82 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'LyZrXr9Bhtzn8jAd' \
    'Tn6xBhrciryLm67r' \
    --body '{"inc": 0.17268798097244942}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicIncUserStatItem' test.out

#- 83 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'adH5Y41SLjCPrFa0' \
    '5Xl5TPC5GODS44bm' \
    --body '{"inc": 0.19510955337726443}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicIncUserStatItemValue' test.out

#- 84 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '7jPdKLddfdsUqjXV' \
    'zW1QqxnWR5sheLgs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'ResetUserStatItemValue1' test.out

#- 85 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"AF4ctv5guycGiq9j": {}, "2EyIknfLDpgHnMOn": {}, "8nc3gUZ8ZFyyEr0K": {}}, "additionalKey": "BXuJBqK4QtEydPWL", "statCode": "PBYiR3UbJc1ZYapx", "updateStrategy": "INCREMENT", "userId": "C477etqgfOJDUT0u", "value": 0.5812576214350568}, {"additionalData": {"APrARya2IMlNiXpF": {}, "4qvsUUpHqi33TcBG": {}, "kc0HjUcnkpU9oVzl": {}}, "additionalKey": "2kBuLFXIeCEKZUTz", "statCode": "3GvCAZ5j24acYHbr", "updateStrategy": "MIN", "userId": "WtjCC2UH6jzMO3Af", "value": 0.20642989896579433}, {"additionalData": {"OS5mQNyRPZFPNP56": {}, "l1AT6OLKmZhCZxxP": {}, "PdPwOtEuWBSO2jJe": {}}, "additionalKey": "pUnEEgja2mIE2kLT", "statCode": "nJwc5XmkCuL5W4tK", "updateStrategy": "MIN", "userId": "2xlXvVcJerTPW02P", "value": 0.7792567988151682}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItemV2' test.out

#- 86 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'sHiKYArAxnKBfBfD' \
    '["lrQQuAc10DjjwMv4", "vrIPRtvhQIyLarja", "LOKnX51yAB8Pa3uN"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'BulkFetchOrDefaultStatItems1' test.out

#- 87 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'GKhaLlJzJMSnJIIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'AdminListUsersStatItems' test.out

#- 88 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'sAVmaGYxUX1B9oVu' \
    --body '[{"additionalData": {"zG2CnYX2YBF2g7TV": {}, "tzYEHUodh3iUfBth": {}, "bepUCTWiZ1uqh7GA": {}}, "statCode": "i4FEIu44u83ZLRxY", "updateStrategy": "MAX", "value": 0.7103339940902313}, {"additionalData": {"gkpK70uJmUL0uzEl": {}, "ixc023dIvDiA0tQW": {}, "lHwBcTtztx3VAl6t": {}}, "statCode": "XFbnATCzUOIzVcy9", "updateStrategy": "MAX", "value": 0.4621188707313191}, {"additionalData": {"Z4AELr5lraa5v5P5": {}, "Cj8hgFsqHC9h5JPi": {}, "MEtgKuiGTYgwWv5X": {}}, "statCode": "ldL6rOVGcRAn51rV", "updateStrategy": "OVERRIDE", "value": 0.4073269344082523}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem' test.out

#- 89 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'BB9ZFgJbQ3Fj1umx' \
    --body '[{"additionalData": {"4ItzkMJ7cudf4r91": {}, "6GPrhn2etVIQvRkQ": {}, "JAtDUH9tx60AehGz": {}}, "statCode": "1ermJYXsYgL7TfyI"}, {"additionalData": {"lAwjTZdRZJJzWZwv": {}, "TX2bamSCvX1nwvSW": {}, "dDwD7WJHzgNZUKsI": {}}, "statCode": "5y0mR3zMyTsftKqn"}, {"additionalData": {"sIJctAdxyZVKHA9D": {}, "kaSOWgtg8yw8lHEb": {}, "VDwBAqanOlscRIWw": {}}, "statCode": "82k5K5VTkdubkOFl"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkResetUserStatItemValues' test.out

#- 90 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'dMCQ98JH4n0Jtgqz' \
    'Zv5kVu4S95mj8YRv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteUserStatItems2' test.out

#- 91 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'ae4f4lhBPbarbWEm' \
    '8bVtZcfVCPdQhim9' \
    --body '{"additionalData": {"QKUAFTVYelIlGJg9": {}, "wdc8bihhWjfZpfcF": {}, "BUsnnDJlmD1iEokb": {}}, "updateStrategy": "OVERRIDE", "value": 0.14229750536337793}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'UpdateUserStatItemValue' test.out

#- 92 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"YzCQh2iNTwtnohdd": {}, "MzMTQ9P7sYLDWAJO": {}, "A75K4BYJ2fkqYJoF": {}}, "additionalKey": "2FI3vyyqRzc20O7F", "statCode": "dsJP1G9tyBTfERXd", "updateStrategy": "MIN", "userId": "MYDUTLBeCidXjuGg", "value": 0.37155220936021993}, {"additionalData": {"8ncXejmeZtzT0qj0": {}, "ltsqfiZrthVvyX0O": {}, "CKDJE3RMUddwSSgx": {}}, "additionalKey": "Cu8zru1DhGAYOHR5", "statCode": "BWa9VzIkaQEl1iUP", "updateStrategy": "MIN", "userId": "lT2sY3SsTnDQY7kK", "value": 0.7554793607145033}, {"additionalData": {"2u06Q4veujxtyQEN": {}, "vJrBCqeg67d4RWOq": {}, "O4U0bitNQLzwRoWn": {}}, "additionalKey": "R0AbkCPY70FmvviV", "statCode": "IBbcujF8Vk5qb8Nh", "updateStrategy": "MIN", "userId": "dBaKSLCgOOPXM6XT", "value": 0.7572620010686989}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkUpdateUserStatItem1' test.out

#- 93 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'h2dJ90yqHDNacl4F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryUserStatItems2' test.out

#- 94 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '9G6Dl5TFwBY6HKXA' \
    --body '[{"additionalData": {"blkT8VGgSH8MGZGw": {}, "iVj7eDTaka9ABfX1": {}, "IByPEOuPhGspRi3b": {}}, "statCode": "hPQvBBJI5Jxytpcu", "updateStrategy": "INCREMENT", "value": 0.39201204207691576}, {"additionalData": {"LmcvrZZOdwe1x8Rj": {}, "U6Bi8JXE52sUBBq2": {}, "SimQQoLbe5YOJvxG": {}}, "statCode": "RxUzrTwagH7BMT1I", "updateStrategy": "OVERRIDE", "value": 0.5876292591701908}, {"additionalData": {"TdNFVBQ1crBXAupA": {}, "TO8uXsqVpdiWo8Sj": {}, "DAM0Riw8wLYW3n4F": {}}, "statCode": "3LD1EDwBXw5uBYeQ", "updateStrategy": "OVERRIDE", "value": 0.6477024663731455}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'BulkUpdateUserStatItem2' test.out

#- 95 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'zATNSV9E9yyNb7ya' \
    'LXzAVYymOuhCkZu4' \
    --body '{"additionalData": {"htrsf8eIFSovTGXa": {}, "Msq8ePN1oco2jx8U": {}, "pe8SjMvpqM8puggO": {}}, "updateStrategy": "OVERRIDE", "value": 0.17916727109223085}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
