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
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"tags": ["BRd8lDR6qVNPRZYd", "FLIAjGGJddVCvu9v", "x5KQ7KYnIuMBvaO3"], "updatedAt": "1988-03-30T00:00:00Z", "value": {"9u6Vpbsx5w8hqUI0": {}, "6UpOXGSLmCVuHOPl": {}, "LlkvR8sKgnuRkggh": {}}}' 'GoYupD391C2qtPYo' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "CLIENT", "tags": ["GrncqmLtjQHAf8Tg", "oNm03VLisV6zwPuo", "3td6TC6I3lMjGSWN"], "ttl_config": {"action": "DELETE", "expires_at": "1976-04-21T00:00:00Z"}, "updatedAt": "1971-01-08T00:00:00Z", "value": {"RlxfcjHfYakUCTqG": {}, "kE7wcWfDslpJSqGA": {}, "XQ0yYoNRKd3IL5TA": {}}}' 'Q6iiPlSC2uE4o5Vw' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "do3fePqIJA8IHtrk"}, "customConfig": {"GRPCAddress": "mu0hpDDWVAla2l5B"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "qwGyzzWi9gwQYv7t"}, "customConfig": {"GRPCAddress": "1o7TTr1DmrhZv15T"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '22' '52' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'GZ5dAgqxpBFmaLox' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'ozr6wfNPX2bOItRM' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'vqtlB2jJCSQT279Z' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'ZPYGu0rdlgdWyOtX' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-ttl-config 'i3choQrpOsDBU5Se' --login_with_auth "Bearer foo"
cloudsave-admin-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-admin-post-tag-handler-v1 '{"tag": "pjChB3V0v52Dlym6"}' --login_with_auth "Bearer foo"
cloudsave-admin-delete-tag-handler-v1 'puQ23xoJ8aeCnaLp' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["UKp44YUDjasWIPUv", "mEejtGeoyIPa8ZRr", "vjj7il35MXbN9oCM"]}' 'Nqq98SjTvhZNkSQ7' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["0D0H6BXksUC9b6i5", "lZC9xv32e8c5csSo", "voqsZNBdte9NDUPV"], "user_id": "Jf6c2Z0QZxfgPubT"}, {"keys": ["DIHrvqAThuwjRHpK", "KTlmVr9XuoJbRFQS", "KVPHbn4Xxtu7LQRE"], "user_id": "NjEEztx1WsYSiZqa"}, {"keys": ["n0nSBJroav91GXlv", "PG6bFYReVHQipcCx", "9Zw5D2L7vIYhGGSy"], "user_id": "EW4ZJJ42d3PBddN8"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-put-player-records-by-key-handler-v1 '{"data": [{"user_id": "S48l9lyNApflxqMr", "value": {"j3oZk03QXcKMDYDD": {}, "xHSZjtqXyJ58f7Gc": {}, "26SaiGVkydwYWQG2": {}}}, {"user_id": "6yUZNmTBcvrbYCwZ", "value": {"txFHyPLtI8ilbyDP": {}, "UIj88cekdqCt81P1": {}, "ktfIovmv9gsR5cJc": {}}}, {"user_id": "Hm3SZLxoRDFuuuyS", "value": {"j29a9LJE8HoRS1X2": {}, "PFAAMwzHPxB1UskY": {}, "s4Yw20DOqOBSC2DK": {}}}]}' 'HRuPMMWH8Yb33T5U' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1 '{"userIds": ["BJCjfcnLRfxeCSz9", "WEi8KlloeH0JT1yd", "uat2vQR3biBfsu4j"]}' 'msRE2w1yEkLgh3tI' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'Yt4SqYUTLDx9gIiD' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["andpGT2t24aOMh5e", "C3IHeHSKLCa3xreN", "DUWehwH3q31A806D"]}' 'Jgas4b6z3LNUj7fd' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'gLA84Z8YYk6QEgJj' 'BbEDoNf3n0hEoRCA' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'cf80zfFyabWAgIUX' 'iI07A68eaqC2J9jy' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' 'EW6GLbc0NaKDUL3s' 'a13lk1dQBHO86IlB' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'hnetU4RwTqUXlTDB' 'zOuYsaZA2yyd4mbq' --login_with_auth "Bearer foo"
cloudsave-admin-list-player-binary-records-v1 'oOfADMMAXFaY9eKa' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-record-v1 '{"file_type": "699bRVhyaKwwrAP2", "is_public": false, "key": "MzF4TxodenSrUTvf", "set_by": "SERVER"}' '47g8OudOfjnCuHZ3' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-binary-record-v1 'c46IjGa23YvYmmDg' '7VYPXIuvUYTZBRuj' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-record-v1 '{"content_type": "IUE1Tq5jyAZvkRCM", "file_location": "NFIurjh2imdb4rbk"}' 'Xj0ZwsVC0gL97ZVJ' 'SPqJiwv1qlYB1RSK' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-binary-record-v1 's6gQxC3Gb7S0o4zG' 'YY7KQI1AeFgPqaOk' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-recor-metadata-v1 '{"is_public": true, "set_by": "CLIENT", "tags": ["Wql4nmwAft4gqkNN", "lWkD9eOziYRFOn0j", "JLHC9LxhvNXTwGBC"]}' 'tohLtl9Zuhytm5UD' 'rT6QXCs5SPBbRPZT' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-presigned-urlv1 '{"file_type": "F6oQAXVG7tnsZg5Q"}' 'gXjvyGJPN4eXbJE5' 'Vs2GcyomQoIXimBJ' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"tags": ["ehyxlNsjUgxBkF6w", "FPoJeQediogEhhM2", "rIizGdKvOPdq5xrg"], "updatedAt": "1983-01-18T00:00:00Z", "value": {"Smy1DN9LFkYW5DQy": {}, "j4bj5Ro2ogaKt2uj": {}, "QSa3Zdb65UXmy0Zp": {}}}' '6iIaTIKUkmkk9QM0' 'NBMA9ORxpzwLR2AK' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "CLIENT", "tags": ["eXUGPJsw1fiP80G9", "Pclxcft2ulIJzPyr", "VEiOG4UcqsuGKHhM"], "ttl_config": {"action": "DELETE", "expires_at": "1995-08-21T00:00:00Z"}, "updatedAt": "1972-04-11T00:00:00Z", "value": {"3DlhLuIpomM8sm1M": {}, "iaI1mX2tJoARtdbB": {}, "e7udsMrok0WvGYYn": {}}}' 'x4V709xbnGezKsDw' 'G2omOR2nvYI9TVqJ' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "CLIENT", "tags": ["pjvsugAOS7u8RiWy", "erCSa8SRgwsAj1ik", "1jglaDXTvKCWwNTA"], "ttl_config": {"action": "DELETE", "expires_at": "1979-01-31T00:00:00Z"}, "updatedAt": "1978-07-18T00:00:00Z", "value": {"wrS0uPdjhdinpng5": {}, "BLy8wbhMssAHjapI": {}, "kY9Rf4wP57dBZNR8": {}}}' '8YbCtmKy8M9zVrjf' 'GXZnqAQUoY1GjlII' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'k0iKoTTS1j02o7Jj' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-records-handler-v1 '{"data": [{"key": "TXAQN0qdskdQV0Tq", "value": {"I8EFnmDbxIxi4YKl": {}, "ONk2Q5Y4Jvaizwii": {}, "latuUjjt9lIMGql5": {}}}, {"key": "ElEa9EIIlGcHB3Cf", "value": {"R3ncDlwi3v3MFFJ1": {}, "KesKoELCpobBEG8X": {}, "645xpdXpai0rYaT5": {}}}, {"key": "hOPjaf3H0tYighU0", "value": {"VUfcYHJbBfAKSiPW": {}, "3VgsZXiR1DJ7HVWq": {}, "MkNSawQUWDFJvJBW": {}}}]}' 'ic7UkBeIXuqDuAXI' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["66bQ71w0deoV9Lx5", "RDA1l2XcrciYNEzv", "SZIPkhSgORcz5S5B"]}' 'vmgBLxh4ijFnE3Ta' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'm69qSZ7PC6f6QkmZ' 'XElW9YfRSse6AAz3' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'S4czz0QKFlAVmVLu' '4AOec0z8eBeeoip6' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' '8J1nsv4W2OJhtafx' 'MSJlHeb34sZKHcl5' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'LLLOexL4fZvWtND2' 'tcBFpX8lNtFEJ7tn' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'kY6Mca5afj12K2Iz' 'rBvvWm4udE0OXudX' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'gNne8kJATwlc6esU' 'p6Sw1I98jeZQ7hfx' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'nhLd3Knaknoed9DH' 'hLOqQGhCUr6iTrjy' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'EgarAdNJOIG36I6t' 'RbRcrEveMdAdiPKD' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'UVSC00PYeDcaggin' 'xnFIna3yddcbsPhe' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "TH26IUJNvYuGRUvp", "key": "ZaHCuESOiIZsMfB4"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["ZH3mtgWgU4pCAKxe", "E70CaunQNxot371W", "9G4AvQkqsGnmyo5J"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 'JTUVmb8GEXFTlEME' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "sFzYqwgK1Np5nodq", "file_location": "pLm7FhJBNXzAFdO0"}' 'Khqf6kiTdSGv2LFj' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 'AKY7CbgsWqFWZX7k' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "PBom8F9GLLTG8phc"}' '3n4iLoIllKlpO2pq' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "1975-08-20T00:00:00Z", "value": {"XJF3WGRaoQomSJC4": {}, "DdrKF7SUQPLG59e0": {}, "k5ZtX6wK7PpUlcIW": {}}}' '32iK7MGt1ixY5rA1' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["WoVeJIePF8ZrQzP4", "zvtdxdbZUpd6FJtH", "J1pyVwyKQLY6FEO6"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 '5Rb3z7CYLM8IlsHq' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'ffnrfsGlfPaZKBwa' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' '3Ddb60ufPpzwj1QG' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'IFmlVf4jvapseE9L' --login_with_auth "Bearer foo"
cloudsave-public-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["N9bvhOrHflIOd6X3", "viLvtEk4mTIpUA9g", "xo8SV38nEhoXmM2W"]}' '7l6jHMA2rG3nakop' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["Aywelu01nryEJ0Nq", "oTow0qiOiC4j0ikt", "m0ZPLkLOsp0LZ5nj"]}' 'N86Hl8kUXzt6bSc6' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["bWvgpVyW9dD1kOmv", "rAejcq2LgkQuaS7R", "Bx3vim02jBOxrZDy"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["vpcLYOWA8NjxOnaE", "ok4nOOCzfsflhjbn", "gJOUn18G5MlfDTk8"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'aG40NlncceIZSwgA' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "Ikgzh4pTU0Am4DZh", "is_public": false, "key": "3tBf2jnHGKXphn50"}' 'c9tNLDljhZ2jxLRX' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 '3z46OCaGBeMfPlNo' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["s4yBRjrERHEonAZR", "8GmEu0q1p6QCyY6v", "SkVFWdsbYuVEGVxY"]}' 'heR3j5mNZ6vwv7K8' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 'Asvt1j1Rx59hesNW' 'y2NvZ85DDKDAF8KD' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "sBZOuYQJ03BAHZ7c", "file_location": "53q7akMpcmnnx6RV"}' 'Brop9v7aZK3h65hb' 'N15zfQSfQrtfF3TQ' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 'N0OcNDLr36vzohZy' 'jMQAg5mPYhrLTyU8' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": false}' 'vc1BZG99LyvfvHEs' 'JKQQewVLMUoAnaRc' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "Yp7FUjfIGaffoflE"}' 'IByYqeKN0meGelYF' '5wWaDhukU4khGG4v' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'ZFTYnPkmSu4PWam1' 'jxR7SETWjteoc8fg' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "1981-06-23T00:00:00Z", "value": {"ZDDhoO05oKqymxLD": {}, "1Lcvw6T6mZEiwxxE": {}, "lpMYSWIeVzm7z9no": {}}}' 'owmlTIKVowi0RY2V' 'N4ZONJREdUQ3z9F1' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "1985-09-02T00:00:00Z", "value": {"xNNgnke4akncw7wu": {}, "9TmXfJWBPrx9Ns8e": {}, "LzYEvwSWTaLQjctv": {}}}' 'rK2jhsYpKPlXn77A' 'tYoFzLAATPY8P8P3' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'cfoivvQxevecWw7R' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["ry0KK5rgAGO0dW8r", "X2MVUGKSZ4GcLkt4", "pK32sJxlZcCTpTdR"]}' 'tCHvuk6B6XTmSLyn' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '50sigBVZxiKdV57G' 'vRyd9UuL02Le8HSC' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'slsDd4M1F5qRIblS' '7Nz81GRazPAANjfB' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'oldFOyqA2clJ5gEO' 'aCgM6Yn6RugbNEIp' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'GBFUjOn5mM7k8nbL' 'zvtCIW5ynMKquUic' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'AeIVXtoWAXhMlW4t' 'LqX7OICf5oD1e6oI' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' '9FmYel0kOw72o8Zk' 'gk0jS6rDWUwfhKvr' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'f2AaH4yCWrHSppnI' 'ZkNnTn3rzH5NvAtc' --login_with_auth "Bearer foo"
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
    '{"keys": ["vNedgS1fUfKmihDb", "mu8ePWlQMVDXEHei", "GTnwyEw6hIWDZrpP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    '7rz3ISW510kHr4is' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'TKWjmv67nuHCXWfw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'nwGioVwVzmmBVVFf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'pqx1AeLtzcPJ3jtD' \
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
    '{"file_type": "YBo4FUTH7CGfKSyx", "key": "gRR1DiCqSMzpqIFG", "set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1981-06-03T00:00:00Z"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'lzUcuHAXz0UV31Mf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "uGaXsAuGsZaSHevO", "file_location": "0TQNEI3kfabxJWWS"}' \
    'I1ECUo1NPpeFhUzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'XDgB7n4C97uAPP8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "SERVER", "tags": ["ulU6FYBZsWFbr3RS", "P0W9nBhvhf8Q0DtJ", "McYQdN66bswAgt65"], "ttl_config": {"action": "DELETE", "expires_at": "1999-11-13T00:00:00Z"}}' \
    'HKWW4fI1IQcoBQEL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "cNlZkqTZrKgXNwvm"}' \
    '4e5GX6H742OixhtA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-ttl-config' \
    'oKiVm6URT95XhnUc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"tags": ["vWB28MpusuhhDJ5s", "lzgiWZEtyd56Lfxn", "bY97jjYgXchCbkXX"], "updatedAt": "1998-10-29T00:00:00Z", "value": {"6uEdCfQaMAQuTKfC": {}, "0I2kNjCMDtDMrent": {}, "gn3DhqciwIeShF9R": {}}}' \
    'Kb9vvxuJlhXbWhbw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "tags": ["ztJBg0tTJg46IewO", "XE2AkCh3QIZsUf8l", "GFXcmwTERHclOdxI"], "ttl_config": {"action": "DELETE", "expires_at": "1982-05-16T00:00:00Z"}, "updatedAt": "1996-01-30T00:00:00Z", "value": {"kLob9gKLqs2nEZhp": {}, "ByfHZinxNfgPAwkM": {}, "BsznlBUqnLT4AbGp": {}}}' \
    'tKaWNvPbpg7yrRvX' \
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
    '{"appConfig": {"appName": "fZ6rvgvEY3Hht1Sw"}, "customConfig": {"GRPCAddress": "qTsKKKo37NHDOQe9"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    '{"appConfig": {"appName": "IH9c4VfkyrwpuXxb"}, "customConfig": {"GRPCAddress": "aERbfgPmi0eHkt1m"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '81' \
    '9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'VL70Iw157g00jr9b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    '8MuYmmeKTmBNvGYx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'EQdf3ewoGGoY7xmF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'NAmjDDCvs78mcMdi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-record-ttl-config' \
    'S76YApGJ9ufwLYkq' \
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
    '{"tag": "IgLuZS6hsQryiEtO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-tag-handler-v1' \
    'AbpeUNf26UqkCfgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["UYBn2xaOBdPF0JmX", "8qwU1cTuHHPB5S3D", "vPRCzBrVUxmDOj3c"]}' \
    'vRFaTC11W0TGTCm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["fZWuk6pQxDQpKqxL", "GeMvr9TsvcMQ7dBs", "aIecRxIsZvD6rmzV"], "user_id": "r5XT1Nxw0v1dMQ9R"}, {"keys": ["rbk6C2cVWf6ttvbU", "1PO6ApCD2VXidT7w", "0Oc15N8WXBPp17PA"], "user_id": "ewqSm5x3B4t7WQnp"}, {"keys": ["8jXZedgt5cyNe27H", "LtwtVOaxgP6Jbct8", "puMybYGxD9IPmmsL"], "user_id": "mu3kaPj0O4zd8Tb7"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminBulkPutPlayerRecordsByKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-put-player-records-by-key-handler-v1' \
    '{"data": [{"user_id": "cUNGPTBxiFFCrn7d", "value": {"jjs69FTFVGUVhvKh": {}, "JCmeisql14mUHVbM": {}, "PimNhcZsU3VAdMDc": {}}}, {"user_id": "b4qlkiFAamqvZI2K", "value": {"wjqPBiWXade41s3r": {}, "H34mB2yPlRpWjmHZ": {}, "AAvKTH8MuqIg0Czk": {}}}, {"user_id": "guwuJCW7EEFB67AO", "value": {"Dbi9BzupBsFpYc77": {}, "GtRUcCFeY5g4XgBs": {}, "bfzqxBPNe8ae1Il4": {}}}]}' \
    'aAtEbu4IjGdqthRx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminBulkPutPlayerRecordsByKeyHandlerV1' test.out

#- 35 AdminBulkGetPlayerRecordsByUserIDsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1' \
    '{"userIds": ["TjQ7gkZEY8rG0q0Q", "2Qd2JzRbkF2I03dI", "jvBbA6bfbYaJCJjf"]}' \
    'k2TUvn95FhO7VW3m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetPlayerRecordsByUserIDsHandlerV1' test.out

#- 36 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'bDVMDu87t0ldWf7i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminListAdminUserRecordsV1' test.out

#- 37 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["SGIiKFtWtn4Yr2sv", "KM6pqLGZ0TBujELA", "UK6mQ5iZgbwwm5iG"]}' \
    'zXtcknrgidKupvXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 38 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    '6aj4hCmTC34jxW4p' \
    'IDwdqXpmRmut9H9X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetAdminPlayerRecordV1' test.out

#- 39 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'yWI8bp8fQxRuX91u' \
    'YmtrHJbEGTUj7YjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminPutAdminPlayerRecordV1' test.out

#- 40 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'RL1rEQG02zccA8wv' \
    'LsWUNd6lPKvqDejv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPostPlayerAdminRecordV1' test.out

#- 41 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'qklTSvDwuOrP9lzp' \
    'iX0VuFpZum7izxe7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAdminPlayerRecordV1' test.out

#- 42 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'NPzjOa8E7wY76PxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminListPlayerBinaryRecordsV1' test.out

#- 43 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "v9HBEUe89AwEw1HO", "is_public": false, "key": "UtV9GJ279GDbLNwj", "set_by": "CLIENT"}' \
    '3nq6VerzVCcI8y3C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPostPlayerBinaryRecordV1' test.out

#- 44 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    'z0YqCKUh5RD9vNAp' \
    '4jinFpnQ5xF9wwbv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetPlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "MZyeDeRnVfPUa6xV", "file_location": "VBcq3wZpFIYeAg79"}' \
    'HcLJXJ7mpVI6eTYA' \
    'jdPlCiQQC35cj4Ky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecordV1' test.out

#- 46 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'OVgvnWbfRJtsB7cU' \
    'QZ2QUAxJrINPXppP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeletePlayerBinaryRecordV1' test.out

#- 47 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": true, "set_by": "CLIENT", "tags": ["T2fSk3LL0calqxEe", "wuGS469k2hG0WKt4", "sUmanYxM0UHZVNYz"]}' \
    'GMNIpWoSLkUrfuf4' \
    'U3WeYeA9t2ENKKWr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 48 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "FtHIi1CMgKAOG5iD"}' \
    'cCR5PbCvDLil8wj9' \
    'cKM3Ar6MF35hCER4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 49 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"tags": ["nGmWGgTJfHlJl4tH", "Ga4XfZcd9CVnGqMX", "9FieeEssWEUl07bh"], "updatedAt": "1982-04-30T00:00:00Z", "value": {"ntCVqiYOJf5KwMZQ": {}, "jzvjSozv6CTRDl0z": {}, "p9CzHFwinkBNi4gv": {}}}' \
    'qgl6TZ9TGVPmv34h' \
    '6T7EsufmfxKYB4LM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 50 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "tags": ["6QXmpZ9X3fUSR1l9", "xLPBsmAUrD9L1IiD", "6MlcEPhMDFzjHZ3s"], "ttl_config": {"action": "DELETE", "expires_at": "1973-07-28T00:00:00Z"}, "updatedAt": "1991-11-10T00:00:00Z", "value": {"x2CXKlvIomU3pIxM": {}, "9n8D2eLMe3lt9qfx": {}, "2UDcgVE7L9FK6e0M": {}}}' \
    'rPc4vtxk9hVKlG56' \
    'HlzGr7XjdyRJunZP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["TGAak7Kaol01DK97", "D2xnik42miteR5eQ", "Ae1rzmmgqBPRmd6m"], "ttl_config": {"action": "DELETE", "expires_at": "1974-05-04T00:00:00Z"}, "updatedAt": "1991-10-09T00:00:00Z", "value": {"JpZm9yEYWNGMy2pg": {}, "SGSUOK68eqGJtWf1": {}, "Ybgg8rdwY9bmrvHm": {}}}' \
    'O07KNqX9LM2IwEsd' \
    'OGBXBwnzDX8v3xgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 52 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    '1Ge9PdbTTAJ2Gp1r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminRetrievePlayerRecords' test.out

#- 53 AdminPutPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{"key": "0sVZ6LJAOddIL2l3", "value": {"hPjNDKv2LWfXqjr8": {}, "fS79En3wYowBdkaZ": {}, "3y6i38XQjLDRqkpi": {}}}, {"key": "FK5BtiQ272Uo9UBJ", "value": {"WodpdwsX1jorcyR0": {}, "x3YiHF8ITGPRQBCg": {}, "Is1Q2lzxl0yF5m77": {}}}, {"key": "TTh4gUoj8u2WRcLi", "value": {"EtzVlnkflfn7pHY4": {}, "8F1dl1q92m3iRlfn": {}, "BAk0CwiAsR65yQ9s": {}}}]}' \
    'suHdGmxncCEr0Kcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerRecordsHandlerV1' test.out

#- 54 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["eqzGbruNB72HHMkj", "zyBB4UFKiaoV0VOe", "m2yqPsMFxKybPkbu"]}' \
    'S6x9cLJ1APnNlsa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordsHandlerV1' test.out

#- 55 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'bRBr27fVMWuAfDqL' \
    'MR919IZPKOKiAVQX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordHandlerV1' test.out

#- 56 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'XOmqFHLbyXmgCNiX' \
    'H8uenbC5CphgMwee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminPutPlayerRecordHandlerV1' test.out

#- 57 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'xsIAP5vHLjBJ9iqM' \
    'cBL4BzhDUjhKPwbw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminPostPlayerRecordHandlerV1' test.out

#- 58 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'cvQU5kG8bXGFmPAn' \
    'OkDiJq4xQye7HqnV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminDeletePlayerRecordHandlerV1' test.out

#- 59 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'K3YVeOWs9mfVQh3j' \
    'LBtn9pxpE7BYtzB0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 60 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'B4CxyQrUpIFvORxT' \
    'i79DpSjb39ukcR6c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 61 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '2E2r3vk3IfAKEbqc' \
    'NXSGCCvNowNmdpcJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 62 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'gF88ySNq4Mj7mulP' \
    '4tQ6R1OqKVOTniBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 63 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'LsNhdgQ0JWZjNRSz' \
    'OTqcVNX3ahvxw9gw' \
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
    '{"file_type": "whTnjN6wKZGW4y3f", "key": "0R9s2kndhhZhwAiL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PostGameBinaryRecordV1' test.out

#- 66 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["sZs4pmLDIQch4IjD", "q9aT3qZyI0rYsWuc", "AkXsVJbXi7eRZa7W"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkGetGameBinaryRecordV1' test.out

#- 67 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    'wIc895ImqK6tVsaU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetGameBinaryRecordV1' test.out

#- 68 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "q3stUh5J5Z9GiBiS", "file_location": "AylX5cS0IeHpWCug"}' \
    'mfOL0QQpxsuD8PGq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PutGameBinaryRecordV1' test.out

#- 69 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    'ku59eFJrOXyDYz9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameBinaryRecordV1' test.out

#- 70 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "MUOPG0iHDT8QbF7g"}' \
    'HPTPQbvLt2NRqJGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PostGameBinaryPresignedURLV1' test.out

#- 71 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "1989-03-12T00:00:00Z", "value": {"zLyH1y72L13Ornyx": {}, "34luLdvtsTKXMjiw": {}, "6gYPvfn2Qt9iyq3N": {}}}' \
    'yk8ncu2Z3eDHH9Wa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PutGameRecordConcurrentHandlerV1' test.out

#- 72 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["VO4iKhDcJ7TCcNIs", "Q3PuppUxDSK8aOTG", "MudcxlCV4cNbJGQ5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetGameRecordsBulk' test.out

#- 73 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    '7lPdinpjS2DRfGt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetGameRecordHandlerV1' test.out

#- 74 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'GlyZVQ4X67tPZSTp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PutGameRecordHandlerV1' test.out

#- 75 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'Pq3xjrElvvDgw0ag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PostGameRecordHandlerV1' test.out

#- 76 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    '7kSWE0Hiqm5IuLry' \
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
    '{"userIds": ["iEXqvUWDjU1G0EVj", "VZw1ToLuPakQN1Mp", "Os1RVFrcg2CXxepx"]}' \
    '78fvsyhE2BKtyTDS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["IM7mkmvZ7Cmsh4US", "8o4jfMANPpmZDdMi", "CxmuCCVuFjS1GC1d"]}' \
    '2b92B4vEgj3HOmhc' \
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
    '{"keys": ["Wm428XejRF94NIY9", "nMrBZo0lNUBDShHD", "32vvL28FPwTiXfLc"]}' \
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
    '{"keys": ["xDC9Ynd02mECIQhf", "IhHtADUQ9zimQTQT", "95pFJUAJsyAfeKOu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerRecordsBulkHandlerV1' test.out

#- 84 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'fV4f15NohXu6opxQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 85 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "GRt6PqlkL0diRhLC", "is_public": true, "key": "0ih2EQfY3XCv4hdO"}' \
    'a6FdZhNMd1onFjGR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PostPlayerBinaryRecordV1' test.out

#- 86 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    'bxtABPXDmgNEJBhg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 87 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["Gq5GIDhNC66szbCC", "f73IFbRkPSSITz4T", "jCrJHXGXku2YVuOz"]}' \
    'hxHmnrrV9ZGWrZ05' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 88 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'sxe6A6RpmKDebNky' \
    'lbynkgT9vayLLiiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "ac7Ge6zKJdlt7rjF", "file_location": "5RaJwvkWVco2LTo5"}' \
    'ijlvDF8qBWCQ9dLW' \
    'YyS8zdhMeBXH8x6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecordV1' test.out

#- 90 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    'dVfZVDAiU6iJOF7J' \
    'KZFNk2NKy59X8iOg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeletePlayerBinaryRecordV1' test.out

#- 91 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": true}' \
    'XlrJ81lHvv9rqvEo' \
    'M8YmVjAkO3HKsEp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerBinaryRecorMetadataV1' test.out

#- 92 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "KlqwW4djrexcbHdE"}' \
    'toQvpV344RctmToz' \
    'Ci8HeV6jbalHmqBB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerBinaryPresignedURLV1' test.out

#- 93 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    'fi7sSF5BoGiTCVsX' \
    'sygWbjE2opXtdsJQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicBinaryRecordsV1' test.out

#- 94 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "1973-10-20T00:00:00Z", "value": {"IjU4IK9lOLaZaMph": {}, "KCqTq3EVheJjoEEX": {}, "BLIxGnNuhoJM3WWP": {}}}' \
    'vvCiCf33ViEdqQpo' \
    'GkUWNizk5UcPAGv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 95 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "1972-09-29T00:00:00Z", "value": {"1ESC6hZYTYZbzf5a": {}, "ANNNs5kgSZZNUHbI": {}, "T9szApmWJO5vzzXZ": {}}}' \
    'j08a6K1XRVfriSpP' \
    'FnZBJZkDnEiyfa2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 96 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'rnpZxNnLRH36bqS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 97 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["oFY76PU1AziBOHEA", "j1cT3u6Zc2FbrTFz", "nTgDIwZIRWf6T3by"]}' \
    '2kYSCdnFKLc0xcTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 98 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'qjdcEfU61OJYMnW4' \
    '9rWynp1ck1vT90C6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'GetPlayerRecordHandlerV1' test.out

#- 99 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'o86cSRL9cgbUmulh' \
    'e98oaFKlQicdrxVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'PutPlayerRecordHandlerV1' test.out

#- 100 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'rtwSd9QWVMYz7TU1' \
    'TsxsChSclSkb5aBi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'PostPlayerRecordHandlerV1' test.out

#- 101 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    '9K9zyv6gFZXI5nXJ' \
    '7hLi6HweweRmyo91' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'DeletePlayerRecordHandlerV1' test.out

#- 102 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'dIn7QqXBDXJcrqKm' \
    'XDwoEV6tCdrxw1KO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetPlayerPublicRecordHandlerV1' test.out

#- 103 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'PhuvHuYrGWDK41uM' \
    'OC0mRvSoaGk4ktF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'PutPlayerPublicRecordHandlerV1' test.out

#- 104 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'wnJDg9Q3WXiydCOI' \
    'nVolsr6CHmj763vL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
