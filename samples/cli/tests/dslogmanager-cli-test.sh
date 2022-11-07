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
dslogmanager-list-terminated-servers --login_with_auth "Bearer foo"
dslogmanager-download-server-logs 'ikV6M9Bt' --login_with_auth "Bearer foo"
dslogmanager-check-server-logs 'sDzVepeP' --login_with_auth "Bearer foo"
dslogmanager-batch-download-server-logs '{"Downloads": [{"alloc_id": "Q74fXJYO", "namespace": "25Cbgy8G", "pod_name": "ojwMjYED"}, {"alloc_id": "EBSuai31", "namespace": "cPCqhwbj", "pod_name": "TCxD5dNt"}, {"alloc_id": "5TNNalId", "namespace": "z7e4GEiH", "pod_name": "J4pES1aL"}]}' --login_with_auth "Bearer foo"
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
echo "1..7"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListTerminatedServers
$PYTHON -m $MODULE 'dslogmanager-list-terminated-servers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListTerminatedServers' test.out

#- 3 DownloadServerLogs
$PYTHON -m $MODULE 'dslogmanager-download-server-logs' \
    'dWXTMsP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'DownloadServerLogs' test.out

#- 4 CheckServerLogs
$PYTHON -m $MODULE 'dslogmanager-check-server-logs' \
    'ilA0dZbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'CheckServerLogs' test.out

#- 5 BatchDownloadServerLogs
$PYTHON -m $MODULE 'dslogmanager-batch-download-server-logs' \
    '{"Downloads": [{"alloc_id": "rYJXZUvY", "namespace": "pIw9hljN", "pod_name": "VRhPmk8q"}, {"alloc_id": "PPhLMzN7", "namespace": "uxiorg4C", "pod_name": "vWhTywkN"}, {"alloc_id": "NrNtitWC", "namespace": "A6Ler6NL", "pod_name": "i5IoTHOz"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'BatchDownloadServerLogs' test.out

#- 6 ListAllTerminatedServers
$PYTHON -m $MODULE 'dslogmanager-list-all-terminated-servers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'ListAllTerminatedServers' test.out

#- 7 PublicGetMessages
$PYTHON -m $MODULE 'dslogmanager-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
