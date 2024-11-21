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
cloudsave-delete-admin-game-record-ttl-config 'QVqGj6oDLjWjkY1a' --login_with_auth "Bearer foo"
cloudsave-admin-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-record-v1 '{"file_type": "XlFcDtgOjchIua5t", "key": "WEIC32ogW7olvbTg", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1974-12-28T00:00:00Z"}}' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-binary-record-v1 'CrbCbPOyNQkT7Nvy' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-record-v1 '{"content_type": "E3cwyALczNIicXm7", "file_location": "agSrjJW2OQNOs1PX"}' 'hT5FvdiRilZ7oFgx' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-binary-record-v1 '4c8OumKtPDKJDXn7' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-recor-metadata-v1 '{"set_by": "CLIENT", "tags": ["68su8XfqlqNiTvB6", "SdAdIhUDrwoZ5Mec", "dKi5r6QEa1ysLEzt"], "ttl_config": {"action": "DELETE", "expires_at": "1979-09-25T00:00:00Z"}}' 'mXhzkzWkFeZSoEAc' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-presigned-urlv1 '{"file_type": "BdW19m4eu6d5tA5j"}' 'UmiTqpyhPFdxLzFQ' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-ttl-config 'N05MYzYiKWe5dNRl' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"tags": ["jv7IPrDQQRgat0Se", "vkLGMS0lyuI9a2I9", "u6Vpbsx5w8hqUI06"], "ttl_config": {"action": "DELETE", "expires_at": "1981-11-29T00:00:00Z"}, "updatedAt": "1985-09-20T00:00:00Z", "value": {"y5WUlrMdI4sNveab": {}, "ntBSxTeIv53HGCil": {}, "jvjKoyD6SCwGrncq": {}}}' 'mLtjQHAf8TgoNm03' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "SERVER", "tags": ["isV6zwPuo3td6TC6", "I3lMjGSWN2laRlxf", "cjHfYakUCTqGkE7w"], "ttl_config": {"action": "DELETE", "expires_at": "1998-02-09T00:00:00Z"}, "updatedAt": "1971-09-01T00:00:00Z", "value": {"LqYSYWytLPziZMdj": {}, "xcBZufQxGiHPllG4": {}, "cYEzfTD1ZBm3MqHc": {}}}' 'UmLZZbSqb8RwNmn9' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "HrNQy4uZAAiE0mit"}, "customConfig": {"GRPCAddress": "9RGCCHYzUOcEdscK"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "4Ymos9Jcdos4fYcT"}, "customConfig": {"GRPCAddress": "VU6RBt0zYoMcHyCU"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '24' '47' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'wfNPX2bOItRMvqtl' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'B2jJCSQT279ZZPYG' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'u0rdlgdWyOtXi3ch' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'oQrpOsDBU5SepjCh' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-ttl-config 'B3V0v52Dlym6puQ2' --login_with_auth "Bearer foo"
cloudsave-admin-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-admin-post-tag-handler-v1 '{"tag": "3xoJ8aeCnaLpUKp4"}' --login_with_auth "Bearer foo"
cloudsave-admin-delete-tag-handler-v1 '4YUDjasWIPUvmEej' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["tGeoyIPa8ZRrvjj7", "il35MXbN9oCMNqq9", "8SjTvhZNkSQ70D0H"]}' '6BXksUC9b6i5lZC9' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["xv32e8c5csSovoqs", "ZNBdte9NDUPVJf6c", "2Z0QZxfgPubTDIHr"], "user_id": "vqAThuwjRHpKKTlm"}, {"keys": ["Vr9XuoJbRFQSKVPH", "bn4Xxtu7LQRENjEE", "ztx1WsYSiZqan0nS"], "user_id": "BJroav91GXlvPG6b"}, {"keys": ["FYReVHQipcCx9Zw5", "D2L7vIYhGGSyEW4Z", "JJ42d3PBddN8S48l"], "user_id": "9lyNApflxqMrj3oZ"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-put-player-records-by-key-handler-v1 '{"data": [{"user_id": "k03QXcKMDYDDxHSZ", "value": {"jtqXyJ58f7Gc26Sa": {}, "iGVkydwYWQG26yUZ": {}, "NmTBcvrbYCwZtxFH": {}}}, {"user_id": "yPLtI8ilbyDPUIj8", "value": {"8cekdqCt81P1ktfI": {}, "ovmv9gsR5cJcHm3S": {}, "ZLxoRDFuuuySj29a": {}}}, {"user_id": "9LJE8HoRS1X2PFAA", "value": {"MwzHPxB1UskYs4Yw": {}, "20DOqOBSC2DKHRuP": {}, "MMWH8Yb33T5UBJCj": {}}}]}' 'fcnLRfxeCSz9WEi8' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1 '{"userIds": ["KlloeH0JT1yduat2", "vQR3biBfsu4jmsRE", "2w1yEkLgh3tIYt4S"]}' 'qYUTLDx9gIiDandp' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'GT2t24aOMh5eC3IH' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["eHSKLCa3xreNDUWe", "hwH3q31A806DJgas", "4b6z3LNUj7fdgLA8"]}' '4Z8YYk6QEgJjBbED' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'oNf3n0hEoRCAcf80' 'zfFyabWAgIUXiI07' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'A68eaqC2J9jyEW6G' 'Lbc0NaKDUL3sa13l' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' 'k1dQBHO86IlBhnet' 'U4RwTqUXlTDBzOuY' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'saZA2yyd4mbqoOfA' 'DMMAXFaY9eKa699b' --login_with_auth "Bearer foo"
cloudsave-admin-list-player-binary-records-v1 'RVhyaKwwrAP2aMlu' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-record-v1 '{"file_type": "7WtjCtoYetOO847g", "is_public": false, "key": "OudOfjnCuHZ3c46I", "set_by": "CLIENT"}' 'RcQWsmqPNs92epxk' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-binary-record-v1 '0i8VxsZNereSvf96' '99mCEHThUJkETAsS' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-record-v1 '{"content_type": "p7gh4TeUTkOkAYfJ", "file_location": "B8AT9t4Tv207Y2QD"}' '3oD5fLCr3OOlXVv8' 'ZGF7uYnGzpipNDig' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-binary-record-v1 'NJma1MbqqZtfNWql' '4nmwAft4gqkNNlWk' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-recor-metadata-v1 '{"is_public": true, "set_by": "SERVER", "tags": ["9eOziYRFOn0jJLHC", "9LxhvNXTwGBCtohL", "tl9Zuhytm5UDrT6Q"]}' 'XCs5SPBbRPZTF6oQ' 'AXVG7tnsZg5QgXjv' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-presigned-urlv1 '{"file_type": "yGJPN4eXbJE5Vs2G"}' 'cyomQoIXimBJehyx' 'lNsjUgxBkF6wFPoJ' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"tags": ["eQediogEhhM2rIiz", "GdKvOPdq5xrgxSmy", "1DN9LFkYW5DQyj4b"], "updatedAt": "1975-09-17T00:00:00Z", "value": {"5Ro2ogaKt2ujQSa3": {}, "Zdb65UXmy0Zp6iIa": {}, "TIKUkmkk9QM0NBMA": {}}}' '9ORxpzwLR2AK6eXU' 'GPJsw1fiP80G9Pcl' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "SERVER", "tags": ["FrHHC3DpZxkrQDXu", "NFviMarv8mnfHK8C", "CmE2lPnsbD3SGEdl"], "ttl_config": {"action": "DELETE", "expires_at": "1990-06-16T00:00:00Z"}, "updatedAt": "1975-01-01T00:00:00Z", "value": {"ccE536ugBp3HBvep": {}, "nDCjgyJlXe36mgWj": {}, "LfFmteue9nzJ6fH2": {}}}' '4T805tVg8JqU0jZp' 'jvsugAOS7u8RiWye' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "SERVER", "tags": ["L4bTxBmZjdrrIxsB", "0NRsB1fPqqRRulpq", "pymDkQhtrHWwRVnw"], "ttl_config": {"action": "DELETE", "expires_at": "1985-11-28T00:00:00Z"}, "updatedAt": "1990-05-12T00:00:00Z", "value": {"y8wbhMssAHjapIkY": {}, "9Rf4wP57dBZNR88Y": {}, "bCtmKy8M9zVrjfGX": {}}}' 'ZnqAQUoY1GjlIIk0' 'iKoTTS1j02o7JjTX' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'AQN0qdskdQV0TqI8' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-records-handler-v1 '{"data": [{"key": "EFnmDbxIxi4YKlON", "value": {"k2Q5Y4Jvaizwiila": {}, "tuUjjt9lIMGql5El": {}, "Ea9EIIlGcHB3CfR3": {}}}, {"key": "ncDlwi3v3MFFJ1Ke", "value": {"sKoELCpobBEG8X64": {}, "5xpdXpai0rYaT5hO": {}, "Pjaf3H0tYighU0VU": {}}}, {"key": "fcYHJbBfAKSiPW3V", "value": {"gsZXiR1DJ7HVWqMk": {}, "NSawQUWDFJvJBWic": {}, "7UkBeIXuqDuAXI66": {}}}]}' 'bQ71w0deoV9Lx5RD' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["A1l2XcrciYNEzvSZ", "IPkhSgORcz5S5Bvm", "gBLxh4ijFnE3Tam6"]}' '9qSZ7PC6f6QkmZXE' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'lW9YfRSse6AAz3S4' 'czz0QKFlAVmVLu4A' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'Oec0z8eBeeoip68J' '1nsv4W2OJhtafxMS' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'JlHeb34sZKHcl5LL' 'LOexL4fZvWtND2tc' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'BFpX8lNtFEJ7tnkY' '6Mca5afj12K2IzrB' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'vvWm4udE0OXudXgN' 'ne8kJATwlc6esUp6' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'Sw1I98jeZQ7hfxnh' 'Ld3Knaknoed9DHhL' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'OqQGhCUr6iTrjyEg' 'arAdNJOIG36I6tRb' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'RcrEveMdAdiPKDUV' 'SC00PYeDcagginxn' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'FIna3yddcbsPheTH' '26IUJNvYuGRUvpZa' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "HCuESOiIZsMfB4ZH", "key": "3mtgWgU4pCAKxeE7"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["0CaunQNxot371W9G", "4AvQkqsGnmyo5JJT", "UVmb8GEXFTlEMEsF"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 'zYqwgK1Np5nodqpL' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "m7FhJBNXzAFdO0Kh", "file_location": "qf6kiTdSGv2LFjAK"}' 'Y7CbgsWqFWZX7kPB' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 'om8F9GLLTG8phc3n' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "4iLoIllKlpO2pqiX"}' 'JF3WGRaoQomSJC4D' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "1972-09-13T00:00:00Z", "value": {"rKF7SUQPLG59e0k5": {}, "ZtX6wK7PpUlcIW32": {}, "iK7MGt1ixY5rA1Wo": {}}}' 'VeJIePF8ZrQzP4zv' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["tdxdbZUpd6FJtHJ1", "pyVwyKQLY6FEO65R", "b3z7CYLM8IlsHqff"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'nrfsGlfPaZKBwa3D' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'db60ufPpzwj1QGIF' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'mlVf4jvapseE9LN9' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'bvhOrHflIOd6X3vi' --login_with_auth "Bearer foo"
cloudsave-public-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["LvtEk4mTIpUA9gxo", "8SV38nEhoXmM2W7l", "6jHMA2rG3nakopAy"]}' 'welu01nryEJ0NqoT' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["ow0qiOiC4j0iktm0", "ZPLkLOsp0LZ5njN8", "6Hl8kUXzt6bSc6bW"]}' 'vgpVyW9dD1kOmvrA' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["ejcq2LgkQuaS7RBx", "3vim02jBOxrZDyvp", "cLYOWA8NjxOnaEok"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["4nOOCzfsflhjbngJ", "OUn18G5MlfDTk8aG", "40NlncceIZSwgAIk"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'gzh4pTU0Am4DZhl0' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "bQxFJ3sWCqQpQ2Fb", "is_public": true, "key": "PFMycMSQ4qfAacR0"}' 'LgB5BUXvjcu2s6w3' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 'VifnKqmTSoGH1XEf' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["Y6QAYn6WQ5UBEU1Q", "AOHfZiGhxOdcuDXS", "xSc3aZPV87pna08g"]}' 'xefTYKhuxaEc7M4P' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 '7UckSC6ePeN8i4Gr' 'FES9z7xueHpATHcc' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "ee9GXhKcjmSEwdrk", "file_location": "EnnqKzFsLfYalUlf"}' 'wEQKjU7eHGebSVu0' 'LQ40kepEaC4dfiOM' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 'ZfEhHr39pysFO3Zv' 'c1BZG99LyvfvHEsJ' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": true}' 'QQewVLMUoAnaRcYp' '7FUjfIGaffoflEIB' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "yYqeKN0meGelYF5w"}' 'WaDhukU4khGG4vZF' 'TYnPkmSu4PWam1jx' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'R7SETWjteoc8fgvZ' 'DDhoO05oKqymxLD1' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "1990-08-22T00:00:00Z", "value": {"cvw6T6mZEiwxxElp": {}, "MYSWIeVzm7z9noow": {}, "mlTIKVowi0RY2VN4": {}}}' 'ZONJREdUQ3z9F1Bx' 'NNgnke4akncw7wu9' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "1994-04-07T00:00:00Z", "value": {"B8Vj7rXFgDnDkdZ9": {}, "bpjb1tdA3QhjCMW6": {}, "4f4XhIjSoTB2NMKt": {}}}' 'ezapPr2QEPx3zTxB' 'GtEJIYppuUSsKoHw' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 '2hyd12uSE7BEv3ae' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["vq6iohU1cg4W1IS3", "Uv1BpWoJBaqdg2FH", "cunsS1lnaO2m9vqj"]}' 'hbeK2qN8g6x2PyYD' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'o5R3hLiD5sf5y1Js' 'xJNGmyt0SQDUDoWB' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'ZVGLlkUetzCAWc9x' '1aMjgGim51T107XI' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'ZRZ7tZdIs0xf4czd' 't7zqmSKxOEQlVcx6' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'GqsBq8vdhWVnuYLg' 'pZehK0G2nmyuViB9' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'kRTcSQdTnNYGeAfY' 'FG3wSkHKufBdS3ZO' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'okZB4cXnAXyuGz6L' 'lxHv8SwyagYvDJ3w' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' '3UNgIGj2jZtEYT8s' 'IPSE1XXPzySa0sZo' --login_with_auth "Bearer foo"
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
echo "1..105"

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
    '{"keys": ["FS6xCOWMpyh9pMsQ", "gb64ELbzDMwyo4nI", "RysQdbufXjYnSoIF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'eouC2m38kXrDZWlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'VE9sJ4NpUtKp6M9I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    '6nEwnZhsjwJeGwaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'SDMZz95OYKiqaZD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 DeleteAdminGameRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-admin-game-record-ttl-config' \
    '3xe5rruJVfLGea0Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'DeleteAdminGameRecordTTLConfig' test.out

#- 9 AdminListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminListGameBinaryRecordsV1' test.out

#- 10 AdminPostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-record-v1' \
    '{"file_type": "tlzUcuHAXz0UV31M", "key": "fuGaXsAuGsZaSHev", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1973-10-11T00:00:00Z"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPostGameBinaryRecordV1' test.out

#- 11 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'I5yppBHoytVznCgN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameBinaryRecordV1' test.out

#- 12 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "yx9fbT63ShEh8PbG", "file_location": "ikLjgjcj34uulU6F"}' \
    'YBZsWFbr3RSP0W9n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameBinaryRecordV1' test.out

#- 13 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'Bhvhf8Q0DtJMcYQd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGameBinaryRecordV1' test.out

#- 14 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "SERVER", "tags": ["bswAgt65X4N1LQZm", "B61JMdtwCVUrYQue", "84dwmbwFEnAZaWsQ"], "ttl_config": {"action": "DELETE", "expires_at": "1993-04-23T00:00:00Z"}}' \
    'OixhtAoKiVm6URT9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 15 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "5XhnUcvWB28Mpusu"}' \
    'hhDJ5slzgiWZEtyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostGameBinaryPresignedURLV1' test.out

#- 16 DeleteGameBinaryRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-ttl-config' \
    '56LfxnbY97jjYgXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteGameBinaryRecordTTLConfig' test.out

#- 17 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"tags": ["hCbkXX26uEdCfQaM", "AQuTKfC0I2kNjCMD", "tDMrentgn3Dhqciw"], "ttl_config": {"action": "DELETE", "expires_at": "1982-03-01T00:00:00Z"}, "updatedAt": "1976-09-15T00:00:00Z", "value": {"QQgB7exYvmHMxr5h": {}, "PCJJztJBg0tTJg46": {}, "IewOXE2AkCh3QIZs": {}}}' \
    'Uf8lGFXcmwTERHcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 18 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["dxIwqejxe18rNdb8", "Otq6j1mqUav7k05H", "AQltnSojV4jT65yc"], "ttl_config": {"action": "DELETE", "expires_at": "1996-08-02T00:00:00Z"}, "updatedAt": "1998-01-10T00:00:00Z", "value": {"FtAz0vJjFIYWOaNd": {}, "simmkW2miH3xRHAK": {}, "y4QxZkaXZ7vmiEd0": {}}}' \
    'JPxVyQpshaDwNqTb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 19 GetPluginConfig
$PYTHON -m $MODULE 'cloudsave-get-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetPluginConfig' test.out

#- 20 CreatePluginConfig
$PYTHON -m $MODULE 'cloudsave-create-plugin-config' \
    '{"appConfig": {"appName": "bFMXAMfVXe0GZeMg"}, "customConfig": {"GRPCAddress": "sRsmH1EQrYmkPKTP"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreatePluginConfig' test.out

#- 21 DeletePluginConfig
$PYTHON -m $MODULE 'cloudsave-delete-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeletePluginConfig' test.out

#- 22 UpdatePluginConfig
$PYTHON -m $MODULE 'cloudsave-update-plugin-config' \
    '{"appConfig": {"appName": "NVL70Iw157g00jr9"}, "customConfig": {"GRPCAddress": "b8MuYmmeKTmBNvGY"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdatePluginConfig' test.out

#- 23 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '66' \
    '8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'ListGameRecordsHandlerV1' test.out

#- 24 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'GoY7xmFNAmjDDCvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGetGameRecordHandlerV1' test.out

#- 25 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    '78mcMdiS76YApGJ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminPutGameRecordHandlerV1' test.out

#- 26 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'ufwLYkqIgLuZS6hs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminPostGameRecordHandlerV1' test.out

#- 27 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'QryiEtOAbpeUNf26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteGameRecordHandlerV1' test.out

#- 28 DeleteGameRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-record-ttl-config' \
    'UqkCfgCUYBn2xaOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameRecordTTLConfig' test.out

#- 29 AdminListTagsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-list-tags-handler-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminListTagsHandlerV1' test.out

#- 30 AdminPostTagHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-tag-handler-v1' \
    '{"tag": "dPF0JmX8qwU1cTuH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminPostTagHandlerV1' test.out

#- 31 AdminDeleteTagHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-tag-handler-v1' \
    'HPB5S3DvPRCzBrVU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeleteTagHandlerV1' test.out

#- 32 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["xmDOj3cvRFaTC11W", "0TGTCm4fZWuk6pQx", "DQpKqxLGeMvr9Tsv"]}' \
    'cMQ7dBsaIecRxIsZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 33 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["vD6rmzVr5XT1Nxw0", "v1dMQ9Rrbk6C2cVW", "f6ttvbU1PO6ApCD2"], "user_id": "VXidT7w0Oc15N8WX"}, {"keys": ["BPp17PAewqSm5x3B", "4t7WQnp8jXZedgt5", "cyNe27HLtwtVOaxg"], "user_id": "P6Jbct8puMybYGxD"}, {"keys": ["9IPmmsLmu3kaPj0O", "4zd8Tb7cUNGPTBxi", "FFCrn7djjs69FTFV"], "user_id": "GUVhvKhJCmeisql1"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 34 ListPlayerRecordHandlerV1
eval_tap 0 34 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 35 AdminBulkPutPlayerRecordsByKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-put-player-records-by-key-handler-v1' \
    '{"data": [{"user_id": "4mUHVbMPimNhcZsU", "value": {"3VAdMDcb4qlkiFAa": {}, "mqvZI2KwjqPBiWXa": {}, "de41s3rH34mB2yPl": {}}}, {"user_id": "RpWjmHZAAvKTH8Mu", "value": {"qIg0CzkguwuJCW7E": {}, "EFB67AODbi9BzupB": {}, "sFpYc77GtRUcCFeY": {}}}, {"user_id": "5g4XgBsbfzqxBPNe", "value": {"8ae1Il4aAtEbu4Ij": {}, "GdqthRxTjQ7gkZEY": {}, "8rG0q0Q2Qd2JzRbk": {}}}]}' \
    'F2I03dIjvBbA6bfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 36 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1' \
    '{"userIds": ["YaJCJjfk2TUvn95F", "hO7VW3mbDVMDu87t", "0ldWf7iSGIiKFtWt"]}' \
    'n4Yr2svKM6pqLGZ0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 37 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'TBujELAUK6mQ5iZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminListAdminUserRecordsV1' test.out

#- 38 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["bwwm5iGzXtcknrgi", "dKupvXO6aj4hCmTC", "34jxW4pIDwdqXpmR"]}' \
    'mut9H9XyWI8bp8fQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 39 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'xRuX91uYmtrHJbEG' \
    'TUj7YjERL1rEQG02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminGetAdminPlayerRecordV1' test.out

#- 40 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'zccA8wvLsWUNd6lP' \
    'KvqDejvqklTSvDwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPutAdminPlayerRecordV1' test.out

#- 41 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'OrP9lzpiX0VuFpZu' \
    'm7izxe7NPzjOa8E7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerAdminRecordV1' test.out

#- 42 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'wY76PxLv9HBEUe89' \
    'AwEw1HO4FnKtx4XL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAdminPlayerRecordV1' test.out

#- 43 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'KAmlDr19uJ3nq6Ve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminListPlayerBinaryRecordsV1' test.out

#- 44 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "rzVCcI8y3Cz0YqCK", "is_public": true, "key": "h5RD9vNAp4jinFpn", "set_by": "SERVER"}' \
    'xF9wwbvMZyeDeRnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminPostPlayerBinaryRecordV1' test.out

#- 45 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    'fPUa6xVVBcq3wZpF' \
    'IYeAg79HcLJXJ7mp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetPlayerBinaryRecordV1' test.out

#- 46 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "VI6eTYAjdPlCiQQC", "file_location": "35cj4KyOVgvnWbfR"}' \
    'JtsB7cUQZ2QUAxJr' \
    'INPXppPNO3AfmXcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerBinaryRecordV1' test.out

#- 47 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'wC3IN6tvKgLB9QmJ' \
    'IOq9dP5szG71utjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminDeletePlayerBinaryRecordV1' test.out

#- 48 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": true, "set_by": "SERVER", "tags": ["M0UHZVNYzGMNIpWo", "SLkUrfuf4U3WeYeA", "9t2ENKKWrFtHIi1C"]}' \
    'MgKAOG5iDcCR5PbC' \
    'vDLil8wj9cKM3Ar6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 49 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "MF35hCER4nGmWGgT"}' \
    'JfHlJl4tHGa4XfZc' \
    'd9CVnGqMX9FieeEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 50 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"tags": ["sWEUl07bhwntCVqi", "YOJf5KwMZQjzvjSo", "zv6CTRDl0zp9CzHF"], "updatedAt": "1982-03-10T00:00:00Z", "value": {"nJarYYkHBDdSzBXd": {}, "xapwhd5IQYBQuxLv": {}, "PuWYvE3fsNy9Z9Oh": {}}}' \
    'xXvCp9y7fLD2qfCX' \
    'nlUnqxT1WsRNMZcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["2hzC7MNa8vVe4MHX", "6AgMep90AyyUJyAK", "5PRMRMwdvl0hv6g6"], "ttl_config": {"action": "DELETE", "expires_at": "1987-02-22T00:00:00Z"}, "updatedAt": "1983-08-15T00:00:00Z", "value": {"E7L9FK6e0MrPc4vt": {}, "xk9hVKlG56HlzGr7": {}, "XjdyRJunZPkp6ccI": {}}}' \
    'BnWyPw8mj7gyQ7Xd' \
    'IszGRj46COPipH1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["VTHG0qHJCWEfOJpZ", "m9yEYWNGMy2pgSGS", "UOK68eqGJtWf1Ybg"], "ttl_config": {"action": "DELETE", "expires_at": "1971-04-21T00:00:00Z"}, "updatedAt": "1979-01-30T00:00:00Z", "value": {"zaf7CaOSlHXrUSA6": {}, "sMJzA5mtqISQ83TT": {}, "btefXWznDe4LQdXf": {}}}' \
    'FBii2RAMEX5RMjBF' \
    'VZGYzQqV8d9mDdUI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'oiIJFNxuNOmUSWw1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminRetrievePlayerRecords' test.out

#- 54 AdminPutPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{"key": "8T1IxVWCxdvPL9e4", "value": {"P01vxP8xj1LyEirU": {}, "RERnEMzpImW6sjAH": {}, "yCK5tNanGBrkzUvc": {}}}, {"key": "k3xTtmOFMebS4Adl", "value": {"Nzwog2IhErkNhNcE": {}, "CWwchW6zL9SkbLlr": {}, "NXnGanMazb8jvRWe": {}}}, {"key": "nURH48aJuALEcSqc", "value": {"E15u6D31DjOsrs3C": {}, "UYATdqnQGbqiqOkN": {}, "eATj7eGjodd7CcJU": {}}}]}' \
    'rI6MAugK5kypNrp2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["nFe9FmN86sK5LOq4", "ft5jGcMICPUYnfG6", "jl9U4jReteIMgzIS"]}' \
    'omCsodJrhQW41q2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordsHandlerV1' test.out

#- 56 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'spCZbt3Uta5I0uGc' \
    'L1koyHjCH5olYLET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordHandlerV1' test.out

#- 57 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'RpABAmO2EGvJ4UMS' \
    '93yOxNInDByhnolu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminPutPlayerRecordHandlerV1' test.out

#- 58 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'O6ti0QP2ssiJ66Oz' \
    'Oj84O6tgohjtC7bz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminPostPlayerRecordHandlerV1' test.out

#- 59 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'jPpucddXJ5zifF8y' \
    '959anrNSleywHbHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminDeletePlayerRecordHandlerV1' test.out

#- 60 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'g6IKWVZ77KeRWdEC' \
    'aFGzfZ2hxcJ2Fnem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'n7M23SzUo4hNBDh9' \
    'ZFP1OW0nXOErQPS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 62 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'VsRoYIK69yg9ADCG' \
    'iXaLs2xjHkinOD97' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 63 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    '5nARHCmhNHSXuqIH' \
    'sxvaUoXDmwWsukxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 64 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'cuD3QxCXMd00YBWC' \
    'aVVmM45mfIZsWhkS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 65 ListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'ListGameBinaryRecordsV1' test.out

#- 66 PostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "476dGGJwJ00UH197", "key": "MJ6zU7JLMQyMWzYQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PostGameBinaryRecordV1' test.out

#- 67 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["CAaPJgoxGJoJaSzU", "tY4ZD0Xtb0U4pH16", "NUsVY21NVIs7NRen"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'BulkGetGameBinaryRecordV1' test.out

#- 68 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    '2Y3Ns0QJQeaWytPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetGameBinaryRecordV1' test.out

#- 69 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "ds1BYx0EaURydf8Z", "file_location": "yyZeHAWGgJUbUJRM"}' \
    'bkcTglbU86FyOjAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PutGameBinaryRecordV1' test.out

#- 70 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    'NHBVfNOURcjY3YYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteGameBinaryRecordV1' test.out

#- 71 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "9oTynmfIuBWgJTNF"}' \
    'fM8M0IW4oe8KDgy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PostGameBinaryPresignedURLV1' test.out

#- 72 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "1983-04-23T00:00:00Z", "value": {"ZfAcNg14Ws8TIP1L": {}, "KiFQoLDvumfqrgSf": {}, "nx2h61X9dN1MGRXB": {}}}' \
    'J6mVV7JS9qjNLwvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordConcurrentHandlerV1' test.out

#- 73 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["8JdiY3RRiLilmOGF", "6dLLIeIVIjMcdlbd", "RXTGIrdNL5gJPqTA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordsBulk' test.out

#- 74 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'jgqaTHf1ANTJ9Yk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetGameRecordHandlerV1' test.out

#- 75 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '97XkGOdC6ItxDT8p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PutGameRecordHandlerV1' test.out

#- 76 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    '4n4XCFkD1AJLCwsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PostGameRecordHandlerV1' test.out

#- 77 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'bZxuHSgDOK8bjoF7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteGameRecordHandlerV1' test.out

#- 78 PublicListTagsHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-list-tags-handler-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicListTagsHandlerV1' test.out

#- 79 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["bL2635KbtZTGJpqg", "l2IzNXGTuQPIDpor", "7t1aJLNNz6QIVC9M"]}' \
    'fuc8VOsnmnlVljdW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 80 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["YmELe74p38vumnxA", "nYBTxaTIz0jcgDI8", "Pkz96vd80msqIm5b"]}' \
    'ufnBqrpLeqhwVhjn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 81 ListMyBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-my-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'ListMyBinaryRecordsV1' test.out

#- 82 BulkGetMyBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["njKMEmtbiWsAQHbM", "rKYi0Zxs5SWCqZXH", "LLa31oQf7BULnZDh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkGetMyBinaryRecordV1' test.out

#- 83 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'RetrievePlayerRecords' test.out

#- 84 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["utDM6BqguqD5xxGx", "BWtnTKUe2znsqPzP", "kwCBo2SwCUsTag4M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerRecordsBulkHandlerV1' test.out

#- 85 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'LAo3m61P2xaNfmn8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 86 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "Onb1a9gMz0F2UBRm", "is_public": false, "key": "DmgNEJBhgGq5GIDh"}' \
    'NC66szbCCf73IFbR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PostPlayerBinaryRecordV1' test.out

#- 87 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    'kPSSITz4TjCrJHXG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["Xku2YVuOzhxHmnrr", "V9ZGWrZ05sxe6A6R", "pmKDebNkylbynkgT"]}' \
    '9vayLLiizac7Ge6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 89 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'KJdlt7rjF5RaJwvk' \
    'WVco2LTo5ijlvDF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerBinaryRecordV1' test.out

#- 90 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "qBWCQ9dLWYyS8zdh", "file_location": "MeBXH8x6HdVfZVDA"}' \
    'iU6iJOF7JKZFNk2N' \
    'Ky59X8iOg2sVBiCo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerBinaryRecordV1' test.out

#- 91 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    'eC5weXJl7PeiMH8z' \
    '8dVej8N2yv6VTnOK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerBinaryRecordV1' test.out

#- 92 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": false}' \
    'xAvM7tuL81lsR7xx' \
    'SVp3Gd2TK0HzYviT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerBinaryRecorMetadataV1' test.out

#- 93 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "gYmx82JVBRLPZ6Iz"}' \
    '8tne5dbguBF6Gsvv' \
    'dl8jHz9x7XZIjU4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PostPlayerBinaryPresignedURLV1' test.out

#- 94 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    'K9lOLaZaMphKCqTq' \
    '3EVheJjoEEXBLIxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicBinaryRecordsV1' test.out

#- 95 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "1978-04-07T00:00:00Z", "value": {"NuhoJM3WWPvvCiCf": {}, "33ViEdqQpoGkUWNi": {}, "zk5UcPAGv6c1ESC6": {}}}' \
    'hZYTYZbzf5aANNNs' \
    '5kgSZZNUHbIT9szA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 96 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "1979-09-26T00:00:00Z", "value": {"mWJO5vzzXZj08a6K": {}, "1XRVfriSpPFnZBJZ": {}, "kDnEiyfa2LrnpZxN": {}}}' \
    'nLRH36bqS2oFY76P' \
    'U1AziBOHEAj1cT3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    '6Zc2FbrTFznTgDIw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 98 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["ZIRWf6T3by2kYSCd", "nFKLc0xcTjqjdcEf", "U61OJYMnW49rWynp"]}' \
    '1ck1vT90C6o86cSR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 99 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'L9cgbUmulhe98oaF' \
    'KlQicdrxVhrtwSd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetPlayerRecordHandlerV1' test.out

#- 100 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'QWVMYz7TU1TsxsCh' \
    'SclSkb5aBi9K9zyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PutPlayerRecordHandlerV1' test.out

#- 101 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    '6gFZXI5nXJ7hLi6H' \
    'weweRmyo91dIn7Qq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PostPlayerRecordHandlerV1' test.out

#- 102 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'XBDXJcrqKmXDwoEV' \
    '6tCdrxw1KOPhuvHu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'DeletePlayerRecordHandlerV1' test.out

#- 103 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'YrGWDK41uMOC0mRv' \
    'SoaGk4ktF5wnJDg9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetPlayerPublicRecordHandlerV1' test.out

#- 104 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'Q3WXiydCOInVolsr' \
    '6CHmj763vLwtYEJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PutPlayerPublicRecordHandlerV1' test.out

#- 105 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'SiXjcY5ZPkv90lyK' \
    'STWLxSFZ0LpupEi5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
