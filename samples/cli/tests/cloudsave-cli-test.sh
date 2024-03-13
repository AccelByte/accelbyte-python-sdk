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
cloudsave-admin-list-admin-game-record-v1 --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-game-record-v1 '{"keys": ["EAxcVpFrttufHIRd", "H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR"]}' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-game-record-v1 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-v1 '{}' 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
cloudsave-admin-post-admin-game-record-v1 '{}' 'bQ1g7qbPngUNB1vR' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-game-record-v1 'odwpzS6DaDpv8N7Z' --login_with_auth "Bearer foo"
cloudsave-admin-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-record-v1 '{"file_type": "QVqGj6oDLjWjkY1a", "key": "XlFcDtgOjchIua5t", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1984-10-12T00:00:00Z"}}' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-binary-record-v1 '1JSDgY1TXp38zsCT' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-record-v1 '{"content_type": "CrbCbPOyNQkT7Nvy", "file_location": "E3cwyALczNIicXm7"}' 'agSrjJW2OQNOs1PX' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-binary-record-v1 'hT5FvdiRilZ7oFgx' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-recor-metadata-v1 '{"set_by": "SERVER", "tags": ["c8OumKtPDKJDXn7Z", "4U68su8XfqlqNiTv", "B6SdAdIhUDrwoZ5M"], "ttl_config": {"action": "DELETE", "expires_at": "1979-01-18T00:00:00Z"}}' 'Xpc1C8XfwHuKeb9l' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-presigned-urlv1 '{"file_type": "3rGN9A3sNm84hddS"}' 'pHt0P7MIIR7CkyF6' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-ttl-config 'C7duuyZ0GhDogqrh' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"tags": ["BRd8lDR6qVNPRZYd", "FLIAjGGJddVCvu9v", "x5KQ7KYnIuMBvaO3"], "updatedAt": "5llzQRaT5kPxUfof", "value": {"vnnSuB0y5WUlrMdI": {}, "4sNveabntBSxTeIv": {}, "53HGCiljvjKoyD6S": {}}}' 'CwGrncqmLtjQHAf8' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "CLIENT", "tags": ["goNm03VLisV6zwPu", "o3td6TC6I3lMjGSW", "N2laRlxfcjHfYakU"], "ttl_config": {"action": "DELETE", "expires_at": "1982-11-04T00:00:00Z"}, "updatedAt": "qGkE7wcWfDslpJSq", "value": {"GAXQ0yYoNRKd3IL5": {}, "TAQ6iiPlSC2uE4o5": {}, "Vwdo3fePqIJA8IHt": {}}}' 'rkmu0hpDDWVAla2l' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "5BYNtIuS5S5XUdjs"}, "customConfig": {"GRPCAddress": "oqwGyzzWi9gwQYv7"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "9Jcdos4fYcTVU6RB"}, "customConfig": {"GRPCAddress": "t0zYoMcHyCUEXlAv"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '100' '79' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'bOItRMvqtlB2jJCS' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'QT279ZZPYGu0rdlg' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'dWyOtXi3choQrpOs' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'DBU5SepjChB3V0v5' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-ttl-config '2Dlym6puQ23xoJ8a' --login_with_auth "Bearer foo"
cloudsave-admin-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-admin-post-tag-handler-v1 '{"tag": "eCnaLpUKp44YUDja"}' --login_with_auth "Bearer foo"
cloudsave-admin-delete-tag-handler-v1 'sWIPUvmEejtGeoyI' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["Pa8ZRrvjj7il35MX", "bN9oCMNqq98SjTvh", "ZNkSQ70D0H6BXksU"]}' 'C9b6i5lZC9xv32e8' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["c5csSovoqsZNBdte", "9NDUPVJf6c2Z0QZx", "fgPubTDIHrvqAThu"], "user_id": "wjRHpKKTlmVr9Xuo"}, {"keys": ["JbRFQSKVPHbn4Xxt", "u7LQRENjEEztx1Ws", "YSiZqan0nSBJroav"], "user_id": "91GXlvPG6bFYReVH"}, {"keys": ["QipcCx9Zw5D2L7vI", "YhGGSyEW4ZJJ42d3", "PBddN8S48l9lyNAp"], "user_id": "flxqMrj3oZk03QXc"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-put-player-records-by-key-handler-v1 '{"data": [{"user_id": "KMDYDDxHSZjtqXyJ", "value": {"58f7Gc26SaiGVkyd": {}, "wYWQG26yUZNmTBcv": {}, "rbYCwZtxFHyPLtI8": {}}}, {"user_id": "ilbyDPUIj88cekdq", "value": {"Ct81P1ktfIovmv9g": {}, "sR5cJcHm3SZLxoRD": {}, "FuuuySj29a9LJE8H": {}}}, {"user_id": "oRS1X2PFAAMwzHPx", "value": {"B1UskYs4Yw20DOqO": {}, "BSC2DKHRuPMMWH8Y": {}, "b33T5UBJCjfcnLRf": {}}}]}' 'xeCSz9WEi8KlloeH' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1 '{"userIds": ["0JT1yduat2vQR3bi", "Bfsu4jmsRE2w1yEk", "Lgh3tIYt4SqYUTLD"]}' 'x9gIiDandpGT2t24' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'aOMh5eC3IHeHSKLC' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["a3xreNDUWehwH3q3", "1A806DJgas4b6z3L", "NUj7fdgLA84Z8YYk"]}' '6QEgJjBbEDoNf3n0' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'hEoRCAcf80zfFyab' 'WAgIUXiI07A68eaq' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'C2J9jyEW6GLbc0Na' 'KDUL3sa13lk1dQBH' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' 'O86IlBhnetU4RwTq' 'UXlTDBzOuYsaZA2y' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'yd4mbqoOfADMMAXF' 'aY9eKa699bRVhyaK' --login_with_auth "Bearer foo"
cloudsave-admin-list-player-binary-records-v1 'wwrAP2aMlu7WtjCt' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-record-v1 '{"file_type": "oYetOO847g8OudOf", "is_public": false, "key": "TtFWbotQyXJRcQWs", "set_by": "CLIENT"}' 'vYmmDg7VYPXIuvUY' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-binary-record-v1 'TZBRujIUE1Tq5jyA' 'ZvkRCMNFIurjh2im' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-record-v1 '{"content_type": "db4rbkXj0ZwsVC0g", "file_location": "L97ZVJSPqJiwv1ql"}' 'YB1RSKs6gQxC3Gb7' 'S0o4zGYY7KQI1AeF' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-binary-record-v1 'gPqaOkvo1aolB4lk' 'KB4EYOkQ1jMD3cym' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-recor-metadata-v1 '{"is_public": true, "set_by": "CLIENT", "tags": ["On0jJLHC9LxhvNXT", "wGBCtohLtl9Zuhyt", "m5UDrT6QXCs5SPBb"]}' 'RPZTF6oQAXVG7tns' 'Zg5QgXjvyGJPN4eX' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-presigned-urlv1 '{"file_type": "bJE5Vs2GcyomQoIX"}' 'imBJehyxlNsjUgxB' 'kF6wFPoJeQediogE' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"tags": ["hhM2rIizGdKvOPdq", "5xrgxSmy1DN9LFkY", "W5DQyj4bj5Ro2oga"], "updatedAt": "Kt2ujQSa3Zdb65UX", "value": {"my0Zp6iIaTIKUkmk": {}, "k9QM0NBMA9ORxpzw": {}, "LR2AK6eXUGPJsw1f": {}}}' 'iP80G9Pclxcft2ul' 'IJzPyrVEiOG4Ucqs' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "SERVER", "tags": ["v8mnfHK8CCmE2lPn", "sbD3SGEdlwuUccE5", "36ugBp3HBvepnDCj"], "ttl_config": {"action": "DELETE", "expires_at": "1980-07-16T00:00:00Z"}, "updatedAt": "ok0WvGYYnx4V709x", "value": {"bnGezKsDwG2omOR2": {}, "nvYI9TVqJdvzcWbf": {}, "UpaXp5JMl5LL4bTx": {}}}' 'BmZjdrrIxsB0NRsB' '1fPqqRRulpqpymDk' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "SERVER", "tags": ["htrHWwRVnwVBOqOH", "i8pWGd1juYhiqjRJ", "OqB5F93zFQbJndUD"], "ttl_config": {"action": "DELETE", "expires_at": "1977-01-29T00:00:00Z"}, "updatedAt": "Ky8M9zVrjfGXZnqA", "value": {"QUoY1GjlIIk0iKoT": {}, "TS1j02o7JjTXAQN0": {}, "qdskdQV0TqI8EFnm": {}}}' 'DbxIxi4YKlONk2Q5' 'Y4JvaizwiilatuUj' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'jt9lIMGql5ElEa9E' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-records-handler-v1 '{"data": [{"key": "IIlGcHB3CfR3ncDl", "value": {"wi3v3MFFJ1KesKoE": {}, "LCpobBEG8X645xpd": {}, "Xpai0rYaT5hOPjaf": {}}}, {"key": "3H0tYighU0VUfcYH", "value": {"JbBfAKSiPW3VgsZX": {}, "iR1DJ7HVWqMkNSaw": {}, "QUWDFJvJBWic7UkB": {}}}, {"key": "eIXuqDuAXI66bQ71", "value": {"w0deoV9Lx5RDA1l2": {}, "XcrciYNEzvSZIPkh": {}, "SgORcz5S5BvmgBLx": {}}}]}' 'h4ijFnE3Tam69qSZ' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["7PC6f6QkmZXElW9Y", "fRSse6AAz3S4czz0", "QKFlAVmVLu4AOec0"]}' 'z8eBeeoip68J1nsv' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 '4W2OJhtafxMSJlHe' 'b34sZKHcl5LLLOex' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'L4fZvWtND2tcBFpX' '8lNtFEJ7tnkY6Mca' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' '5afj12K2IzrBvvWm' '4udE0OXudXgNne8k' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'JATwlc6esUp6Sw1I' '98jeZQ7hfxnhLd3K' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'naknoed9DHhLOqQG' 'hCUr6iTrjyEgarAd' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'NJOIG36I6tRbRcrE' 'veMdAdiPKDUVSC00' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'PYeDcagginxnFIna' '3yddcbsPheTH26IU' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'JNvYuGRUvpZaHCuE' 'SOiIZsMfB4ZH3mtg' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'WgU4pCAKxeE70Cau' 'nQNxot371W9G4AvQ' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "kqsGnmyo5JJTUVmb", "key": "8GEXFTlEMEsFzYqw"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["gK1Np5nodqpLm7Fh", "JBNXzAFdO0Khqf6k", "iTdSGv2LFjAKY7Cb"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 'gsWqFWZX7kPBom8F' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "9GLLTG8phc3n4iLo", "file_location": "IllKlpO2pqiXJF3W"}' 'GRaoQomSJC4DdrKF' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 '7SUQPLG59e0k5ZtX' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "6wK7PpUlcIW32iK7"}' 'MGt1ixY5rA1WoVeJ' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "IePF8ZrQzP4zvtdx", "value": {"dbZUpd6FJtHJ1pyV": {}, "wyKQLY6FEO65Rb3z": {}, "7CYLM8IlsHqffnrf": {}}}' 'sGlfPaZKBwa3Ddb6' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["0ufPpzwj1QGIFmlV", "f4jvapseE9LN9bvh", "OrHflIOd6X3viLvt"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'Ek4mTIpUA9gxo8SV' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' '38nEhoXmM2W7l6jH' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'MA2rG3nakopAywel' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'u01nryEJ0NqoTow0' --login_with_auth "Bearer foo"
cloudsave-public-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["qiOiC4j0iktm0ZPL", "kLOsp0LZ5njN86Hl", "8kUXzt6bSc6bWvgp"]}' 'VyW9dD1kOmvrAejc' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["q2LgkQuaS7RBx3vi", "m02jBOxrZDyvpcLY", "OWA8NjxOnaEok4nO"]}' 'OCzfsflhjbngJOUn' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["18G5MlfDTk8aG40N", "lncceIZSwgAIkgzh", "4pTU0Am4DZhl0bQx"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["FJ3sWCqQpQ2FbKPF", "MycMSQ4qfAacR0Lg", "B5BUXvjcu2s6w3Vi"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'fnKqmTSoGH1XEfY6' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "QAYn6WQ5UBEU1QAO", "is_public": false, "key": "fZiGhxOdcuDXSxSc"}' '3aZPV87pna08gxef' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 'TYKhuxaEc7M4P7Uc' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["kSC6ePeN8i4GrFES", "9z7xueHpATHccee9", "GXhKcjmSEwdrkEnn"]}' 'qKzFsLfYalUlfwEQ' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 'KjU7eHGebSVu0LQ4' '0kepEaC4dfiOMZfE' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "hHr39pysFO3Zvc1B", "file_location": "ZG99LyvfvHEsJKQQ"}' 'ewVLMUoAnaRcYp7F' 'UjfIGaffoflEIByY' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 'qeKN0meGelYF5wWa' 'DhukU4khGG4vZFTY' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": false}' 'UctPErqxyMyOK06M' 'qQBErxgjVBycvU4P' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "bmRDcrg0DjQjBECX"}' 'vea7H1m2lJFRZ3Zp' 'rZ60zMjhTHeh94TS' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'enE5hCFkIf5weqZ1' '8MH57l2Zsrh90ETt' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "YmGukz3MnlrjcHp6", "value": {"B8Vj7rXFgDnDkdZ9": {}, "bpjb1tdA3QhjCMW6": {}, "4f4XhIjSoTB2NMKt": {}}}' 'ezapPr2QEPx3zTxB' 'GtEJIYppuUSsKoHw' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "2hyd12uSE7BEv3ae", "value": {"vq6iohU1cg4W1IS3": {}, "Uv1BpWoJBaqdg2FH": {}, "cunsS1lnaO2m9vqj": {}}}' 'hbeK2qN8g6x2PyYD' 'o5R3hLiD5sf5y1Js' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'xJNGmyt0SQDUDoWB' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["ZVGLlkUetzCAWc9x", "1aMjgGim51T107XI", "ZRZ7tZdIs0xf4czd"]}' 't7zqmSKxOEQlVcx6' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'GqsBq8vdhWVnuYLg' 'pZehK0G2nmyuViB9' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'kRTcSQdTnNYGeAfY' 'FG3wSkHKufBdS3ZO' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'okZB4cXnAXyuGz6L' 'lxHv8SwyagYvDJ3w' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 '3UNgIGj2jZtEYT8s' 'IPSE1XXPzySa0sZo' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'FS6xCOWMpyh9pMsQ' 'gb64ELbzDMwyo4nI' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'RysQdbufXjYnSoIF' 'eouC2m38kXrDZWlG' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'VE9sJ4NpUtKp6M9I' '6nEwnZhsjwJeGwaP' --login_with_auth "Bearer foo"
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
echo "1..104"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminListAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-game-record-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-game-record-v1' \
    '{"keys": ["SDMZz95OYKiqaZD6", "3xe5rruJVfLGea0Z", "tlzUcuHAXz0UV31M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'fuGaXsAuGsZaSHev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'O0TQNEI3kfabxJWW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'SI1ECUo1NPpeFhUz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'tXDgB7n4C97uAPP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminListGameBinaryRecordsV1' test.out

#- 9 AdminPostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-record-v1' \
    '{"file_type": "PATLpUpxeJlsBJT6", "key": "Hh3OMjAjq2mK8lbS", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1991-02-06T00:00:00Z"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'cYQdN66bswAgt65X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "4N1LQZmB61JMdtwC", "file_location": "VUrYQue84dwmbwFE"}' \
    'nAZaWsQJtRYoagRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'K5PX9UcOvhPyE11T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "CLIENT", "tags": ["T2SKseoe8VLie0LB", "a36KNzjf005CXNGe", "hQ2aTjTDfKFDXC7e"], "ttl_config": {"action": "DELETE", "expires_at": "1997-09-02T00:00:00Z"}}' \
    'hJDWh9YWqc0qgV6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "9yOfIMLds2DbPcao"}' \
    'MdtRLTmSvTkQQgB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-ttl-config' \
    'exYvmHMxr5hPCJJz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"tags": ["tJBg0tTJg46IewOX", "E2AkCh3QIZsUf8lG", "FXcmwTERHclOdxIw"], "updatedAt": "qejxe18rNdb8Otq6", "value": {"j1mqUav7k05HAQlt": {}, "nSojV4jT65yclX2F": {}, "tAz0vJjFIYWOaNds": {}}}' \
    'immkW2miH3xRHAKy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "tags": ["QxZkaXZ7vmiEd0JP", "xVyQpshaDwNqTbbF", "MXAMfVXe0GZeMgsR"], "ttl_config": {"action": "DELETE", "expires_at": "1993-04-09T00:00:00Z"}, "updatedAt": "bfgPmi0eHkt1mr9E", "value": {"OIFg0dnWIYN2NVL7": {}, "0Iw157g00jr9b8Mu": {}, "YmmeKTmBNvGYxEQd": {}}}' \
    'f3ewoGGoY7xmFNAm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 18 GetPluginConfig
$PYTHON -m $MODULE 'cloudsave-get-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetPluginConfig' test.out

#- 19 CreatePluginConfig
$PYTHON -m $MODULE 'cloudsave-create-plugin-config' \
    '{"appConfig": {"appName": "jDDCvs78mcMdiS76"}, "customConfig": {"GRPCAddress": "YApGJ9ufwLYkqIgL"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreatePluginConfig' test.out

#- 20 DeletePluginConfig
$PYTHON -m $MODULE 'cloudsave-delete-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeletePluginConfig' test.out

#- 21 UpdatePluginConfig
$PYTHON -m $MODULE 'cloudsave-update-plugin-config' \
    '{"appConfig": {"appName": "OAbpeUNf26UqkCfg"}, "customConfig": {"GRPCAddress": "CUYBn2xaOBdPF0Jm"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '24' \
    '45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'ssep2xD2NY0kABeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    's9yxahld1pO0Gyf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'PO3COyMvczgEpzZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'FbtxfhcRC7IVYa6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-record-ttl-config' \
    'Z5uFRYNn3SHiWxF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordTTLConfig' test.out

#- 28 AdminListTagsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-list-tags-handler-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminListTagsHandlerV1' test.out

#- 29 AdminPostTagHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-tag-handler-v1' \
    '{"tag": "YbuU5ar5qTLWUCy0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-tag-handler-v1' \
    'Afgc050XIZRW491e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["94mQjVOOBnIWhunE", "lqZUodp3IhtCSHy1", "ei1fIrPvfHnRN06E"]}' \
    'jRwEQlNapJRfk4f9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["Zcw1pEHAyNFxcVTK", "uAQTGh5BxjWOozGo", "DtsUuYo5p8ED5QZA"], "user_id": "ufwNa8lzfjv9oYMX"}, {"keys": ["MjlVHY1AHwF3vGoa", "v7MK0PcLnEkcokKw", "cQ0baDT9OyJ2h23G"], "user_id": "US2amU7syGlElXdE"}, {"keys": ["AOrVSnLocLVVYamQ", "c4wcG5nDBLJoJHbi", "Q5duE5p4cfs2E41c"], "user_id": "K8QTwiIAvxSvNDlm"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-put-player-records-by-key-handler-v1' \
    '{"data": [{"user_id": "M5nQFMGzs7fzjgyc", "value": {"44mEh9tRk8knYSV3": {}, "0lnroQehMDli6t9u": {}, "nQLYXxm09wpGAbpE": {}}}, {"user_id": "mDY9vLh3u6EDsUmr", "value": {"V6kH4OotKwG3UC6X": {}, "CnnZxF8CmQr17W65": {}, "br34rBBN9tU6TDm5": {}}}, {"user_id": "GloFSKWM1eym5ydC", "value": {"6p25xCWTqUOYZENJ": {}, "1QHZQxPRXH7uxBJE": {}, "ECQE1li3Bg7Jxc9p": {}}}]}' \
    'UnZmvhidwCkZwqjY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1' \
    '{"userIds": ["LfTiCO1NDBvQvRPn", "Az4VzW0CpoBCbyJs", "F5IjF1c0W338HS6C"]}' \
    'BgVRyihYNZ84CVhz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'iXV8HwSmvcvcDKF1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["9yVRafCjOuSYht83", "AdvBaagTiRJ8daGT", "VX3Bb7jlz5IfHgKj"]}' \
    'I9mwJSrN8jkIykR2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'zbaI6PD7fEscShnG' \
    'UGUtV9GJ279GDbLN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'wjm3FK0nnX2poMfZ' \
    '1hDHtbh4HtMlFgvh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    '2Dp2SoiIPp1yvfAH' \
    'S0VgLu11A3HTovFi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    '4tPAGfleyCA6jEtc' \
    'qsnzoVILjkwW61du' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'F87aUyrdt4XSpWBA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "etsanzqP8oxfrtbE", "is_public": true, "key": "cUQZ2QUAxJrINPXp", "set_by": "CLIENT"}' \
    'vt70ZUT2fSk3LL0c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    'alqxEewuGS469k2h' \
    'G0WKt4sUmanYxM0U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "HZVNYzGMNIpWoSLk", "file_location": "Urfuf4U3WeYeA9t2"}' \
    'ENKKWrFtHIi1CMgK' \
    'AOG5iDcCR5PbCvDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'il8wj9cKM3Ar6MF3' \
    '5hCER4nGmWGgTJfH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": false, "set_by": "CLIENT", "tags": ["q1o2jZWu4yA3r0u4", "q1bTHXIjfJKyFlM0", "u1uuoVdn9yVoSlKN"]}' \
    'chPHNL4X3LLaGPGd' \
    'qLE8SohhhuiTnJar' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "YYkHBDdSzBXdxapw"}' \
    'hd5IQYBQuxLvPuWY' \
    'vE3fsNy9Z9OhxXvC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"tags": ["p9y7fLD2qfCXnlUn", "qxT1WsRNMZcA92hz", "C7MNa8vVe4MHX6Ag"], "updatedAt": "Mep90AyyUJyAK5PR", "value": {"MRMwdvl0hv6g62Gx": {}, "BW2tQF5tkTjgJaMY": {}, "vNQOsDa4bkcgepqt": {}}}' \
    'xjbrztee7QLTGAak' \
    '7Kaol01DK97D2xni' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["IszGRj46COPipH1M", "WVTHG0qHJCWEfOJp", "Zm9yEYWNGMy2pgSG"], "ttl_config": {"action": "DELETE", "expires_at": "1995-09-08T00:00:00Z"}, "updatedAt": "OK68eqGJtWf1Ybgg", "value": {"8rdwY9bmrvHmO07K": {}, "NqX9LM2IwEsdOGBX": {}, "BwnzDX8v3xgC1Ge9": {}}}' \
    'PdbTTAJ2Gp1r0sVZ' \
    '6LJAOddIL2l3hPjN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "tags": ["UIoiIJFNxuNOmUSW", "w18T1IxVWCxdvPL9", "e4P01vxP8xj1LyEi"], "ttl_config": {"action": "DELETE", "expires_at": "1975-12-14T00:00:00Z"}, "updatedAt": "RERnEMzpImW6sjAH", "value": {"yCK5tNanGBrkzUvc": {}, "k3xTtmOFMebS4Adl": {}, "Nzwog2IhErkNhNcE": {}}}' \
    'CWwchW6zL9SkbLlr' \
    'NXnGanMazb8jvRWe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'nURH48aJuALEcSqc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{"key": "E15u6D31DjOsrs3C", "value": {"UYATdqnQGbqiqOkN": {}, "eATj7eGjodd7CcJU": {}, "rI6MAugK5kypNrp2": {}}}, {"key": "nFe9FmN86sK5LOq4", "value": {"ft5jGcMICPUYnfG6": {}, "jl9U4jReteIMgzIS": {}, "omCsodJrhQW41q2O": {}}}, {"key": "spCZbt3Uta5I0uGc", "value": {"L1koyHjCH5olYLET": {}, "RpABAmO2EGvJ4UMS": {}, "93yOxNInDByhnolu": {}}}]}' \
    'O6ti0QP2ssiJ66Oz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["Oj84O6tgohjtC7bz", "jPpucddXJ5zifF8y", "959anrNSleywHbHi"]}' \
    'g6IKWVZ77KeRWdEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'aFGzfZ2hxcJ2Fnem' \
    'n7M23SzUo4hNBDh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'ZFP1OW0nXOErQPS4' \
    'VsRoYIK69yg9ADCG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'iXaLs2xjHkinOD97' \
    '5nARHCmhNHSXuqIH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'sxvaUoXDmwWsukxn' \
    'cuD3QxCXMd00YBWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'aVVmM45mfIZsWhkS' \
    '476dGGJwJ00UH197' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'MJ6zU7JLMQyMWzYQ' \
    'CAaPJgoxGJoJaSzU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'tY4ZD0Xtb0U4pH16' \
    'NUsVY21NVIs7NRen' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    '2Y3Ns0QJQeaWytPf' \
    'ds1BYx0EaURydf8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'yyZeHAWGgJUbUJRM' \
    'bkcTglbU86FyOjAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 64 ListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ListGameBinaryRecordsV1' test.out

#- 65 PostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "NHBVfNOURcjY3YYT", "key": "9oTynmfIuBWgJTNF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["fM8M0IW4oe8KDgy0", "xZfAcNg14Ws8TIP1", "LKiFQoLDvumfqrgS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    'fnx2h61X9dN1MGRX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "BJ6mVV7JS9qjNLwv", "file_location": "I8JdiY3RRiLilmOG"}' \
    'F6dLLIeIVIjMcdlb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    'dRXTGIrdNL5gJPqT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "AjgqaTHf1ANTJ9Yk"}' \
    '997XkGOdC6ItxDT8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "p4n4XCFkD1AJLCws", "value": {"zbZxuHSgDOK8bjoF": {}, "7bL2635KbtZTGJpq": {}, "gl2IzNXGTuQPIDpo": {}}}' \
    'r7t1aJLNNz6QIVC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["Mfuc8VOsnmnlVljd", "WYmELe74p38vumnx", "AnYBTxaTIz0jcgDI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    '8Pkz96vd80msqIm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'bufnBqrpLeqhwVhj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'nnjKMEmtbiWsAQHb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'MrKYi0Zxs5SWCqZX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteGameRecordHandlerV1' test.out

#- 77 PublicListTagsHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-list-tags-handler-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicListTagsHandlerV1' test.out

#- 78 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["HLLa31oQf7BULnZD", "hutDM6BqguqD5xxG", "xBWtnTKUe2znsqPz"]}' \
    'PkwCBo2SwCUsTag4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["MLAo3m61P2xaNfmn", "8Onb1a9gMz0F2UBR", "mMhAbUWmFhdYLWzM"]}' \
    'uv3zkUY0n0BAZkwb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 80 ListMyBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-my-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'ListMyBinaryRecordsV1' test.out

#- 81 BulkGetMyBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["YkBLyO6A0FqfhnaB", "3YxKNdOTacCcJfIf", "XshuLUk5WdpxjZx5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkGetMyBinaryRecordV1' test.out

#- 82 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'RetrievePlayerRecords' test.out

#- 83 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["noXPhPUTKbonoucN", "mzwOZOK56sDkci5r", "Z8iMlOuksQJCiRFi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'ZWwJ7NrTb1XTB9YQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "zUJ9XlYJ8BzP6EUm", "is_public": false, "key": "XGM5anIloyj9lhbv"}' \
    'uQdW2jwKUckc794r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    'yY91lX8DD4MYXlrJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["81lHvv9rqvEoM8Ym", "VjAkO3HKsEp6Klqw", "W4djrexcbHdEtoQv"]}' \
    'pV344RctmTozCi8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'eV6jbalHmqBBfi7s' \
    'SF5BoGiTCVsXsygW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "bjE2opXtdsJQeJ1t", "file_location": "oo0qvxphTLEEBGTt"}' \
    'ZyTjdKNKgYazujsm' \
    'SmylT1YtxIq73aMb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    '48jISd97KORRhxSW' \
    'LWLNfHRD3V15QaGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": true}' \
    '6LuxJF3sbeqWBdQu' \
    'WfgBAKx27MSBqabU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "XOGkkoMUZn1YXj5z"}' \
    'FZeOCOR9NvBQZSJP' \
    'OIKrRBrYVzi9ui3l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    'vozTt9TsH7A0TuU2' \
    'aL4bPkk11sys6Gdk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "Dcos5uVJ0BJfZ0jv", "value": {"A54CSqZFDsO1skRj": {}, "OU1SMfQVQa6blj9R": {}, "dd85bdYUumPKVSZC": {}}}' \
    'g3XTc9vQe0dHJfF6' \
    'KIuvnRCa9JktyBdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "kZKrEWFw9GYxjiiO", "value": {"QAD77ci0vfWVZoRR": {}, "MPi57HyKKz5nyI6u": {}, "lKNKoXa0dgx1JgjC": {}}}' \
    '56pda3YhtQxpCYME' \
    '6x21pdX2QSPAd9sx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'oLnWGP1PafIjLX8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["e0KbNN7Ycl2JfmQp", "lvGjVQ4aebjfgGu4", "72oWJlfglLM4xjfk"]}' \
    'NL4lU6jaGfsD1cfs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'wmeFpvtDtetoQVFL' \
    '8LNW11vtpaTxi7k4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    '89jRCn48bvkCPfKo' \
    'fwXOIZZQAJza84lK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'KmVOaTS6xBbNrSUA' \
    'W2ak7ISDrBVg6NuD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'ZvPb1kuUfNfUDe4g' \
    '7q6PHEaqbzHvDDl1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'jiLw3XMGBA6JXDpA' \
    '1tIC45C0oaGouFu4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'hXONgUwJnUpryDeR' \
    'cpUvlrw2MwC1uuok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'paIjL0Vxe5n9Lx3Q' \
    'cFo9gxOgvDc7xMrR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
