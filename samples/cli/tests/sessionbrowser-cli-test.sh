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
echo "1..21"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminQuerySession
eval_tap 0 2 'AdminQuerySession # SKIP deprecated' test.out

#- 3 GetTotalActiveSession
eval_tap 0 3 'GetTotalActiveSession # SKIP deprecated' test.out

#- 4 GetActiveCustomGameSessions
eval_tap 0 4 'GetActiveCustomGameSessions # SKIP deprecated' test.out

#- 5 GetActiveMatchmakingGameSessions
eval_tap 0 5 'GetActiveMatchmakingGameSessions # SKIP deprecated' test.out

#- 6 AdminGetSession
eval_tap 0 6 'AdminGetSession # SKIP deprecated' test.out

#- 7 AdminDeleteSession
eval_tap 0 7 'AdminDeleteSession # SKIP deprecated' test.out

#- 8 AdminSearchSessionsV2
eval_tap 0 8 'AdminSearchSessionsV2 # SKIP deprecated' test.out

#- 9 GetSessionHistoryDetailed
eval_tap 0 9 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 10 UserQuerySession
eval_tap 0 10 'UserQuerySession # SKIP deprecated' test.out

#- 11 CreateSession
eval_tap 0 11 'CreateSession # SKIP deprecated' test.out

#- 12 GetSessionByUserIDs
eval_tap 0 12 'GetSessionByUserIDs # SKIP deprecated' test.out

#- 13 GetSession
eval_tap 0 13 'GetSession # SKIP deprecated' test.out

#- 14 UpdateSession
eval_tap 0 14 'UpdateSession # SKIP deprecated' test.out

#- 15 DeleteSession
eval_tap 0 15 'DeleteSession # SKIP deprecated' test.out

#- 16 JoinSession
eval_tap 0 16 'JoinSession # SKIP deprecated' test.out

#- 17 DeleteSessionLocalDS
eval_tap 0 17 'DeleteSessionLocalDS # SKIP deprecated' test.out

#- 18 AddPlayerToSession
eval_tap 0 18 'AddPlayerToSession # SKIP deprecated' test.out

#- 19 RemovePlayerFromSession
eval_tap 0 19 'RemovePlayerFromSession # SKIP deprecated' test.out

#- 20 UpdateSettings
eval_tap 0 20 'UpdateSettings # SKIP deprecated' test.out

#- 21 GetRecentPlayer
eval_tap 0 21 'GetRecentPlayer # SKIP deprecated' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
