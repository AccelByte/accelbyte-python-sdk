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
cloudsave-admin-get-player-record-handler-v1 'RFOn0jJLHC9LxhvN' 'XTwGBCtohLtl9Zuh' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'ytm5UDrT6QXCs5SP' 'BbRPZTF6oQAXVG7t' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'nsZg5QgXjvyGJPN4' 'eXbJE5Vs2GcyomQo' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'IXimBJehyxlNsjUg' 'xBkF6wFPoJeQedio' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'gEhhM2rIizGdKvOP' 'dq5xrgxSmy1DN9LF' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'kYW5DQyj4bj5Ro2o' 'gaKt2ujQSa3Zdb65' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'UXmy0Zp6iIaTIKUk' 'mkk9QM0NBMA9ORxp' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'zwLR2AK6eXUGPJsw' '1fiP80G9Pclxcft2' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'ulIJzPyrVEiOG4Uc' 'qsuGKHhMRWLVd3Dl' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "hLuIpomM8sm1MiaI", "key": "1mX2tJoARtdbBe7u"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["dsMrok0WvGYYnx4V", "709xbnGezKsDwG2o", "mOR2nvYI9TVqJdvz"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 'cWbfUpaXp5JMl5LL' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "4bTxBmZjdrrIxsB0", "file_location": "NRsB1fPqqRRulpqp"}' 'ymDkQhtrHWwRVnwV' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 'BOqOHi8pWGd1juYh' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "iqjRJOqB5F93zFQb"}' 'JndUDpdONneAczbB' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "dHb2slt71B1SmZp2", "value": {"JZp50CnPb71ORYcm": {}, "QbTU5JX8ccLjMXJR": {}, "k0eaKQDOJvrTefgl": {}}}' 'Ss6g4iY9u02aCNYI' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["Wekp18lOC3mNqF7B", "l0LcghVHfPEspxwh", "RON0bc1eMbEIjowL"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'qc3ecjXJbZDKKoxL' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'E1Y3Dymtj3giPg4x' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' '4yiPX6ues1Hhhkg1' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'yLVbLFzHEP8cM4NT' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["wr0KHaAsmTej52WK", "i6tArAURt9plCSVq", "8PdH6hJPUAc0RVwX"]}' 'gAgntLMCuaXBWQi6' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["BqPg4xr0lCancUZG", "CHsZYoLfR1KtOv7Z", "y0b65uvuKNuy0ytZ"]}' 'Q7M6Nzy1adnSKOLF' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["Kx1dX4LuWJu3pDMU", "AeeZ97SBROPYuG6X", "qP6oo7G73zdxTgOf"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["nwIdlNa29fDLh741", "IslKHzGlLKWUtDQs", "61OQAoxyyQpRWCii"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'PDGQhNPEwiJCf2XJ' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "VrlzqQls1ozhLVA3", "is_public": false, "key": "rBvvWm4udE0OXudX"}' 'gNne8kJATwlc6esU' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 'p6Sw1I98jeZQ7hfx' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["nhLd3Knaknoed9DH", "hLOqQGhCUr6iTrjy", "EgarAdNJOIG36I6t"]}' 'RbRcrEveMdAdiPKD' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 'UVSC00PYeDcaggin' 'xnFIna3yddcbsPhe' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "TH26IUJNvYuGRUvp", "file_location": "ZaHCuESOiIZsMfB4"}' 'ZH3mtgWgU4pCAKxe' 'E70CaunQNxot371W' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 '9G4AvQkqsGnmyo5J' 'JTUVmb8GEXFTlEME' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": true}' 'wMif3BOdkocVTd4B' 'xqGWV6mTJ0sQs6XN' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "bjvqhnUVLWu8olKd"}' 'xL6ozRmDD0jJvlfV' '5OemPYdYT7DROCjt' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'uzFMbAG9YI89hmgu' 'B8FOTjMLo4b9rIzq' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "YkEpstyVTBcrM8rG", "value": {"0rH0zcswwVeMK6Mb": {}, "GIVIu8vvwLc7KY3u": {}, "VoJXTIMtpgkieDyF": {}}}' '97lGdMiHKxbWCYzo' '8yO2KTK9tmmOnYnO' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "pas6ghP1y4Zi7s7Q", "value": {"Blk44Z44B1GZgKg4": {}, "uKxaCgcGLuC3brWd": {}, "TYCfHkIySok5DiXZ": {}}}' 'tLW87rGysryod3dN' 'QrmsApRA6HX3RwrK' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 't2ecozL0TOg54vCE' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["48L5oLF6M4lNa4JU", "MSHNgqRqCV7usamA", "NkZlOX9Sfo95HgXq"]}' 'KhTPkwfLM9uSybRz' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'Wek2gZvRrvr0n9d9' 'lvccKMLhrTrcBE2I' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'tBS3KtKZWe8aoFzA' 'yBME74HUtipUWYhW' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'V1qx8CzPML52faXU' 'r9Sk4lq2faBcAXXK' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'lhvyH8paOJtxqMPp' 'cVfRwNj547fH0XrK' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'EDpEY8VnocGAjci0' 'V3tBf2jnHGKXphn5' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' '0c9tNLDljhZ2jxLR' 'X3z46OCaGBeMfPlN' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'os4yBRjrERHEonAZ' 'R8GmEu0q1p6QCyY6' --login_with_auth "Bearer foo"
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
echo "1..94"

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
    '{"keys": ["vSkVFWdsbYuVEGVx", "YheR3j5mNZ6vwv7K", "8Asvt1j1Rx59hesN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'Wy2NvZ85DDKDAF8K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'DsBZOuYQJ03BAHZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'c53q7akMpcmnnx6R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'VBrop9v7aZK3h65h' \
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
    '{"file_type": "bN15zfQSfQrtfF3T", "key": "QN0OcNDLr36vzohZ", "set_by": "yjMQAg5mPYhrLTyU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    '8OhgfY9JQYGF4bYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "EcENx9xZlAchob44", "file_location": "lONDDwMvgI0HlyPR"}' \
    '7wZNiVsF6xG2mXEQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'dbzIVy8alncV7vWg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "SHdfo07UctPErqxy"}' \
    'MyOK06MqQBErxgjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "BycvU4PbmRDcrg0D"}' \
    'jQjBECXvea7H1m2l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "JFRZ3ZprZ60zMjhT", "value": {"Heh94TSenE5hCFkI": {}, "f5weqZ18MH57l2Zs": {}, "rh90ETtYmGukz3Mn": {}}}' \
    'lrjcHp6B8Vj7rXFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "DnDkdZ9bpjb1tdA3", "updatedAt": "QhjCMW64f4XhIjSo", "value": {"TB2NMKtezapPr2QE": {}, "Px3zTxBGtEJIYppu": {}, "USsKoHw2hyd12uSE": {}}}' \
    '7BEv3aevq6iohU1c' \
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
    '{"appConfig": {"appName": "g4W1IS3Uv1BpWoJB"}, "customConfig": {"GRPCAddress": "aqdg2FHcunsS1lna"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
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
    '{"appConfig": {"appName": "beK2qN8g6x2PyYDo"}, "customConfig": {"GRPCAddress": "5R3hLiD5sf5y1Jsx"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '91' \
    '30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    '7Nz81GRazPAANjfB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'oldFOyqA2clJ5gEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'aCgM6Yn6RugbNEIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'GBFUjOn5mM7k8nbL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["zvtCIW5ynMKquUic", "AeIVXtoWAXhMlW4t", "LqX7OICf5oD1e6oI"]}' \
    '9FmYel0kOw72o8Zk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["gk0jS6rDWUwfhKvr", "f2AaH4yCWrHSppnI", "ZkNnTn3rzH5NvAtc"], "user_id": "vNedgS1fUfKmihDb"}, {"keys": ["mu8ePWlQMVDXEHei", "GTnwyEw6hIWDZrpP", "7rz3ISW510kHr4is"], "user_id": "TKWjmv67nuHCXWfw"}, {"keys": ["nwGioVwVzmmBVVFf", "pqx1AeLtzcPJ3jtD", "YBo4FUTH7CGfKSyx"], "user_id": "gRR1DiCqSMzpqIFG"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'LkDs7ACC1RgBfoNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["HlFi2qJLgmBLE35Y", "hyiDV90SeI5yppBH", "oytVznCgNyx9fbT6"]}' \
    '3ShEh8PbGikLjgjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'j34uulU6FYBZsWFb' \
    'r3RSP0W9nBhvhf8Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    '0DtJMcYQdN66bswA' \
    'gt65X4N1LQZmB61J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'MdtwCVUrYQue84dw' \
    'mbwFEnAZaWsQJtRY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'oagRJK5PX9UcOvhP' \
    'yE11TRT2SKseoe8V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'Lie0LBa36KNzjf00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "5CXNGehQ2aTjTDfK", "is_public": false, "key": "DXC7eGL5YhJDWh9Y", "set_by": "Wqc0qgV6d9yOfIML"}' \
    'ds2DbPcaoMdtRLTm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    'SvTkQQgB7exYvmHM' \
    'xr5hPCJJztJBg0tT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "Jg46IewOXE2AkCh3", "file_location": "QIZsUf8lGFXcmwTE"}' \
    'RHclOdxIwqejxe18' \
    'rNdb8Otq6j1mqUav' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    '7k05HAQltnSojV4j' \
    'T65yclX2FtAz0vJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": false, "set_by": "YWOaNdsimmkW2miH"}' \
    '3xRHAKy4QxZkaXZ7' \
    'vmiEd0JPxVyQpsha' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "DwNqTbbFMXAMfVXe"}' \
    '0GZeMgsRsmH1EQrY' \
    'mkPKTPOlhTtSiZNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "xuogFteTHJe4BhSS", "value": {"QkQD6WmOt6D7ufFV": {}, "TOhvQpfbBke8aEdd": {}, "36xj6wySoltDxsbz": {}}}' \
    'xrlaKEfkoYjY2o6o' \
    'uRW9UtNquwC3Wgum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "rIz4NhGztZpr4U4f", "updatedAt": "wQIiLXgmRasvjO4l", "value": {"j8m3XEwP2b4gd3xO": {}, "eii8Jnmssep2xD2N": {}, "Y0kABeGs9yxahld1": {}}}' \
    'pO0Gyf5PO3COyMvc' \
    'zgEpzZ3FbtxfhcRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "7IVYa6iZ5uFRYNn3", "updatedAt": "SHiWxF0YbuU5ar5q", "value": {"TLWUCy0Afgc050XI": {}, "ZRW491e94mQjVOOB": {}, "nIWhunElqZUodp3I": {}}}' \
    'htCSHy1ei1fIrPvf' \
    'HnRN06EjRwEQlNap' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'JRfk4f9Zcw1pEHAy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'NFxcVTKuAQTGh5Bx' \
    'jWOozGoDtsUuYo5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetPlayerRecordHandlerV1' test.out

#- 47 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    '8ED5QZAufwNa8lzf' \
    'jv9oYMXMjlVHY1AH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminPutPlayerRecordHandlerV1' test.out

#- 48 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'wF3vGoav7MK0PcLn' \
    'EkcokKwcQ0baDT9O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminPostPlayerRecordHandlerV1' test.out

#- 49 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'yJ2h23GUS2amU7sy' \
    'GlElXdEAOrVSnLoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeletePlayerRecordHandlerV1' test.out

#- 50 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'LVVYamQc4wcG5nDB' \
    'LJoJHbiQ5duE5p4c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 51 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'fs2E41cK8QTwiIAv' \
    'xSvNDlmM5nQFMGzs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 52 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '7fzjgyc44mEh9tRk' \
    '8knYSV30lnroQehM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 53 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'Dli6t9unQLYXxm09' \
    'wpGAbpEmDY9vLh3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 54 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    '6EDsUmrV6kH4OotK' \
    'wG3UC6XCnnZxF8Cm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 55 ListGameBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-game-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'ListGameBinaryRecordsV1' test.out

#- 56 PostGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "Qr17W65br34rBBN9", "key": "tU6TDm5GloFSKWM1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PostGameBinaryRecordV1' test.out

#- 57 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["eym5ydC6p25xCWTq", "UOYZENJ1QHZQxPRX", "H7uxBJEECQE1li3B"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'BulkGetGameBinaryRecordV1' test.out

#- 58 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    'g7Jxc9pUnZmvhidw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGameBinaryRecordV1' test.out

#- 59 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "CkZwqjYLfTiCO1ND", "file_location": "BvQvRPnAz4VzW0Cp"}' \
    'oBCbyJsF5IjF1c0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PutGameBinaryRecordV1' test.out

#- 60 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    '338HS6CBgVRyihYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'DeleteGameBinaryRecordV1' test.out

#- 61 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "Z84CVhziXV8HwSmv"}' \
    'cvcDKF19yVRafCjO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PostGameBinaryPresignedURLV1' test.out

#- 62 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "uSYht83AdvBaagTi", "value": {"RJ8daGTVX3Bb7jlz": {}, "5IfHgKjI9mwJSrN8": {}, "jkIykR2zbaI6PD7f": {}}}' \
    'EscShnGUGUtV9GJ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PutGameRecordConcurrentHandlerV1' test.out

#- 63 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["79GDbLNwjm3FK0nn", "X2poMfZ1hDHtbh4H", "tMlFgvh2Dp2SoiIP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetGameRecordsBulk' test.out

#- 64 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'p1yvfAHS0VgLu11A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetGameRecordHandlerV1' test.out

#- 65 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '3HTovFi4tPAGfley' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PutGameRecordHandlerV1' test.out

#- 66 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'CA6jEtcqsnzoVILj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PostGameRecordHandlerV1' test.out

#- 67 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'kwW61duF87aUyrdt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteGameRecordHandlerV1' test.out

#- 68 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["4XSpWBAetsanzqP8", "oxfrtbECD1CYPwai", "BAxfYL8Avt70ZUT2"]}' \
    'fSk3LL0calqxEewu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 69 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["GS469k2hG0WKt4sU", "manYxM0UHZVNYzGM", "NIpWoSLkUrfuf4U3"]}' \
    'WeYeA9t2ENKKWrFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 70 ListMyBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-my-binary-records-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'ListMyBinaryRecordsV1' test.out

#- 71 BulkGetMyBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["HIi1CMgKAOG5iDcC", "R5PbCvDLil8wj9cK", "M3Ar6MF35hCER4nG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkGetMyBinaryRecordV1' test.out

#- 72 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'RetrievePlayerRecords' test.out

#- 73 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["mWGgTJfHlJl4tHGa", "4XfZcd9CVnGqMX9F", "ieeEssWEUl07bhwn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetPlayerRecordsBulkHandlerV1' test.out

#- 74 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'tCVqiYOJf5KwMZQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 75 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "zvjSozv6CTRDl0zp", "is_public": false, "key": "CzHFwinkBNi4gvqg"}' \
    'l6TZ9TGVPmv34h6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PostPlayerBinaryRecordV1' test.out

#- 76 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    '7EsufmfxKYB4LM6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 77 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["6QXmpZ9X3fUSR1l9", "xLPBsmAUrD9L1IiD", "6MlcEPhMDFzjHZ3s"]}' \
    'IhzOx2CXKlvIomU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 78 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'pIxM9n8D2eLMe3lt' \
    '9qfx2UDcgVE7L9FK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetPlayerBinaryRecordV1' test.out

#- 79 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "6e0MrPc4vtxk9hVK", "file_location": "lG56HlzGr7XjdyRJ"}' \
    'unZPkp6ccIBnWyPw' \
    '8mj7gyQ7XdIszGRj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PutPlayerBinaryRecordV1' test.out

#- 80 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    '46COPipH1MWVTHG0' \
    'qHJCWEfOJpZm9yEY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeletePlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": true}' \
    'GMy2pgSGSUOK68eq' \
    'GJtWf1Ybgg8rdwY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecorMetadataV1' test.out

#- 82 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "bmrvHmO07KNqX9LM"}' \
    '2IwEsdOGBXBwnzDX' \
    '8v3xgC1Ge9PdbTTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PostPlayerBinaryPresignedURLV1' test.out

#- 83 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    'J2Gp1r0sVZ6LJAOd' \
    'dIL2l3hPjNDKv2LW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPlayerPublicBinaryRecordsV1' test.out

#- 84 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "fXqjr8fS79En3wYo", "value": {"wBdkaZ3y6i38XQjL": {}, "DRqkpiFK5BtiQ272": {}, "Uo9UBJWodpdwsX1j": {}}}' \
    'orcyR0x3YiHF8ITG' \
    'PRQBCgIs1Q2lzxl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 85 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "yF5m77TTh4gUoj8u", "value": {"2WRcLiEtzVlnkflf": {}, "n7pHY48F1dl1q92m": {}, "3iRlfnBAk0CwiAsR": {}}}' \
    '65yQ9ssuHdGmxncC' \
    'Er0KcgeqzGbruNB7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 86 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    '2HHMkjzyBB4UFKia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 87 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["oV0VOem2yqPsMFxK", "ybPkbuS6x9cLJ1AP", "nNlsa2bRBr27fVMW"]}' \
    'uAfDqLMR919IZPKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 88 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'KiAVQXXOmqFHLbyX' \
    'mgCNiXH8uenbC5Cp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetPlayerRecordHandlerV1' test.out

#- 89 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'hgMweexsIAP5vHLj' \
    'BJ9iqMcBL4BzhDUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PutPlayerRecordHandlerV1' test.out

#- 90 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'hKPwbwcvQU5kG8bX' \
    'GFmPAnOkDiJq4xQy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PostPlayerRecordHandlerV1' test.out

#- 91 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'e7HqnVK3YVeOWs9m' \
    'fVQh3jLBtn9pxpE7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeletePlayerRecordHandlerV1' test.out

#- 92 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'BYtzB0B4CxyQrUpI' \
    'FvORxTi79DpSjb39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'GetPlayerPublicRecordHandlerV1' test.out

#- 93 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'ukcR6c2E2r3vk3If' \
    'AKEbqcNXSGCCvNow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PutPlayerPublicRecordHandlerV1' test.out

#- 94 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'NmdpcJgF88ySNq4M' \
    'j7mulP4tQ6R1OqKV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
