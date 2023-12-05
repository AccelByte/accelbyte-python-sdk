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
cloudsave-admin-post-game-binary-record-v1 '{"file_type": "QVqGj6oDLjWjkY1a", "key": "XlFcDtgOjchIua5t", "set_by": "WEIC32ogW7olvbTg"}' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-binary-record-v1 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-record-v1 '{"content_type": "M4OI18mAQLnzjMf8", "file_location": "GZ2WBZqxYG3aREAu"}' '2D6QVKNCWP75TB0i' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-binary-record-v1 '7pKxR8dl0zRVW4EZ' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-binary-recor-metadata-v1 '{"set_by": "G9m0XcgGVbMqSszE"}' '8GHavj7AorKsxwko' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-binary-presigned-urlv1 '{"file_type": "sAVerXpc1C8XfwHu"}' 'Keb9l3rGN9A3sNm8' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"updatedAt": "4hddSpHt0P7MIIR7", "value": {"CkyF6C7duuyZ0GhD": {}, "ogqrhBRd8lDR6qVN": {}, "PRZYdFLIAjGGJddV": {}}}' 'Cvu9vx5KQ7KYnIuM' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "BvaO35llzQRaT5kP", "updatedAt": "xUfofvnnSuB0y5WU", "value": {"lrMdI4sNveabntBS": {}, "xTeIv53HGCiljvjK": {}, "oyD6SCwGrncqmLtj": {}}}' 'QHAf8TgoNm03VLis' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "V6zwPuo3td6TC6I3"}, "customConfig": {"GRPCAddress": "lMjGSWN2laRlxfcj"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "6IY69z1UaLqYSYWy"}, "customConfig": {"GRPCAddress": "tLPziZMdjxcBZufQ"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '5' '42' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'EzfTD1ZBm3MqHcUm' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'LZZbSqb8RwNmn9Hr' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'NQy4uZAAiE0mit9R' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'GCCHYzUOcEdscKHP' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["EqgA8yu7Vk6Jt4Ym", "os9Jcdos4fYcTVU6", "RBt0zYoMcHyCUEXl"]}' 'AvxJMdalwSyliWMN' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["W5NyLu0M3VHh2EI8", "JlDbPWbQ6Q9lNmqR", "BaAkLnvxkT1X68cm"], "user_id": "Dc3fxU8MyKrQpM4h"}, {"keys": ["kkK6KKXNB3Gv0Iqm", "F51TkhjYnaq6foWv", "Xa3bMrXsDr6kILsS"], "user_id": "SyDdmykmoPYgc2L4"}, {"keys": ["jk4Lo0LSP0pf4Ixj", "Ukl535X3ateEKDpA", "Dz1x3poD3Qgb3boL"], "user_id": "QQ1MzH7Qm8bwbmXg"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'dAPh1EThG96gAFKK' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["2WDgCcxvONZm3EeE", "RmDnyeFoF7VSZ6pf", "3vneSD2Tb3g7mSQU"]}' 'hAEtrmjqU6YE3p4l' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'Sck0ZHn5GI39YBHq' 'aTHeKtW18iGeUlc9' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'd9sogWa24CKNS0Gq' 'VvUfHQvsHXNUNe4m' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' 'hgo5QB65lSAiYnNj' 'kfZrQvGgbLdLsFzH' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'kBMr1yrOMlNFSrUE' 'irnjX9fDmIbeZxzf' --login_with_auth "Bearer foo"
cloudsave-admin-list-player-binary-records-v1 'TcyiuATus9hsfpFD' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-record-v1 '{"file_type": "cSDG8aMVGLiBNrDj", "is_public": true, "key": "byDPUIj88cekdqCt", "set_by": "81P1ktfIovmv9gsR"}' '5cJcHm3SZLxoRDFu' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-binary-record-v1 'uuySj29a9LJE8HoR' 'S1X2PFAAMwzHPxB1' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-record-v1 '{"content_type": "UskYs4Yw20DOqOBS", "file_location": "C2DKHRuPMMWH8Yb3"}' '3T5UBJCjfcnLRfxe' 'CSz9WEi8KlloeH0J' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-binary-record-v1 'T1yduat2vQR3biBf' 'su4jmsRE2w1yEkLg' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-binary-recor-metadata-v1 '{"is_public": false, "set_by": "mqrxzTtuLl4XlbGL"}' '8QOxtjzm8y2wNhmw' 'oYZyI4EFZKBcYrCE' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-binary-presigned-urlv1 '{"file_type": "AE7WIsfmx40NLRc6"}' 'm8heKnWhzfe2Nube' 'oKFeIaFQCYoDPICp' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"updatedAt": "nduEEQlULdJz4mnR", "value": {"BkMNxvvKgAT8mJrY": {}, "q6hRkloqxM3gpwxc": {}, "fMy9XzjjI5YbsKoA": {}}}' 'DkzJEN2VHzih3bit' '0VWn3CO39PXDNxtX' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "geO3FgkXhjDzaQY3", "updatedAt": "snn2ZkP7cFdP43e5", "value": {"dC9XIBudfZgrbHDI": {}, "Dm4hMzF4TxodenSr": {}, "UTvfqU0bfoMm5cTt": {}}}' 'FWbotQyXJRcQWsmq' 'PNs92epxk0i8VxsZ' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "NereSvf9699mCEHT", "updatedAt": "hUJkETAsSp7gh4Te", "value": {"UTkOkAYfJB8AT9t4": {}, "Tv207Y2QD3oD5fLC": {}, "r3OOlXVv8ZGF7uYn": {}}}' 'GzpipNDigNJma1Mb' 'qqZtfNWql4nmwAft' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records '4gqkNNlWkD9eOziY' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["RFOn0jJLHC9LxhvN", "XTwGBCtohLtl9Zuh", "ytm5UDrT6QXCs5SP"]}' 'BbRPZTF6oQAXVG7t' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'nsZg5QgXjvyGJPN4' 'eXbJE5Vs2GcyomQo' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'IXimBJehyxlNsjUg' 'xBkF6wFPoJeQedio' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'gEhhM2rIizGdKvOP' 'dq5xrgxSmy1DN9LF' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'kYW5DQyj4bj5Ro2o' 'gaKt2ujQSa3Zdb65' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'UXmy0Zp6iIaTIKUk' 'mkk9QM0NBMA9ORxp' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'zwLR2AK6eXUGPJsw' '1fiP80G9Pclxcft2' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'ulIJzPyrVEiOG4Uc' 'qsuGKHhMRWLVd3Dl' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'hLuIpomM8sm1MiaI' '1mX2tJoARtdbBe7u' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'dsMrok0WvGYYnx4V' '709xbnGezKsDwG2o' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "mOR2nvYI9TVqJdvz", "key": "cWbfUpaXp5JMl5LL"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["4bTxBmZjdrrIxsB0", "NRsB1fPqqRRulpqp", "ymDkQhtrHWwRVnwV"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 'BOqOHi8pWGd1juYh' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "iqjRJOqB5F93zFQb", "file_location": "JndUDpdONneAczbB"}' 'dHb2slt71B1SmZp2' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 'JZp50CnPb71ORYcm' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "QbTU5JX8ccLjMXJR"}' 'k0eaKQDOJvrTefgl' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "Ss6g4iY9u02aCNYI", "value": {"Wekp18lOC3mNqF7B": {}, "l0LcghVHfPEspxwh": {}, "RON0bc1eMbEIjowL": {}}}' 'qc3ecjXJbZDKKoxL' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["E1Y3Dymtj3giPg4x", "4yiPX6ues1Hhhkg1", "yLVbLFzHEP8cM4NT"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'wr0KHaAsmTej52WK' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'i6tArAURt9plCSVq' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' '8PdH6hJPUAc0RVwX' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'gAgntLMCuaXBWQi6' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["BqPg4xr0lCancUZG", "CHsZYoLfR1KtOv7Z", "y0b65uvuKNuy0ytZ"]}' 'Q7M6Nzy1adnSKOLF' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["Kx1dX4LuWJu3pDMU", "AeeZ97SBROPYuG6X", "qP6oo7G73zdxTgOf"]}' 'nwIdlNa29fDLh741' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["IslKHzGlLKWUtDQs", "61OQAoxyyQpRWCii", "PDGQhNPEwiJCf2XJ"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["VrlzqQls1ozhLVA3", "kE8jKvgatOEBM70T", "dlNBJYOmpu1VCarz"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'BsV6xnZ5Jrzzjrca' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "ug6CWVG8SWP3glU6", "is_public": false, "key": "hLOqQGhCUr6iTrjy"}' 'EgarAdNJOIG36I6t' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 'RbRcrEveMdAdiPKD' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["UVSC00PYeDcaggin", "xnFIna3yddcbsPhe", "TH26IUJNvYuGRUvp"]}' 'ZaHCuESOiIZsMfB4' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 'ZH3mtgWgU4pCAKxe' 'E70CaunQNxot371W' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "9G4AvQkqsGnmyo5J", "file_location": "JTUVmb8GEXFTlEME"}' 'sFzYqwgK1Np5nodq' 'pLm7FhJBNXzAFdO0' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 'Khqf6kiTdSGv2LFj' 'AKY7CbgsWqFWZX7k' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": true}' 'OemPYdYT7DROCjtu' 'zFMbAG9YI89hmguB' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "8FOTjMLo4b9rIzqY"}' 'kEpstyVTBcrM8rG0' 'rH0zcswwVeMK6MbG' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'IVIu8vvwLc7KY3uV' 'oJXTIMtpgkieDyF9' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "7lGdMiHKxbWCYzo8", "value": {"yO2KTK9tmmOnYnOp": {}, "as6ghP1y4Zi7s7QB": {}, "lk44Z44B1GZgKg4u": {}}}' 'KxaCgcGLuC3brWdT' 'YCfHkIySok5DiXZt' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "LW87rGysryod3dNQ", "value": {"rmsApRA6HX3RwrKt": {}, "2ecozL0TOg54vCE4": {}, "8L5oLF6M4lNa4JUM": {}}}' 'SHNgqRqCV7usamAN' 'kZlOX9Sfo95HgXqK' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'hTPkwfLM9uSybRzW' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["ek2gZvRrvr0n9d9l", "vccKMLhrTrcBE2It", "BS3KtKZWe8aoFzAy"]}' 'BME74HUtipUWYhWV' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '1qx8CzPML52faXUr' '9Sk4lq2faBcAXXKl' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'hvyH8paOJtxqMPpc' 'VfRwNj547fH0XrKE' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'DpEY8VnocGAjci0V' '3tBf2jnHGKXphn50' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'c9tNLDljhZ2jxLRX' '3z46OCaGBeMfPlNo' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 's4yBRjrERHEonAZR' '8GmEu0q1p6QCyY6v' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'SkVFWdsbYuVEGVxY' 'heR3j5mNZ6vwv7K8' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'Asvt1j1Rx59hesNW' 'y2NvZ85DDKDAF8KD' --login_with_auth "Bearer foo"
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

#- 2 AdminListAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-game-record-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-game-record-v1' \
    '{"keys": ["sBZOuYQJ03BAHZ7c", "53q7akMpcmnnx6RV", "Brop9v7aZK3h65hb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'N15zfQSfQrtfF3TQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'N0OcNDLr36vzohZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'jMQAg5mPYhrLTyU8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'OhgfY9JQYGF4bYXE' \
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
    '{"file_type": "cENx9xZlAchob44l", "key": "ONDDwMvgI0HlyPR7", "set_by": "wZNiVsF6xG2mXEQd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'bzIVy8alncV7vWgS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "Hdfo07UctPErqxyM", "file_location": "yOK06MqQBErxgjVB"}' \
    'ycvU4PbmRDcrg0Dj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'QjBECXvea7H1m2lJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "FRZ3ZprZ60zMjhTH"}' \
    'eh94TSenE5hCFkIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "5weqZ18MH57l2Zsr"}' \
    'h90ETtYmGukz3Mnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "rjcHp6B8Vj7rXFgD", "value": {"nDkdZ9bpjb1tdA3Q": {}, "hjCMW64f4XhIjSoT": {}, "B2NMKtezapPr2QEP": {}}}' \
    'x3zTxBGtEJIYppuU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "SsKoHw2hyd12uSE7", "updatedAt": "BEv3aevq6iohU1cg", "value": {"4W1IS3Uv1BpWoJBa": {}, "qdg2FHcunsS1lnaO": {}, "2m9vqjhbeK2qN8g6": {}}}' \
    'x2PyYDo5R3hLiD5s' \
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
    '{"appConfig": {"appName": "f5y1JsxJNGmyt0SQ"}, "customConfig": {"GRPCAddress": "DUDoWBZVGLlkUetz"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "dFOyqA2clJ5gEOaC"}, "customConfig": {"GRPCAddress": "gM6Yn6RugbNEIpGB"}, "customFunction": {"afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '62' \
    '88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'nbLzvtCIW5ynMKqu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'UicAeIVXtoWAXhMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'W4tLqX7OICf5oD1e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    '6oI9FmYel0kOw72o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["8Zkgk0jS6rDWUwfh", "Kvrf2AaH4yCWrHSp", "pnIZkNnTn3rzH5Nv"]}' \
    'AtcvNedgS1fUfKmi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["hDbmu8ePWlQMVDXE", "HeiGTnwyEw6hIWDZ", "rpP7rz3ISW510kHr"], "user_id": "4isTKWjmv67nuHCX"}, {"keys": ["WfwnwGioVwVzmmBV", "VFfpqx1AeLtzcPJ3", "jtDYBo4FUTH7CGfK"], "user_id": "SyxgRR1DiCqSMzpq"}, {"keys": ["IFGLkDs7ACC1RgBf", "oNrHlFi2qJLgmBLE", "35YhyiDV90SeI5yp"], "user_id": "pBHoytVznCgNyx9f"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'bT63ShEh8PbGikLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["gjcj34uulU6FYBZs", "WFbr3RSP0W9nBhvh", "f8Q0DtJMcYQdN66b"]}' \
    'swAgt65X4N1LQZmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    '61JMdtwCVUrYQue8' \
    '4dwmbwFEnAZaWsQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'tRYoagRJK5PX9UcO' \
    'vhPyE11TRT2SKseo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'e8VLie0LBa36KNzj' \
    'f005CXNGehQ2aTjT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'DfKFDXC7eGL5YhJD' \
    'Wh9YWqc0qgV6d9yO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'fIMLds2DbPcaoMdt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "RLTmSvTkQQgB7exY", "is_public": true, "key": "uJlhXbWhbwPwToC6", "set_by": "knjVwVnzaqSfJiQF"}' \
    'C2gXoda0kg16yUSp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    'SOAjHJWwfCjYwWkL' \
    'ob9gKLqs2nEZhpBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "fHZinxNfgPAwkMBs", "file_location": "znlBUqnLT4AbGptK"}' \
    'aWNvPbpg7yrRvXfZ' \
    '6rvgvEY3Hht1SwqT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'sKKKo37NHDOQe91P' \
    's3ztUIV0dS6hIH9c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": false, "set_by": "fkyrwpuXxbaERbfg"}' \
    'Pmi0eHkt1mr9EOIF' \
    'g0dnWIYN2NVL70Iw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "157g00jr9b8MuYmm"}' \
    'eKTmBNvGYxEQdf3e' \
    'woGGoY7xmFNAmjDD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "Cvs78mcMdiS76YAp", "value": {"GJ9ufwLYkqIgLuZS": {}, "6hsQryiEtOAbpeUN": {}, "f26UqkCfgCUYBn2x": {}}}' \
    'aOBdPF0JmX8qwU1c' \
    'TuHHPB5S3DvPRCzB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "rVUxmDOj3cvRFaTC", "updatedAt": "11W0TGTCm4fZWuk6", "value": {"pQxDQpKqxLGeMvr9": {}, "TsvcMQ7dBsaIecRx": {}, "IsZvD6rmzVr5XT1N": {}}}' \
    'xw0v1dMQ9Rrbk6C2' \
    'cVWf6ttvbU1PO6Ap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "CD2VXidT7w0Oc15N", "updatedAt": "8WXBPp17PAewqSm5", "value": {"x3B4t7WQnp8jXZed": {}, "gt5cyNe27HLtwtVO": {}, "axgP6Jbct8puMybY": {}}}' \
    'GxD9IPmmsLmu3kaP' \
    'j0O4zd8Tb7cUNGPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'BxiFFCrn7djjs69F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["TFVGUVhvKhJCmeis", "ql14mUHVbMPimNhc", "ZsU3VAdMDcb4qlki"]}' \
    'FAamqvZI2KwjqPBi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'WXade41s3rH34mB2' \
    'yPlRpWjmHZAAvKTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordHandlerV1' test.out

#- 48 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    '8MuqIg0CzkguwuJC' \
    'W7EEFB67AODbi9Bz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminPutPlayerRecordHandlerV1' test.out

#- 49 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'upBsFpYc77GtRUcC' \
    'FeY5g4XgBsbfzqxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPostPlayerRecordHandlerV1' test.out

#- 50 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'PNe8ae1Il4aAtEbu' \
    '4IjGdqthRxTjQ7gk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeletePlayerRecordHandlerV1' test.out

#- 51 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'ZEY8rG0q0Q2Qd2Jz' \
    'RbkF2I03dIjvBbA6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'bfbYaJCJjfk2TUvn' \
    '95FhO7VW3mbDVMDu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '87t0ldWf7iSGIiKF' \
    'tWtn4Yr2svKM6pqL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 54 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'GZ0TBujELAUK6mQ5' \
    'iZgbwwm5iGzXtckn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 55 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'rgidKupvXO6aj4hC' \
    'mTC34jxW4pIDwdqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 56 ListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ListGameBinaryRecordsV1' test.out

#- 57 PostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "pmRmut9H9XyWI8bp", "key": "8fQxRuX91uYmtrHJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PostGameBinaryRecordV1' test.out

#- 58 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["bEGTUj7YjERL1rEQ", "G02zccA8wvLsWUNd", "6lPKvqDejvqklTSv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'BulkGetGameBinaryRecordV1' test.out

#- 59 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    'DwuOrP9lzpiX0VuF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetGameBinaryRecordV1' test.out

#- 60 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "pZum7izxe7NPzjOa", "file_location": "8E7wY76PxLv9HBEU"}' \
    'e89AwEw1HO4FnKtx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PutGameBinaryRecordV1' test.out

#- 61 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    '4XLKAmlDr19uJ3nq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteGameBinaryRecordV1' test.out

#- 62 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "6VerzVCcI8y3Cz0Y"}' \
    'qCKUh5RD9vNAp4ji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PostGameBinaryPresignedURLV1' test.out

#- 63 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "nFpnQ5xF9wwbvMZy", "value": {"eDeRnVfPUa6xVVBc": {}, "q3wZpFIYeAg79HcL": {}, "JXJ7mpVI6eTYAjdP": {}}}' \
    'lCiQQC35cj4KyOVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PutGameRecordConcurrentHandlerV1' test.out

#- 64 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["vnWbfRJtsB7cUQZ2", "QUAxJrINPXppPNO3", "AfmXcgwC3IN6tvKg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordsBulk' test.out

#- 65 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'LB9QmJIOq9dP5szG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordHandlerV1' test.out

#- 66 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '71utjsQ4CrRb9gUC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PutGameRecordHandlerV1' test.out

#- 67 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'eVz7fWbZIdhevfZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PostGameRecordHandlerV1' test.out

#- 68 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'yV7AcodcZwKjYDdm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteGameRecordHandlerV1' test.out

#- 69 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["JOlzwm9Su4FnS98Q", "qftSjq7sn8yreciP", "LfkVyyJsbGpO6Jge"]}' \
    'hDJxEN7JlZc8LMq1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 70 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["o2jZWu4yA3r0u4q1", "bTHXIjfJKyFlM0u1", "uuoVdn9yVoSlKNch"]}' \
    'PHNL4X3LLaGPGdqL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 71 ListMyBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-my-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'ListMyBinaryRecordsV1' test.out

#- 72 BulkGetMyBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["E8SohhhuiTnJarYY", "kHBDdSzBXdxapwhd", "5IQYBQuxLvPuWYvE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkGetMyBinaryRecordV1' test.out

#- 73 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RetrievePlayerRecords' test.out

#- 74 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["3fsNy9Z9OhxXvCp9", "y7fLD2qfCXnlUnqx", "T1WsRNMZcA92hzC7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetPlayerRecordsBulkHandlerV1' test.out

#- 75 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'MNa8vVe4MHX6AgMe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 76 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "p90AyyUJyAK5PRMR", "is_public": false, "key": "wdvl0hv6g62GxBW2"}' \
    'tQF5tkTjgJaMYvNQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PostPlayerBinaryRecordV1' test.out

#- 77 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    'OsDa4bkcgepqtxjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["rztee7QLTGAak7Ka", "ol01DK97D2xnik42", "miteR5eQAe1rzmmg"]}' \
    'qBPRmd6mO4oI8KDq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'ebm83raNBJ5y7axE' \
    'kvI4oxZEDxGiBnNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'GetPlayerBinaryRecordV1' test.out

#- 80 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "n0zaf7CaOSlHXrUS", "file_location": "A6sMJzA5mtqISQ83"}' \
    'TTbtefXWznDe4LQd' \
    'XfFBii2RAMEX5RMj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PutPlayerBinaryRecordV1' test.out

#- 81 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    'BFVZGYzQqV8d9mDd' \
    'UIoiIJFNxuNOmUSW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeletePlayerBinaryRecordV1' test.out

#- 82 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": true}' \
    'n3wYowBdkaZ3y6i3' \
    '8XQjLDRqkpiFK5Bt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PutPlayerBinaryRecorMetadataV1' test.out

#- 83 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "iQ272Uo9UBJWodpd"}' \
    'wsX1jorcyR0x3YiH' \
    'F8ITGPRQBCgIs1Q2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PostPlayerBinaryPresignedURLV1' test.out

#- 84 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    'lzxl0yF5m77TTh4g' \
    'Uoj8u2WRcLiEtzVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPlayerPublicBinaryRecordsV1' test.out

#- 85 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "nkflfn7pHY48F1dl", "value": {"1q92m3iRlfnBAk0C": {}, "wiAsR65yQ9ssuHdG": {}, "mxncCEr0KcgeqzGb": {}}}' \
    'ruNB72HHMkjzyBB4' \
    'UFKiaoV0VOem2yqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 86 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "sMFxKybPkbuS6x9c", "value": {"LJ1APnNlsa2bRBr2": {}, "7fVMWuAfDqLMR919": {}, "IZPKOKiAVQXXOmqF": {}}}' \
    'HLbyXmgCNiXH8uen' \
    'bC5CphgMweexsIAP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    '5vHLjBJ9iqMcBL4B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["zhDUjhKPwbwcvQU5", "kG8bXGFmPAnOkDiJ", "q4xQye7HqnVK3YVe"]}' \
    'OWs9mfVQh3jLBtn9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 89 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'pxpE7BYtzB0B4Cxy' \
    'QrUpIFvORxTi79Dp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetPlayerRecordHandlerV1' test.out

#- 90 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'Sjb39ukcR6c2E2r3' \
    'vk3IfAKEbqcNXSGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PutPlayerRecordHandlerV1' test.out

#- 91 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'CvNowNmdpcJgF88y' \
    'SNq4Mj7mulP4tQ6R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PostPlayerRecordHandlerV1' test.out

#- 92 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    '1OqKVOTniBgLsNhd' \
    'gQ0JWZjNRSzOTqcV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeletePlayerRecordHandlerV1' test.out

#- 93 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'NX3ahvxw9gwwhTnj' \
    'N6wKZGW4y3f0R9s2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetPlayerPublicRecordHandlerV1' test.out

#- 94 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'kndhhZhwAiLsZs4p' \
    'mLDIQch4IjDq9aT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PutPlayerPublicRecordHandlerV1' test.out

#- 95 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'qZyI0rYsWucAkXsV' \
    'JbXi7eRZa7WwIc89' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
