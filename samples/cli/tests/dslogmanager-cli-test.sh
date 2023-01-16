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
dslogmanager-get-server-logs 'trTTEQbd' --login_with_auth "Bearer foo"
dslogmanager-list-terminated-servers --login_with_auth "Bearer foo"
dslogmanager-download-server-logs 'flFF5lCw' --login_with_auth "Bearer foo"
dslogmanager-check-server-logs 'ppKl5f66' --login_with_auth "Bearer foo"
dslogmanager-batch-download-server-logs '{"Downloads": [{"alloc_id": "hINwwdor", "namespace": "X3BNntKH", "pod_name": "WEEjsTxr"}, {"alloc_id": "tkDTm12d", "namespace": "INBQrmbS", "pod_name": "9z13jWgG"}, {"alloc_id": "QmGapOLY", "namespace": "igCmWCKQ", "pod_name": "z7Zf18jx"}]}' --login_with_auth "Bearer foo"
dslogmanager-list-all-terminated-servers --login_with_auth "Bearer foo"
dslogmanager-public-get-messages --login_with_auth "Bearer foo"
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
echo "1..8"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetServerLogs
$PYTHON -m $MODULE 'dslogmanager-get-server-logs' \
    'MFgJqXVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetServerLogs' test.out

#- 3 ListTerminatedServers
$PYTHON -m $MODULE 'dslogmanager-list-terminated-servers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListTerminatedServers' test.out

#- 4 DownloadServerLogs
$PYTHON -m $MODULE 'dslogmanager-download-server-logs' \
    '7qJXYM4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DownloadServerLogs' test.out

#- 5 CheckServerLogs
$PYTHON -m $MODULE 'dslogmanager-check-server-logs' \
    'HjjoU88g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CheckServerLogs' test.out

#- 6 BatchDownloadServerLogs
$PYTHON -m $MODULE 'dslogmanager-batch-download-server-logs' \
    '{"Downloads": [{"alloc_id": "xq3aNxTL", "namespace": "zbbLjMvz", "pod_name": "j0lqUItU"}, {"alloc_id": "DWnmQUoT", "namespace": "pRXsX62d", "pod_name": "0yTvhh6x"}, {"alloc_id": "GbxDkcp7", "namespace": "hneJqwm5", "pod_name": "RuSV1ohk"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'BatchDownloadServerLogs' test.out

#- 7 ListAllTerminatedServers
$PYTHON -m $MODULE 'dslogmanager-list-all-terminated-servers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'ListAllTerminatedServers' test.out

#- 8 PublicGetMessages
$PYTHON -m $MODULE 'dslogmanager-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
