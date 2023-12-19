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
cloudsave-admin-put-player-records-handler-v1 '{"data": [{"key": "RFOn0jJLHC9LxhvN", "value": {"XTwGBCtohLtl9Zuh": {}, "ytm5UDrT6QXCs5SP": {}, "BbRPZTF6oQAXVG7t": {}}}, {"key": "nsZg5QgXjvyGJPN4", "value": {"eXbJE5Vs2GcyomQo": {}, "IXimBJehyxlNsjUg": {}, "xBkF6wFPoJeQedio": {}}}, {"key": "gEhhM2rIizGdKvOP", "value": {"dq5xrgxSmy1DN9LF": {}, "kYW5DQyj4bj5Ro2o": {}, "gaKt2ujQSa3Zdb65": {}}}]}' 'UXmy0Zp6iIaTIKUk' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-records-handler-v1 '{"keys": ["mkk9QM0NBMA9ORxp", "zwLR2AK6eXUGPJsw", "1fiP80G9Pclxcft2"]}' 'ulIJzPyrVEiOG4Uc' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'qsuGKHhMRWLVd3Dl' 'hLuIpomM8sm1MiaI' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' '1mX2tJoARtdbBe7u' 'dsMrok0WvGYYnx4V' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' '709xbnGezKsDwG2o' 'mOR2nvYI9TVqJdvz' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'cWbfUpaXp5JMl5LL' '4bTxBmZjdrrIxsB0' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'NRsB1fPqqRRulpqp' 'ymDkQhtrHWwRVnwV' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'BOqOHi8pWGd1juYh' 'iqjRJOqB5F93zFQb' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'JndUDpdONneAczbB' 'dHb2slt71B1SmZp2' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'JZp50CnPb71ORYcm' 'QbTU5JX8ccLjMXJR' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'k0eaKQDOJvrTefgl' 'Ss6g4iY9u02aCNYI' --login_with_auth "Bearer foo"
cloudsave-list-game-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-post-game-binary-record-v1 '{"file_type": "Wekp18lOC3mNqF7B", "key": "l0LcghVHfPEspxwh"}' --login_with_auth "Bearer foo"
cloudsave-bulk-get-game-binary-record-v1 '{"keys": ["RON0bc1eMbEIjowL", "qc3ecjXJbZDKKoxL", "E1Y3Dymtj3giPg4x"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-binary-record-v1 '4yiPX6ues1Hhhkg1' --login_with_auth "Bearer foo"
cloudsave-put-game-binary-record-v1 '{"content_type": "yLVbLFzHEP8cM4NT", "file_location": "wr0KHaAsmTej52WK"}' 'i6tArAURt9plCSVq' --login_with_auth "Bearer foo"
cloudsave-delete-game-binary-record-v1 '8PdH6hJPUAc0RVwX' --login_with_auth "Bearer foo"
cloudsave-post-game-binary-presigned-urlv1 '{"file_type": "gAgntLMCuaXBWQi6"}' 'BqPg4xr0lCancUZG' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "CHsZYoLfR1KtOv7Z", "value": {"y0b65uvuKNuy0ytZ": {}, "Q7M6Nzy1adnSKOLF": {}, "Kx1dX4LuWJu3pDMU": {}}}' 'AeeZ97SBROPYuG6X' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["qP6oo7G73zdxTgOf", "nwIdlNa29fDLh741", "IslKHzGlLKWUtDQs"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 '61OQAoxyyQpRWCii' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'PDGQhNPEwiJCf2XJ' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'VrlzqQls1ozhLVA3' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'kE8jKvgatOEBM70T' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-binary-records-v1 '{"userIds": ["dlNBJYOmpu1VCarz", "BsV6xnZ5Jrzzjrca", "ug6CWVG8SWP3glU6"]}' 'muswVJnNnN7kAa7j' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["0riFc5HTHQIoVsGo", "7dwV9DBqFKHQkETJ", "yTlUrwDTnoujQD4I"]}' 'EiH9Z5qXn3aoRtlq' --login_with_auth "Bearer foo"
cloudsave-list-my-binary-records-v1 --login_with_auth "Bearer foo"
cloudsave-bulk-get-my-binary-record-v1 '{"keys": ["OECohViHA5CzgFSy", "8X1A3PrIfapq5AAe", "Me4L3mDWORBVXTII"]}' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["JM9XsYIIZxiXNMR9", "BgaWcFX3SUBhyoTs", "MWPAxUMkawaGpAyr"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'IwMif3BOdkocVTd4' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-record-v1 '{"file_type": "BxqGWV6mTJ0sQs6X", "is_public": false, "key": "hqf6kiTdSGv2LFjA"}' 'KY7CbgsWqFWZX7kP' --login_with_auth "Bearer foo"
cloudsave-list-other-player-public-binary-records-v1 'Bom8F9GLLTG8phc3' --login_with_auth "Bearer foo"
cloudsave-bulk-get-other-player-public-binary-records-v1 '{"keys": ["n4iLoIllKlpO2pqi", "XJF3WGRaoQomSJC4", "DdrKF7SUQPLG59e0"]}' 'k5ZtX6wK7PpUlcIW' --login_with_auth "Bearer foo"
cloudsave-get-player-binary-record-v1 '32iK7MGt1ixY5rA1' 'WoVeJIePF8ZrQzP4' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-record-v1 '{"content_type": "zvtdxdbZUpd6FJtH", "file_location": "J1pyVwyKQLY6FEO6"}' '5Rb3z7CYLM8IlsHq' 'ffnrfsGlfPaZKBwa' --login_with_auth "Bearer foo"
cloudsave-delete-player-binary-record-v1 '3Ddb60ufPpzwj1QG' 'IFmlVf4jvapseE9L' --login_with_auth "Bearer foo"
cloudsave-put-player-binary-recor-metadata-v1 '{"is_public": false}' '87rGysryod3dNQrm' 'sApRA6HX3RwrKt2e' --login_with_auth "Bearer foo"
cloudsave-post-player-binary-presigned-urlv1 '{"file_type": "cozL0TOg54vCE48L"}' '5oLF6M4lNa4JUMSH' 'NgqRqCV7usamANkZ' --login_with_auth "Bearer foo"
cloudsave-get-player-public-binary-records-v1 'lOX9Sfo95HgXqKhT' 'PkwfLM9uSybRzWek' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "2gZvRrvr0n9d9lvc", "value": {"cKMLhrTrcBE2ItBS": {}, "3KtKZWe8aoFzAyBM": {}, "E74HUtipUWYhWV1q": {}}}' 'x8CzPML52faXUr9S' 'k4lq2faBcAXXKlhv' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "yH8paOJtxqMPpcVf", "value": {"RwNj547fH0XrKEDp": {}, "EY8VnocGAjci0V3t": {}, "Bf2jnHGKXphn50c9": {}}}' 'tNLDljhZ2jxLRX3z' '46OCaGBeMfPlNos4' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'yBRjrERHEonAZR8G' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["mEu0q1p6QCyY6vSk", "VFWdsbYuVEGVxYhe", "R3j5mNZ6vwv7K8As"]}' 'vt1j1Rx59hesNWy2' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'NvZ85DDKDAF8KDsB' 'ZOuYQJ03BAHZ7c53' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'q7akMpcmnnx6RVBr' 'op9v7aZK3h65hbN1' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' '5zfQSfQrtfF3TQN0' 'OcNDLr36vzohZyjM' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'QAg5mPYhrLTyU8Oh' 'gfY9JQYGF4bYXEcE' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'Nx9xZlAchob44lON' 'DDwMvgI0HlyPR7wZ' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'NiVsF6xG2mXEQdbz' 'IVy8alncV7vWgSHd' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'fo07UctPErqxyMyO' 'K06MqQBErxgjVByc' --login_with_auth "Bearer foo"
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
    '{"keys": ["vU4PbmRDcrg0DjQj", "BECXvea7H1m2lJFR", "Z3ZprZ60zMjhTHeh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    '94TSenE5hCFkIf5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'eqZ18MH57l2Zsrh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    '0ETtYmGukz3Mnlrj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'cHp6B8Vj7rXFgDnD' \
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
    '{"file_type": "kdZ9bpjb1tdA3Qhj", "key": "CMW64f4XhIjSoTB2", "set_by": "NMKtezapPr2QEPx3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPostGameBinaryRecordV1' test.out

#- 10 AdminGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-binary-record-v1' \
    'zTxBGtEJIYppuUSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGameBinaryRecordV1' test.out

#- 11 AdminPutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "KoHw2hyd12uSE7BE", "file_location": "v3aevq6iohU1cg4W"}' \
    '1IS3Uv1BpWoJBaqd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutGameBinaryRecordV1' test.out

#- 12 AdminDeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-binary-record-v1' \
    'g2FHcunsS1lnaO2m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGameBinaryRecordV1' test.out

#- 13 AdminPutGameBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "9vqjhbeK2qN8g6x2"}' \
    'PyYDo5R3hLiD5sf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutGameBinaryRecorMetadataV1' test.out

#- 14 AdminPostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "y1JsxJNGmyt0SQDU"}' \
    'DoWBZVGLlkUetzCA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostGameBinaryPresignedURLV1' test.out

#- 15 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "Wc9x1aMjgGim51T1", "value": {"07XIZRZ7tZdIs0xf": {}, "4czdt7zqmSKxOEQl": {}, "Vcx6GqsBq8vdhWVn": {}}}' \
    'uYLgpZehK0G2nmyu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 16 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "ViB9kRTcSQdTnNYG", "updatedAt": "eAfYFG3wSkHKufBd", "value": {"S3ZOokZB4cXnAXyu": {}, "Gz6LlxHv8SwyagYv": {}, "DJ3w3UNgIGj2jZtE": {}}}' \
    'YT8sIPSE1XXPzySa' \
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
    '{"appConfig": {"appName": "0sZoFS6xCOWMpyh9"}, "customConfig": {"GRPCAddress": "pMsQgb64ELbzDMwy"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
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
    '{"appConfig": {"appName": "0kHr4isTKWjmv67n"}, "customConfig": {"GRPCAddress": "uHCXWfwnwGioVwVz"}, "customFunction": {"afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "CUSTOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdatePluginConfig' test.out

#- 21 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '71' \
    '47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ListGameRecordsHandlerV1' test.out

#- 22 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    '6nEwnZhsjwJeGwaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetGameRecordHandlerV1' test.out

#- 23 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'SDMZz95OYKiqaZD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminPutGameRecordHandlerV1' test.out

#- 24 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    '3xe5rruJVfLGea0Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPostGameRecordHandlerV1' test.out

#- 25 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'tlzUcuHAXz0UV31M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteGameRecordHandlerV1' test.out

#- 26 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["fuGaXsAuGsZaSHev", "O0TQNEI3kfabxJWW", "SI1ECUo1NPpeFhUz"]}' \
    'tXDgB7n4C97uAPP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 27 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["PATLpUpxeJlsBJT6", "Hh3OMjAjq2mK8lbS", "EEelxnb5QxWG2HFn"], "user_id": "ZlA6HKWW4fI1IQco"}, {"keys": ["BQELcNlZkqTZrKgX", "Nwvm4e5GX6H742Oi", "xhtAoKiVm6URT95X"], "user_id": "hnUcvWB28Mpusuhh"}, {"keys": ["DJ5slzgiWZEtyd56", "LfxnbY97jjYgXchC", "bkXX26uEdCfQaMAQ"], "user_id": "uTKfC0I2kNjCMDtD"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 28 ListPlayerRecordHandlerV1
eval_tap 0 28 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 29 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'Mrentgn3DhqciwIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminListAdminUserRecordsV1' test.out

#- 30 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["ShF9RKb9vvxuJlhX", "bWhbwPwToC6knjVw", "VnzaqSfJiQFC2gXo"]}' \
    'da0kg16yUSpSOAjH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 31 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'JWwfCjYwWkLob9gK' \
    'Lqs2nEZhpByfHZin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAdminPlayerRecordV1' test.out

#- 32 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'xNfgPAwkMBsznlBU' \
    'qnLT4AbGptKaWNvP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminPutAdminPlayerRecordV1' test.out

#- 33 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'bpg7yrRvXfZ6rvgv' \
    'EY3Hht1SwqTsKKKo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminPostPlayerAdminRecordV1' test.out

#- 34 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    '37NHDOQe91Ps3ztU' \
    'IV0dS6hIH9c4Vfky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAdminPlayerRecordV1' test.out

#- 35 AdminListPlayerBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-player-binary-records-v1' \
    'rwpuXxbaERbfgPmi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminListPlayerBinaryRecordsV1' test.out

#- 36 AdminPostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "0eHkt1mr9EOIFg0d", "is_public": false, "key": "xuogFteTHJe4BhSS", "set_by": "QkQD6WmOt6D7ufFV"}' \
    'TOhvQpfbBke8aEdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminPostPlayerBinaryRecordV1' test.out

#- 37 AdminGetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-binary-record-v1' \
    '36xj6wySoltDxsbz' \
    'xrlaKEfkoYjY2o6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerBinaryRecordV1' test.out

#- 38 AdminPutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "uRW9UtNquwC3Wgum", "file_location": "rIz4NhGztZpr4U4f"}' \
    'wQIiLXgmRasvjO4l' \
    'j8m3XEwP2b4gd3xO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminPutPlayerBinaryRecordV1' test.out

#- 39 AdminDeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-binary-record-v1' \
    'eii8Jnmssep2xD2N' \
    'Y0kABeGs9yxahld1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerBinaryRecordV1' test.out

#- 40 AdminPutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": true, "set_by": "TGTCm4fZWuk6pQxD"}' \
    'QpKqxLGeMvr9Tsvc' \
    'MQ7dBsaIecRxIsZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminPutPlayerBinaryRecorMetadataV1' test.out

#- 41 AdminPostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "D6rmzVr5XT1Nxw0v"}' \
    '1dMQ9Rrbk6C2cVWf' \
    '6ttvbU1PO6ApCD2V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminPostPlayerBinaryPresignedURLV1' test.out

#- 42 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "XidT7w0Oc15N8WXB", "value": {"Pp17PAewqSm5x3B4": {}, "t7WQnp8jXZedgt5c": {}, "yNe27HLtwtVOaxgP": {}}}' \
    '6Jbct8puMybYGxD9' \
    'IPmmsLmu3kaPj0O4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 43 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "zd8Tb7cUNGPTBxiF", "updatedAt": "FCrn7djjs69FTFVG", "value": {"UVhvKhJCmeisql14": {}, "mUHVbMPimNhcZsU3": {}, "VAdMDcb4qlkiFAam": {}}}' \
    'qvZI2KwjqPBiWXad' \
    'e41s3rH34mB2yPlR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 44 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "pWjmHZAAvKTH8Muq", "updatedAt": "Ig0CzkguwuJCW7EE", "value": {"FB67AODbi9BzupBs": {}, "FpYc77GtRUcCFeY5": {}, "g4XgBsbfzqxBPNe8": {}}}' \
    'ae1Il4aAtEbu4IjG' \
    'dqthRxTjQ7gkZEY8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 45 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'rG0q0Q2Qd2JzRbkF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminRetrievePlayerRecords' test.out

#- 46 AdminPutPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{"key": "2I03dIjvBbA6bfbY", "value": {"aJCJjfk2TUvn95Fh": {}, "O7VW3mbDVMDu87t0": {}, "ldWf7iSGIiKFtWtn": {}}}, {"key": "4Yr2svKM6pqLGZ0T", "value": {"BujELAUK6mQ5iZgb": {}, "wwm5iGzXtcknrgid": {}, "KupvXO6aj4hCmTC3": {}}}, {"key": "4jxW4pIDwdqXpmRm", "value": {"ut9H9XyWI8bp8fQx": {}, "RuX91uYmtrHJbEGT": {}, "Uj7YjERL1rEQG02z": {}}}]}' \
    'ccA8wvLsWUNd6lPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminPutPlayerRecordsHandlerV1' test.out

#- 47 AdminGetPlayerRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["vqDejvqklTSvDwuO", "rP9lzpiX0VuFpZum", "7izxe7NPzjOa8E7w"]}' \
    'Y76PxLv9HBEUe89A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerRecordsHandlerV1' test.out

#- 48 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'wEw1HO4FnKtx4XLK' \
    'AmlDr19uJ3nq6Ver' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerRecordHandlerV1' test.out

#- 49 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'zVCcI8y3Cz0YqCKU' \
    'h5RD9vNAp4jinFpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminPutPlayerRecordHandlerV1' test.out

#- 50 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'Q5xF9wwbvMZyeDeR' \
    'nVfPUa6xVVBcq3wZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminPostPlayerRecordHandlerV1' test.out

#- 51 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'pFIYeAg79HcLJXJ7' \
    'mpVI6eTYAjdPlCiQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeletePlayerRecordHandlerV1' test.out

#- 52 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'QC35cj4KyOVgvnWb' \
    'fRJtsB7cUQZ2QUAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 53 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'JrINPXppPNO3AfmX' \
    'cgwC3IN6tvKgLB9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 54 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'mJIOq9dP5szG71ut' \
    'jsQ4CrRb9gUCeVz7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 55 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'fWbZIdhevfZvyV7A' \
    'codcZwKjYDdmJOlz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 56 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'wm9Su4FnS98QqftS' \
    'jq7sn8yreciPLfkV' \
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
    '{"file_type": "yyJsbGpO6JgehDJx", "key": "EN7JlZc8LMq1o2jZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PostGameBinaryRecordV1' test.out

#- 59 BulkGetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["Wu4yA3r0u4q1bTHX", "IjfJKyFlM0u1uuoV", "dn9yVoSlKNchPHNL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'BulkGetGameBinaryRecordV1' test.out

#- 60 GetGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-game-binary-record-v1' \
    '4X3LLaGPGdqLE8So' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetGameBinaryRecordV1' test.out

#- 61 PutGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "hhhuiTnJarYYkHBD", "file_location": "dSzBXdxapwhd5IQY"}' \
    'BQuxLvPuWYvE3fsN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PutGameBinaryRecordV1' test.out

#- 62 DeleteGameBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-game-binary-record-v1' \
    'y9Z9OhxXvCp9y7fL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteGameBinaryRecordV1' test.out

#- 63 PostGameBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "D2qfCXnlUnqxT1Ws"}' \
    'RNMZcA92hzC7MNa8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PostGameBinaryPresignedURLV1' test.out

#- 64 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "vVe4MHX6AgMep90A", "value": {"yyUJyAK5PRMRMwdv": {}, "l0hv6g62GxBW2tQF": {}, "5tkTjgJaMYvNQOsD": {}}}' \
    'a4bkcgepqtxjbrzt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PutGameRecordConcurrentHandlerV1' test.out

#- 65 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["ee7QLTGAak7Kaol0", "1DK97D2xnik42mit", "eR5eQAe1rzmmgqBP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetGameRecordsBulk' test.out

#- 66 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'Rmd6mO4oI8KDqebm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetGameRecordHandlerV1' test.out

#- 67 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '83raNBJ5y7axEkvI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PutGameRecordHandlerV1' test.out

#- 68 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    '4oxZEDxGiBnNbn0z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PostGameRecordHandlerV1' test.out

#- 69 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'af7CaOSlHXrUSA6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteGameRecordHandlerV1' test.out

#- 70 BulkGetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["MJzA5mtqISQ83TTb", "tefXWznDe4LQdXfF", "Bii2RAMEX5RMjBFV"]}' \
    'ZGYzQqV8d9mDdUIo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkGetPlayerPublicBinaryRecordsV1' test.out

#- 71 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["iIJFNxuNOmUSWw18", "T1IxVWCxdvPL9e4P", "01vxP8xj1LyEirUR"]}' \
    'ERnEMzpImW6sjAHy' \
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
    '{"keys": ["CK5tNanGBrkzUvck", "3xTtmOFMebS4AdlN", "zwog2IhErkNhNcEC"]}' \
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
    '{"keys": ["WwchW6zL9SkbLlrN", "XnGanMazb8jvRWen", "URH48aJuALEcSqcE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'GetPlayerRecordsBulkHandlerV1' test.out

#- 76 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    '15u6D31DjOsrs3CU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 77 PostPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "YATdqnQGbqiqOkNe", "is_public": true, "key": "B72HHMkjzyBB4UFK"}' \
    'iaoV0VOem2yqPsMF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PostPlayerBinaryRecordV1' test.out

#- 78 ListOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-list-other-player-public-binary-records-v1' \
    'xKybPkbuS6x9cLJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'ListOtherPlayerPublicBinaryRecordsV1' test.out

#- 79 BulkGetOtherPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["APnNlsa2bRBr27fV", "MWuAfDqLMR919IZP", "KOKiAVQXXOmqFHLb"]}' \
    'yXmgCNiXH8uenbC5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkGetOtherPlayerPublicBinaryRecordsV1' test.out

#- 80 GetPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-get-player-binary-record-v1' \
    'CphgMweexsIAP5vH' \
    'LjBJ9iqMcBL4BzhD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetPlayerBinaryRecordV1' test.out

#- 81 PutPlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "UjhKPwbwcvQU5kG8", "file_location": "bXGFmPAnOkDiJq4x"}' \
    'Qye7HqnVK3YVeOWs' \
    '9mfVQh3jLBtn9pxp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PutPlayerBinaryRecordV1' test.out

#- 82 DeletePlayerBinaryRecordV1
$PYTHON -m $MODULE 'cloudsave-delete-player-binary-record-v1' \
    'E7BYtzB0B4CxyQrU' \
    'pIFvORxTi79DpSjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'DeletePlayerBinaryRecordV1' test.out

#- 83 PutPlayerBinaryRecorMetadataV1
$PYTHON -m $MODULE 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": true}' \
    'ukcR6c2E2r3vk3If' \
    'AKEbqcNXSGCCvNow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PutPlayerBinaryRecorMetadataV1' test.out

#- 84 PostPlayerBinaryPresignedURLV1
$PYTHON -m $MODULE 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "NmdpcJgF88ySNq4M"}' \
    'j7mulP4tQ6R1OqKV' \
    'OTniBgLsNhdgQ0JW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PostPlayerBinaryPresignedURLV1' test.out

#- 85 GetPlayerPublicBinaryRecordsV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-binary-records-v1' \
    'ZjNRSzOTqcVNX3ah' \
    'vxw9gwwhTnjN6wKZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetPlayerPublicBinaryRecordsV1' test.out

#- 86 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "GW4y3f0R9s2kndhh", "value": {"ZhwAiLsZs4pmLDIQ": {}, "ch4IjDq9aT3qZyI0": {}, "rYsWucAkXsVJbXi7": {}}}' \
    'eRZa7WwIc895ImqK' \
    '6tVsaUq3stUh5J5Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 87 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "9GiBiSAylX5cS0Ie", "value": {"HpWCugmfOL0QQpxs": {}, "uD8PGqku59eFJrOX": {}, "yDYz9vMUOPG0iHDT": {}}}' \
    '8QbF7gHPTPQbvLt2' \
    'NRqJGIKzLyH1y72L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 88 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    '13Ornyx34luLdvts' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 89 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["TKXMjiw6gYPvfn2Q", "t9iyq3Nyk8ncu2Z3", "eDHH9WaVO4iKhDcJ"]}' \
    '7TCcNIsQ3PuppUxD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 90 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'SK8aOTGMudcxlCV4' \
    'cNbJGQ57lPdinpjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetPlayerRecordHandlerV1' test.out

#- 91 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    '2DRfGt9GlyZVQ4X6' \
    '7tPZSTpPq3xjrElv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PutPlayerRecordHandlerV1' test.out

#- 92 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'vDgw0ag7kSWE0Hiq' \
    'm5IuLryiEXqvUWDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PostPlayerRecordHandlerV1' test.out

#- 93 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'U1G0EVjVZw1ToLuP' \
    'akQN1MpOs1RVFrcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'DeletePlayerRecordHandlerV1' test.out

#- 94 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    '2CXxepx78fvsyhE2' \
    'BKtyTDSIM7mkmvZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetPlayerPublicRecordHandlerV1' test.out

#- 95 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'Cmsh4US8o4jfMANP' \
    'pmZDdMiCxmuCCVuF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PutPlayerPublicRecordHandlerV1' test.out

#- 96 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'jS1GC1d2b92B4vEg' \
    'j3HOmhcWm428XejR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
