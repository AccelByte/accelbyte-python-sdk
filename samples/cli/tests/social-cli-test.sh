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
social-bulk-get-stat-cycle '{"cycleIds": ["YAHdNzDmeIP6rOvD", "xcwgGLXpUL4pp2nc", "DG8aMVGLiBNrDjqo"]}' --login_with_auth "Bearer foo"
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
social-create-stat '{"cycleIds": ["8xIfkOVW2grREOLx", "0KOww3HICQLfl7MU", "BG7qtPu64yAtURKL"], "cycleOverrides": [{"cycleId": "Rkb738HGS6rDgMdI", "maximum": 0.5507716858479617, "minimum": 0.1926690132834208}, {"cycleId": "hS1fSiM9331m7Ta1", "maximum": 0.6703984350026079, "minimum": 0.30163657682552936}, {"cycleId": "Kc50Kv6ecnEevcAx", "maximum": 0.8717213362445452, "minimum": 0.5854997369757303}], "defaultValue": 0.8856579330925444, "description": "zkRenmPZnGBt4P7W", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7112432537807113, "minimum": 0.5689205011091686, "name": "tjX7ZshZyZl5x4bR", "setAsGlobal": false, "setBy": "SERVER", "statCode": "KvOPdq5xrgxSmy1D", "tags": ["db65UXmy0Zp6iIaT", "Ro2ogaKt2ujQSa3Z", "N9LFkYW5DQyj4bj5"], "visibility": "SHOWALL"}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'KUkmkk9QM0NBMA9O' --login_with_auth "Bearer foo"
social-get-stat 'RxpzwLR2AK6eXUGP' --login_with_auth "Bearer foo"
social-delete-stat 'Jsw1fiP80G9Pclxc' --login_with_auth "Bearer foo"
social-update-stat '{"cycleIds": ["4UcqsuGKHhMRWLVd", "3DlhLuIpomM8sm1M", "ft2ulIJzPyrVEiOG"], "cycleOverrides": [{"cycleId": "iaI1mX2tJoARtdbB", "maximum": 0.07535298355949849, "minimum": 0.9564240740648573}, {"cycleId": "udsMrok0WvGYYnx4", "maximum": 0.773775689972088, "minimum": 0.9579036869343323}, {"cycleId": "09xbnGezKsDwG2om", "maximum": 0.6537567515178604, "minimum": 0.7000528866193884}], "defaultValue": 0.8864319273434509, "description": "nvYI9TVqJdvzcWbf", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "isPublic": true, "name": "p5JMl5LL4bTxBmZj", "tags": ["qRRulpqpymDkQhtr", "drrIxsB0NRsB1fPq", "HWwRVnwVBOqOHi8p"], "visibility": "SHOWALL"}' 'Gd1juYhiqjRJOqB5' --login_with_auth "Bearer foo"
social-get-stat-items 'F93zFQbJndUDpdON' --login_with_auth "Bearer foo"
social-delete-tied-stat 'neAczbBdHb2slt71' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'B1SmZp2JZp50CnPb' '71ORYcmQbTU5JX8c' --login_with_auth "Bearer foo"
social-get-user-stat-items 'cLjMXJRk0eaKQDOJ' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '[{"statCode": "vrTefglSs6g4iY9u"}, {"statCode": "02aCNYIWekp18lOC"}, {"statCode": "3mNqF7Bl0LcghVHf"}]' 'PEspxwhRON0bc1eM' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '[{"inc": 0.019882905130970574, "statCode": "EIjowLqc3ecjXJbZ"}, {"inc": 0.48360037826415914, "statCode": "KKoxLE1Y3Dymtj3g"}, {"inc": 0.13245224420468005, "statCode": "Pg4x4yiPX6ues1Hh"}]' 'hkg1yLVbLFzHEP8c' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '[{"inc": 0.6132644691383238, "statCode": "4NTwr0KHaAsmTej5"}, {"inc": 0.8843343090921504, "statCode": "WKi6tArAURt9plCS"}, {"inc": 0.771228048478571, "statCode": "q8PdH6hJPUAc0RVw"}]' 'XgAgntLMCuaXBWQi' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '[{"statCode": "6BqPg4xr0lCancUZ"}, {"statCode": "GCHsZYoLfR1KtOv7"}, {"statCode": "Zy0b65uvuKNuy0yt"}]' 'ZQ7M6Nzy1adnSKOL' --login_with_auth "Bearer foo"
social-create-user-stat-item 'FKx1dX4LuWJu3pDM' 'UAeeZ97SBROPYuG6' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'XqP6oo7G73zdxTgO' 'fnwIdlNa29fDLh74' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value '{"inc": 0.8647619886111616}' 'IslKHzGlLKWUtDQs' '61OQAoxyyQpRWCii' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '{"additionalData": {"PDGQhNPEwiJCf2XJ": {}, "VrlzqQls1ozhLVA3": {}, "kE8jKvgatOEBM70T": {}}}' 'dlNBJYOmpu1VCarz' 'BsV6xnZ5Jrzzjrca' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'ug6CWVG8SWP3glU6' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 '{"cycleIds": ["7dwV9DBqFKHQkETJ", "0riFc5HTHQIoVsGo", "muswVJnNnN7kAa7j"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'yTlUrwDTnoujQD4I' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'EiH9Z5qXn3aoRtlq' 'OECohViHA5CzgFSy' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item '[{"inc": 0.9802137228422012, "statCode": "X1A3PrIfapq5AAeM", "userId": "e4L3mDWORBVXTIIJ"}, {"inc": 0.6262127605591866, "statCode": "9XsYIIZxiXNMR9Bg", "userId": "aWcFX3SUBhyoTsMW"}, {"inc": 0.6717688273109623, "statCode": "AxUMkawaGpAyrIwM", "userId": "if3BOdkocVTd4Bxq"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value '[{"inc": 0.5180620026852448, "statCode": "WV6mTJ0sQs6XNbjv", "userId": "qhnUVLWu8olKdxL6"}, {"inc": 0.2405786324693695, "statCode": "zRmDD0jJvlfV5Oem", "userId": "PYdYT7DROCjtuzFM"}, {"inc": 0.018960425495917588, "statCode": "AG9YI89hmguB8FOT", "userId": "jMLo4b9rIzqYkEps"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 '[{"statCode": "tyVTBcrM8rG0rH0z", "userId": "cswwVeMK6MbGIVIu"}, {"statCode": "8vvwLc7KY3uVoJXT", "userId": "IMtpgkieDyF97lGd"}, {"statCode": "MiHKxbWCYzo8yO2K", "userId": "TK9tmmOnYnOpas6g"}]' --login_with_auth "Bearer foo"
social-create-stat-1 '{"cycleIds": ["gcGLuC3brWdTYCfH", "hP1y4Zi7s7QBlk44", "Z44B1GZgKg4uKxaC"], "cycleOverrides": [{"cycleId": "kIySok5DiXZtLW87", "maximum": 0.2870990533941191, "minimum": 0.5305517784306876}, {"cycleId": "ysryod3dNQrmsApR", "maximum": 0.42164479130789634, "minimum": 0.9508766397479325}, {"cycleId": "HX3RwrKt2ecozL0T", "maximum": 0.6500401878124754, "minimum": 0.1076745408315446}], "defaultValue": 0.9271120861021633, "description": "4vCE48L5oLF6M4lN", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.7429738063650179, "minimum": 0.6198028954466904, "name": "SHNgqRqCV7usamAN", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "lOX9Sfo95HgXqKhT", "tags": ["cKMLhrTrcBE2ItBS", "PkwfLM9uSybRzWek", "2gZvRrvr0n9d9lvc"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'KtKZWe8aoFzAyBME' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 '74HUtipUWYhWV1qx' '8CzPML52faXUr9Sk' --login_with_auth "Bearer foo"
social-public-query-user-stat-items '4lq2faBcAXXKlhvy' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '[{"statCode": "H8paOJtxqMPpcVfR"}, {"statCode": "wNj547fH0XrKEDpE"}, {"statCode": "Y8VnocGAjci0V3tB"}]' 'f2jnHGKXphn50c9t' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'NLDljhZ2jxLRX3z4' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '[{"inc": 0.9392403744119239, "statCode": "OCaGBeMfPlNos4yB"}, {"inc": 0.7060510075225537, "statCode": "jrERHEonAZR8GmEu"}, {"inc": 0.8538045468109845, "statCode": "q1p6QCyY6vSkVFWd"}]' 'sbYuVEGVxYheR3j5' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '[{"inc": 0.2085799276996353, "statCode": "NZ6vwv7K8Asvt1j1"}, {"inc": 0.7008993893168605, "statCode": "x59hesNWy2NvZ85D"}, {"inc": 0.47941587077567027, "statCode": "KDAF8KDsBZOuYQJ0"}]' '3BAHZ7c53q7akMpc' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 '[{"statCode": "mnnx6RVBrop9v7aZ"}, {"statCode": "K3h65hbN15zfQSfQ"}, {"statCode": "rtfF3TQN0OcNDLr3"}]' '6vzohZyjMQAg5mPY' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'hrLTyU8OhgfY9JQY' 'GF4bYXEcENx9xZlA' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'chob44lONDDwMvgI' '0HlyPR7wZNiVsF6x' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '{"inc": 0.5228228259965363}' '2mXEQdbzIVy8alnc' 'V7vWgSHdfo07UctP' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value '{"inc": 0.48702559872052975}' 'rqxyMyOK06MqQBEr' 'xgjVBycvU4PbmRDc' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'rg0DjQjBECXvea7H' '1m2lJFRZ3ZprZ60z' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 '[{"additionalData": {"MjhTHeh94TSenE5h": {}, "CFkIf5weqZ18MH57": {}, "l2Zsrh90ETtYmGuk": {}}, "additionalKey": "z3MnlrjcHp6B8Vj7", "statCode": "rXFgDnDkdZ9bpjb1", "updateStrategy": "MIN", "userId": "TaLQjctvrK2jhsYp", "value": 0.5826376687464856}, {"additionalData": {"PlXn77AtYoFzLAAT": {}, "PY8P8P3cfoivvQxe": {}, "vecWw7Rry0KK5rgA": {}}, "additionalKey": "GO0dW8rX2MVUGKSZ", "statCode": "4GcLkt4pK32sJxlZ", "updateStrategy": "INCREMENT", "userId": "JBaqdg2FHcunsS1l", "value": 0.22298452058117368}, {"additionalData": {"aO2m9vqjhbeK2qN8": {}, "g6x2PyYDo5R3hLiD": {}, "5sf5y1JsxJNGmyt0": {}}, "additionalKey": "SQDUDoWBZVGLlkUe", "statCode": "tzCAWc9x1aMjgGim", "updateStrategy": "INCREMENT", "userId": "107XIZRZ7tZdIs0x", "value": 0.08926190103967646}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 '4czdt7zqmSKxOEQl' '["Vcx6GqsBq8vdhWVn", "uYLgpZehK0G2nmyu", "ViB9kRTcSQdTnNYG"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'eAfYFG3wSkHKufBd' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item '[{"additionalData": {"S3ZOokZB4cXnAXyu": {}, "Gz6LlxHv8SwyagYv": {}, "DJ3w3UNgIGj2jZtE": {}}, "statCode": "YT8sIPSE1XXPzySa", "updateStrategy": "INCREMENT", "value": 0.30181681519484693}, {"additionalData": {"ZoFS6xCOWMpyh9pM": {}, "sQgb64ELbzDMwyo4": {}, "nIRysQdbufXjYnSo": {}}, "statCode": "IFeouC2m38kXrDZW", "updateStrategy": "MAX", "value": 0.3678979539748969}, {"additionalData": {"GioVwVzmmBVVFfpq": {}, "x1AeLtzcPJ3jtDYB": {}, "o4FUTH7CGfKSyxgR": {}}, "statCode": "R1DiCqSMzpqIFGLk", "updateStrategy": "OVERRIDE", "value": 0.32118007766471013}]' 'lzUcuHAXz0UV31Mf' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id '{"statCodes": ["I1ECUo1NPpeFhUzt", "0TQNEI3kfabxJWWS", "uGaXsAuGsZaSHevO"]}' 'XDgB7n4C97uAPP8P' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '[{"additionalData": {"ATLpUpxeJlsBJT6H": {}, "h3OMjAjq2mK8lbSE": {}, "Eelxnb5QxWG2HFnZ": {}}, "statCode": "lA6HKWW4fI1IQcoB"}, {"additionalData": {"QELcNlZkqTZrKgXN": {}, "wvm4e5GX6H742Oix": {}, "htAoKiVm6URT95Xh": {}}, "statCode": "nUcvWB28MpusuhhD"}, {"additionalData": {"J5slzgiWZEtyd56L": {}, "fxnbY97jjYgXchCb": {}, "kXX26uEdCfQaMAQu": {}}, "statCode": "TKfC0I2kNjCMDtDM"}]' 'rentgn3DhqciwIeS' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'hF9RKb9vvxuJlhXb' 'WhbwPwToC6knjVwV' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '{"additionalData": {"nzaqSfJiQFC2gXod": {}, "a0kg16yUSpSOAjHJ": {}, "WwfCjYwWkLob9gKL": {}}, "updateStrategy": "MIN", "value": 0.024646887972019527}' '8Otq6j1mqUav7k05' 'HAQltnSojV4jT65y' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 '[{"additionalData": {"clX2FtAz0vJjFIYW": {}, "OaNdsimmkW2miH3x": {}, "RHAKy4QxZkaXZ7vm": {}}, "additionalKey": "iEd0JPxVyQpshaDw", "statCode": "NqTbbFMXAMfVXe0G", "updateStrategy": "MIN", "userId": "eMgsRsmH1EQrYmkP", "value": 0.5813067578544868}, {"additionalData": {"TPOlhTtSiZNCxuog": {}, "FteTHJe4BhSSQkQD": {}, "6WmOt6D7ufFVTOhv": {}}, "additionalKey": "QpfbBke8aEdd36xj", "statCode": "6wySoltDxsbzxrla", "updateStrategy": "INCREMENT", "userId": "EfkoYjY2o6ouRW9U", "value": 0.32247445927415186}, {"additionalData": {"NquwC3WgumrIz4Nh": {}, "GztZpr4U4fwQIiLX": {}, "gmRasvjO4lj8m3XE": {}}, "additionalKey": "wP2b4gd3xOeii8Jn", "statCode": "mssep2xD2NY0kABe", "updateStrategy": "MIN", "userId": "s9yxahld1pO0Gyf5", "value": 0.6686164798722917}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'O3COyMvczgEpzZ3F' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '[{"additionalData": {"btxfhcRC7IVYa6iZ": {}, "5uFRYNn3SHiWxF0Y": {}, "buU5ar5qTLWUCy0A": {}}, "statCode": "fgc050XIZRW491e9", "updateStrategy": "MAX", "value": 0.937218000634589}, {"additionalData": {"ApCD2VXidT7w0Oc1": {}, "5N8WXBPp17PAewqS": {}, "m5x3B4t7WQnp8jXZ": {}}, "statCode": "edgt5cyNe27HLtwt", "updateStrategy": "MIN", "value": 0.6541647426101284}, {"additionalData": {"axgP6Jbct8puMybY": {}, "GxD9IPmmsLmu3kaP": {}, "j0O4zd8Tb7cUNGPT": {}}, "statCode": "BxiFFCrn7djjs69F", "updateStrategy": "OVERRIDE", "value": 0.7663459818178311}]' 'GUVhvKhJCmeisql1' --login_with_auth "Bearer foo"
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
    '{"cycleIds": ["8d9mDdUIoiIJFNxu", "xdvPL9e4P01vxP8x", "NOmUSWw18T1IxVWC"]}' \
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
    '{"cycleIds": ["K6tVsaUq3stUh5J5", "7eRZa7WwIc895Imq", "Z9GiBiSAylX5cS0I"], "cycleOverrides": [{"cycleId": "eHpWCugmfOL0QQpx", "maximum": 0.29948991873379394, "minimum": 0.323887138117422}, {"cycleId": "D8PGqku59eFJrOXy", "maximum": 0.47294526122425007, "minimum": 0.8158706038143322}, {"cycleId": "z9vMUOPG0iHDT8Qb", "maximum": 0.5078414435942925, "minimum": 0.9638449547979535}], "defaultValue": 0.10067263949806893, "description": "HPTPQbvLt2NRqJGI", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.9881356355023441, "minimum": 0.2304672888357686, "name": "TynmfIuBWgJTNFfM", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "oe8KDgy0xZfAcNg1", "tags": ["4Ws8TIP1LKiFQoLD", "vumfqrgSfnx2h61X", "9dN1MGRXBJ6mVV7J"], "visibility": "SHOWALL"}' \
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
    '{"cycleIds": ["Pq3xjrElvvDgw0ag", "7kSWE0Hiqm5IuLry", "iEXqvUWDjU1G0EVj"], "cycleOverrides": [{"cycleId": "VZw1ToLuPakQN1Mp", "maximum": 0.6473781837129573, "minimum": 0.29778113239587845}, {"cycleId": "1RVFrcg2CXxepx78", "maximum": 0.09650554194192185, "minimum": 0.3406149316819217}, {"cycleId": "syhE2BKtyTDSIM7m", "maximum": 0.16520744734597403, "minimum": 0.20898280503638933}], "defaultValue": 0.3390458818898565, "description": "Z7Cmsh4US8o4jfMA", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "8VOsnmnlVljdWYmE", "tags": ["TxaTIz0jcgDI8Pkz", "Le74p38vumnxAnYB", "96vd80msqIm5bufn"], "visibility": "SHOWALL"}' \
    'BDShHD32vvL28FPw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'TiXfLcxDC9Ynd02m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'ECIQhfIhHtADUQ9z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'imQTQT95pFJUAJsy' \
    'AfeKOufV4f15NohX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'u6opxQGRt6PqlkL0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    '[{"statCode": "diRhLC10ih2EQfY3"}, {"statCode": "XCv4hdOa6FdZhNMd"}, {"statCode": "1onFjGRbxtABPXDm"}]' \
    'gNEJBhgGq5GIDhNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.9492167587811674, "statCode": "6szbCCf73IFbRkPS"}, {"inc": 0.7241383637866552, "statCode": "ITz4TjCrJHXGXku2"}, {"inc": 0.8128891046263504, "statCode": "VuOzhxHmnrrV9ZGW"}]' \
    'rZ05sxe6A6RpmKDe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 0.031194840310768246, "statCode": "NkylbynkgT9vayLL"}, {"inc": 0.14157732055567152, "statCode": "izac7Ge6zKJdlt7r"}, {"inc": 0.15360997298826162, "statCode": "F5RaJwvkWVco2LTo"}]' \
    '5ijlvDF8qBWCQ9dL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "WYyS8zdhMeBXH8x6"}, {"statCode": "HdVfZVDAiU6iJOF7"}, {"statCode": "JKZFNk2NKy59X8iO"}]' \
    'g2sVBiCoeC5weXJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    '7PeiMH8z8dVej8N2' \
    'yv6VTnOK7xAvM7tu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'L81lsR7xxSVp3Gd2' \
    'TK0HzYviTgYmx82J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '{"inc": 0.7614430445925534}' \
    'BRLPZ6Iz8tne5dbg' \
    'uBF6Gsvvdl8jHz9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '{"additionalData": {"7XZIjU4IK9lOLaZa": {}, "MphKCqTq3EVheJjo": {}, "EEXBLIxGnNuhoJM3": {}}}' \
    'WWPvvCiCf33ViEdq' \
    'QpoGkUWNizk5UcPA' \
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
    'Gv6c1ESC6hZYTYZb' \
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
    '{"cycleIds": ["UHbIT9szApmWJO5v", "zf5aANNNs5kgSZZN", "zzXZj08a6K1XRVfr"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'iSpPFnZBJZkDnEiy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'fa2LrnpZxNnLRH36' \
    'bqS2oFY76PU1AziB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 0.647492887865705, "statCode": "HEAj1cT3u6Zc2Fbr", "userId": "TFznTgDIwZIRWf6T"}, {"inc": 0.8951222423921109, "statCode": "by2kYSCdnFKLc0xc", "userId": "TjqjdcEfU61OJYMn"}, {"inc": 0.788103152693747, "statCode": "49rWynp1ck1vT90C", "userId": "6o86cSRL9cgbUmul"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 0.12690418508824297, "statCode": "e98oaFKlQicdrxVh", "userId": "rtwSd9QWVMYz7TU1"}, {"inc": 0.7307900357355628, "statCode": "sxsChSclSkb5aBi9", "userId": "K9zyv6gFZXI5nXJ7"}, {"inc": 0.11777851096480052, "statCode": "Li6HweweRmyo91dI", "userId": "n7QqXBDXJcrqKmXD"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "woEV6tCdrxw1KOPh", "userId": "uvHuYrGWDK41uMOC"}, {"statCode": "0mRvSoaGk4ktF5wn", "userId": "JDg9Q3WXiydCOInV"}, {"statCode": "olsr6CHmj763vLwt", "userId": "YEJTSiXjcY5ZPkv9"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    '{"cycleIds": ["0lyKSTWLxSFZ0Lpu", "530Wj1WfzIvc3VlS", "pEi5DbkVs3qFTi1t"], "cycleOverrides": [{"cycleId": "XrA3XUGud4tVjmxE", "maximum": 0.08685688987340945, "minimum": 0.9182136638643869}, {"cycleId": "XvVhFJTxFHITBg9x", "maximum": 0.9038250844913631, "minimum": 0.3245289301242721}, {"cycleId": "nq3eOMHIKeTyBG5d", "maximum": 0.45769755295984516, "minimum": 0.74325576082963}], "defaultValue": 0.23946370549577967, "description": "ExnKfV3869IN4V1O", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": true, "maximum": 0.5210761498071714, "minimum": 0.7681152118666056, "name": "U7Exlkmc4xYiLjLy", "setAsGlobal": true, "setBy": "SERVER", "statCode": "Fu4hXONgUwJnUpry", "tags": ["uokpaIjL0Vxe5n9L", "DeRcpUvlrw2MwC1u", "x3QcFo9gxOgvDc7x"], "visibility": "SHOWALL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'dKLddfdsUqjXVzW1' \
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
    'QqxnWR5sheLgsAF4' \
    'ctv5guycGiq9j2Ey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'IknfLDpgHnMOn8nc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "3gUZ8ZFyyEr0KBXu"}, {"statCode": "JBqK4QtEydPWLPBY"}, {"statCode": "iR3UbJc1ZYapx7C4"}]' \
    '77etqgfOJDUT0uKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'PrARya2IMlNiXpF4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 0.26442672628722075, "statCode": "vsUUpHqi33TcBGkc"}, {"inc": 0.8499601710236624, "statCode": "HjUcnkpU9oVzl2kB"}, {"inc": 0.3308435433408816, "statCode": "LFXIeCEKZUTz3GvC"}]' \
    'AZ5j24acYHbrryHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 0.9468307529934481, "statCode": "GO9zP3FaepA3b3YJ"}, {"inc": 0.984800463094998, "statCode": "nJM6vtT27xv85K5M"}, {"inc": 0.7553999174158822, "statCode": "2qmbeqaVemINdClp"}]' \
    'F7OvlBIEgjse5kd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "GEDo08yq5E5HleLo"}, {"statCode": "og4me2NBFp62xlXv"}, {"statCode": "VcJerTPW02PWsHiK"}]' \
    'YArAxnKBfBfDlrQQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'uAc10DjjwMv4vrIP' \
    'RtvhQIyLarjaLOKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'X51yAB8Pa3uNGKha' \
    'LlJzJMSnJIIgsAVm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '{"inc": 0.015281787175842276}' \
    'GYxUX1B9oVuzG2Cn' \
    'YX2YBF2g7TVtzYEH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '{"inc": 0.7542242395295139}' \
    'odh3iUfBthbepUCT' \
    'WiZ1uqh7GAi4FEIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '44u83ZLRxYlYqlpq' \
    '03BGdIk4oEogFVGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"71rJOBy6lsj1AKGB": {}, "jnHmaAu4YK87DYAW": {}, "WcbcbGWmKgE8CZ4A": {}}, "additionalKey": "ELr5lraa5v5P5Cj8", "statCode": "hgFsqHC9h5JPiMEt", "updateStrategy": "INCREMENT", "userId": "Psa9YD92CX0rITaj", "value": 0.24629413544099543}, {"additionalData": {"wHITGeHTnqRbzBB9": {}, "ZFgJbQ3Fj1umx4It": {}, "zkMJ7cudf4r916GP": {}}, "additionalKey": "rhn2etVIQvRkQJAt", "statCode": "DUH9tx60AehGz1er", "updateStrategy": "MAX", "userId": "pWit1QC7FKe0fnHU", "value": 0.17801197417449932}, {"additionalData": {"mU1unGKM0tgfeWy4": {}, "7bbwMI4gGmvK9gW5": {}, "96FwBNrFXt3TAuKB": {}}, "additionalKey": "wBcD12ae6r3hHwya", "statCode": "4NpdOzg3hr6ucHf7", "updateStrategy": "INCREMENT", "userId": "gtg8yw8lHEbVDwBA", "value": 0.26998608342804176}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'anOlscRIWw82k5K5' \
    '["VTkdubkOFldMCQ98", "JH4n0JtgqzZv5kVu", "4S95mj8YRvae4f4l"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'hBPbarbWEm8bVtZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"fVCPdQhim9QKUAFT": {}, "VYelIlGJg9wdc8bi": {}, "hhWjfZpfcFBUsnnD": {}}, "statCode": "JlmD1iEokbUiYzCQ", "updateStrategy": "INCREMENT", "value": 0.9333362048866131}, {"additionalData": {"pu9PutLf6IrvZoBG": {}, "QbO4S3rURGWUzPAE": {}, "6SdV4D5jftRl9rZm": {}}, "statCode": "tQUvro8TWwXWsz9T", "updateStrategy": "MAX", "value": 0.32073354012665956}, {"additionalData": {"yBTfERXdvgD1Qf7O": {}, "t2DkUt3yexZBRvxY": {}, "nEBhXtAVxCd3meTr": {}}, "statCode": "T7cF9oVCh89wNOkK", "updateStrategy": "MIN", "value": 0.7575272939864635}]' \
    'ddwSSgxCu8zru1Dh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["pGcToWgFvdRhG9Nw", "QEl1iUProNB6hI6I", "GAYOHR5BWa9VzIka"]}' \
    'V3zDuqVlVTypcYPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"8IxrSZuxWl0Je4fJ": {}, "IyFAm3DQht4JwnPS": {}, "2urJqerobWMZGVL5": {}}, "statCode": "KLTxahWlS6XdBaKS"}, {"additionalData": {"LCgOOPXM6XTUh2dJ": {}, "90yqHDNacl4F9G6D": {}, "l5TFwBY6HKXAblkT": {}}, "statCode": "8VGgSH8MGZGwiVj7"}, {"additionalData": {"eDTaka9ABfX1IByP": {}, "EOuPhGspRi3bhPQv": {}, "BBJI5JxytpcubN4A": {}}, "statCode": "UUPFPscZsXeJOD4D"}]' \
    'MtqfIGiGJovgWSRx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'Z8N4UQ2fg3V1o2x0' \
    'hL5DuBDqMyIAzWze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    '{"additionalData": {"94MEdJFAy2JTllJk": {}, "RGB8jqJEd6eqqsBV": {}, "yONV0JRtozI0jpli": {}}, "updateStrategy": "OVERRIDE", "value": 0.6061681248622146}' \
    'D1EDwBXw5uBYeQZO' \
    'zATNSV9E9yyNb7ya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"LXzAVYymOuhCkZu4": {}, "htrsf8eIFSovTGXa": {}, "Msq8ePN1oco2jx8U": {}}, "additionalKey": "pe8SjMvpqM8puggO", "statCode": "EdG47gD5i2Ni6AnW", "updateStrategy": "MAX", "userId": "ij4ysYPonb59gQff", "value": 0.17354601652564472}, {"additionalData": {"NOmubxEJr2qEAuJb": {}, "pZSrcbc4LWfKaY5c": {}, "1tP5TDuI5f6m4KC0": {}}, "additionalKey": "7CnsZe32hqEcB1Ex", "statCode": "YMBb3ckvoaJYdMqG", "updateStrategy": "INCREMENT", "userId": "lBfnRyFS0Ed7gTM5", "value": 0.4196668580079025}, {"additionalData": {"VrtBQiDTcNnZa6Zu": {}, "xk6u6HXXdiC9ZDj4": {}, "E4mv12FNXypoOLl1": {}}, "additionalKey": "3j84P0KqirJ4PkMF", "statCode": "tsnFfz8Ew0X8fBuB", "updateStrategy": "INCREMENT", "userId": "LSQ4GvLtz50D3rpB", "value": 0.08356443059863816}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'BovqLwXBuT30EYeR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"j17xGhaBKoUfiHjG": {}, "mCyPsKCJTv1ic9gv": {}, "agF2cSuztsJ5tj64": {}}, "statCode": "gV7nmDk29mcjSuz9", "updateStrategy": "MIN", "value": 0.6669399740218445}, {"additionalData": {"5PQjpzk2Tb7iYdmN": {}, "ZWosrsVBPZ64j0HU": {}, "ONscofwYLQcDvkaE": {}}, "statCode": "IIPoJT83zEGXmVBZ", "updateStrategy": "MAX", "value": 0.39850390563823557}, {"additionalData": {"rH9J7BoysmaORLkP": {}, "5hc2Fh04JTsqDTyn": {}, "CewqJligLlRxOelK": {}}, "statCode": "ykICRxF6HtlER2tx", "updateStrategy": "MIN", "value": 0.7382807053905633}]' \
    'gCejBd5o7iTST7R3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"KbbQGERMNpqWb51y": {}, "5RUzvMfTkPy0fGvT": {}, "GgfLKsg0b1Bq78cE": {}}, "updateStrategy": "OVERRIDE", "value": 0.6597210757884613}' \
    '5pmPnbiPJ9j4vxmb' \
    'H3rVaauufxkPHElu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
