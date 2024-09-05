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
social-create-stat-cycle --body '{"cycleType": "SEASONAL", "description": "nNjkfZrQvGgbLdLs", "end": "1987-01-19T00:00:00Z", "id": "zHkBMr1yrOMlNFSr", "name": "UEirnjX9fDmIbeZx", "resetDate": 51, "resetDay": 46, "resetMonth": 12, "resetTime": "YWQG26yUZNmTBcvr", "seasonPeriod": 3, "start": "1972-08-26T00:00:00Z"}' --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle --body '{"cycleIds": ["DG8aMVGLiBNrDjqo", "YAHdNzDmeIP6rOvD", "xcwgGLXpUL4pp2nc"]}' --login_with_auth "Bearer foo"
social-export-stat-cycle --login_with_auth "Bearer foo"
social-import-stat-cycle --login_with_auth "Bearer foo"
social-get-stat-cycle 'z9KOsb392k6YmJFf' --login_with_auth "Bearer foo"
social-update-stat-cycle 'RByjlBiuFM3FIoVk' --body '{"cycleType": "WEEKLY", "description": "FAAMwzHPxB1UskYs", "end": "1980-07-07T00:00:00Z", "name": "9y1aZSWMiVi10sG6", "resetDate": 44, "resetDay": 79, "resetMonth": 48, "resetTime": "MWH8Yb33T5UBJCjf", "seasonPeriod": 5, "start": "1973-04-20T00:00:00Z"}' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'DxOgBnhhqElIaDml' --login_with_auth "Bearer foo"
social-bulk-add-stats '48wdNFLTm5T50x9W' --body '{"statCodes": ["T0GfH2rtOa4EXsXz", "OXQAk4mqrxzTtuLl", "4XlbGL8QOxtjzm8y"]}' --login_with_auth "Bearer foo"
social-stop-stat-cycle '2wNhmwoYZyI4EFZK' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'BcYrCEAE7WIsfmx4' '0NLRc6m8heKnWhzf' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.07630489328720524, "statCode": "2NubeoKFeIaFQCYo", "userId": "DPICpnduEEQlULdJ"}, {"inc": 0.40499059271373483, "statCode": "4mnRBkMNxvvKgAT8", "userId": "mJrYq6hRkloqxM3g"}, {"inc": 0.24736575231663782, "statCode": "wxcfMy9XzjjI5Ybs", "userId": "KoADkzJEN2VHzih3"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.029657540115482273, "statCode": "it0VWn3CO39PXDNx", "userId": "tXgeO3FgkXhjDzaQ"}, {"inc": 0.8223452423444844, "statCode": "3snn2ZkP7cFdP43e", "userId": "5dC9XIBudfZgrbHD"}, {"inc": 0.5599925389885663, "statCode": "Dm4hMzF4TxodenSr", "userId": "UTvfqU0bfoMm5cTt"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'FWbotQyXJRcQWsmq' '["PNs92epxk0i8VxsZ", "NereSvf9699mCEHT", "hUJkETAsSp7gh4Te"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "UTkOkAYfJB8AT9t4", "userId": "Tv207Y2QD3oD5fLC"}, {"statCode": "r3OOlXVv8ZGF7uYn", "userId": "GzpipNDigNJma1Mb"}, {"statCode": "qqZtfNWql4nmwAft", "userId": "4gqkNNlWkD9eOziY"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"cycleIds": ["ytm5UDrT6QXCs5SP", "XTwGBCtohLtl9Zuh", "RFOn0jJLHC9LxhvN"], "defaultValue": 0.4380768464389736, "description": "bRPZTF6oQAXVG7tn", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.09954214557581376, "minimum": 0.8062948956626522, "name": "jvyGJPN4eXbJE5Vs", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "cnEevcAx2K2zkRen", "tags": ["XBHUTrDzZSKscfOc", "mPZnGBt4P7WnbdSJ", "tjX7ZshZyZl5x4bR"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'Yu3dpCROYqUiGKXV' --login_with_auth "Bearer foo"
social-get-stat 'FCmpo6sPwVOEDSJs' --login_with_auth "Bearer foo"
social-delete-stat 'EK5QpNhlI2iS5EpG' --login_with_auth "Bearer foo"
social-update-stat 'hhvXYck0upMzUYnb' --body '{"cycleIds": ["76tFkEORV3bu1bNC", "tX7W40V6Do5sYadC", "CFrHHC3DpZxkrQDX"], "defaultValue": 0.3323122013871699, "description": "NFviMarv8mnfHK8C", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "3DlhLuIpomM8sm1M", "tags": ["e7udsMrok0WvGYYn", "x4V709xbnGezKsDw", "iaI1mX2tJoARtdbB"]}' --login_with_auth "Bearer foo"
social-get-stat-items 'G2omOR2nvYI9TVqJ' --login_with_auth "Bearer foo"
social-delete-tied-stat 'dvzcWbfUpaXp5JMl' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items '5LL4bTxBmZjdrrIx' 'sB0NRsB1fPqqRRul' --login_with_auth "Bearer foo"
social-get-user-stat-items 'pqpymDkQhtrHWwRV' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'nwVBOqOHi8pWGd1j' --body '[{"statCode": "uYhiqjRJOqB5F93z"}, {"statCode": "FQbJndUDpdONneAc"}, {"statCode": "zbBdHb2slt71B1Sm"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'Zp2JZp50CnPb71OR' --body '[{"inc": 0.8183540550087972, "statCode": "cmQbTU5JX8ccLjMX"}, {"inc": 0.5753412152139424, "statCode": "Rk0eaKQDOJvrTefg"}, {"inc": 0.1826003952802132, "statCode": "Ss6g4iY9u02aCNYI"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'Wekp18lOC3mNqF7B' --body '[{"inc": 0.19095053887382574, "statCode": "0LcghVHfPEspxwhR"}, {"inc": 0.6606003857751251, "statCode": "N0bc1eMbEIjowLqc"}, {"inc": 0.8934302799381941, "statCode": "ecjXJbZDKKoxLE1Y"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 '3Dymtj3giPg4x4yi' --body '[{"statCode": "PX6ues1Hhhkg1yLV"}, {"statCode": "bLFzHEP8cM4NTwr0"}, {"statCode": "KHaAsmTej52WKi6t"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'ArAURt9plCSVq8Pd' 'H6hJPUAc0RVwXgAg' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'ntLMCuaXBWQi6BqP' 'g4xr0lCancUZGCHs' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'ZYoLfR1KtOv7Zy0b' '65uvuKNuy0ytZQ7M' --body '{"inc": 0.9491729532243756}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'Nzy1adnSKOLFKx1d' 'X4LuWJu3pDMUAeeZ' --body '{"additionalData": {"97SBROPYuG6XqP6o": {}, "o7G73zdxTgOfnwId": {}, "lNa29fDLh741IslK": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'HzGlLKWUtDQs61OQ' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["AoxyyQpRWCiiPDGQ", "qQls1ozhLVA3kE8j", "hNPEwiJCf2XJVrlz"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'KvgatOEBM70TdlNB' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'JYOmpu1VCarzBsV6' 'xnZ5Jrzzjrcaug6C' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.7836751184539907, "statCode": "VG8SWP3glU6muswV", "userId": "JnNnN7kAa7j0riFc"}, {"inc": 0.928834610140798, "statCode": "HTHQIoVsGo7dwV9D", "userId": "BqFKHQkETJyTlUrw"}, {"inc": 0.4735132207553765, "statCode": "TnoujQD4IEiH9Z5q", "userId": "Xn3aoRtlqOECohVi"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.5421278076858168, "statCode": "A5CzgFSy8X1A3PrI", "userId": "fapq5AAeMe4L3mDW"}, {"inc": 0.6521650831891806, "statCode": "RBVXTIIJM9XsYIIZ", "userId": "xiXNMR9BgaWcFX3S"}, {"inc": 0.7527916172231846, "statCode": "BhyoTsMWPAxUMkaw", "userId": "aGpAyrIwMif3BOdk"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "ocVTd4BxqGWV6mTJ", "userId": "0sQs6XNbjvqhnUVL"}, {"statCode": "Wu8olKdxL6ozRmDD", "userId": "0jJvlfV5OemPYdYT"}, {"statCode": "7DROCjtuzFMbAG9Y", "userId": "I89hmguB8FOTjMLo"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["VeMK6MbGIVIu8vvw", "4b9rIzqYkEpstyVT", "BcrM8rG0rH0zcsww"], "defaultValue": 0.6092118929703784, "description": "c7KY3uVoJXTIMtpg", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": true, "isPublic": false, "maximum": 0.682095233214903, "minimum": 0.4059089302858263, "name": "P4zvtdxdbZUpd6FJ", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "HJ1pyVwyKQLY6FEO", "tags": ["a3Ddb60ufPpzwj1Q", "65Rb3z7CYLM8IlsH", "qffnrfsGlfPaZKBw"]}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'GIFmlVf4jvapseE9' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'LN9bvhOrHflIOd6X' '3viLvtEk4mTIpUA9' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'gxo8SV38nEhoXmM2' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'W7l6jHMA2rG3nako' --body '[{"statCode": "pAywelu01nryEJ0N"}, {"statCode": "qoTow0qiOiC4j0ik"}, {"statCode": "tm0ZPLkLOsp0LZ5n"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'jN86Hl8kUXzt6bSc' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '6bWvgpVyW9dD1kOm' --body '[{"inc": 0.34757656841265405, "statCode": "rAejcq2LgkQuaS7R"}, {"inc": 0.4454305204683384, "statCode": "x3vim02jBOxrZDyv"}, {"inc": 0.25595763528576976, "statCode": "cLYOWA8NjxOnaEok"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '4nOOCzfsflhjbngJ' --body '[{"inc": 0.6539421036102435, "statCode": "Un18G5MlfDTk8aG4"}, {"inc": 0.8546214577832915, "statCode": "NlncceIZSwgAIkgz"}, {"inc": 0.12164545787582048, "statCode": "4pTU0Am4DZhl0bQx"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'FJ3sWCqQpQ2FbKPF' --body '[{"statCode": "MycMSQ4qfAacR0Lg"}, {"statCode": "B5BUXvjcu2s6w3Vi"}, {"statCode": "fnKqmTSoGH1XEfY6"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'QAYn6WQ5UBEU1QAO' 'HfZiGhxOdcuDXSxS' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'c3aZPV87pna08gxe' 'fTYKhuxaEc7M4P7U' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'ckSC6ePeN8i4GrFE' 'S9z7xueHpATHccee' --body '{"inc": 0.984376007117812}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'GXhKcjmSEwdrkEnn' 'qKzFsLfYalUlfwEQ' --body '{"inc": 0.583963243073282}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'jU7eHGebSVu0LQ40' 'kepEaC4dfiOMZfEh' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"Hr39pysFO3Zvc1BZ": {}, "G99LyvfvHEsJKQQe": {}, "wVLMUoAnaRcYp7FU": {}}, "additionalKey": "jfIGaffoflEIByYq", "statCode": "eKN0meGelYF5wWaD", "updateStrategy": "MAX", "userId": "lncV7vWgSHdfo07U", "value": 0.03599105162028948}, {"additionalData": {"tPErqxyMyOK06MqQ": {}, "BErxgjVBycvU4Pbm": {}, "RDcrg0DjQjBECXve": {}}, "additionalKey": "a7H1m2lJFRZ3ZprZ", "statCode": "60zMjhTHeh94TSen", "updateStrategy": "OVERRIDE", "userId": "KVowi0RY2VN4ZONJ", "value": 0.6979959676520454}, {"additionalData": {"EdUQ3z9F1BxNNgnk": {}, "e4akncw7wu9TmXfJ": {}, "WBPrx9Ns8eLzYEvw": {}}, "additionalKey": "SWTaLQjctvrK2jhs", "statCode": "YpKPlXn77AtYoFzL", "updateStrategy": "OVERRIDE", "userId": "Pr2QEPx3zTxBGtEJ", "value": 0.5529840170363789}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'YppuUSsKoHw2hyd1' '["2uSE7BEv3aevq6io", "hU1cg4W1IS3Uv1Bp", "WoJBaqdg2FHcunsS"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items '1lnaO2m9vqjhbeK2' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'qN8g6x2PyYDo5R3h' --body '[{"additionalData": {"LiD5sf5y1JsxJNGm": {}, "yt0SQDUDoWBZVGLl": {}, "kUetzCAWc9x1aMjg": {}}, "statCode": "Gim51T107XIZRZ7t", "updateStrategy": "INCREMENT", "value": 0.33809194377664953}, {"additionalData": {"gbNEIpGBFUjOn5mM": {}, "7k8nbLzvtCIW5ynM": {}, "KquUicAeIVXtoWAX": {}}, "statCode": "hMlW4tLqX7OICf5o", "updateStrategy": "OVERRIDE", "value": 0.22517965627547354}, {"additionalData": {"NYGeAfYFG3wSkHKu": {}, "fBdS3ZOokZB4cXnA": {}, "XyuGz6LlxHv8Swya": {}}, "statCode": "gYvDJ3w3UNgIGj2j", "updateStrategy": "MIN", "value": 0.32096327409851166}]' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id 'EYT8sIPSE1XXPzyS' --body '{"statCodes": ["a0sZoFS6xCOWMpyh", "yo4nIRysQdbufXjY", "9pMsQgb64ELbzDMw"]}' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'nSoIFeouC2m38kXr' --body '[{"additionalData": {"DZWlGVE9sJ4NpUtK": {}, "p6M9I6nEwnZhsjwJ": {}, "eGwaPSDMZz95OYKi": {}}, "statCode": "qaZD63xe5rruJVfL"}, {"additionalData": {"Gea0ZtlzUcuHAXz0": {}, "UV31MfuGaXsAuGsZ": {}, "aSHevO0TQNEI3kfa": {}}, "statCode": "bxJWWSI1ECUo1NPp"}, {"additionalData": {"eFhUztXDgB7n4C97": {}, "uAPP8PATLpUpxeJl": {}, "sBJT6Hh3OMjAjq2m": {}}, "statCode": "K8lbSEEelxnb5QxW"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'G2HFnZlA6HKWW4fI' '1IQcoBQELcNlZkqT' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'ZrKgXNwvm4e5GX6H' '742OixhtAoKiVm6U' --body '{"additionalData": {"RT95XhnUcvWB28Mp": {}, "usuhhDJ5slzgiWZE": {}, "tyd56LfxnbY97jjY": {}}, "updateStrategy": "INCREMENT", "value": 0.09471914763817268}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"KFDXC7eGL5YhJDWh": {}, "9YWqc0qgV6d9yOfI": {}, "MLds2DbPcaoMdtRL": {}}, "additionalKey": "TmSvTkQQgB7exYvm", "statCode": "HMxr5hPCJJztJBg0", "updateStrategy": "MIN", "userId": "jVwVnzaqSfJiQFC2", "value": 0.10322899296233767}, {"additionalData": {"Xoda0kg16yUSpSOA": {}, "jHJWwfCjYwWkLob9": {}, "gKLqs2nEZhpByfHZ": {}}, "additionalKey": "inxNfgPAwkMBsznl", "statCode": "BUqnLT4AbGptKaWN", "updateStrategy": "MIN", "userId": "FIYWOaNdsimmkW2m", "value": 0.13308993987354734}, {"additionalData": {"H3xRHAKy4QxZkaXZ": {}, "7vmiEd0JPxVyQpsh": {}, "aDwNqTbbFMXAMfVX": {}}, "additionalKey": "e0GZeMgsRsmH1EQr", "statCode": "YmkPKTPOlhTtSiZN", "updateStrategy": "OVERRIDE", "userId": "nWIYN2NVL70Iw157", "value": 0.0985382994892311}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 '00jr9b8MuYmmeKTm' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'BNvGYxEQdf3ewoGG' --body '[{"additionalData": {"oY7xmFNAmjDDCvs7": {}, "8mcMdiS76YApGJ9u": {}, "fwLYkqIgLuZS6hsQ": {}}, "statCode": "ryiEtOAbpeUNf26U", "updateStrategy": "MIN", "value": 0.6797741366262459}, {"additionalData": {"IiLXgmRasvjO4lj8": {}, "m3XEwP2b4gd3xOei": {}, "i8Jnmssep2xD2NY0": {}}, "statCode": "kABeGs9yxahld1pO", "updateStrategy": "OVERRIDE", "value": 0.39566597496767064}, {"additionalData": {"f5PO3COyMvczgEpz": {}, "Z3FbtxfhcRC7IVYa": {}, "6iZ5uFRYNn3SHiWx": {}}, "statCode": "F0YbuU5ar5qTLWUC", "updateStrategy": "OVERRIDE", "value": 0.7082167033426856}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'rbk6C2cVWf6ttvbU' '1PO6ApCD2VXidT7w' --body '{"additionalData": {"0Oc15N8WXBPp17PA": {}, "ewqSm5x3B4t7WQnp": {}, "8jXZedgt5cyNe27H": {}}, "updateStrategy": "MIN", "value": 0.04155598852193354}' --login_with_auth "Bearer foo"
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
    'w1pEHAyNFxcVTKuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'QTGh5BxjWOozGoDt' \
    'sUuYo5p8ED5QZAuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["wNa8lzfjv9oYMXMj", "lVHY1AHwF3vGoav7", "MK0PcLnEkcokKwcQ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    '0baDT9OyJ2h23GUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    '2amU7syGlElXdEAO' \
    --body '{"achievements": ["rVSnLocLVVYamQc4", "wcG5nDBLJoJHbiQ5", "duE5p4cfs2E41cK8"], "attributes": {"QTwiIAvxSvNDlmM5": "nQFMGzs7fzjgyc44", "mEh9tRk8knYSV30l": "nroQehMDli6t9unQ", "LYXxm09wpGAbpEmD": "Y9vLh3u6EDsUmrV6"}, "avatarUrl": "kH4OotKwG3UC6XCn", "inventories": ["nZxF8CmQr17W65br", "34rBBN9tU6TDm5Gl", "oFSKWM1eym5ydC6p"], "label": "25xCWTqUOYZENJ1Q", "profileName": "HZQxPRXH7uxBJEEC", "statistics": ["QE1li3Bg7Jxc9pUn", "ZmvhidwCkZwqjYLf", "TiCO1NDBvQvRPnAz"], "tags": ["4VzW0CpoBCbyJsF5", "IjF1c0W338HS6CBg", "VRyihYNZ84CVhziX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'V8HwSmvcvcDKF19y' \
    'VRafCjOuSYht83Ad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'vBaagTiRJ8daGTVX' \
    '3Bb7jlz5IfHgKjI9' \
    --body '{"achievements": ["mwJSrN8jkIykR2zb", "aI6PD7fEscShnGUG", "UtV9GJ279GDbLNwj"], "attributes": {"m3FK0nnX2poMfZ1h": "DHtbh4HtMlFgvh2D", "p2SoiIPp1yvfAHS0": "VgLu11A3HTovFi4t", "PAGfleyCA6jEtcqs": "nzoVILjkwW61duF8"}, "avatarUrl": "7aUyrdt4XSpWBAet", "inventories": ["sanzqP8oxfrtbECD", "1CYPwaiBAxfYL8Av", "t70ZUT2fSk3LL0ca"], "label": "lqxEewuGS469k2hG", "profileName": "0WKt4sUmanYxM0UH", "statistics": ["ZVNYzGMNIpWoSLkU", "rfuf4U3WeYeA9t2E", "NKKWrFtHIi1CMgKA"], "tags": ["OG5iDcCR5PbCvDLi", "l8wj9cKM3Ar6MF35", "hCER4nGmWGgTJfHl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'Jl4tHGa4XfZcd9CV' \
    'nGqMX9FieeEssWEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'l07bhwntCVqiYOJf' \
    '5KwMZQjzvjSozv6C' \
    'TRDl0zp9CzHFwink' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'BNi4gvqgl6TZ9TGV' \
    'Pmv34h6T7Esufmfx' \
    'KYB4LM6H6QXmpZ9X' \
    --body '{"name": "3fUSR1l9xLPBsmAU", "value": "rD9L1IiD6MlcEPhM"}' \
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
    'DFzjHZ3sIhzOx2CX' \
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
    --body '{"cycleType": "WEEKLY", "description": "gMep90AyyUJyAK5P", "end": "1993-02-04T00:00:00Z", "id": "MRMwdvl0hv6g62Gx", "name": "BW2tQF5tkTjgJaMY", "resetDate": 44, "resetDay": 49, "resetMonth": 80, "resetTime": "k9hVKlG56HlzGr7X", "seasonPeriod": 19, "start": "1971-01-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["miteR5eQAe1rzmmg", "ol01DK97D2xnik42", "rztee7QLTGAak7Ka"]}' \
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
    'qBPRmd6mO4oI8KDq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'ebm83raNBJ5y7axE' \
    --body '{"cycleType": "DAILY", "description": "K68eqGJtWf1Ybgg8", "end": "1979-01-30T00:00:00Z", "name": "zaf7CaOSlHXrUSA6", "resetDate": 37, "resetDay": 80, "resetMonth": 77, "resetTime": "JzA5mtqISQ83TTbt", "seasonPeriod": 9, "start": "1996-02-14T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    '8v3xgC1Ge9PdbTTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'J2Gp1r0sVZ6LJAOd' \
    --body '{"statCodes": ["dIL2l3hPjNDKv2LW", "fXqjr8fS79En3wYo", "wBdkaZ3y6i38XQjL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'DRqkpiFK5BtiQ272' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'Uo9UBJWodpdwsX1j' \
    'orcyR0x3YiHF8ITG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.662242929034752, "statCode": "RQBCgIs1Q2lzxl0y", "userId": "F5m77TTh4gUoj8u2"}, {"inc": 0.7747251672891072, "statCode": "RcLiEtzVlnkflfn7", "userId": "pHY48F1dl1q92m3i"}, {"inc": 0.697519719631389, "statCode": "lfnBAk0CwiAsR65y", "userId": "Q9ssuHdGmxncCEr0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.5808623111252115, "statCode": "cgeqzGbruNB72HHM", "userId": "kjzyBB4UFKiaoV0V"}, {"inc": 0.6464866766728287, "statCode": "em2yqPsMFxKybPkb", "userId": "uS6x9cLJ1APnNlsa"}, {"inc": 0.8791738426429875, "statCode": "bRBr27fVMWuAfDqL", "userId": "MR919IZPKOKiAVQX"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'XOmqFHLbyXmgCNiX' \
    '["H8uenbC5CphgMwee", "xsIAP5vHLjBJ9iqM", "cBL4BzhDUjhKPwbw"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "cvQU5kG8bXGFmPAn", "userId": "OkDiJq4xQye7HqnV"}, {"statCode": "K3YVeOWs9mfVQh3j", "userId": "LBtn9pxpE7BYtzB0"}, {"statCode": "B4CxyQrUpIFvORxT", "userId": "i79DpSjb39ukcR6c"}]' \
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
    --body '{"cycleIds": ["NXSGCCvNowNmdpcJ", "2E2r3vk3IfAKEbqc", "gF88ySNq4Mj7mulP"], "defaultValue": 0.9141570487002105, "description": "tQ6R1OqKVOTniBgL", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": true, "maximum": 0.06305956837122895, "minimum": 0.10106693178201542, "name": "Q0JWZjNRSzOTqcVN", "setAsGlobal": true, "setBy": "SERVER", "statCode": "ahvxw9gwwhTnjN6w", "tags": ["hhZhwAiLsZs4pmLD", "IQch4IjDq9aT3qZy", "KZGW4y3f0R9s2knd"]}' \
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
    'I0rYsWucAkXsVJbX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'i7eRZa7WwIc895Im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'qK6tVsaUq3stUh5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '5Z9GiBiSAylX5cS0' \
    --body '{"cycleIds": ["IeHpWCugmfOL0QQp", "OXyDYz9vMUOPG0iH", "xsuD8PGqku59eFJr"], "defaultValue": 0.48378023532319137, "description": "T8QbF7gHPTPQbvLt", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "isPublic": false, "name": "KzLyH1y72L13Orny", "tags": ["x34luLdvtsTKXMji", "Nyk8ncu2Z3eDHH9W", "w6gYPvfn2Qt9iyq3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    'aVO4iKhDcJ7TCcNI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'sQ3PuppUxDSK8aOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'GMudcxlCV4cNbJGQ' \
    '57lPdinpjS2DRfGt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '9GlyZVQ4X67tPZST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'pPq3xjrElvvDgw0a' \
    --body '[{"statCode": "g7kSWE0Hiqm5IuLr"}, {"statCode": "yiEXqvUWDjU1G0EV"}, {"statCode": "jVZw1ToLuPakQN1M"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'pOs1RVFrcg2CXxep' \
    --body '[{"inc": 0.3721966208812407, "statCode": "78fvsyhE2BKtyTDS"}, {"inc": 0.5619184350023675, "statCode": "M7mkmvZ7Cmsh4US8"}, {"inc": 0.2363127511930445, "statCode": "4jfMANPpmZDdMiCx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'muCCVuFjS1GC1d2b' \
    --body '[{"inc": 0.9920184702021297, "statCode": "2B4vEgj3HOmhcWm4"}, {"inc": 0.8735174125494236, "statCode": "8XejRF94NIY9nMrB"}, {"inc": 0.8319206604402329, "statCode": "o0lNUBDShHD32vvL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    '28FPwTiXfLcxDC9Y' \
    --body '[{"statCode": "nd02mECIQhfIhHtA"}, {"statCode": "DUQ9zimQTQT95pFJ"}, {"statCode": "UAJsyAfeKOufV4f1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    '5NohXu6opxQGRt6P' \
    'qlkL0diRhLC10ih2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'EQfY3XCv4hdOa6Fd' \
    'ZhNMd1onFjGRbxtA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'BPXDmgNEJBhgGq5G' \
    'IDhNC66szbCCf73I' \
    --body '{"inc": 0.5055406601116719}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'bRkPSSITz4TjCrJH' \
    'XGXku2YVuOzhxHmn' \
    --body '{"additionalData": {"rrV9ZGWrZ05sxe6A": {}, "6RpmKDebNkylbynk": {}, "gT9vayLLiizac7Ge": {}}}' \
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
    '6zKJdlt7rjF5RaJw' \
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
    --body '{"cycleIds": ["F8qBWCQ9dLWYyS8z", "dhMeBXH8x6HdVfZV", "vkWVco2LTo5ijlvD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'DAiU6iJOF7JKZFNk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    '2NKy59X8iOg2sVBi' \
    'CoeC5weXJl7PeiMH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.983039064424308, "statCode": "z8dVej8N2yv6VTnO", "userId": "K7xAvM7tuL81lsR7"}, {"inc": 0.38136981997825437, "statCode": "xSVp3Gd2TK0HzYvi", "userId": "TgYmx82JVBRLPZ6I"}, {"inc": 0.4150581131014919, "statCode": "8tne5dbguBF6Gsvv", "userId": "dl8jHz9x7XZIjU4I"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.5959723313528152, "statCode": "9lOLaZaMphKCqTq3", "userId": "EVheJjoEEXBLIxGn"}, {"inc": 0.636175272811216, "statCode": "uhoJM3WWPvvCiCf3", "userId": "3ViEdqQpoGkUWNiz"}, {"inc": 0.166430902060422, "statCode": "5UcPAGv6c1ESC6hZ", "userId": "YTYZbzf5aANNNs5k"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "gSZZNUHbIT9szApm", "userId": "WJO5vzzXZj08a6K1"}, {"statCode": "XRVfriSpPFnZBJZk", "userId": "DnEiyfa2LrnpZxNn"}, {"statCode": "LRH36bqS2oFY76PU", "userId": "1AziBOHEAj1cT3u6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["IRWf6T3by2kYSCdn", "FKLc0xcTjqjdcEfU", "Zc2FbrTFznTgDIwZ"], "defaultValue": 0.9444887639948472, "description": "1OJYMnW49rWynp1c", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": false, "maximum": 0.9886160556517913, "minimum": 0.8410820816056842, "name": "C6o86cSRL9cgbUmu", "setAsGlobal": false, "setBy": "SERVER", "statCode": "he98oaFKlQicdrxV", "tags": ["hrtwSd9QWVMYz7TU", "1TsxsChSclSkb5aB", "i9K9zyv6gFZXI5nX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'J7hLi6HweweRmyo9' \
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
    '1dIn7QqXBDXJcrqK' \
    'mXDwoEV6tCdrxw1K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'OPhuvHuYrGWDK41u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'MOC0mRvSoaGk4ktF' \
    --body '[{"statCode": "5wnJDg9Q3WXiydCO"}, {"statCode": "InVolsr6CHmj763v"}, {"statCode": "LwtYEJTSiXjcY5ZP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'kv90lyKSTWLxSFZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'LpupEi5DbkVs3qFT' \
    --body '[{"inc": 0.13498540727049946, "statCode": "1t530Wj1WfzIvc3V"}, {"inc": 0.18804156710614306, "statCode": "SXrA3XUGud4tVjmx"}, {"inc": 0.4980141055079137, "statCode": "f4XvVhFJTxFHITBg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '9x4unq3eOMHIKeTy' \
    --body '[{"inc": 0.4477922924191323, "statCode": "G5dCUoExnKfV3869"}, {"inc": 0.5623232212730449, "statCode": "N4V1OdhH4GVU7Exl"}, {"inc": 0.17708470903582219, "statCode": "mc4xYiLjLyZrXr9B"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'htzn8jAdTn6xBhrc' \
    --body '[{"statCode": "iryLm67rkadH5Y41"}, {"statCode": "SLjCPrFa05Xl5TPC"}, {"statCode": "5GODS44bmm7jPdKL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'ddfdsUqjXVzW1Qqx' \
    'nWR5sheLgsAF4ctv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    '5guycGiq9j2EyIkn' \
    'fLDpgHnMOn8nc3gU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'Z8ZFyyEr0KBXuJBq' \
    'K4QtEydPWLPBYiR3' \
    --body '{"inc": 0.7548283450339557}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'bJc1ZYapx7C477et' \
    'qgfOJDUT0uKAPrAR' \
    --body '{"inc": 0.4028878865347686}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'a2IMlNiXpF4qvsUU' \
    'pHqi33TcBGkc0HjU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"cnkpU9oVzl2kBuLF": {}, "XIeCEKZUTz3GvCAZ": {}, "5j24acYHbrryHB6G": {}}, "additionalKey": "O9zP3FaepA3b3YJ9", "statCode": "nJM6vtT27xv85K5M", "updateStrategy": "MIN", "userId": "KmZhCZxxPPdPwOtE", "value": 0.3337579641261724}, {"additionalData": {"WBSO2jJepUnEEgja": {}, "2mIE2kLTnJwc5Xmk": {}, "CuL5W4tKt6G3j9LY": {}}, "additionalKey": "dG7xVPqBqe9RDQMB", "statCode": "SYAFLqp8PF5hCcou", "updateStrategy": "MAX", "userId": "10DjjwMv4vrIPRtv", "value": 0.11670348292958599}, {"additionalData": {"QIyLarjaLOKnX51y": {}, "AB8Pa3uNGKhaLlJz": {}, "JMSnJIIgsAVmaGYx": {}}, "additionalKey": "UX1B9oVuzG2CnYX2", "statCode": "YBF2g7TVtzYEHUod", "updateStrategy": "INCREMENT", "userId": "pnnVfxPwc259HF9e", "value": 0.15636853775300763}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'HaILQruAuYyJLYGq' \
    '["Mv824ouSgkpK70uJ", "mUL0uzElixc023dI", "vDiA0tQWlHwBcTtz"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'tx3VAl6tXFbnATCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'UOIzVcy9k3ie64Vn' \
    --body '[{"additionalData": {"wa0ClGQJultJe32A": {}, "iwKadEoIVmprwPsa": {}, "9YD92CX0rITajpwH": {}}, "statCode": "ITGeHTnqRbzBB9ZF", "updateStrategy": "INCREMENT", "value": 0.7289137287444841}, {"additionalData": {"B54mKA3V9DKlCeZ7": {}, "mLYsHooOIaxIpb1c": {}, "IOJPS3lJ80YJ41U4": {}}, "statCode": "ooQ980ywmg1pWpWi", "updateStrategy": "MIN", "value": 0.30203542756600144}, {"additionalData": {"YgL7TfyIlAwjTZdR": {}, "ZJJzWZwvTX2bamSC": {}, "vX1nwvSWdDwD7WJH": {}}, "statCode": "zgNZUKsI5y0mR3zM", "updateStrategy": "OVERRIDE", "value": 0.8572583998306711}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    '2ae6r3hHwya4NpdO' \
    --body '{"statCodes": ["41PAiNjULsx4SnKN", "KNUl0qJqzoKMRMG5", "zg3hr6ucHf7dbh2i"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'XLMUaDSwwQlnNRZJ' \
    --body '[{"additionalData": {"HBSB4fZWEFIZs28F": {}, "f1kZp1Zktx3N7WNM": {}, "YIfcDKbLu8pnK34o": {}}, "statCode": "A1keYXJvtggDdXjb"}, {"additionalData": {"djMBahFZZGMTcqnW": {}, "rIprOv0BJ9Sgl7H1": {}, "sdH2RIJz1eI7Q5pu": {}}, "statCode": "9PutLf6IrvZoBGQb"}, {"additionalData": {"O4S3rURGWUzPAE6S": {}, "dV4D5jftRl9rZmtQ": {}, "Uvro8TWwXWsz9TVm": {}}, "statCode": "dMKEohKzuMYDUTLB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'eCidXjuGgx8ncXej' \
    'meZtzT0qj0ltsqfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'ZrthVvyX0OCKDJE3' \
    'RMUddwSSgxCu8zru' \
    --body '{"additionalData": {"1DhGAYOHR5BWa9Vz": {}, "IkaQEl1iUProNB6h": {}, "I6IpGcToWgFvdRhG": {}}, "updateStrategy": "MIN", "value": 0.3657628004998933}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"V3zDuqVlVTypcYPK": {}, "8IxrSZuxWl0Je4fJ": {}, "IyFAm3DQht4JwnPS": {}}, "additionalKey": "2urJqerobWMZGVL5", "statCode": "KLTxahWlS6XdBaKS", "updateStrategy": "INCREMENT", "userId": "CgOOPXM6XTUh2dJ9", "value": 0.8417953667075279}, {"additionalData": {"yqHDNacl4F9G6Dl5": {}, "TFwBY6HKXAblkT8V": {}, "GgSH8MGZGwiVj7eD": {}}, "additionalKey": "Taka9ABfX1IByPEO", "statCode": "uPhGspRi3bhPQvBB", "updateStrategy": "MIN", "userId": "y7EEvHyLmcvrZZOd", "value": 0.3589506882190946}, {"additionalData": {"e1x8RjU6Bi8JXE52": {}, "sUBBq2SimQQoLbe5": {}, "YOJvxGRxUzrTwagH": {}}, "additionalKey": "7BMT1IZKTdNFVBQ1", "statCode": "crBXAupATO8uXsqV", "updateStrategy": "MAX", "userId": "d6eqqsBVyONV0JRt", "value": 0.2334193260115286}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'zI0jpliCFQ6WgJpG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'Pigdc5VyC4qvWjVa' \
    --body '[{"additionalData": {"c1cQvSxgTNIUzxDg": {}, "BlIbuzm7DzJ20NFR": {}, "JIhFXR2dYprPmbpu": {}}, "statCode": "ptECGd5cdXC2Sesc", "updateStrategy": "MIN", "value": 0.3995238663517001}, {"additionalData": {"68whNBYl9iCqfW6r": {}, "qGOQny4ij4ysYPon": {}, "b59gQffkNOmubxEJ": {}}, "statCode": "r2qEAuJbpZSrcbc4", "updateStrategy": "MAX", "value": 0.09106626637536486}, {"additionalData": {"KaY5c1tP5TDuI5f6": {}, "m4KC07CnsZe32hqE": {}, "cB1ExYMBb3ckvoaJ": {}}, "statCode": "YdMqGegcg3eRvBZX", "updateStrategy": "INCREMENT", "value": 0.036809487139668584}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'jIXmFWRJnj8xN7HD' \
    'PTUEDPN1Kb4UTPWD' \
    --body '{"additionalData": {"XTSb55g8LSTs7Nf9": {}, "5lGlPrf6obIdnI6A": {}, "g7eUYcYJ4QzXCmqr": {}}, "updateStrategy": "OVERRIDE", "value": 0.11040631186035121}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
