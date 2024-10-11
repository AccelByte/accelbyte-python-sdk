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
social-bulk-get-stat-cycle --body '{"cycleIds": ["YAHdNzDmeIP6rOvD", "DG8aMVGLiBNrDjqo", "xcwgGLXpUL4pp2nc"]}' --login_with_auth "Bearer foo"
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
social-create-stat --body '{"cycleIds": ["ytm5UDrT6QXCs5SP", "RFOn0jJLHC9LxhvN", "XTwGBCtohLtl9Zuh"], "defaultValue": 0.4380768464389736, "description": "bRPZTF6oQAXVG7tn", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 0.09954214557581376, "minimum": 0.8062948956626522, "name": "jvyGJPN4eXbJE5Vs", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "cnEevcAx2K2zkRen", "tags": ["XBHUTrDzZSKscfOc", "tjX7ZshZyZl5x4bR", "mPZnGBt4P7WnbdSJ"], "visibility": "SHOWALL"}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'u3dpCROYqUiGKXVF' --login_with_auth "Bearer foo"
social-get-stat 'Cmpo6sPwVOEDSJsE' --login_with_auth "Bearer foo"
social-delete-stat 'K5QpNhlI2iS5EpGh' --login_with_auth "Bearer foo"
social-update-stat 'hvXYck0upMzUYnb7' --body '{"cycleIds": ["X7W40V6Do5sYadCC", "FrHHC3DpZxkrQDXu", "6tFkEORV3bu1bNCt"], "defaultValue": 0.6332399436914427, "description": "FviMarv8mnfHK8CC", "globalAggregationMethod": "MAX", "ignoreAdditionalDataOnValueRejected": true, "isPublic": true, "name": "2lPnsbD3SGEdlwuU", "tags": ["ccE536ugBp3HBvep", "nDCjgyJlXe36mgWj", "LfFmteue9nzJ6fH2"], "visibility": "SERVERONLY"}' --login_with_auth "Bearer foo"
social-get-stat-items 'T805tVg8JqU0jZpj' --login_with_auth "Bearer foo"
social-delete-tied-stat 'vsugAOS7u8RiWyer' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'CSa8SRgwsAj1ik1j' 'glaDXTvKCWwNTAhd' --login_with_auth "Bearer foo"
social-get-user-stat-items '2wrS0uPdjhdinpng' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '5BLy8wbhMssAHjap' --body '[{"statCode": "IkY9Rf4wP57dBZNR"}, {"statCode": "88YbCtmKy8M9zVrj"}, {"statCode": "fGXZnqAQUoY1GjlI"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'Ik0iKoTTS1j02o7J' --body '[{"inc": 0.15391541783427853, "statCode": "TXAQN0qdskdQV0Tq"}, {"inc": 0.562693378716579, "statCode": "8EFnmDbxIxi4YKlO"}, {"inc": 0.6305787186342298, "statCode": "k2Q5Y4Jvaizwiila"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'tuUjjt9lIMGql5El' --body '[{"inc": 0.48790880319494645, "statCode": "a9EIIlGcHB3CfR3n"}, {"inc": 0.03817146295410734, "statCode": "Dlwi3v3MFFJ1KesK"}, {"inc": 0.23652508970098218, "statCode": "ELCpobBEG8X645xp"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'dXpai0rYaT5hOPja' --body '[{"statCode": "f3H0tYighU0VUfcY"}, {"statCode": "HJbBfAKSiPW3VgsZ"}, {"statCode": "XiR1DJ7HVWqMkNSa"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'wQUWDFJvJBWic7Uk' 'BeIXuqDuAXI66bQ7' --login_with_auth "Bearer foo"
social-delete-user-stat-items '1w0deoV9Lx5RDA1l' '2XcrciYNEzvSZIPk' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'hSgORcz5S5BvmgBL' 'xh4ijFnE3Tam69qS' --body '{"inc": 0.8240580588193687}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value '7PC6f6QkmZXElW9Y' 'fRSse6AAz3S4czz0' --body '{"additionalData": {"QKFlAVmVLu4AOec0": {}, "z8eBeeoip68J1nsv": {}, "4W2OJhtafxMSJlHe": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'b34sZKHcl5LLLOex' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-bulk-get-stat-cycle-1 --body '{"cycleIds": ["L4fZvWtND2tcBFpX", "8lNtFEJ7tnkY6Mca", "5afj12K2IzrBvvWm"]}' --login_with_auth "Bearer foo"
social-get-stat-cycle-1 '4udE0OXudXgNne8k' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'JATwlc6esUp6Sw1I' '98jeZQ7hfxnhLd3K' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.2199459521358339, "statCode": "aknoed9DHhLOqQGh", "userId": "CUr6iTrjyEgarAdN"}, {"inc": 0.5719843993592431, "statCode": "OIG36I6tRbRcrEve", "userId": "MdAdiPKDUVSC00PY"}, {"inc": 0.07552958455363312, "statCode": "DcagginxnFIna3yd", "userId": "dcbsPheTH26IUJNv"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.8212570731488463, "statCode": "uGRUvpZaHCuESOiI", "userId": "ZsMfB4ZH3mtgWgU4"}, {"inc": 0.2529825178585109, "statCode": "CAKxeE70CaunQNxo", "userId": "t371W9G4AvQkqsGn"}, {"inc": 0.19533034706218666, "statCode": "yo5JJTUVmb8GEXFT", "userId": "lEMEsFzYqwgK1Np5"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "nodqpLm7FhJBNXzA", "userId": "FdO0Khqf6kiTdSGv"}, {"statCode": "2LFjAKY7CbgsWqFW", "userId": "ZX7kPBom8F9GLLTG"}, {"statCode": "8phc3n4iLoIllKlp", "userId": "O2pqiXJF3WGRaoQo"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["UlcIW32iK7MGt1ix", "mSJC4DdrKF7SUQPL", "G59e0k5ZtX6wK7Pp"], "defaultValue": 0.809967671216004, "description": "5rA1WoVeJIePF8Zr", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.9551615666895776, "minimum": 0.19274728983664446, "name": "GdMiHKxbWCYzo8yO", "setAsGlobal": true, "setBy": "SERVER", "statCode": "K9tmmOnYnOpas6gh", "tags": ["P1y4Zi7s7QBlk44Z", "44B1GZgKg4uKxaCg", "cGLuC3brWdTYCfHk"], "visibility": "SHOWALL"}' --login_with_auth "Bearer foo"
social-public-list-my-stat-cycle-items 'jvapseE9LN9bvhOr' --login_with_auth "Bearer foo"
social-public-list-my-stat-items --login_with_auth "Bearer foo"
social-public-list-all-my-stat-items --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'HflIOd6X3viLvtEk' '4mTIpUA9gxo8SV38' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'nEhoXmM2W7l6jHMA' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '2rG3nakopAywelu0' --body '[{"statCode": "1nryEJ0NqoTow0qi"}, {"statCode": "OiC4j0iktm0ZPLkL"}, {"statCode": "Osp0LZ5njN86Hl8k"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'UXzt6bSc6bWvgpVy' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'W9dD1kOmvrAejcq2' --body '[{"inc": 0.6098222716678012, "statCode": "gkQuaS7RBx3vim02"}, {"inc": 0.15316129583376026, "statCode": "BOxrZDyvpcLYOWA8"}, {"inc": 0.6448497841854849, "statCode": "jxOnaEok4nOOCzfs"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'flhjbngJOUn18G5M' --body '[{"inc": 0.182244802825397, "statCode": "fDTk8aG40NlncceI"}, {"inc": 0.8226036343610481, "statCode": "SwgAIkgzh4pTU0Am"}, {"inc": 0.9193346876368718, "statCode": "DZhl0bQxFJ3sWCqQ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'pQ2FbKPFMycMSQ4q' --body '[{"statCode": "fAacR0LgB5BUXvjc"}, {"statCode": "u2s6w3VifnKqmTSo"}, {"statCode": "GH1XEfY6QAYn6WQ5"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'UBEU1QAOHfZiGhxO' 'dcuDXSxSc3aZPV87' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'pna08gxefTYKhuxa' 'Ec7M4P7UckSC6ePe' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'N8i4GrFES9z7xueH' 'pATHccee9GXhKcjm' --body '{"inc": 0.7220259155415543}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'EwdrkEnnqKzFsLfY' 'alUlfwEQKjU7eHGe' --body '{"inc": 0.01858556067924977}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'SVu0LQ40kepEaC4d' 'fiOMZfEhHr39pysF' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"O3Zvc1BZG99Lyvfv": {}, "HEsJKQQewVLMUoAn": {}, "aRcYp7FUjfIGaffo": {}}, "additionalKey": "flEIByYqeKN0meGe", "statCode": "lYF5wWaDhukU4khG", "updateStrategy": "MIN", "userId": "dfo07UctPErqxyMy", "value": 0.6451642226733794}, {"additionalData": {"K06MqQBErxgjVByc": {}, "vU4PbmRDcrg0DjQj": {}, "BECXvea7H1m2lJFR": {}}, "additionalKey": "Z3ZprZ60zMjhTHeh", "statCode": "94TSenE5hCFkIf5w", "updateStrategy": "INCREMENT", "userId": "N4ZONJREdUQ3z9F1", "value": 0.44177273276460527}, {"additionalData": {"xNNgnke4akncw7wu": {}, "9TmXfJWBPrx9Ns8e": {}, "LzYEvwSWTaLQjctv": {}}, "additionalKey": "rK2jhsYpKPlXn77A", "statCode": "tYoFzLAATPY8P8P3", "updateStrategy": "INCREMENT", "userId": "xBGtEJIYppuUSsKo", "value": 0.5422675638588322}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'w2hyd12uSE7BEv3a' '["evq6iohU1cg4W1IS", "3Uv1BpWoJBaqdg2F", "HcunsS1lnaO2m9vq"]' --login_with_auth "Bearer foo"
social-admin-list-users-stat-items 'jhbeK2qN8g6x2PyY' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'Do5R3hLiD5sf5y1J' --body '[{"additionalData": {"sxJNGmyt0SQDUDoW": {}, "BZVGLlkUetzCAWc9": {}, "x1aMjgGim51T107X": {}}, "statCode": "IZRZ7tZdIs0xf4cz", "updateStrategy": "INCREMENT", "value": 0.5012673088037805}, {"additionalData": {"UjOn5mM7k8nbLzvt": {}, "CIW5ynMKquUicAeI": {}, "VXtoWAXhMlW4tLqX": {}}, "statCode": "7OICf5oD1e6oI9Fm", "updateStrategy": "INCREMENT", "value": 0.897150525333361}, {"additionalData": {"wSkHKufBdS3ZOokZ": {}, "B4cXnAXyuGz6LlxH": {}, "v8SwyagYvDJ3w3UN": {}}, "statCode": "gIGj2jZtEYT8sIPS", "updateStrategy": "OVERRIDE", "value": 0.8645468493594508}]' --login_with_auth "Bearer foo"
social-bulk-get-or-default-by-user-id 'fUfKmihDbmu8ePWl' --body '{"statCodes": ["510kHr4isTKWjmv6", "QMVDXEHeiGTnwyEw", "6hIWDZrpP7rz3ISW"]}' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values '7nuHCXWfwnwGioVw' --body '[{"additionalData": {"VzmmBVVFfpqx1AeL": {}, "tzcPJ3jtDYBo4FUT": {}, "H7CGfKSyxgRR1DiC": {}}, "statCode": "qSMzpqIFGLkDs7AC"}, {"additionalData": {"C1RgBfoNrHlFi2qJ": {}, "LgmBLE35YhyiDV90": {}, "SeI5yppBHoytVznC": {}}, "statCode": "gNyx9fbT63ShEh8P"}, {"additionalData": {"bGikLjgjcj34uulU": {}, "6FYBZsWFbr3RSP0W": {}, "9nBhvhf8Q0DtJMcY": {}}, "statCode": "QdN66bswAgt65X4N"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 '1LQZmB61JMdtwCVU' 'rYQue84dwmbwFEnA' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'ZaWsQJtRYoagRJK5' 'PX9UcOvhPyE11TRT' --body '{"additionalData": {"2SKseoe8VLie0LBa": {}, "36KNzjf005CXNGeh": {}, "Q2aTjTDfKFDXC7eG": {}}, "updateStrategy": "MIN", "value": 0.8183883688592831}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"hJDWh9YWqc0qgV6d": {}, "9yOfIMLds2DbPcao": {}, "MdtRLTmSvTkQQgB7": {}}, "additionalKey": "exYvmHMxr5hPCJJz", "statCode": "tJBg0tTJg46IewOX", "updateStrategy": "OVERRIDE", "userId": "iQFC2gXoda0kg16y", "value": 0.7561523452487282}, {"additionalData": {"SpSOAjHJWwfCjYwW": {}, "kLob9gKLqs2nEZhp": {}, "ByfHZinxNfgPAwkM": {}}, "additionalKey": "BsznlBUqnLT4AbGp", "statCode": "tKaWNvPbpg7yrRvX", "updateStrategy": "INCREMENT", "userId": "mkW2miH3xRHAKy4Q", "value": 0.3848836998379821}, {"additionalData": {"ZkaXZ7vmiEd0JPxV": {}, "yQpshaDwNqTbbFMX": {}, "AMfVXe0GZeMgsRsm": {}}, "additionalKey": "H1EQrYmkPKTPOlhT", "statCode": "tSiZNCxuogFteTHJ", "updateStrategy": "INCREMENT", "userId": "Iw157g00jr9b8MuY", "value": 0.20138952851301195}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'meKTmBNvGYxEQdf3' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'ewoGGoY7xmFNAmjD' --body '[{"additionalData": {"DCvs78mcMdiS76YA": {}, "pGJ9ufwLYkqIgLuZ": {}, "S6hsQryiEtOAbpeU": {}}, "statCode": "Nf26UqkCfgCUYBn2", "updateStrategy": "OVERRIDE", "value": 0.14713019134454497}, {"additionalData": {"O4lj8m3XEwP2b4gd": {}, "3xOeii8Jnmssep2x": {}, "D2NY0kABeGs9yxah": {}}, "statCode": "ld1pO0Gyf5PO3COy", "updateStrategy": "MIN", "value": 0.38060887183275216}, {"additionalData": {"DQpKqxLGeMvr9Tsv": {}, "cMQ7dBsaIecRxIsZ": {}, "vD6rmzVr5XT1Nxw0": {}}, "statCode": "v1dMQ9Rrbk6C2cVW", "updateStrategy": "INCREMENT", "value": 0.8304778854412305}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'RW491e94mQjVOOBn' 'IWhunElqZUodp3Ih' --body '{"additionalData": {"tCSHy1ei1fIrPvfH": {}, "nRN06EjRwEQlNapJ": {}, "Rfk4f9Zcw1pEHAyN": {}}, "updateStrategy": "OVERRIDE", "value": 0.031639054772656494}' --login_with_auth "Bearer foo"
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
    'ct8puMybYGxD9IPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'msLmu3kaPj0O4zd8' \
    'Tb7cUNGPTBxiFFCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
eval_tap 0 10 'GetUserNamespaceSlots # SKIP deprecated' test.out

#- 11 GetSlotData
eval_tap 0 11 'GetSlotData # SKIP deprecated' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["n7djjs69FTFVGUVh", "vKhJCmeisql14mUH", "VbMPimNhcZsU3VAd"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'MDcb4qlkiFAamqvZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'I2KwjqPBiWXade41' \
    --body '{"achievements": ["s3rH34mB2yPlRpWj", "mHZAAvKTH8MuqIg0", "CzkguwuJCW7EEFB6"], "attributes": {"7AODbi9BzupBsFpY": "c77GtRUcCFeY5g4X", "gBsbfzqxBPNe8ae1": "Il4aAtEbu4IjGdqt", "hRxTjQ7gkZEY8rG0": "q0Q2Qd2JzRbkF2I0"}, "avatarUrl": "3dIjvBbA6bfbYaJC", "inventories": ["Jjfk2TUvn95FhO7V", "W3mbDVMDu87t0ldW", "f7iSGIiKFtWtn4Yr"], "label": "2svKM6pqLGZ0TBuj", "profileName": "ELAUK6mQ5iZgbwwm", "statistics": ["5iGzXtcknrgidKup", "vXO6aj4hCmTC34jx", "W4pIDwdqXpmRmut9"], "tags": ["H9XyWI8bp8fQxRuX", "91uYmtrHJbEGTUj7", "YjERL1rEQG02zccA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    '8wvLsWUNd6lPKvqD' \
    'ejvqklTSvDwuOrP9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'lzpiX0VuFpZum7iz' \
    'xe7NPzjOa8E7wY76' \
    --body '{"achievements": ["PxLv9HBEUe89AwEw", "1HO4FnKtx4XLKAml", "Dr19uJ3nq6VerzVC"], "attributes": {"cI8y3Cz0YqCKUh5R": "D9vNAp4jinFpnQ5x", "F9wwbvMZyeDeRnVf": "PUa6xVVBcq3wZpFI", "YeAg79HcLJXJ7mpV": "I6eTYAjdPlCiQQC3"}, "avatarUrl": "5cj4KyOVgvnWbfRJ", "inventories": ["tsB7cUQZ2QUAxJrI", "NPXppPNO3AfmXcgw", "C3IN6tvKgLB9QmJI"], "label": "Oq9dP5szG71utjsQ", "profileName": "4CrRb9gUCeVz7fWb", "statistics": ["ZIdhevfZvyV7Acod", "cZwKjYDdmJOlzwm9", "Su4FnS98QqftSjq7"], "tags": ["sn8yreciPLfkVyyJ", "sbGpO6JgehDJxEN7", "JlZc8LMq1o2jZWu4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'yA3r0u4q1bTHXIjf' \
    'JKyFlM0u1uuoVdn9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'yVoSlKNchPHNL4X3' \
    'LLaGPGdqLE8Sohhh' \
    'uiTnJarYYkHBDdSz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'BXdxapwhd5IQYBQu' \
    'xLvPuWYvE3fsNy9Z' \
    '9OhxXvCp9y7fLD2q' \
    --body '{"name": "fCXnlUnqxT1WsRNM", "value": "ZcA92hzC7MNa8vVe"}' \
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
    '4MHX6AgMep90AyyU' \
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
    --body '{"cycleType": "WEEKLY", "description": "M9n8D2eLMe3lt9qf", "end": "1983-02-20T00:00:00Z", "id": "UDcgVE7L9FK6e0Mr", "name": "Pc4vtxk9hVKlG56H", "resetDate": 23, "resetDay": 8, "resetMonth": 52, "resetTime": "pqtxjbrztee7QLTG", "seasonPeriod": 53, "start": "1972-01-06T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 BulkGetStatCycle
$PYTHON -m $MODULE 'social-bulk-get-stat-cycle' \
    --body '{"cycleIds": ["1MWVTHG0qHJCWEfO", "XdIszGRj46COPipH", "cIBnWyPw8mj7gyQ7"]}' \
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
    'JpZm9yEYWNGMy2pg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStatCycle' test.out

#- 34 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'SGSUOK68eqGJtWf1' \
    --body '{"cycleType": "SEASONAL", "description": "bgg8rdwY9bmrvHmO", "end": "1998-05-22T00:00:00Z", "name": "7KNqX9LM2IwEsdOG", "resetDate": 56, "resetDay": 57, "resetMonth": 93, "resetTime": "wnzDX8v3xgC1Ge9P", "seasonPeriod": 6, "start": "1973-01-10T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateStatCycle' test.out

#- 35 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'FBii2RAMEX5RMjBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteStatCycle' test.out

#- 36 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'VZGYzQqV8d9mDdUI' \
    --body '{"statCodes": ["oiIJFNxuNOmUSWw1", "8T1IxVWCxdvPL9e4", "P01vxP8xj1LyEirU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkAddStats' test.out

#- 37 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'RERnEMzpImW6sjAH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'StopStatCycle' test.out

#- 38 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'yCK5tNanGBrkzUvc' \
    'k3xTtmOFMebS4Adl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchStatItems' test.out

#- 39 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.6367341606540265, "statCode": "zwog2IhErkNhNcEC", "userId": "WwchW6zL9SkbLlrN"}, {"inc": 0.8029999522908396, "statCode": "nGanMazb8jvRWenU", "userId": "RH48aJuALEcSqcE1"}, {"inc": 0.9330625436817401, "statCode": "u6D31DjOsrs3CUYA", "userId": "TdqnQGbqiqOkNeAT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkIncUserStatItem' test.out

#- 40 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.1590430951547065, "statCode": "7eGjodd7CcJUrI6M", "userId": "AugK5kypNrp2nFe9"}, {"inc": 0.5060628654649537, "statCode": "mN86sK5LOq4ft5jG", "userId": "cMICPUYnfG6jl9U4"}, {"inc": 0.1515202528768247, "statCode": "ReteIMgzISomCsod", "userId": "JrhQW41q2OspCZbt"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'BulkIncUserStatItemValue' test.out

#- 41 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    '3Uta5I0uGcL1koyH' \
    '["jCH5olYLETRpABAm", "O2EGvJ4UMS93yOxN", "InDByhnoluO6ti0Q"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'BulkFetchOrDefaultStatItems' test.out

#- 42 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "P2ssiJ66OzOj84O6", "userId": "tgohjtC7bzjPpucd"}, {"statCode": "dXJ5zifF8y959anr", "userId": "NSleywHbHig6IKWV"}, {"statCode": "Z77KeRWdECaFGzfZ", "userId": "2hxcJ2Fnemn7M23S"}]' \
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
    --body '{"cycleIds": ["K69yg9ADCGiXaLs2", "zUo4hNBDh9ZFP1OW", "0nXOErQPS4VsRoYI"], "defaultValue": 0.38168109314703, "description": "jHkinOD975nARHCm", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": true, "isPublic": true, "maximum": 0.03928595976580873, "minimum": 0.7613408905563289, "name": "NX3ahvxw9gwwhTnj", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "wKZGW4y3f0R9s2kn", "tags": ["yI0rYsWucAkXsVJb", "DIQch4IjDq9aT3qZ", "dhhZhwAiLsZs4pmL"], "visibility": "SHOWALL"}' \
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
    'i7eRZa7WwIc895Im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'QueryStats' test.out

#- 48 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'qK6tVsaUq3stUh5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetStat' test.out

#- 49 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    '5Z9GiBiSAylX5cS0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteStat' test.out

#- 50 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'IeHpWCugmfOL0QQp' \
    --body '{"cycleIds": ["DT8QbF7gHPTPQbvL", "OXyDYz9vMUOPG0iH", "xsuD8PGqku59eFJr"], "defaultValue": 0.30987076048264783, "description": "2NRqJGIKzLyH1y72", "globalAggregationMethod": "TOTAL", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "Ornyx34luLdvtsTK", "tags": ["HH9WaVO4iKhDcJ7T", "XMjiw6gYPvfn2Qt9", "iyq3Nyk8ncu2Z3eD"], "visibility": "SHOWALL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateStat' test.out

#- 51 GetStatItems
$PYTHON -m $MODULE 'social-get-stat-items' \
    '1X9dN1MGRXBJ6mVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetStatItems' test.out

#- 52 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    '7JS9qjNLwvI8JdiY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteTiedStat' test.out

#- 53 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    '3RRiLilmOGF6dLLI' \
    'eIVIjMcdlbdRXTGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetUserStatCycleItems' test.out

#- 54 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'rdNL5gJPqTAjgqaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetUserStatItems' test.out

#- 55 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'Hf1ANTJ9Yk997XkG' \
    --body '[{"statCode": "OdC6ItxDT8p4n4XC"}, {"statCode": "FkD1AJLCwszbZxuH"}, {"statCode": "SgDOK8bjoF7bL263"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'BulkCreateUserStatItems' test.out

#- 56 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '5KbtZTGJpqgl2IzN' \
    --body '[{"inc": 0.8053134410938091, "statCode": "GTuQPIDpor7t1aJL"}, {"inc": 0.6426188194086689, "statCode": "Nz6QIVC9Mfuc8VOs"}, {"inc": 0.2165661798073405, "statCode": "mnlVljdWYmELe74p"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkIncUserStatItem1' test.out

#- 57 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    '38vumnxAnYBTxaTI' \
    --body '[{"inc": 0.40638705378608986, "statCode": "0jcgDI8Pkz96vd80"}, {"inc": 0.206387648080391, "statCode": "sqIm5bufnBqrpLeq"}, {"inc": 0.12550839691391213, "statCode": "wVhjnnjKMEmtbiWs"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkIncUserStatItemValue1' test.out

#- 58 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'AQHbMrKYi0Zxs5SW' \
    --body '[{"statCode": "CqZXHLLa31oQf7BU"}, {"statCode": "LnZDhutDM6BqguqD"}, {"statCode": "5xxGxBWtnTKUe2zn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkResetUserStatItem1' test.out

#- 59 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'sqPzPkwCBo2SwCUs' \
    'Tag4MLAo3m61P2xa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'CreateUserStatItem' test.out

#- 60 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'Nfmn8Onb1a9gMz0F' \
    '2UBRmMhAbUWmFhdY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteUserStatItems' test.out

#- 61 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'LWzMuv3zkUY0n0BA' \
    'ZkwbYkBLyO6A0Fqf' \
    --body '{"inc": 0.11976224529767965}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'IncUserStatItemValue' test.out

#- 62 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'naB3YxKNdOTacCcJ' \
    'fIfXshuLUk5Wdpxj' \
    --body '{"additionalData": {"Zx5noXPhPUTKbono": {}, "ucNmzwOZOK56sDkc": {}, "i5rZ8iMlOuksQJCi": {}}}' \
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
    'RFiZWwJ7NrTb1XTB' \
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
    --body '{"cycleIds": ["lhbvuQdW2jwKUckc", "EUmUXGM5anIloyj9", "9YQzUJ9XlYJ8BzP6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetStatCycle1' test.out

#- 67 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    '794ryY91lX8DD4MY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetStatCycle1' test.out

#- 68 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'XlrJ81lHvv9rqvEo' \
    'M8YmVjAkO3HKsEp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkFetchStatItems1' test.out

#- 69 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.5847812202434118, "statCode": "lqwW4djrexcbHdEt", "userId": "oQvpV344RctmTozC"}, {"inc": 0.14238085905503817, "statCode": "8HeV6jbalHmqBBfi", "userId": "7sSF5BoGiTCVsXsy"}, {"inc": 0.10261928684687394, "statCode": "WbjE2opXtdsJQeJ1", "userId": "too0qvxphTLEEBGT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem' test.out

#- 70 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.3128021229673763, "statCode": "ZyTjdKNKgYazujsm", "userId": "SmylT1YtxIq73aMb"}, {"inc": 0.9172344441414142, "statCode": "8jISd97KORRhxSWL", "userId": "WLNfHRD3V15QaGGL"}, {"inc": 0.9181325990910638, "statCode": "6LuxJF3sbeqWBdQu", "userId": "WfgBAKx27MSBqabU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkIncUserStatItemValue' test.out

#- 71 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "XOGkkoMUZn1YXj5z", "userId": "FZeOCOR9NvBQZSJP"}, {"statCode": "OIKrRBrYVzi9ui3l", "userId": "vozTt9TsH7A0TuU2"}, {"statCode": "aL4bPkk11sys6Gdk", "userId": "Dcos5uVJ0BJfZ0jv"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem2' test.out

#- 72 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["dd85bdYUumPKVSZC", "OU1SMfQVQa6blj9R", "A54CSqZFDsO1skRj"], "defaultValue": 0.10726768686393795, "description": "3XTc9vQe0dHJfF6K", "globalAggregationMethod": "MIN", "ignoreAdditionalDataOnValueRejected": true, "incrementOnly": false, "isPublic": false, "maximum": 0.7024762638786017, "minimum": 0.457276553050719, "name": "a9JktyBdxkZKrEWF", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "9GYxjiiOQAD77ci0", "tags": ["vfWVZoRRMPi57HyK", "Kz5nyI6ulKNKoXa0", "dgx1JgjC56pda3Yh"], "visibility": "SHOWALL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateStat1' test.out

#- 73 PublicListMyStatCycleItems
$PYTHON -m $MODULE 'social-public-list-my-stat-cycle-items' \
    'yo91dIn7QqXBDXJc' \
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
    'rqKmXDwoEV6tCdrx' \
    'w1KOPhuvHuYrGWDK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'GetUserStatCycleItems1' test.out

#- 77 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    '41uMOC0mRvSoaGk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryUserStatItems' test.out

#- 78 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'ktF5wnJDg9Q3WXiy' \
    --body '[{"statCode": "dCOInVolsr6CHmj7"}, {"statCode": "63vLwtYEJTSiXjcY"}, {"statCode": "5ZPkv90lyKSTWLxS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicBulkCreateUserStatItems' test.out

#- 79 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'FZ0LpupEi5DbkVs3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryUserStatItems1' test.out

#- 80 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'qFTi1t530Wj1WfzI' \
    --body '[{"inc": 0.35146728586860065, "statCode": "c3VlSXrA3XUGud4t"}, {"inc": 0.7596586050780603, "statCode": "jmxEf4XvVhFJTxFH"}, {"inc": 0.5520948030318616, "statCode": "TBg9x4unq3eOMHIK"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicBulkIncUserStatItem1' test.out

#- 81 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'eTyBG5dCUoExnKfV' \
    --body '[{"inc": 0.8995547031616834, "statCode": "869IN4V1OdhH4GVU"}, {"inc": 0.9669268912115794, "statCode": "Exlkmc4xYiLjLyZr"}, {"inc": 0.7903539041440112, "statCode": "r9Bhtzn8jAdTn6xB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkIncUserStatItemValue2' test.out

#- 82 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'hrciryLm67rkadH5' \
    --body '[{"statCode": "Y41SLjCPrFa05Xl5"}, {"statCode": "TPC5GODS44bmm7jP"}, {"statCode": "dKLddfdsUqjXVzW1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItem3' test.out

#- 83 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'QqxnWR5sheLgsAF4' \
    'ctv5guycGiq9j2Ey' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicCreateUserStatItem' test.out

#- 84 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'IknfLDpgHnMOn8nc' \
    '3gUZ8ZFyyEr0KBXu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems1' test.out

#- 85 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'JBqK4QtEydPWLPBY' \
    'iR3UbJc1ZYapx7C4' \
    --body '{"inc": 0.9603636104769118}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicIncUserStatItem' test.out

#- 86 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '7etqgfOJDUT0uKAP' \
    'rARya2IMlNiXpF4q' \
    --body '{"inc": 0.34141276793288733}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicIncUserStatItemValue' test.out

#- 87 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'sUUpHqi33TcBGkc0' \
    'HjUcnkpU9oVzl2kB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ResetUserStatItemValue1' test.out

#- 88 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"uLFXIeCEKZUTz3Gv": {}, "CAZ5j24acYHbrryH": {}, "B6GO9zP3FaepA3b3": {}}, "additionalKey": "YJ9nJM6vtT27xv85", "statCode": "K5MU2qmbeqaVemIN", "updateStrategy": "INCREMENT", "userId": "PwOtEuWBSO2jJepU", "value": 0.21540358786894975}, {"additionalData": {"EEgja2mIE2kLTnJw": {}, "c5XmkCuL5W4tKt6G": {}, "3j9LYdG7xVPqBqe9": {}}, "additionalKey": "RDQMBSYAFLqp8PF5", "statCode": "hCcoukWpnbz4ys7j", "updateStrategy": "MAX", "userId": "PRtvhQIyLarjaLOK", "value": 0.21088277182416681}, {"additionalData": {"X51yAB8Pa3uNGKha": {}, "LlJzJMSnJIIgsAVm": {}, "aGYxUX1B9oVuzG2C": {}}, "additionalKey": "nYX2YBF2g7TVtzYE", "statCode": "HUodh3iUfBthbepU", "updateStrategy": "OVERRIDE", "userId": "HF9ejHaILQruAuYy", "value": 0.5685467595435737}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItemV2' test.out

#- 89 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'LYGqMv824ouSgkpK' \
    '["70uJmUL0uzElixc0", "23dIvDiA0tQWlHwB", "cTtztx3VAl6tXFbn"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'BulkFetchOrDefaultStatItems1' test.out

#- 90 AdminListUsersStatItems
$PYTHON -m $MODULE 'social-admin-list-users-stat-items' \
    'ATCzUOIzVcy9k3ie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'AdminListUsersStatItems' test.out

#- 91 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '64Vnwa0ClGQJultJ' \
    --body '[{"additionalData": {"e32AiwKadEoIVmpr": {}, "wPsa9YD92CX0rITa": {}, "jpwHITGeHTnqRbzB": {}}, "statCode": "B9ZFgJbQ3Fj1umx4", "updateStrategy": "MAX", "value": 0.318046208197745}, {"additionalData": {"zkMJ7cudf4r916GP": {}, "rhn2etVIQvRkQJAt": {}, "DUH9tx60AehGz1er": {}}, "statCode": "mJYXsYgL7TfyIlAw", "updateStrategy": "MAX", "value": 0.17801197417449932}, {"additionalData": {"mU1unGKM0tgfeWy4": {}, "7bbwMI4gGmvK9gW5": {}, "96FwBNrFXt3TAuKB": {}}, "statCode": "wBcD12ae6r3hHwya", "updateStrategy": "OVERRIDE", "value": 0.6385389273172695}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'BulkUpdateUserStatItem' test.out

#- 92 BulkGetOrDefaultByUserId
$PYTHON -m $MODULE 'social-bulk-get-or-default-by-user-id' \
    'pdOzg3hr6ucHf7db' \
    --body '{"statCodes": ["h2iKNUl0qJqzoKMR", "MG541PAiNjULsx4S", "nKNXLMUaDSwwQlnN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'BulkGetOrDefaultByUserId' test.out

#- 93 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'RZJHBSB4fZWEFIZs' \
    --body '[{"additionalData": {"28Ff1kZp1Zktx3N7": {}, "WNMYIfcDKbLu8pnK": {}, "34oA1keYXJvtggDd": {}}, "statCode": "XjbdjMBahFZZGMTc"}, {"additionalData": {"qnWrIprOv0BJ9Sgl": {}, "7H1sdH2RIJz1eI7Q": {}, "5pu9PutLf6IrvZoB": {}}, "statCode": "GQbO4S3rURGWUzPA"}, {"additionalData": {"E6SdV4D5jftRl9rZ": {}, "mtQUvro8TWwXWsz9": {}, "TVmdMKEohKzuMYDU": {}}, "statCode": "TLBeCidXjuGgx8nc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'BulkResetUserStatItemValues' test.out

#- 94 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'XejmeZtzT0qj0lts' \
    'qfiZrthVvyX0OCKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteUserStatItems2' test.out

#- 95 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'JE3RMUddwSSgxCu8' \
    'zru1DhGAYOHR5BWa' \
    --body '{"additionalData": {"9VzIkaQEl1iUProN": {}, "B6hI6IpGcToWgFvd": {}, "RhG9NwV3zDuqVlVT": {}}, "updateStrategy": "OVERRIDE", "value": 0.2812303099323653}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'UpdateUserStatItemValue' test.out

#- 96 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"BCqeg67d4RWOqO4U": {}, "0bitNQLzwRoWnR0A": {}, "bkCPY70FmvviVIBb": {}}, "additionalKey": "cujF8Vk5qb8NhWWw", "statCode": "axyMchkt8l5IPSrw", "updateStrategy": "MIN", "userId": "h2dJ90yqHDNacl4F", "value": 0.9928976013145256}, {"additionalData": {"G6Dl5TFwBY6HKXAb": {}, "lkT8VGgSH8MGZGwi": {}, "Vj7eDTaka9ABfX1I": {}}, "additionalKey": "ByPEOuPhGspRi3bh", "statCode": "PQvBBJI5Jxytpcub", "updateStrategy": "MAX", "userId": "AUUPFPscZsXeJOD4", "value": 0.47402993918859737}, {"additionalData": {"MtqfIGiGJovgWSRx": {}, "Z8N4UQ2fg3V1o2x0": {}, "hL5DuBDqMyIAzWze": {}}, "additionalKey": "94MEdJFAy2JTllJk", "statCode": "RGB8jqJEd6eqqsBV", "updateStrategy": "OVERRIDE", "userId": "AM0Riw8wLYW3n4F3", "value": 0.6061681248622146}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'BulkUpdateUserStatItem1' test.out

#- 97 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'D1EDwBXw5uBYeQZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PublicQueryUserStatItems2' test.out

#- 98 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'zATNSV9E9yyNb7ya' \
    --body '[{"additionalData": {"LXzAVYymOuhCkZu4": {}, "htrsf8eIFSovTGXa": {}, "Msq8ePN1oco2jx8U": {}}, "statCode": "pe8SjMvpqM8puggO", "updateStrategy": "OVERRIDE", "value": 0.17916727109223085}, {"additionalData": {"9iCqfW6rqGOQny4i": {}, "j4ysYPonb59gQffk": {}, "NOmubxEJr2qEAuJb": {}}, "statCode": "pZSrcbc4LWfKaY5c", "updateStrategy": "MAX", "value": 0.31918282518407126}, {"additionalData": {"P5TDuI5f6m4KC07C": {}, "nsZe32hqEcB1ExYM": {}, "Bb3ckvoaJYdMqGeg": {}}, "statCode": "cg3eRvBZXN3cjIXm", "updateStrategy": "MIN", "value": 0.7804169156432221}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'BulkUpdateUserStatItem2' test.out

#- 99 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'RJnj8xN7HDPTUEDP' \
    'N1Kb4UTPWDXTSb55' \
    --body '{"additionalData": {"g8LSTs7Nf95lGlPr": {}, "f6obIdnI6Ag7eUYc": {}, "YJ4QzXCmqr6gmPGa": {}}, "updateStrategy": "MIN", "value": 0.668445606531993}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
