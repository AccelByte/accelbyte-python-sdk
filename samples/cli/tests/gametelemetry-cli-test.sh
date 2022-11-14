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
gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get --login_with_auth "Bearer foo"
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "HnIHByAf", "EventName": "PJr2pW4W", "EventNamespace": "gE52JDzT", "EventTimestamp": "1975-05-27T00:00:00Z", "Payload": {"JTS0EpFM": {}, "cG91miHZ": {}, "gCJZ2qKY": {}}}, {"EventId": "Wb4HLah4", "EventName": "M2jzocep", "EventNamespace": "jeg8evqJ", "EventTimestamp": "1979-06-22T00:00:00Z", "Payload": {"xl86awmw": {}, "PmOkWEus": {}, "Qrs4TQnD": {}}}, {"EventId": "KRd7oU5I", "EventName": "ywTdRauD", "EventNamespace": "njzkXN0s", "EventTimestamp": "1993-05-26T00:00:00Z", "Payload": {"0UHhyXVa": {}, "gxFoCygL": {}, "guNvb6X6": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'JYQKnS78' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'cRMsg4vA' 'lxnw2ePC' --login_with_auth "Bearer foo"
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
echo "1..5"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet
$PYTHON -m $MODULE 'gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 3 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
$PYTHON -m $MODULE 'gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post' \
    '[{"EventId": "7pTkv1vw", "EventName": "mm3jGe77", "EventNamespace": "vcx2s4LN", "EventTimestamp": "1987-03-14T00:00:00Z", "Payload": {"lhSJ2lhU": {}, "sTUdF99K": {}, "i9PNK54F": {}}}, {"EventId": "KZR90bGH", "EventName": "vGBgV7LP", "EventNamespace": "ClcOlprz", "EventTimestamp": "1994-03-09T00:00:00Z", "Payload": {"UIKX8Dpp": {}, "Rh3ww8qD": {}, "8tQJaIC2": {}}}, {"EventId": "5zL9YhVH", "EventName": "n5P4UUk8", "EventNamespace": "bG8aAkF2", "EventTimestamp": "1998-10-17T00:00:00Z", "Payload": {"8myqN2PZ": {}, "5hLMhIGK": {}, "a9iqUj4c": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'DOkjBfj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    '8CukOhRd' \
    'zn3RCCEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
