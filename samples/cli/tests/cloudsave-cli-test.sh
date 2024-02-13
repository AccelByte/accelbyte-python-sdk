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
cloudsave-admin-put-game-binary-recor-metadata-v1 '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1993-11-28T00:00:00Z"}}' 'dl0zRVW4EZG9m0Xc' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-presigned-urlv1 '{"file_type": "gGVbMqSszE8GHavj"}' '7AorKsxwkosAVerX' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-ttl-config 'pc1C8XfwHuKeb9l3' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"updatedAt": "rGN9A3sNm84hddSp", "value": {"Ht0P7MIIR7CkyF6C": {}, "7duuyZ0GhDogqrhB": {}, "Rd8lDR6qVNPRZYdF": {}}}' 'LIAjGGJddVCvu9vx' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1993-03-26T00:00:00Z"}, "updatedAt": "7KYnIuMBvaO35llz", "value": {"QRaT5kPxUfofvnnS": {}, "uB0y5WUlrMdI4sNv": {}, "eabntBSxTeIv53HG": {}}}' 'CiljvjKoyD6SCwGr' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "ncqmLtjQHAf8TgoN"}, "customConfig": {"GRPCAddress": "m03VLisV6zwPuo3t"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "a7qxNeIxPz6MbwL6"}, "customConfig": {"GRPCAddress": "IY69z1UaLqYSYWyt"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '68' '17' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'PllG4cYEzfTD1ZBm' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' '3MqHcUmLZZbSqb8R' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'wNmn9HrNQy4uZAAi' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'E0mit9RGCCHYzUOc' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-ttl-config 'EdscKHPEqgA8yu7V' --login_with_auth "Bearer foo"
cloudsave-admin-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-admin-post-tag-handler-v1 '{"tag": "k6Jt4Ymos9Jcdos4"}' --login_with_auth "Bearer foo"
cloudsave-admin-delete-tag-handler-v1 'fYcTVU6RBt0zYoMc' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["HyCUEXlAvxJMdalw", "SyliWMNW5NyLu0M3", "VHh2EI8JlDbPWbQ6"]}' 'Q9lNmqRBaAkLnvxk' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["T1X68cmDc3fxU8My", "KrQpM4hkkK6KKXNB", "3Gv0IqmF51TkhjYn"], "user_id": "aq6foWvXa3bMrXsD"}, {"keys": ["r6kILsSSyDdmykmo", "PYgc2L4jk4Lo0LSP", "0pf4IxjUkl535X3a"], "user_id": "teEKDpADz1x3poD3"}, {"keys": ["Qgb3boLQQ1MzH7Qm", "8bwbmXgdAPh1EThG", "96gAFKK2WDgCcxvO"], "user_id": "NZm3EeERmDnyeFoF"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 '7VSZ6pf3vneSD2Tb' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["3g7mSQUhAEtrmjqU", "6YE3p4lSck0ZHn5G", "I39YBHqaTHeKtW18"]}' 'iGeUlc9d9sogWa24' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'CKNS0GqVvUfHQvsH' 'XNUNe4mhgo5QB65l' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'SAiYnNjkfZrQvGgb' 'LdLsFzHkBMr1yrOM' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' 'lNFSrUEirnjX9fDm' 'IbeZxzfTcyiuATus' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 '9hsfpFDcSDG8aMVG' 'LiBNrDjqoxcwgGLX' --login_with_auth "Bearer foo"
cloudsave-admin-list-player-binary-records-v1 'pUL4pp2ncYAHdNzD' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-record-v1 '{"file_type": "meIP6rOvDz9KOsb3", "is_public": true, "key": "k6YmJFfRByjlBiuF", "set_by": "SERVER"}' '3FIoVk8T3GpAnkCm' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-binary-record-v1 'BUqg2SCnqntX9y1a' 'ZSWMiVi10sG6vxkf' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-record-v1 '{"content_type": "UcmqRRbceJ5i0EeD", "file_location": "xOgBnhhqElIaDml4"}' '8wdNFLTm5T50x9WT' '0GfH2rtOa4EXsXzO' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-binary-record-v1 'XQAk4mqrxzTtuLl4' 'XlbGL8QOxtjzm8y2' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-recor-metadata-v1 '{"is_public": true, "set_by": "CLIENT"}' 'aOMh5eC3IHeHSKLC' 'a3xreNDUWehwH3q3' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-presigned-urlv1 '{"file_type": "1A806DJgas4b6z3L"}' 'NUj7fdgLA84Z8YYk' '6QEgJjBbEDoNf3n0' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"updatedAt": "hEoRCAcf80zfFyab", "value": {"WAgIUXiI07A68eaq": {}, "C2J9jyEW6GLbc0Na": {}, "KDUL3sa13lk1dQBH": {}}}' 'O86IlBhnetU4RwTq' 'UXlTDBzOuYsaZA2y' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1999-05-24T00:00:00Z"}, "updatedAt": "mbqoOfADMMAXFaY9", "value": {"eKa699bRVhyaKwwr": {}, "AP2aMlu7WtjCtoYe": {}, "tOO847g8OudOfjnC": {}}}' 'uHZ3c46IjGa23YvY' 'mmDg7VYPXIuvUYTZ' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1993-05-17T00:00:00Z"}, "updatedAt": "ujIUE1Tq5jyAZvkR", "value": {"CMNFIurjh2imdb4r": {}, "bkXj0ZwsVC0gL97Z": {}, "VJSPqJiwv1qlYB1R": {}}}' 'SKs6gQxC3Gb7S0o4' 'zGYY7KQI1AeFgPqa' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'Okvo1aolB4lkKB4E' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-records-handler-v1 '{"data": [{"key": "YOkQ1jMD3cym8xIf", "value": {"kOVW2grREOLx0KOw": {}, "w3HICQLfl7MUBG7q": {}, "tPu64yAtURKLRkb7": {}}}, {"key": "38HGS6rDgMdIIlhS", "value": {"1fSiM9331m7Ta1Ps": {}, "Kc50Kv6ecnEevcAx": {}, "2K2zkRenmPZnGBt4": {}}}, {"key": "P7WnbdSJtjX7ZshZ", "value": {"yZl5x4bRXBHUTrDz": {}, "ZSKscfOcYu3dpCRO": {}, "YqUiGKXVFCmpo6sP": {}}}]}' 'wVOEDSJsEK5QpNhl' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["I2iS5EpGhhvXYck0", "upMzUYnb76tFkEOR", "V3bu1bNCtX7W40V6"]}' 'Do5sYadCCFrHHC3D' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'pZxkrQDXuNFviMar' 'v8mnfHK8CCmE2lPn' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'sbD3SGEdlwuUccE5' '36ugBp3HBvepnDCj' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'gyJlXe36mgWjLfFm' 'teue9nzJ6fH24T80' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 '5tVg8JqU0jZpjvsu' 'gAOS7u8RiWyerCSa' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 '8SRgwsAj1ik1jgla' 'DXTvKCWwNTAhd2wr' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'S0uPdjhdinpng5BL' 'y8wbhMssAHjapIkY' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' '9Rf4wP57dBZNR88Y' 'bCtmKy8M9zVrjfGX' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'ZnqAQUoY1GjlIIk0' 'iKoTTS1j02o7JjTX' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'AQN0qdskdQV0TqI8' 'EFnmDbxIxi4YKlON' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "k2Q5Y4Jvaizwiila", "key": "tuUjjt9lIMGql5El"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["Ea9EIIlGcHB3CfR3", "ncDlwi3v3MFFJ1Ke", "sKoELCpobBEG8X64"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 '5xpdXpai0rYaT5hO' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "Pjaf3H0tYighU0VU", "file_location": "fcYHJbBfAKSiPW3V"}' 'gsZXiR1DJ7HVWqMk' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 'NSawQUWDFJvJBWic' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "7UkBeIXuqDuAXI66"}' 'bQ71w0deoV9Lx5RD' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "A1l2XcrciYNEzvSZ", "value": {"IPkhSgORcz5S5Bvm": {}, "gBLxh4ijFnE3Tam6": {}, "9qSZ7PC6f6QkmZXE": {}}}' 'lW9YfRSse6AAz3S4' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["czz0QKFlAVmVLu4A", "Oec0z8eBeeoip68J", "1nsv4W2OJhtafxMS"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'JlHeb34sZKHcl5LL' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'LOexL4fZvWtND2tc' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'BFpX8lNtFEJ7tnkY' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 '6Mca5afj12K2IzrB' --login_with_auth "Bearer foo"
cloudsave-public-list-tags-handler-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["vvWm4udE0OXudXgN", "ne8kJATwlc6esUp6", "Sw1I98jeZQ7hfxnh"]}' 'Ld3Knaknoed9DHhL' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["OqQGhCUr6iTrjyEg", "arAdNJOIG36I6tRb", "RcrEveMdAdiPKDUV"]}' 'SC00PYeDcagginxn' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["FIna3yddcbsPheTH", "26IUJNvYuGRUvpZa", "HCuESOiIZsMfB4ZH"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["3mtgWgU4pCAKxeE7", "0CaunQNxot371W9G", "4AvQkqsGnmyo5JJT"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'UVmb8GEXFTlEMEsF' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "zYqwgK1Np5nodqpL", "is_public": false, "key": "GWV6mTJ0sQs6XNbj"}' 'vqhnUVLWu8olKdxL' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 '6ozRmDD0jJvlfV5O' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["emPYdYT7DROCjtuz", "FMbAG9YI89hmguB8", "FOTjMLo4b9rIzqYk"]}' 'EpstyVTBcrM8rG0r' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 'H0zcswwVeMK6MbGI' 'VIu8vvwLc7KY3uVo' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "JXTIMtpgkieDyF97", "file_location": "lGdMiHKxbWCYzo8y"}' 'O2KTK9tmmOnYnOpa' 's6ghP1y4Zi7s7QBl' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 'k44Z44B1GZgKg4uK' 'xaCgcGLuC3brWdTY' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": true}' 'mlVf4jvapseE9LN9' 'bvhOrHflIOd6X3vi' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "LvtEk4mTIpUA9gxo"}' '8SV38nEhoXmM2W7l' '6jHMA2rG3nakopAy' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'welu01nryEJ0NqoT' 'ow0qiOiC4j0iktm0' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "ZPLkLOsp0LZ5njN8", "value": {"6Hl8kUXzt6bSc6bW": {}, "vgpVyW9dD1kOmvrA": {}, "ejcq2LgkQuaS7RBx": {}}}' '3vim02jBOxrZDyvp' 'cLYOWA8NjxOnaEok' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "4nOOCzfsflhjbngJ", "value": {"OUn18G5MlfDTk8aG": {}, "40NlncceIZSwgAIk": {}, "gzh4pTU0Am4DZhl0": {}}}' 'bQxFJ3sWCqQpQ2Fb' 'KPFMycMSQ4qfAacR' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 '0LgB5BUXvjcu2s6w' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["3VifnKqmTSoGH1XE", "fY6QAYn6WQ5UBEU1", "QAOHfZiGhxOdcuDX"]}' 'SxSc3aZPV87pna08' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'gxefTYKhuxaEc7M4' 'P7UckSC6ePeN8i4G' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'rFES9z7xueHpATHc' 'cee9GXhKcjmSEwdr' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'kEnnqKzFsLfYalUl' 'fwEQKjU7eHGebSVu' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 '0LQ40kepEaC4dfiO' 'MZfEhHr39pysFO3Z' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'vc1BZG99LyvfvHEs' 'JKQQewVLMUoAnaRc' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'Yp7FUjfIGaffoflE' 'IByYqeKN0meGelYF' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' '5wWaDhukU4khGG4v' 'ZFTYnPkmSu4PWam1' --login_with_auth "Bearer foo"
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
echo "1..102"

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
    '{"keys": ["jxR7SETWjteoc8fg", "vZDDhoO05oKqymxL", "D1Lcvw6T6mZEiwxx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'ElpMYSWIeVzm7z9n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'oowmlTIKVowi0RY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'VN4ZONJREdUQ3z9F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    '1BxNNgnke4akncw7' \
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
    '{"file_type": "wu9TmXfJWBPrx9Ns", "key": "8eLzYEvwSWTaLQjc", "set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1981-11-10T00:00:00Z"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'rK2jhsYpKPlXn77A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "tYoFzLAATPY8P8P3", "file_location": "cfoivvQxevecWw7R"}' \
    'ry0KK5rgAGO0dW8r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'X2MVUGKSZ4GcLkt4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1980-10-16T00:00:00Z"}}' \
    'BpWoJBaqdg2FHcun' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "sS1lnaO2m9vqjhbe"}' \
    'K2qN8g6x2PyYDo5R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 DeleteGameBinaryRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-ttl-config' \
    '3hLiD5sf5y1JsxJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteGameBinaryRecordTTLConfig' test.out

#- 16 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "Gmyt0SQDUDoWBZVG", "value": {"LlkUetzCAWc9x1aM": {}, "jgGim51T107XIZRZ": {}, "7tZdIs0xf4czdt7z": {}}}' \
    'qmSKxOEQlVcx6Gqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 17 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1983-04-16T00:00:00Z"}, "updatedAt": "vdhWVnuYLgpZehK0", "value": {"G2nmyuViB9kRTcSQ": {}, "dTnNYGeAfYFG3wSk": {}, "HKufBdS3ZOokZB4c": {}}}' \
    'XnAXyuGz6LlxHv8S' \
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
    '{"appConfig": {"appName": "wyagYvDJ3w3UNgIG"}, "customConfig": {"GRPCAddress": "j2jZtEYT8sIPSE1X"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "lQMVDXEHeiGTnwyE"}, "customConfig": {"GRPCAddress": "w6hIWDZrpP7rz3IS"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePluginConfig' test.out

#- 22 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '43' \
    '44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ListGameRecordsHandlerV1' test.out

#- 23 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'C2m38kXrDZWlGVE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminGetGameRecordHandlerV1' test.out

#- 24 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'sJ4NpUtKp6M9I6nE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPutGameRecordHandlerV1' test.out

#- 25 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'wnZhsjwJeGwaPSDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminPostGameRecordHandlerV1' test.out

#- 26 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'Zz95OYKiqaZD63xe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordTTLConfig
$PYTHON -m $MODULE 'cloudsave-delete-game-record-ttl-config' \
    '5rruJVfLGea0Ztlz' \
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
    '{"tag": "UcuHAXz0UV31MfuG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminPostTagHandlerV1' test.out

#- 30 AdminDeleteTagHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-tag-handler-v1' \
    'aXsAuGsZaSHevO0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTagHandlerV1' test.out

#- 31 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["QNEI3kfabxJWWSI1", "ECUo1NPpeFhUztXD", "gB7n4C97uAPP8PAT"]}' \
    'LpUpxeJlsBJT6Hh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 32 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["OMjAjq2mK8lbSEEe", "lxnb5QxWG2HFnZlA", "6HKWW4fI1IQcoBQE"], "user_id": "LcNlZkqTZrKgXNwv"}, {"keys": ["m4e5GX6H742Oixht", "AoKiVm6URT95XhnU", "cvWB28MpusuhhDJ5"], "user_id": "slzgiWZEtyd56Lfx"}, {"keys": ["nbY97jjYgXchCbkX", "X26uEdCfQaMAQuTK", "fC0I2kNjCMDtDMre"], "user_id": "ntgn3DhqciwIeShF"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 33 ListPlayerRecordHandlerV1
eval_tap 0 33 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 34 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    '9RKb9vvxuJlhXbWh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminListAdminUserRecordsV1' test.out

#- 35 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["bwPwToC6knjVwVnz", "aqSfJiQFC2gXoda0", "kg16yUSpSOAjHJWw"]}' \
    'fCjYwWkLob9gKLqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 36 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    '2nEZhpByfHZinxNf' \
    'gPAwkMBsznlBUqnL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetAdminPlayerRecordV1' test.out

#- 37 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'T4AbGptKaWNvPbpg' \
    '7yrRvXfZ6rvgvEY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminPutAdminPlayerRecordV1' test.out

#- 38 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'Hht1SwqTsKKKo37N' \
    'HDOQe91Ps3ztUIV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerAdminRecordV1' test.out

#- 39 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'dS6hIH9c4Vfkyrwp' \
    'uXxbaERbfgPmi0eH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteAdminPlayerRecordV1' test.out

#- 40 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'kt1mr9EOIFg0dnWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminListPlayerBinaryRecordsV1' test.out

#- 41 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "YN2NVL70Iw157g00", "is_public": false, "key": "D6WmOt6D7ufFVTOh", "set_by": "SERVER"}' \
    'GYxEQdf3ewoGGoY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryRecordV1' test.out

#- 42 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    'xmFNAmjDDCvs78mc' \
    'MdiS76YApGJ9ufwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerBinaryRecordV1' test.out

#- 43 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "YkqIgLuZS6hsQryi", "file_location": "EtOAbpeUNf26UqkC"}' \
    'fgCUYBn2xaOBdPF0' \
    'JmX8qwU1cTuHHPB5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerBinaryRecordV1' test.out

#- 44 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'S3DvPRCzBrVUxmDO' \
    'j3cvRFaTC11W0TGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeletePlayerBinaryRecordV1' test.out

#- 45 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": true, "set_by": "SERVER"}' \
    'm4fZWuk6pQxDQpKq' \
    'xLGeMvr9TsvcMQ7d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 46 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "BsaIecRxIsZvD6rm"}' \
    'zVr5XT1Nxw0v1dMQ' \
    '9Rrbk6C2cVWf6ttv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 47 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "bU1PO6ApCD2VXidT", "value": {"7w0Oc15N8WXBPp17": {}, "PAewqSm5x3B4t7WQ": {}, "np8jXZedgt5cyNe2": {}}}' \
    '7HLtwtVOaxgP6Jbc' \
    't8puMybYGxD9IPmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 48 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "ttl_config": {"action": "DELETE", "expires_at": "1977-08-27T00:00:00Z"}, "updatedAt": "u3kaPj0O4zd8Tb7c", "value": {"UNGPTBxiFFCrn7dj": {}, "js69FTFVGUVhvKhJ": {}, "Cmeisql14mUHVbMP": {}}}' \
    'imNhcZsU3VAdMDcb' \
    '4qlkiFAamqvZI2Kw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 49 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "ttl_config": {"action": "DELETE", "expires_at": "1980-12-05T00:00:00Z"}, "updatedAt": "VSnLocLVVYamQc4w", "value": {"cG5nDBLJoJHbiQ5d": {}, "uE5p4cfs2E41cK8Q": {}, "TwiIAvxSvNDlmM5n": {}}}' \
    'QFMGzs7fzjgyc44m' \
    'Eh9tRk8knYSV30ln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 50 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'roQehMDli6t9unQL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminRetrievePlayerRecords' test.out

#- 51 AdminPutPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{"key": "YXxm09wpGAbpEmDY", "value": {"9vLh3u6EDsUmrV6k": {}, "H4OotKwG3UC6XCnn": {}, "ZxF8CmQr17W65br3": {}}}, {"key": "4rBBN9tU6TDm5Glo", "value": {"FSKWM1eym5ydC6p2": {}, "5xCWTqUOYZENJ1QH": {}, "ZQxPRXH7uxBJEECQ": {}}}, {"key": "E1li3Bg7Jxc9pUnZ", "value": {"mvhidwCkZwqjYLfT": {}, "iCO1NDBvQvRPnAz4": {}, "VzW0CpoBCbyJsF5I": {}}}]}' \
    'jF1c0W338HS6CBgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerRecordsHandlerV1' test.out

#- 52 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["RyihYNZ84CVhziXV", "8HwSmvcvcDKF19yV", "RafCjOuSYht83Adv"]}' \
    'BaagTiRJ8daGTVX3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerRecordsHandlerV1' test.out

#- 53 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'Bb7jlz5IfHgKjI9m' \
    'wJSrN8jkIykR2zba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetPlayerRecordHandlerV1' test.out

#- 54 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'I6PD7fEscShnGUGU' \
    'tV9GJ279GDbLNwjm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminPutPlayerRecordHandlerV1' test.out

#- 55 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    '3FK0nnX2poMfZ1hD' \
    'Htbh4HtMlFgvh2Dp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminPostPlayerRecordHandlerV1' test.out

#- 56 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    '2SoiIPp1yvfAHS0V' \
    'gLu11A3HTovFi4tP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminDeletePlayerRecordHandlerV1' test.out

#- 57 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'AGfleyCA6jEtcqsn' \
    'zoVILjkwW61duF87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 58 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'aUyrdt4XSpWBAets' \
    'anzqP8oxfrtbECD1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 59 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'CYPwaiBAxfYL8Avt' \
    '70ZUT2fSk3LL0cal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 60 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'qxEewuGS469k2hG0' \
    'WKt4sUmanYxM0UHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 61 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'VNYzGMNIpWoSLkUr' \
    'fuf4U3WeYeA9t2EN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 62 ListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'ListGameBinaryRecordsV1' test.out

#- 63 PostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "KKWrFtHIi1CMgKAO", "key": "G5iDcCR5PbCvDLil"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryRecordV1' test.out

#- 64 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["8wj9cKM3Ar6MF35h", "CER4nGmWGgTJfHlJ", "l4tHGa4XfZcd9CVn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'BulkGetGameBinaryRecordV1' test.out

#- 65 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    'GqMX9FieeEssWEUl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetGameBinaryRecordV1' test.out

#- 66 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "07bhwntCVqiYOJf5", "file_location": "KwMZQjzvjSozv6CT"}' \
    'RDl0zp9CzHFwinkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PutGameBinaryRecordV1' test.out

#- 67 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    'Ni4gvqgl6TZ9TGVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameBinaryRecordV1' test.out

#- 68 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "mv34h6T7EsufmfxK"}' \
    'YB4LM6H6QXmpZ9X3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PostGameBinaryPresignedURLV1' test.out

#- 69 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "fUSR1l9xLPBsmAUr", "value": {"D9L1IiD6MlcEPhMD": {}, "FzjHZ3sIhzOx2CXK": {}, "lvIomU3pIxM9n8D2": {}}}' \
    'eLMe3lt9qfx2UDcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PutGameRecordConcurrentHandlerV1' test.out

#- 70 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["VE7L9FK6e0MrPc4v", "txk9hVKlG56HlzGr", "7XjdyRJunZPkp6cc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetGameRecordsBulk' test.out

#- 71 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'IBnWyPw8mj7gyQ7X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetGameRecordHandlerV1' test.out

#- 72 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'dIszGRj46COPipH1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PutGameRecordHandlerV1' test.out

#- 73 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'MWVTHG0qHJCWEfOJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PostGameRecordHandlerV1' test.out

#- 74 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'pZm9yEYWNGMy2pgS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteGameRecordHandlerV1' test.out

#- 75 PublicListTagsHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-list-tags-handler-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicListTagsHandlerV1' test.out

#- 76 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["GSUOK68eqGJtWf1Y", "bgg8rdwY9bmrvHmO", "07KNqX9LM2IwEsdO"]}' \
    'GBXBwnzDX8v3xgC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["Ge9PdbTTAJ2Gp1r0", "sVZ6LJAOddIL2l3h", "PjNDKv2LWfXqjr8f"]}' \
    'S79En3wYowBdkaZ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 78 ListMyBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-my-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'ListMyBinaryRecordsV1' test.out

#- 79 BulkGetMyBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["y6i38XQjLDRqkpiF", "K5BtiQ272Uo9UBJW", "odpdwsX1jorcyR0x"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkGetMyBinaryRecordV1' test.out

#- 80 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'RetrievePlayerRecords' test.out

#- 81 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["3YiHF8ITGPRQBCgI", "s1Q2lzxl0yF5m77T", "Th4gUoj8u2WRcLiE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetPlayerRecordsBulkHandlerV1' test.out

#- 82 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'tzVlnkflfn7pHY48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 83 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "F1dl1q92m3iRlfnB", "is_public": true, "key": "EcSqcE15u6D31DjO"}' \
    'srs3CUYATdqnQGbq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryRecordV1' test.out

#- 84 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    'iqOkNeATj7eGjodd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 85 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["7CcJUrI6MAugK5ky", "pNrp2nFe9FmN86sK", "5LOq4ft5jGcMICPU"]}' \
    'YnfG6jl9U4jReteI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 86 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'MgzISomCsodJrhQW' \
    '41q2OspCZbt3Uta5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetPlayerBinaryRecordV1' test.out

#- 87 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "I0uGcL1koyHjCH5o", "file_location": "lYLETRpABAmO2EGv"}' \
    'J4UMS93yOxNInDBy' \
    'hnoluO6ti0QP2ssi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerBinaryRecordV1' test.out

#- 88 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    'J66OzOj84O6tgohj' \
    'tC7bzjPpucddXJ5z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeletePlayerBinaryRecordV1' test.out

#- 89 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": false}' \
    'tn9pxpE7BYtzB0B4' \
    'CxyQrUpIFvORxTi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerBinaryRecorMetadataV1' test.out

#- 90 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "9DpSjb39ukcR6c2E"}' \
    '2r3vk3IfAKEbqcNX' \
    'SGCCvNowNmdpcJgF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerBinaryPresignedURLV1' test.out

#- 91 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    '88ySNq4Mj7mulP4t' \
    'Q6R1OqKVOTniBgLs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetPlayerPublicBinaryRecordsV1' test.out

#- 92 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "NhdgQ0JWZjNRSzOT", "value": {"qcVNX3ahvxw9gwwh": {}, "TnjN6wKZGW4y3f0R": {}, "9s2kndhhZhwAiLsZ": {}}}' \
    's4pmLDIQch4IjDq9' \
    'aT3qZyI0rYsWucAk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 93 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "XsVJbXi7eRZa7WwI", "value": {"c895ImqK6tVsaUq3": {}, "stUh5J5Z9GiBiSAy": {}, "lX5cS0IeHpWCugmf": {}}}' \
    'OL0QQpxsuD8PGqku' \
    '59eFJrOXyDYz9vMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 94 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'OPG0iHDT8QbF7gHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 95 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["TPQbvLt2NRqJGIKz", "LyH1y72L13Ornyx3", "4luLdvtsTKXMjiw6"]}' \
    'gYPvfn2Qt9iyq3Ny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 96 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'k8ncu2Z3eDHH9WaV' \
    'O4iKhDcJ7TCcNIsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'GetPlayerRecordHandlerV1' test.out

#- 97 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    '3PuppUxDSK8aOTGM' \
    'udcxlCV4cNbJGQ57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'PutPlayerRecordHandlerV1' test.out

#- 98 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'lPdinpjS2DRfGt9G' \
    'lyZVQ4X67tPZSTpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PostPlayerRecordHandlerV1' test.out

#- 99 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'q3xjrElvvDgw0ag7' \
    'kSWE0Hiqm5IuLryi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'DeletePlayerRecordHandlerV1' test.out

#- 100 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'EXqvUWDjU1G0EVjV' \
    'Zw1ToLuPakQN1MpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'GetPlayerPublicRecordHandlerV1' test.out

#- 101 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    's1RVFrcg2CXxepx7' \
    '8fvsyhE2BKtyTDSI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'PutPlayerPublicRecordHandlerV1' test.out

#- 102 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'M7mkmvZ7Cmsh4US8' \
    'o4jfMANPpmZDdMiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
