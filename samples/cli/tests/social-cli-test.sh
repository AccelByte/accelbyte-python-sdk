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
social-create-stat-cycle '{"cycleType": "SEASONAL", "description": "nNjkfZrQvGgbLdLs", "end": "1987-01-19T00:00:00Z", "id": "zHkBMr1yrOMlNFSr", "name": "UEirnjX9fDmIbeZx", "resetDate": 51, "resetDay": 46, "resetMonth": 12, "resetTime": "YWQG26yUZNmTBcvr", "seasonPeriod": 3, "start": "1972-08-26T00:00:00Z"}' --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle '{"cycleIds": ["xcwgGLXpUL4pp2nc", "YAHdNzDmeIP6rOvD", "DG8aMVGLiBNrDjqo"]}' --login_with_auth "Bearer foo"
social-export-stat-cycle --login_with_auth "Bearer foo"
social-import-stat-cycle --login_with_auth "Bearer foo"
social-get-stat-cycle 'z9KOsb392k6YmJFf' --login_with_auth "Bearer foo"
social-update-stat-cycle '{"cycleType": "SEASONAL", "description": "ByjlBiuFM3FIoVk8", "end": "1994-11-30T00:00:00Z", "name": "GpAnkCmBUqg2SCnq", "resetDate": 27, "resetDay": 39, "resetMonth": 47, "resetTime": "9y1aZSWMiVi10sG6", "seasonPeriod": 44, "start": "1990-07-11T00:00:00Z"}' 'MWH8Yb33T5UBJCjf' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'cnLRfxeCSz9WEi8K' --login_with_auth "Bearer foo"
social-bulk-add-stats '{"statCodes": ["lloeH0JT1yduat2v", "QR3biBfsu4jmsRE2", "w1yEkLgh3tIYt4Sq"]}' 'YUTLDx9gIiDandpG' --login_with_auth "Bearer foo"
social-stop-stat-cycle 'T2t24aOMh5eC3IHe' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'HSKLCa3xreNDUWeh' 'wH3q31A806DJgas4' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item '[{"inc": 0.031589277758189205, "statCode": "6z3LNUj7fdgLA84Z", "userId": "8YYk6QEgJjBbEDoN"}, {"inc": 0.09547078293552924, "statCode": "3n0hEoRCAcf80zfF", "userId": "yabWAgIUXiI07A68"}, {"inc": 0.06478406566141903, "statCode": "aqC2J9jyEW6GLbc0", "userId": "NaKDUL3sa13lk1dQ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value '[{"inc": 0.438585526486881, "statCode": "HO86IlBhnetU4RwT", "userId": "qUXlTDBzOuYsaZA2"}, {"inc": 0.39255019039198513, "statCode": "yd4mbqoOfADMMAXF", "userId": "aY9eKa699bRVhyaK"}, {"inc": 0.3707777818751077, "statCode": "wrAP2aMlu7WtjCto", "userId": "YetOO847g8OudOfj"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'nCuHZ3c46IjGa23Y' '["vYmmDg7VYPXIuvUY", "TZBRujIUE1Tq5jyA", "ZvkRCMNFIurjh2im"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item '[{"statCode": "db4rbkXj0ZwsVC0g", "userId": "L97ZVJSPqJiwv1ql"}, {"statCode": "YB1RSKs6gQxC3Gb7", "userId": "S0o4zGYY7KQI1AeF"}, {"statCode": "gPqaOkvo1aolB4lk", "userId": "KB4EYOkQ1jMD3cym"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat '{"capCycleOverride": true, "cycleIds": ["XTwGBCtohLtl9Zuh", "ytm5UDrT6QXCs5SP", "RFOn0jJLHC9LxhvN"], "cycleOverrides": [{"cycleId": "BbRPZTF6oQAXVG7t", "maximum": 0.2189025589911483, "minimum": 0.30473583729786435}, {"cycleId": "Zg5QgXjvyGJPN4eX", "maximum": 0.02322000700641924, "minimum": 0.5793367775721279}, {"cycleId": "E5Vs2GcyomQoIXim", "maximum": 0.44148012165470363, "minimum": 0.5648573220061599}], "defaultValue": 0.0780386117323919, "description": "hyxlNsjUgxBkF6wF", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.6916739653754042, "minimum": 0.07918886691243554, "name": "diogEhhM2rIizGdK", "setAsGlobal": true, "setBy": "SERVER", "statCode": "dq5xrgxSmy1DN9LF", "tags": ["gaKt2ujQSa3Zdb65", "kYW5DQyj4bj5Ro2o", "UXmy0Zp6iIaTIKUk"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'k0upMzUYnb76tFkE' --login_with_auth "Bearer foo"
social-get-stat 'ORV3bu1bNCtX7W40' --login_with_auth "Bearer foo"
social-delete-stat 'V6Do5sYadCCFrHHC' --login_with_auth "Bearer foo"
social-update-stat '{"capCycleOverride": false, "cycleIds": ["nsbD3SGEdlwuUccE", "rv8mnfHK8CCmE2lP", "DpZxkrQDXuNFviMa"], "cycleOverrides": [{"cycleId": "536ugBp3HBvepnDC", "maximum": 0.14907461871664396, "minimum": 0.09733163035189274}, {"cycleId": "yJlXe36mgWjLfFmt", "maximum": 0.07800206557104983, "minimum": 0.33404752777019264}, {"cycleId": "e9nzJ6fH24T805tV", "maximum": 0.1076034442557946, "minimum": 0.9750604894207618}], "defaultValue": 0.5720707997241974, "description": "qU0jZpjvsugAOS7u", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "5LL4bTxBmZjdrrIx", "tags": ["pqpymDkQhtrHWwRV", "sB0NRsB1fPqqRRul", "nwVBOqOHi8pWGd1j"], "visibility": "SHOWALL"}' 'apIkY9Rf4wP57dBZ' --login_with_auth "Bearer foo"
social-get-stat-items 'NR88YbCtmKy8M9zV' --login_with_auth "Bearer foo"
social-delete-tied-stat 'rjfGXZnqAQUoY1Gj' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'lIIk0iKoTTS1j02o' '7JjTXAQN0qdskdQV' --login_with_auth "Bearer foo"
social-get-user-stat-items '0TqI8EFnmDbxIxi4' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '[{"statCode": "YKlONk2Q5Y4Jvaiz"}, {"statCode": "wiilatuUjjt9lIMG"}, {"statCode": "ql5ElEa9EIIlGcHB"}]' '3CfR3ncDlwi3v3MF' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '[{"inc": 0.5050345239733725, "statCode": "J1KesKoELCpobBEG"}, {"inc": 0.9782256380106731, "statCode": "X645xpdXpai0rYaT"}, {"inc": 0.9229463704766607, "statCode": "hOPjaf3H0tYighU0"}]' 'VUfcYHJbBfAKSiPW' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '[{"inc": 0.9000402113751781, "statCode": "VgsZXiR1DJ7HVWqM"}, {"inc": 0.16279291590410694, "statCode": "NSawQUWDFJvJBWic"}, {"inc": 0.9670067097364041, "statCode": "UkBeIXuqDuAXI66b"}]' 'Q71w0deoV9Lx5RDA' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '[{"statCode": "1l2XcrciYNEzvSZI"}, {"statCode": "PkhSgORcz5S5Bvmg"}, {"statCode": "BLxh4ijFnE3Tam69"}]' 'qSZ7PC6f6QkmZXEl' --login_with_auth "Bearer foo"
social-create-user-stat-item 'W9YfRSse6AAz3S4c' 'zz0QKFlAVmVLu4AO' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'ec0z8eBeeoip68J1' 'nsv4W2OJhtafxMSJ' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '{"inc": 0.17891328439739473}' 'Heb34sZKHcl5LLLO' 'exL4fZvWtND2tcBF' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '{"additionalData": {"pX8lNtFEJ7tnkY6M": {}, "ca5afj12K2IzrBvv": {}, "Wm4udE0OXudXgNne": {}}}' '8kJATwlc6esUp6Sw' '1I98jeZQ7hfxnhLd' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 '3Knaknoed9DHhLOq' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 '{"cycleIds": ["rEveMdAdiPKDUVSC", "AdNJOIG36I6tRbRc", "QGhCUr6iTrjyEgar"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 '00PYeDcagginxnFI' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'na3yddcbsPheTH26' 'IUJNvYuGRUvpZaHC' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item '[{"inc": 0.33040256553239433, "statCode": "ESOiIZsMfB4ZH3mt", "userId": "gWgU4pCAKxeE70Ca"}, {"inc": 0.33002418695502167, "statCode": "nQNxot371W9G4AvQ", "userId": "kqsGnmyo5JJTUVmb"}, {"inc": 0.9714327095014622, "statCode": "GEXFTlEMEsFzYqwg", "userId": "K1Np5nodqpLm7FhJ"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value '[{"inc": 0.4435494820794128, "statCode": "NXzAFdO0Khqf6kiT", "userId": "dSGv2LFjAKY7Cbgs"}, {"inc": 0.781550299227874, "statCode": "qFWZX7kPBom8F9GL", "userId": "LTG8phc3n4iLoIll"}, {"inc": 0.5877660703834918, "statCode": "lpO2pqiXJF3WGRao", "userId": "QomSJC4DdrKF7SUQ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 '[{"statCode": "PLG59e0k5ZtX6wK7", "userId": "PpUlcIW32iK7MGt1"}, {"statCode": "ixY5rA1WoVeJIePF", "userId": "8ZrQzP4zvtdxdbZU"}, {"statCode": "pd6FJtHJ1pyVwyKQ", "userId": "LY6FEO65Rb3z7CYL"}]' --login_with_auth "Bearer foo"
social-create-stat-1 '{"capCycleOverride": false, "cycleIds": ["IlsHqffnrfsGlfPa", "wj1QGIFmlVf4jvap", "ZKBwa3Ddb60ufPpz"], "cycleOverrides": [{"cycleId": "seE9LN9bvhOrHflI", "maximum": 0.6565137658214307, "minimum": 0.05366826724014062}, {"cycleId": "6X3viLvtEk4mTIpU", "maximum": 0.4325177690887003, "minimum": 0.9849798872218339}, {"cycleId": "gxo8SV38nEhoXmM2", "maximum": 0.7877075516628383, "minimum": 0.9659476725881552}], "defaultValue": 0.19316915123494693, "description": "6jHMA2rG3nakopAy", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.26353214177709494, "minimum": 0.6974947440995378, "name": "qCV7usamANkZlOX9", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "o95HgXqKhTPkwfLM", "tags": ["vr0n9d9lvccKMLhr", "9uSybRzWek2gZvRr", "TrcBE2ItBS3KtKZW"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'kQuaS7RBx3vim02j' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'BOxrZDyvpcLYOWA8' 'NjxOnaEok4nOOCzf' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'sflhjbngJOUn18G5' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '[{"statCode": "MlfDTk8aG40Nlncc"}, {"statCode": "eIZSwgAIkgzh4pTU"}, {"statCode": "0Am4DZhl0bQxFJ3s"}]' 'WCqQpQ2FbKPFMycM' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'SQ4qfAacR0LgB5BU' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '[{"inc": 0.792105652914223, "statCode": "vjcu2s6w3VifnKqm"}, {"inc": 0.727314736656999, "statCode": "SoGH1XEfY6QAYn6W"}, {"inc": 0.6906268705796005, "statCode": "5UBEU1QAOHfZiGhx"}]' 'OdcuDXSxSc3aZPV8' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '[{"inc": 0.9567044551591447, "statCode": "pna08gxefTYKhuxa"}, {"inc": 0.48618492708426475, "statCode": "c7M4P7UckSC6ePeN"}, {"inc": 0.9790133132625432, "statCode": "i4GrFES9z7xueHpA"}]' 'THccee9GXhKcjmSE' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '[{"statCode": "wdrkEnnqKzFsLfYa"}, {"statCode": "lUlfwEQKjU7eHGeb"}, {"statCode": "SVu0LQ40kepEaC4d"}]' 'fiOMZfEhHr39pysF' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'O3Zvc1BZG99Lyvfv' 'HEsJKQQewVLMUoAn' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'aRcYp7FUjfIGaffo' 'flEIByYqeKN0meGe' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '{"inc": 0.17764021497952498}' 'YF5wWaDhukU4khGG' '4vZFTYnPkmSu4PWa' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '{"inc": 0.19521409566889258}' '1jxR7SETWjteoc8f' 'gvZDDhoO05oKqymx' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'LD1Lcvw6T6mZEiwx' 'xElpMYSWIeVzm7z9' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 '[{"additionalData": {"noowmlTIKVowi0RY": {}, "2VN4ZONJREdUQ3z9": {}, "F1BxNNgnke4akncw": {}}, "additionalKey": "7wu9TmXfJWBPrx9N", "statCode": "s8eLzYEvwSWTaLQj", "updateStrategy": "INCREMENT", "userId": "jCMW64f4XhIjSoTB", "value": 0.882531463843417}, {"additionalData": {"NMKtezapPr2QEPx3": {}, "zTxBGtEJIYppuUSs": {}, "KoHw2hyd12uSE7BE": {}}, "additionalKey": "v3aevq6iohU1cg4W", "statCode": "1IS3Uv1BpWoJBaqd", "updateStrategy": "INCREMENT", "userId": "RtCHvuk6B6XTmSLy", "value": 0.21179042266604609}, {"additionalData": {"50sigBVZxiKdV57G": {}, "vRyd9UuL02Le8HSC": {}, "slsDd4M1F5qRIblS": {}}, "additionalKey": "7Nz81GRazPAANjfB", "statCode": "oldFOyqA2clJ5gEO", "updateStrategy": "INCREMENT", "userId": "XIZRZ7tZdIs0xf4c", "value": 0.4130189227785196}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'dt7zqmSKxOEQlVcx' '["6GqsBq8vdhWVnuYL", "gpZehK0G2nmyuViB", "9kRTcSQdTnNYGeAf"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'YFG3wSkHKufBdS3Z' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '[{"additionalData": {"OokZB4cXnAXyuGz6": {}, "LlxHv8SwyagYvDJ3": {}, "w3UNgIGj2jZtEYT8": {}}, "statCode": "sIPSE1XXPzySa0sZ", "updateStrategy": "MAX", "value": 0.968653950897015}, {"additionalData": {"ePWlQMVDXEHeiGTn": {}, "wyEw6hIWDZrpP7rz": {}, "3ISW510kHr4isTKW": {}}, "statCode": "jmv67nuHCXWfwnwG", "updateStrategy": "MAX", "value": 0.4938262271233014}, {"additionalData": {"9sJ4NpUtKp6M9I6n": {}, "EwnZhsjwJeGwaPSD": {}, "MZz95OYKiqaZD63x": {}}, "statCode": "e5rruJVfLGea0Ztl", "updateStrategy": "OVERRIDE", "value": 0.420187747136228}]' 'CC1RgBfoNrHlFi2q' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id '{"statCodes": ["JLgmBLE35YhyiDV9", "CgNyx9fbT63ShEh8", "0SeI5yppBHoytVzn"]}' 'PbGikLjgjcj34uul' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '[{"additionalData": {"U6FYBZsWFbr3RSP0": {}, "W9nBhvhf8Q0DtJMc": {}, "YQdN66bswAgt65X4": {}}, "statCode": "N1LQZmB61JMdtwCV"}, {"additionalData": {"UrYQue84dwmbwFEn": {}, "AZaWsQJtRYoagRJK": {}, "5PX9UcOvhPyE11TR": {}}, "statCode": "T2SKseoe8VLie0LB"}, {"additionalData": {"a36KNzjf005CXNGe": {}, "hQ2aTjTDfKFDXC7e": {}, "GL5YhJDWh9YWqc0q": {}}, "statCode": "gV6d9yOfIMLds2Db"}]' 'PcaoMdtRLTmSvTkQ' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'QgB7exYvmHMxr5hP' 'CJJztJBg0tTJg46I' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '{"additionalData": {"ewOXE2AkCh3QIZsU": {}, "f8lGFXcmwTERHclO": {}, "dxIwqejxe18rNdb8": {}}, "updateStrategy": "MAX", "value": 0.31281216806606427}' 'q6j1mqUav7k05HAQ' 'ltnSojV4jT65yclX' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 '[{"additionalData": {"2FtAz0vJjFIYWOaN": {}, "dsimmkW2miH3xRHA": {}, "Ky4QxZkaXZ7vmiEd": {}}, "additionalKey": "0JPxVyQpshaDwNqT", "statCode": "bbFMXAMfVXe0GZeM", "updateStrategy": "INCREMENT", "userId": "baERbfgPmi0eHkt1", "value": 0.20435150455050288}, {"additionalData": {"r9EOIFg0dnWIYN2N": {}, "VL70Iw157g00jr9b": {}, "8MuYmmeKTmBNvGYx": {}}, "additionalKey": "EQdf3ewoGGoY7xmF", "statCode": "NAmjDDCvs78mcMdi", "updateStrategy": "MAX", "userId": "76YApGJ9ufwLYkqI", "value": 0.1096422324561489}, {"additionalData": {"LuZS6hsQryiEtOAb": {}, "peUNf26UqkCfgCUY": {}, "Bn2xaOBdPF0JmX8q": {}}, "additionalKey": "wU1cTuHHPB5S3DvP", "statCode": "RCzBrVUxmDOj3cvR", "updateStrategy": "OVERRIDE", "userId": "aTC11W0TGTCm4fZW", "value": 0.3243949372811491}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'k6pQxDQpKqxLGeMv' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '[{"additionalData": {"r9TsvcMQ7dBsaIec": {}, "RxIsZvD6rmzVr5XT": {}, "1Nxw0v1dMQ9Rrbk6": {}}, "statCode": "C2cVWf6ttvbU1PO6", "updateStrategy": "OVERRIDE", "value": 0.16065453179368427}, {"additionalData": {"VOOBnIWhunElqZUo": {}, "dp3IhtCSHy1ei1fI": {}, "rPvfHnRN06EjRwEQ": {}}, "statCode": "lNapJRfk4f9Zcw1p", "updateStrategy": "OVERRIDE", "value": 0.01066139740342642}, {"additionalData": {"xgP6Jbct8puMybYG": {}, "xD9IPmmsLmu3kaPj": {}, "0O4zd8Tb7cUNGPTB": {}}, "statCode": "xiFFCrn7djjs69FT", "updateStrategy": "OVERRIDE", "value": 0.7663459818178311}]' 'GUVhvKhJCmeisql1' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 '{"additionalData": {"4mUHVbMPimNhcZsU": {}, "3VAdMDcb4qlkiFAa": {}, "mqvZI2KwjqPBiWXa": {}}, "updateStrategy": "INCREMENT", "value": 0.605919056241049}' 'VVYamQc4wcG5nDBL' 'JoJHbiQ5duE5p4cf' --login_with_auth "Bearer foo"
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
    's2E41cK8QTwiIAvx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'SvNDlmM5nQFMGzs7' \
    'fzjgyc44mEh9tRk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["knYSV30lnroQehMD", "li6t9unQLYXxm09w", "pGAbpEmDY9vLh3u6"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'EDsUmrV6kH4OotKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'G3UC6XCnnZxF8CmQ' \
    --body '{"achievements": ["r17W65br34rBBN9t", "U6TDm5GloFSKWM1e", "ym5ydC6p25xCWTqU"], "attributes": {"OYZENJ1QHZQxPRXH": "7uxBJEECQE1li3Bg", "7Jxc9pUnZmvhidwC": "kZwqjYLfTiCO1NDB", "vQvRPnAz4VzW0Cpo": "BCbyJsF5IjF1c0W3"}, "avatarUrl": "38HS6CBgVRyihYNZ", "inventories": ["84CVhziXV8HwSmvc", "vcDKF19yVRafCjOu", "SYht83AdvBaagTiR"], "label": "J8daGTVX3Bb7jlz5", "profileName": "IfHgKjI9mwJSrN8j", "statistics": ["kIykR2zbaI6PD7fE", "scShnGUGUtV9GJ27", "9GDbLNwjm3FK0nnX"], "tags": ["2poMfZ1hDHtbh4Ht", "MlFgvh2Dp2SoiIPp", "1yvfAHS0VgLu11A3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'HTovFi4tPAGfleyC' \
    'A6jEtcqsnzoVILjk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'wW61duF87aUyrdt4' \
    'XSpWBAetsanzqP8o' \
    --body '{"achievements": ["xfrtbECD1CYPwaiB", "AxfYL8Avt70ZUT2f", "Sk3LL0calqxEewuG"], "attributes": {"S469k2hG0WKt4sUm": "anYxM0UHZVNYzGMN", "IpWoSLkUrfuf4U3W": "eYeA9t2ENKKWrFtH", "Ii1CMgKAOG5iDcCR": "5PbCvDLil8wj9cKM"}, "avatarUrl": "3Ar6MF35hCER4nGm", "inventories": ["WGgTJfHlJl4tHGa4", "XfZcd9CVnGqMX9Fi", "eeEssWEUl07bhwnt"], "label": "CVqiYOJf5KwMZQjz", "profileName": "vjSozv6CTRDl0zp9", "statistics": ["CzHFwinkBNi4gvqg", "l6TZ9TGVPmv34h6T", "7EsufmfxKYB4LM6H"], "tags": ["6QXmpZ9X3fUSR1l9", "xLPBsmAUrD9L1IiD", "6MlcEPhMDFzjHZ3s"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'IhzOx2CXKlvIomU3' \
    'pIxM9n8D2eLMe3lt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    '9qfx2UDcgVE7L9FK' \
    '6e0MrPc4vtxk9hVK' \
    'lG56HlzGr7XjdyRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'unZPkp6ccIBnWyPw' \
    '8mj7gyQ7XdIszGRj' \
    '46COPipH1MWVTHG0' \
    --body '{"name": "qHJCWEfOJpZm9yEY", "value": "WNGMy2pgSGSUOK68"}' \
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
    'eqGJtWf1Ybgg8rdw' \
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
    '{"cycleType": "ANNUALLY", "description": "9bmrvHmO07KNqX9L", "end": "1990-07-29T00:00:00Z", "id": "2IwEsdOGBXBwnzDX", "name": "8v3xgC1Ge9PdbTTA", "resetDate": 73, "resetDay": 89, "resetMonth": 67, "resetTime": "AMEX5RMjBFVZGYzQ", "seasonPeriod": 33, "start": "1999-03-29T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    '{"cycleIds": ["NOmUSWw18T1IxVWC", "8d9mDdUIoiIJFNxu", "xdvPL9e4P01vxP8x"]}' \
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
    'j1LyEirURERnEMzp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    '{"cycleType": "WEEKLY", "description": "JWodpdwsX1jorcyR", "end": "1998-08-14T00:00:00Z", "name": "x3YiHF8ITGPRQBCg", "resetDate": 70, "resetDay": 3, "resetMonth": 38, "resetTime": "S4AdlNzwog2IhErk", "seasonPeriod": 81, "start": "1974-03-04T00:00:00Z"}' \
    '4gUoj8u2WRcLiEtz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'Vlnkflfn7pHY48F1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    '{"statCodes": ["dl1q92m3iRlfnBAk", "0CwiAsR65yQ9ssuH", "dGmxncCEr0Kcgeqz"]}' \
    'GbruNB72HHMkjzyB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'B4UFKiaoV0VOem2y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'qPsMFxKybPkbuS6x' \
    '9cLJ1APnNlsa2bRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    '[{"inc": 0.28499019960183525, "statCode": "27fVMWuAfDqLMR91", "userId": "9IZPKOKiAVQXXOmq"}, {"inc": 0.5091295159311925, "statCode": "HLbyXmgCNiXH8uen", "userId": "bC5CphgMweexsIAP"}, {"inc": 0.9280423949300922, "statCode": "vHLjBJ9iqMcBL4Bz", "userId": "hDUjhKPwbwcvQU5k"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.5217366565105409, "statCode": "8bXGFmPAnOkDiJq4", "userId": "xQye7HqnVK3YVeOW"}, {"inc": 0.3007416178517185, "statCode": "9mfVQh3jLBtn9pxp", "userId": "E7BYtzB0B4CxyQrU"}, {"inc": 0.25561771956309154, "statCode": "IFvORxTi79DpSjb3", "userId": "9ukcR6c2E2r3vk3I"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'fAKEbqcNXSGCCvNo' \
    '["wNmdpcJgF88ySNq4", "Mj7mulP4tQ6R1OqK", "VOTniBgLsNhdgQ0J"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    '[{"statCode": "WZjNRSzOTqcVNX3a", "userId": "hvxw9gwwhTnjN6wK"}, {"statCode": "ZGW4y3f0R9s2kndh", "userId": "hZhwAiLsZs4pmLDI"}, {"statCode": "Qch4IjDq9aT3qZyI", "userId": "0rYsWucAkXsVJbXi"}]' \
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
    '{"capCycleOverride": false, "cycleIds": ["D0Xtb0U4pH16NUsV", "JgoxGJoJaSzUtY4Z", "Y21NVIs7NRen2Y3N"], "cycleOverrides": [{"cycleId": "s0QJQeaWytPfds1B", "maximum": 0.8065425788738688, "minimum": 0.3758921323401808}, {"cycleId": "0EaURydf8ZyyZeHA", "maximum": 0.7859478026999364, "minimum": 0.5219480022186255}, {"cycleId": "gJUbUJRMbkcTglbU", "maximum": 0.977244027709012, "minimum": 0.945193875876326}], "defaultValue": 0.5015715261507325, "description": "yOjApNHBVfNOURcj", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": true, "maximum": 0.8683252499303566, "minimum": 0.8934407248688463, "name": "Ornyx34luLdvtsTK", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "iw6gYPvfn2Qt9iyq", "tags": ["IsQ3PuppUxDSK8aO", "WaVO4iKhDcJ7TCcN", "3Nyk8ncu2Z3eDHH9"], "visibility": "SHOWALL"}' \
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
    'MudcxlCV4cNbJGQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '7lPdinpjS2DRfGt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'GlyZVQ4X67tPZSTp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '{"capCycleOverride": false, "cycleIds": ["q3xjrElvvDgw0ag7", "EXqvUWDjU1G0EVjV", "kSWE0Hiqm5IuLryi"], "cycleOverrides": [{"cycleId": "Zw1ToLuPakQN1MpO", "maximum": 0.29778113239587845, "minimum": 0.8642490667129303}, {"cycleId": "RVFrcg2CXxepx78f", "maximum": 0.3406149316819217, "minimum": 0.3000575546958799}, {"cycleId": "yhE2BKtyTDSIM7mk", "maximum": 0.20898280503638933, "minimum": 0.3390458818898565}], "defaultValue": 0.8351656594168031, "description": "7Cmsh4US8o4jfMAN", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "VOsnmnlVljdWYmEL", "tags": ["e74p38vumnxAnYBT", "6vd80msqIm5bufnB", "xaTIz0jcgDI8Pkz9"], "visibility": "SHOWALL"}' \
    'DShHD32vvL28FPwT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'iXfLcxDC9Ynd02mE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'CIQhfIhHtADUQ9zi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'mQTQT95pFJUAJsyA' \
    'feKOufV4f15NohXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '6opxQGRt6PqlkL0d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '[{"statCode": "iRhLC10ih2EQfY3X"}, {"statCode": "Cv4hdOa6FdZhNMd1"}, {"statCode": "onFjGRbxtABPXDmg"}]' \
    'NEJBhgGq5GIDhNC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.9360335008102897, "statCode": "szbCCf73IFbRkPSS"}, {"inc": 0.5551472934675149, "statCode": "Tz4TjCrJHXGXku2Y"}, {"inc": 0.7595661804442624, "statCode": "uOzhxHmnrrV9ZGWr"}]' \
    'Z05sxe6A6RpmKDeb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 0.6423456968824012, "statCode": "kylbynkgT9vayLLi"}, {"inc": 0.13102382775724575, "statCode": "zac7Ge6zKJdlt7rj"}, {"inc": 0.5093258504622028, "statCode": "5RaJwvkWVco2LTo5"}]' \
    'ijlvDF8qBWCQ9dLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "YyS8zdhMeBXH8x6H"}, {"statCode": "dVfZVDAiU6iJOF7J"}, {"statCode": "KZFNk2NKy59X8iOg"}]' \
    '2sVBiCoeC5weXJl7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'PeiMH8z8dVej8N2y' \
    'v6VTnOK7xAvM7tuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    '81lsR7xxSVp3Gd2T' \
    'K0HzYviTgYmx82JV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '{"inc": 0.4498083549827242}' \
    'RLPZ6Iz8tne5dbgu' \
    'BF6Gsvvdl8jHz9x7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '{"additionalData": {"XZIjU4IK9lOLaZaM": {}, "phKCqTq3EVheJjoE": {}, "EXBLIxGnNuhoJM3W": {}}}' \
    'WPvvCiCf33ViEdqQ' \
    'poGkUWNizk5UcPAG' \
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
    'v6c1ESC6hZYTYZbz' \
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
    '{"cycleIds": ["zXZj08a6K1XRVfri", "f5aANNNs5kgSZZNU", "HbIT9szApmWJO5vz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'SpPFnZBJZkDnEiyf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'a2LrnpZxNnLRH36b' \
    'qS2oFY76PU1AziBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 0.54813894181612, "statCode": "EAj1cT3u6Zc2FbrT", "userId": "FznTgDIwZIRWf6T3"}, {"inc": 0.029469421927668882, "statCode": "y2kYSCdnFKLc0xcT", "userId": "jqjdcEfU61OJYMnW"}, {"inc": 0.9050005805573133, "statCode": "9rWynp1ck1vT90C6", "userId": "o86cSRL9cgbUmulh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.07319879866422863, "statCode": "98oaFKlQicdrxVhr", "userId": "twSd9QWVMYz7TU1T"}, {"inc": 0.29092164859369374, "statCode": "xsChSclSkb5aBi9K", "userId": "9zyv6gFZXI5nXJ7h"}, {"inc": 0.602625515022272, "statCode": "i6HweweRmyo91dIn", "userId": "7QqXBDXJcrqKmXDw"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "oEV6tCdrxw1KOPhu", "userId": "vHuYrGWDK41uMOC0"}, {"statCode": "mRvSoaGk4ktF5wnJ", "userId": "Dg9Q3WXiydCOInVo"}, {"statCode": "lsr6CHmj763vLwtY", "userId": "EJTSiXjcY5ZPkv90"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    '{"capCycleOverride": false, "cycleIds": ["89jRCn48bvkCPfKo", "fwXOIZZQAJza84lK", "8LNW11vtpaTxi7k4"], "cycleOverrides": [{"cycleId": "KmVOaTS6xBbNrSUA", "maximum": 0.7824337169552744, "minimum": 0.8805540080387924}, {"cycleId": "ak7ISDrBVg6NuDZv", "maximum": 0.671550558588841, "minimum": 0.026209371272083448}, {"cycleId": "1kuUfNfUDe4g7q6P", "maximum": 0.5414643305500128, "minimum": 0.49010467147745984}], "defaultValue": 0.002006757116854496, "description": "qbzHvDDl1jiLw3XM", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.2503092242472419, "minimum": 0.4336271299279535, "name": "1tIC45C0oaGouFu4", "setAsGlobal": false, "setBy": "SERVER", "statCode": "XONgUwJnUpryDeRc", "tags": ["Fo9gxOgvDc7xMrRK", "pUvlrw2MwC1uuokp", "aIjL0Vxe5n9Lx3Qc"], "visibility": "SHOWALL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'ddfdsUqjXVzW1Qqx' \
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
    'nWR5sheLgsAF4ctv' \
    '5guycGiq9j2EyIkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'fLDpgHnMOn8nc3gU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "Z8ZFyyEr0KBXuJBq"}, {"statCode": "K4QtEydPWLPBYiR3"}, {"statCode": "UbJc1ZYapx7C477e"}]' \
    'tqgfOJDUT0uKAPrA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'Rya2IMlNiXpF4qvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.7513383614143563, "statCode": "UpHqi33TcBGkc0Hj"}, {"inc": 0.7502805562000789, "statCode": "cnkpU9oVzl2kBuLF"}, {"inc": 0.8017222809420502, "statCode": "IeCEKZUTz3GvCAZ5"}]' \
    'j24acYHbrryHB6GO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 0.9845771904122191, "statCode": "zP3FaepA3b3YJ9nJ"}, {"inc": 0.616074269248588, "statCode": "6vtT27xv85K5MU2q"}, {"inc": 0.20393376208500014, "statCode": "beqaVemINdClpF7O"}]' \
    'vlBIEgjse5kd6GED' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "o08yq5E5HleLoog4"}, {"statCode": "me2NBFp62xlXvVcJ"}, {"statCode": "erTPW02PWsHiKYAr"}]' \
    'AxnKBfBfDlrQQuAc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    '10DjjwMv4vrIPRtv' \
    'hQIyLarjaLOKnX51' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'yAB8Pa3uNGKhaLlJ' \
    'zJMSnJIIgsAVmaGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '{"inc": 0.38210301862238616}' \
    'UX1B9oVuzG2CnYX2' \
    'YBF2g7TVtzYEHUod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '{"inc": 0.11390441843963195}' \
    '3iUfBthbepUCTWiZ' \
    '1uqh7GAi4FEIu44u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '83ZLRxYlYqlpq03B' \
    'GdIk4oEogFVGR71r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"JOBy6lsj1AKGBjnH": {}, "maAu4YK87DYAWWcb": {}, "cbGWmKgE8CZ4AELr": {}}, "additionalKey": "5lraa5v5P5Cj8hgF", "statCode": "sqHC9h5JPiMEtgKu", "updateStrategy": "MAX", "userId": "9YD92CX0rITajpwH", "value": 0.5623588600555955}, {"additionalData": {"TGeHTnqRbzBB9ZFg": {}, "JbQ3Fj1umx4ItzkM": {}, "J7cudf4r916GPrhn": {}}, "additionalKey": "2etVIQvRkQJAtDUH", "statCode": "9tx60AehGz1ermJY", "updateStrategy": "MIN", "userId": "sYgL7TfyIlAwjTZd", "value": 0.706801431806633}, {"additionalData": {"ZJJzWZwvTX2bamSC": {}, "vX1nwvSWdDwD7WJH": {}, "zgNZUKsI5y0mR3zM": {}}, "additionalKey": "yTsftKqnsIJctAdx", "statCode": "yZVKHA9DkaSOWgtg", "updateStrategy": "MAX", "userId": "yw8lHEbVDwBAqanO", "value": 0.19205426364044342}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'scRIWw82k5K5VTkd' \
    '["ubkOFldMCQ98JH4n", "0JtgqzZv5kVu4S95", "mj8YRvae4f4lhBPb"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'arbWEm8bVtZcfVCP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"dQhim9QKUAFTVYel": {}, "IlGJg9wdc8bihhWj": {}, "fZpfcFBUsnnDJlmD": {}}, "statCode": "1iEokbUiYzCQh2iN", "updateStrategy": "MIN", "value": 0.3284753360846069}, {"additionalData": {"tLf6IrvZoBGQbO4S": {}, "3rURGWUzPAE6SdV4": {}, "D5jftRl9rZmtQUvr": {}}, "statCode": "o8TWwXWsz9TVmdMK", "updateStrategy": "OVERRIDE", "value": 0.09522502297813207}, {"additionalData": {"ERXdvgD1Qf7Ot2Dk": {}, "Ut3yexZBRvxYnEBh": {}, "XtAVxCd3meTrT7cF": {}}, "statCode": "9oVCh89wNOkKYssV", "updateStrategy": "INCREMENT", "value": 0.3697026309407162}]' \
    'SSgxCu8zru1DhGAY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["1iUProNB6hI6IpGc", "OHR5BWa9VzIkaQEl", "ToWgFvdRhG9NwV3z"]}' \
    'DuqVlVTypcYPK8Ix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"rSZuxWl0Je4fJIyF": {}, "Am3DQht4JwnPS2ur": {}, "JqerobWMZGVL5KLT": {}}, "statCode": "xahWlS6XdBaKSLCg"}, {"additionalData": {"OOPXM6XTUh2dJ90y": {}, "qHDNacl4F9G6Dl5T": {}, "FwBY6HKXAblkT8VG": {}}, "statCode": "gSH8MGZGwiVj7eDT"}, {"additionalData": {"aka9ABfX1IByPEOu": {}, "PhGspRi3bhPQvBBJ": {}, "I5JxytpcubN4AUUP": {}}, "statCode": "FPscZsXeJOD4DMtq"}]' \
    'fIGiGJovgWSRxZ8N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    '4UQ2fg3V1o2x0hL5' \
    'DuBDqMyIAzWze94M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    '{"additionalData": {"EdJFAy2JTllJkRGB": {}, "8jqJEd6eqqsBVyON": {}, "V0JRtozI0jpliCFQ": {}}, "updateStrategy": "OVERRIDE", "value": 0.7830866089384073}' \
    'gJpGPigdc5VyC4qv' \
    'WjVac1cQvSxgTNIU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"zxDgBlIbuzm7DzJ2": {}, "0NFRJIhFXR2dYprP": {}, "mbpuptECGd5cdXC2": {}}, "additionalKey": "Sesc6y68whNBYl9i", "statCode": "CqfW6rqGOQny4ij4", "updateStrategy": "OVERRIDE", "userId": "EPhNHSH7eKDfRcng", "value": 0.49784025052055014}, {"additionalData": {"pTnRUQr3RLOM1vEx": {}, "4gqDY6jwyKRxhkLe": {}, "5zohg9s9utRQt28b": {}}, "additionalKey": "6o3K0COF74tz6aeX", "statCode": "ZOYwbwjMNdxKWlBf", "updateStrategy": "MAX", "userId": "3eRvBZXN3cjIXmFW", "value": 0.7007973674659996}, {"additionalData": {"Jnj8xN7HDPTUEDPN": {}, "1Kb4UTPWDXTSb55g": {}, "8LSTs7Nf95lGlPrf": {}}, "additionalKey": "6obIdnI6Ag7eUYcY", "statCode": "J4QzXCmqr6gmPGaH", "updateStrategy": "MIN", "userId": "PvRLiDi0mNHb6Lx8", "value": 0.0761803117253671}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'q8SGNwEQO8dYXvBS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"YvJBwb6CjZUMRf2V": {}, "JetWsokvx3BHuTEc": {}, "zr9KjQ3ttz8MTBt1": {}}, "statCode": "xk9IyssSA8nP5PQj", "updateStrategy": "MIN", "value": 0.6751129136525985}, {"additionalData": {"tQmQN6eKAGiZFCft": {}, "T0RWECdjWYrnulxc": {}, "CKAru8pOaAVLDB4k": {}}, "statCode": "3JwkdaxR7GJpYmuY", "updateStrategy": "OVERRIDE", "value": 0.9535302196776488}, {"additionalData": {"BoysmaORLkP5hc2F": {}, "h04JTsqDTynCewqJ": {}, "ligLlRxOelKykICR": {}}, "statCode": "xF6HtlER2txs4qrN", "updateStrategy": "OVERRIDE", "value": 0.4457165502502828}]' \
    'd5o7iTST7R3KbbQG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"ERMNpqWb51y5RUzv": {}, "MfTkPy0fGvTGgfLK": {}, "sg0b1Bq78cE5O5pm": {}}, "updateStrategy": "MAX", "value": 0.387550816110092}' \
    'q9odanhR1Zrm3thU' \
    'vV87yfkycLSVdleS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
