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
qosm-update-server-config '{"status": "EAxcVpFrttufHIRd"}' 'H9UzVRiXbqlAw7r6' --login_with_auth "Bearer foo"
qosm-delete-server 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
qosm-set-server-alias '{"alias": "a62WopBJHPtcDs8b"}' 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
qosm-list-server-per-namespace --login_with_auth "Bearer foo"
qosm-list-server --login_with_auth "Bearer foo"
qosm-heartbeat '{"ip": "bQ1g7qbPngUNB1vR", "port": 29, "region": "xwElFHHdgs21Jub7"}' --login_with_auth "Bearer foo"
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

#- 2 UpdateServerConfig
$PYTHON -m $MODULE 'qosm-update-server-config' \
    '{"status": "4CUkNmKJfh5pUkHO"}' \
    'DpoMF78NY4YkHs1c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'UpdateServerConfig' test.out

#- 3 DeleteServer
$PYTHON -m $MODULE 'qosm-delete-server' \
    'nz1JSDgY1TXp38zs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'DeleteServer' test.out

#- 4 SetServerAlias
$PYTHON -m $MODULE 'qosm-set-server-alias' \
    '{"alias": "CTCrbCbPOyNQkT7N"}' \
    'vyE3cwyALczNIicX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SetServerAlias' test.out

#- 5 ListServerPerNamespace
$PYTHON -m $MODULE 'qosm-list-server-per-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ListServerPerNamespace' test.out

#- 6 ListServer
$PYTHON -m $MODULE 'qosm-list-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'ListServer' test.out

#- 7 Heartbeat
$PYTHON -m $MODULE 'qosm-heartbeat' \
    '{"ip": "m7agSrjJW2OQNOs1", "port": 86, "region": "D6QVKNCWP75TB0i7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'Heartbeat' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
