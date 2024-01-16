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
cloudsave-admin-post-game-binary-record-v1 '{"file_type": "QVqGj6oDLjWjkY1a", "key": "XlFcDtgOjchIua5t", "set_by": "CLIENT"}' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-binary-record-v1 'EIC32ogW7olvbTgr' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-record-v1 '{"content_type": "hRTcPiSuL0Sly6XM", "file_location": "4OI18mAQLnzjMf8G"}' 'Z2WBZqxYG3aREAu2' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-binary-record-v1 'D6QVKNCWP75TB0i7' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-recor-metadata-v1 '{"set_by": "CLIENT"}' 'x4c8OumKtPDKJDXn' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-presigned-urlv1 '{"file_type": "7Z4U68su8XfqlqNi"}' 'TvB6SdAdIhUDrwoZ' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"updatedAt": "5MecdKi5r6QEa1ys", "value": {"LEzth6mXhzkzWkFe": {}, "ZSoEAcBdW19m4eu6": {}, "d5tA5jUmiTqpyhPF": {}}}' 'dxLzFQN05MYzYiKW' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "CLIENT", "updatedAt": "ZYdFLIAjGGJddVCv", "value": {"u9vx5KQ7KYnIuMBv": {}, "aO35llzQRaT5kPxU": {}, "fofvnnSuB0y5WUlr": {}}}' 'MdI4sNveabntBSxT' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "eIv53HGCiljvjKoy"}, "customConfig": {"GRPCAddress": "D6SCwGrncqmLtjQH"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "Vo3twu0MesTCf9x4"}, "customConfig": {"GRPCAddress": "rt69lna7qxNeIxPz"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": true, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameBinaryRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '23' '31' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'SYWytLPziZMdjxcB' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'ZufQxGiHPllG4cYE' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'zfTD1ZBm3MqHcUmL' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'ZZbSqb8RwNmn9HrN' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["Qy4uZAAiE0mit9RG", "CCHYzUOcEdscKHPE", "qgA8yu7Vk6Jt4Ymo"]}' 's9Jcdos4fYcTVU6R' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["Bt0zYoMcHyCUEXlA", "vxJMdalwSyliWMNW", "5NyLu0M3VHh2EI8J"], "user_id": "lDbPWbQ6Q9lNmqRB"}, {"keys": ["aAkLnvxkT1X68cmD", "c3fxU8MyKrQpM4hk", "kK6KKXNB3Gv0IqmF"], "user_id": "51TkhjYnaq6foWvX"}, {"keys": ["a3bMrXsDr6kILsSS", "yDdmykmoPYgc2L4j", "k4Lo0LSP0pf4IxjU"], "user_id": "kl535X3ateEKDpAD"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'z1x3poD3Qgb3boLQ' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["Q1MzH7Qm8bwbmXgd", "APh1EThG96gAFKK2", "WDgCcxvONZm3EeER"]}' 'mDnyeFoF7VSZ6pf3' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'vneSD2Tb3g7mSQUh' 'AEtrmjqU6YE3p4lS' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'ck0ZHn5GI39YBHqa' 'THeKtW18iGeUlc9d' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' '9sogWa24CKNS0GqV' 'vUfHQvsHXNUNe4mh' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'go5QB65lSAiYnNjk' 'fZrQvGgbLdLsFzHk' --login_with_auth "Bearer foo"
cloudsave-admin-list-player-binary-records-v1 'BMr1yrOMlNFSrUEi' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-record-v1 '{"file_type": "rnjX9fDmIbeZxzfT", "is_public": false, "key": "QG26yUZNmTBcvrbY", "set_by": "SERVER"}' 'DG8aMVGLiBNrDjqo' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-binary-record-v1 'xcwgGLXpUL4pp2nc' 'YAHdNzDmeIP6rOvD' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-record-v1 '{"content_type": "z9KOsb392k6YmJFf", "file_location": "RByjlBiuFM3FIoVk"}' '8T3GpAnkCmBUqg2S' 'CnqntX9y1aZSWMiV' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-binary-record-v1 'i10sG6vxkfUcmqRR' 'bceJ5i0EeDxOgBnh' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-recor-metadata-v1 '{"is_public": false, "set_by": "SERVER"}' 'qElIaDml48wdNFLT' 'm5T50x9WT0GfH2rt' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-presigned-urlv1 '{"file_type": "Oa4EXsXzOXQAk4mq"}' 'rxzTtuLl4XlbGL8Q' 'Oxtjzm8y2wNhmwoY' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"updatedAt": "ZyI4EFZKBcYrCEAE", "value": {"7WIsfmx40NLRc6m8": {}, "heKnWhzfe2NubeoK": {}, "FeIaFQCYoDPICpnd": {}}}' 'uEEQlULdJz4mnRBk' 'MNxvvKgAT8mJrYq6' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "CLIENT", "updatedAt": "XiI07A68eaqC2J9j", "value": {"yEW6GLbc0NaKDUL3": {}, "sa13lk1dQBHO86Il": {}, "BhnetU4RwTqUXlTD": {}}}' 'BzOuYsaZA2yyd4mb' 'qoOfADMMAXFaY9eK' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "CLIENT", "updatedAt": "XIBudfZgrbHDIDm4", "value": {"hMzF4TxodenSrUTv": {}, "fqU0bfoMm5cTtFWb": {}, "otQyXJRcQWsmqPNs": {}}}' '92epxk0i8VxsZNer' 'eSvf9699mCEHThUJ' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'kETAsSp7gh4TeUTk' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-records-handler-v1 '{"data": [{"key": "OkAYfJB8AT9t4Tv2", "value": {"07Y2QD3oD5fLCr3O": {}, "OlXVv8ZGF7uYnGzp": {}, "ipNDigNJma1MbqqZ": {}}}, {"key": "tfNWql4nmwAft4gq", "value": {"kNNlWkD9eOziYRFO": {}, "n0jJLHC9LxhvNXTw": {}, "GBCtohLtl9Zuhytm": {}}}, {"key": "5UDrT6QXCs5SPBbR", "value": {"PZTF6oQAXVG7tnsZ": {}, "g5QgXjvyGJPN4eXb": {}, "JE5Vs2GcyomQoIXi": {}}}]}' 'mBJehyxlNsjUgxBk' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["F6wFPoJeQediogEh", "hM2rIizGdKvOPdq5", "xrgxSmy1DN9LFkYW"]}' '5DQyj4bj5Ro2ogaK' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 't2ujQSa3Zdb65UXm' 'y0Zp6iIaTIKUkmkk' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' '9QM0NBMA9ORxpzwL' 'R2AK6eXUGPJsw1fi' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'P80G9Pclxcft2ulI' 'JzPyrVEiOG4Ucqsu' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'GKHhMRWLVd3DlhLu' 'IpomM8sm1MiaI1mX' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 '2tJoARtdbBe7udsM' 'rok0WvGYYnx4V709' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'xbnGezKsDwG2omOR' '2nvYI9TVqJdvzcWb' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'fUpaXp5JMl5LL4bT' 'xBmZjdrrIxsB0NRs' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'B1fPqqRRulpqpymD' 'kQhtrHWwRVnwVBOq' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'OHi8pWGd1juYhiqj' 'RJOqB5F93zFQbJnd' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "UDpdONneAczbBdHb", "key": "2slt71B1SmZp2JZp"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["50CnPb71ORYcmQbT", "U5JX8ccLjMXJRk0e", "aKQDOJvrTefglSs6"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 'g4iY9u02aCNYIWek' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "p18lOC3mNqF7Bl0L", "file_location": "cghVHfPEspxwhRON"}' '0bc1eMbEIjowLqc3' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 'ecjXJbZDKKoxLE1Y' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "3Dymtj3giPg4x4yi"}' 'PX6ues1Hhhkg1yLV' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "bLFzHEP8cM4NTwr0", "value": {"KHaAsmTej52WKi6t": {}, "ArAURt9plCSVq8Pd": {}, "H6hJPUAc0RVwXgAg": {}}}' 'ntLMCuaXBWQi6BqP' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["g4xr0lCancUZGCHs", "ZYoLfR1KtOv7Zy0b", "65uvuKNuy0ytZQ7M"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 '6Nzy1adnSKOLFKx1' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'dX4LuWJu3pDMUAee' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'Z97SBROPYuG6XqP6' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'oo7G73zdxTgOfnwI' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["dlNa29fDLh741Isl", "KHzGlLKWUtDQs61O", "QAoxyyQpRWCiiPDG"]}' 'QhNPEwiJCf2XJVrl' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["zqQls1ozhLVA3kE8", "jKvgatOEBM70TdlN", "BJYOmpu1VCarzBsV"]}' '6xnZ5Jrzzjrcaug6' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["CWVG8SWP3glU6mus", "wVJnNnN7kAa7j0ri", "Fc5HTHQIoVsGo7dw"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["V9DBqFKHQkETJyTl", "UrwDTnoujQD4IEiH", "9Z5qXn3aoRtlqOEC"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'ohViHA5CzgFSy8X1' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "A3PrIfapq5AAeMe4", "is_public": false, "key": "3mDWORBVXTIIJM9X"}' 'sYIIZxiXNMR9BgaW' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 'cFX3SUBhyoTsMWPA' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["xUMkawaGpAyrIwMi", "f3BOdkocVTd4BxqG", "WV6mTJ0sQs6XNbjv"]}' 'qhnUVLWu8olKdxL6' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 'ozRmDD0jJvlfV5Oe' 'mPYdYT7DROCjtuzF' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "MbAG9YI89hmguB8F", "file_location": "OTjMLo4b9rIzqYkE"}' 'pstyVTBcrM8rG0rH' '0zcswwVeMK6MbGIV' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 'Iu8vvwLc7KY3uVoJ' 'XTIMtpgkieDyF97l' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": false}' 'dMiHKxbWCYzo8yO2' 'KTK9tmmOnYnOpas6' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "ghP1y4Zi7s7QBlk4"}' '4Z44B1GZgKg4uKxa' 'CgcGLuC3brWdTYCf' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'HkIySok5DiXZtLW8' '7rGysryod3dNQrms' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "ApRA6HX3RwrKt2ec", "value": {"ozL0TOg54vCE48L5": {}, "oLF6M4lNa4JUMSHN": {}, "gqRqCV7usamANkZl": {}}}' 'OX9Sfo95HgXqKhTP' 'kwfLM9uSybRzWek2' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "gZvRrvr0n9d9lvcc", "value": {"KMLhrTrcBE2ItBS3": {}, "KtKZWe8aoFzAyBME": {}, "74HUtipUWYhWV1qx": {}}}' '8CzPML52faXUr9Sk' '4lq2faBcAXXKlhvy' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'H8paOJtxqMPpcVfR' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["wNj547fH0XrKEDpE", "Y8VnocGAjci0V3tB", "f2jnHGKXphn50c9t"]}' 'NLDljhZ2jxLRX3z4' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '6OCaGBeMfPlNos4y' 'BRjrERHEonAZR8Gm' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'Eu0q1p6QCyY6vSkV' 'FWdsbYuVEGVxYheR' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' '3j5mNZ6vwv7K8Asv' 't1j1Rx59hesNWy2N' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'vZ85DDKDAF8KDsBZ' 'OuYQJ03BAHZ7c53q' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 '7akMpcmnnx6RVBro' 'p9v7aZK3h65hbN15' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'zfQSfQrtfF3TQN0O' 'cNDLr36vzohZyjMQ' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'Ag5mPYhrLTyU8Ohg' 'fY9JQYGF4bYXEcEN' --login_with_auth "Bearer foo"
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

#- 2 AdminListAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-game-record-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-game-record-v1' \
    '{"keys": ["x9xZlAchob44lOND", "DwMvgI0HlyPR7wZN", "iVsF6xG2mXEQdbzI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'Vy8alncV7vWgSHdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'o07UctPErqxyMyOK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    '06MqQBErxgjVBycv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'U4PbmRDcrg0DjQjB' \
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
    '{"file_type": "ECXvea7H1m2lJFRZ", "key": "3ZprZ60zMjhTHeh9", "set_by": "SERVER"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'TSenE5hCFkIf5weq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "Z18MH57l2Zsrh90E", "file_location": "TtYmGukz3MnlrjcH"}' \
    'p6B8Vj7rXFgDnDkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'Z9bpjb1tdA3QhjCM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "CLIENT"}' \
    'f4XhIjSoTB2NMKte' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "zapPr2QEPx3zTxBG"}' \
    'tEJIYppuUSsKoHw2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "hyd12uSE7BEv3aev", "value": {"q6iohU1cg4W1IS3U": {}, "v1BpWoJBaqdg2FHc": {}, "unsS1lnaO2m9vqjh": {}}}' \
    'beK2qN8g6x2PyYDo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "SERVER", "updatedAt": "hLiD5sf5y1JsxJNG", "value": {"myt0SQDUDoWBZVGL": {}, "lkUetzCAWc9x1aMj": {}, "gGim51T107XIZRZ7": {}}}' \
    'tZdIs0xf4czdt7zq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 17 GetPluginConfig
$PYTHON -m $MODULE 'cloudsave-get-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetPluginConfig' test.out

#- 18 CreatePluginConfig
$PYTHON -m $MODULE 'cloudsave-create-plugin-config' \
    '{"appConfig": {"appName": "mSKxOEQlVcx6GqsB"}, "customConfig": {"GRPCAddress": "q8vdhWVnuYLgpZeh"}, "customFunction": {"afterBulkReadGameBinaryRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameBinaryRecord": false, "afterReadGameRecord": true, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreatePluginConfig' test.out

#- 19 DeletePluginConfig
$PYTHON -m $MODULE 'cloudsave-delete-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeletePluginConfig' test.out

#- 20 UpdatePluginConfig
$PYTHON -m $MODULE 'cloudsave-update-plugin-config' \
    '{"appConfig": {"appName": "QdTnNYGeAfYFG3wS"}, "customConfig": {"GRPCAddress": "kHKufBdS3ZOokZB4"}, "customFunction": {"afterBulkReadGameBinaryRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerBinaryRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameBinaryRecord": false, "afterReadGameRecord": false, "afterReadPlayerBinaryRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameBinaryRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerBinaryRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '48' \
    '70' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'Hv8SwyagYvDJ3w3U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'NgIGj2jZtEYT8sIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'SE1XXPzySa0sZoFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    '6xCOWMpyh9pMsQgb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["64ELbzDMwyo4nIRy", "sQdbufXjYnSoIFeo", "uC2m38kXrDZWlGVE"]}' \
    '9sJ4NpUtKp6M9I6n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["EwnZhsjwJeGwaPSD", "MZz95OYKiqaZD63x", "e5rruJVfLGea0Ztl"], "user_id": "zUcuHAXz0UV31Mfu"}, {"keys": ["GaXsAuGsZaSHevO0", "TQNEI3kfabxJWWSI", "1ECUo1NPpeFhUztX"], "user_id": "DgB7n4C97uAPP8PA"}, {"keys": ["TLpUpxeJlsBJT6Hh", "3OMjAjq2mK8lbSEE", "elxnb5QxWG2HFnZl"], "user_id": "A6HKWW4fI1IQcoBQ"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'ELcNlZkqTZrKgXNw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["vm4e5GX6H742Oixh", "tAoKiVm6URT95Xhn", "UcvWB28MpusuhhDJ"]}' \
    '5slzgiWZEtyd56Lf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'xnbY97jjYgXchCbk' \
    'XX26uEdCfQaMAQuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'KfC0I2kNjCMDtDMr' \
    'entgn3DhqciwIeSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'F9RKb9vvxuJlhXbW' \
    'hbwPwToC6knjVwVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'zaqSfJiQFC2gXoda' \
    '0kg16yUSpSOAjHJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'wfCjYwWkLob9gKLq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "s2nEZhpByfHZinxN", "is_public": false, "key": "HAQltnSojV4jT65y", "set_by": "CLIENT"}' \
    'T4AbGptKaWNvPbpg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    '7yrRvXfZ6rvgvEY3' \
    'Hht1SwqTsKKKo37N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "HDOQe91Ps3ztUIV0", "file_location": "dS6hIH9c4Vfkyrwp"}' \
    'uXxbaERbfgPmi0eH' \
    'kt1mr9EOIFg0dnWI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'YN2NVL70Iw157g00' \
    'jr9b8MuYmmeKTmBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": true, "set_by": "SERVER"}' \
    'GYxEQdf3ewoGGoY7' \
    'xmFNAmjDDCvs78mc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "MdiS76YApGJ9ufwL"}' \
    'YkqIgLuZS6hsQryi' \
    'EtOAbpeUNf26UqkC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "fgCUYBn2xaOBdPF0", "value": {"JmX8qwU1cTuHHPB5": {}, "S3DvPRCzBrVUxmDO": {}, "j3cvRFaTC11W0TGT": {}}}' \
    'Cm4fZWuk6pQxDQpK' \
    'qxLGeMvr9TsvcMQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "updatedAt": "a6iZ5uFRYNn3SHiW", "value": {"xF0YbuU5ar5qTLWU": {}, "Cy0Afgc050XIZRW4": {}, "91e94mQjVOOBnIWh": {}}}' \
    'unElqZUodp3IhtCS' \
    'Hy1ei1fIrPvfHnRN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "updatedAt": "6EjRwEQlNapJRfk4", "value": {"f9Zcw1pEHAyNFxcV": {}, "TKuAQTGh5BxjWOoz": {}, "GoDtsUuYo5p8ED5Q": {}}}' \
    'ZAufwNa8lzfjv9oY' \
    'MXMjlVHY1AHwF3vG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'oav7MK0PcLnEkcok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{"key": "KwcQ0baDT9OyJ2h2", "value": {"3GUS2amU7syGlElX": {}, "dEAOrVSnLocLVVYa": {}, "mQc4wcG5nDBLJoJH": {}}}, {"key": "biQ5duE5p4cfs2E4", "value": {"1cK8QTwiIAvxSvND": {}, "lmM5nQFMGzs7fzjg": {}, "yc44mEh9tRk8knYS": {}}}, {"key": "V30lnroQehMDli6t", "value": {"9unQLYXxm09wpGAb": {}, "pEmDY9vLh3u6EDsU": {}, "mrV6kH4OotKwG3UC": {}}}]}' \
    '6XCnnZxF8CmQr17W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["65br34rBBN9tU6TD", "m5GloFSKWM1eym5y", "dC6p25xCWTqUOYZE"]}' \
    'NJ1QHZQxPRXH7uxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'JEECQE1li3Bg7Jxc' \
    '9pUnZmvhidwCkZwq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'jYLfTiCO1NDBvQvR' \
    'PnAz4VzW0CpoBCby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'JsF5IjF1c0W338HS' \
    '6CBgVRyihYNZ84CV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'hziXV8HwSmvcvcDK' \
    'F19yVRafCjOuSYht' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    '83AdvBaagTiRJ8da' \
    'GTVX3Bb7jlz5IfHg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'KjI9mwJSrN8jkIyk' \
    'R2zbaI6PD7fEscSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'nGUGUtV9GJ279GDb' \
    'LNwjm3FK0nnX2poM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'fZ1hDHtbh4HtMlFg' \
    'vh2Dp2SoiIPp1yvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'AHS0VgLu11A3HTov' \
    'Fi4tPAGfleyCA6jE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 57 ListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ListGameBinaryRecordsV1' test.out

#- 58 PostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "tcqsnzoVILjkwW61", "key": "duF87aUyrdt4XSpW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["BAetsanzqP8oxfrt", "bECD1CYPwaiBAxfY", "L8Avt70ZUT2fSk3L"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    'L0calqxEewuGS469' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "k2hG0WKt4sUmanYx", "file_location": "M0UHZVNYzGMNIpWo"}' \
    'SLkUrfuf4U3WeYeA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    '9t2ENKKWrFtHIi1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "MgKAOG5iDcCR5PbC"}' \
    'vDLil8wj9cKM3Ar6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "MF35hCER4nGmWGgT", "value": {"JfHlJl4tHGa4XfZc": {}, "d9CVnGqMX9FieeEs": {}, "sWEUl07bhwntCVqi": {}}}' \
    'YOJf5KwMZQjzvjSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["zv6CTRDl0zp9CzHF", "winkBNi4gvqgl6TZ", "9TGVPmv34h6T7Esu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'fmfxKYB4LM6H6QXm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'pZ9X3fUSR1l9xLPB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'smAUrD9L1IiD6Mlc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'EPhMDFzjHZ3sIhzO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["x2CXKlvIomU3pIxM", "9n8D2eLMe3lt9qfx", "2UDcgVE7L9FK6e0M"]}' \
    'rPc4vtxk9hVKlG56' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["HlzGr7XjdyRJunZP", "kp6ccIBnWyPw8mj7", "gyQ7XdIszGRj46CO"]}' \
    'PipH1MWVTHG0qHJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 72 ListMyBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-my-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'ListMyBinaryRecordsV1' test.out

#- 73 BulkGetMyBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["WEfOJpZm9yEYWNGM", "y2pgSGSUOK68eqGJ", "tWf1Ybgg8rdwY9bm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'BulkGetMyBinaryRecordV1' test.out

#- 74 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'RetrievePlayerRecords' test.out

#- 75 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["rvHmO07KNqX9LM2I", "wEsdOGBXBwnzDX8v", "3xgC1Ge9PdbTTAJ2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'Gp1r0sVZ6LJAOddI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "L2l3hPjNDKv2LWfX", "is_public": true, "key": "xuNOmUSWw18T1IxV"}' \
    'WCxdvPL9e4P01vxP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    '8xj1LyEirURERnEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["zpImW6sjAHyCK5tN", "anGBrkzUvck3xTtm", "OFMebS4AdlNzwog2"]}' \
    'IhErkNhNcECWwchW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    '6zL9SkbLlrNXnGan' \
    'Mazb8jvRWenURH48' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "aJuALEcSqcE15u6D", "file_location": "31DjOsrs3CUYATdq"}' \
    'nQGbqiqOkNeATj7e' \
    'Gjodd7CcJUrI6MAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    'gK5kypNrp2nFe9Fm' \
    'N86sK5LOq4ft5jGc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": true}' \
    'ICPUYnfG6jl9U4jR' \
    'eteIMgzISomCsodJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "rhQW41q2OspCZbt3"}' \
    'Uta5I0uGcL1koyHj' \
    'CH5olYLETRpABAmO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    '2EGvJ4UMS93yOxNI' \
    'nDByhnoluO6ti0QP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "2ssiJ66OzOj84O6t", "value": {"gohjtC7bzjPpucdd": {}, "XJ5zifF8y959anrN": {}, "SleywHbHig6IKWVZ": {}}}' \
    '77KeRWdECaFGzfZ2' \
    'hxcJ2Fnemn7M23Sz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "Uo4hNBDh9ZFP1OW0", "value": {"nXOErQPS4VsRoYIK": {}, "69yg9ADCGiXaLs2x": {}, "jHkinOD975nARHCm": {}}}' \
    'hNHSXuqIHsxvaUoX' \
    'DmwWsukxncuD3QxC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'XMd00YBWCaVVmM45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["mfIZsWhkS476dGGJ", "wJ00UH197MJ6zU7J", "LMQyMWzYQCAaPJgo"]}' \
    'xGJoJaSzUtY4ZD0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'tb0U4pH16NUsVY21' \
    'NVIs7NRen2Y3Ns0Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'JQeaWytPfds1BYx0' \
    'EaURydf8ZyyZeHAW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'GgJUbUJRMbkcTglb' \
    'U86FyOjApNHBVfNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'URcjY3YYT9oTynmf' \
    'IuBWgJTNFfM8M0IW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    '4oe8KDgy0xZfAcNg' \
    '14Ws8TIP1LKiFQoL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'DvumfqrgSfnx2h61' \
    'X9dN1MGRXBJ6mVV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'JS9qjNLwvI8JdiY3' \
    'RRiLilmOGF6dLLIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
