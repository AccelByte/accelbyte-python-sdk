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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "EAxcVpFr", "EventName": "ttufHIRd", "EventNamespace": "H9UzVRiX", "EventTimestamp": "1971-12-03T00:00:00Z", "Payload": {"qlAw7r6W": {}, "2ktQG0h5": {}, "JAav5kRa": {}}}, {"EventId": "62WopBJH", "EventName": "PtcDs8bB", "EventNamespace": "ZLCXLx8b", "EventTimestamp": "1971-07-18T00:00:00Z", "Payload": {"gorQeFbQ": {}, "1g7qbPng": {}, "UNB1vRod": {}}}, {"EventId": "wpzS6DaD", "EventName": "pv8N7ZQV", "EventNamespace": "qGj6oDLj", "EventTimestamp": "1995-03-11T00:00:00Z", "Payload": {"pUkHODpo": {}, "MF78NY4Y": {}, "kHs1cnz1": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'JSDgY1TX' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'p38zsCTC' 'rbCbPOyN' --login_with_auth "Bearer foo"
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
    '[{"EventId": "QkT7NvyE", "EventName": "3cwyALcz", "EventNamespace": "NIicXm7a", "EventTimestamp": "1974-08-12T00:00:00Z", "Payload": {"SrjJW2OQ": {}, "NOs1PXhT": {}, "5FvdiRil": {}}}, {"EventId": "Z7oFgx4c", "EventName": "8OumKtPD", "EventNamespace": "KJDXn7Z4", "EventTimestamp": "1995-01-14T00:00:00Z", "Payload": {"68su8Xfq": {}, "lqNiTvB6": {}, "SdAdIhUD": {}}}, {"EventId": "rwoZ5Mec", "EventName": "dKi5r6QE", "EventNamespace": "a1ysLEzt", "EventTimestamp": "1974-05-22T00:00:00Z", "Payload": {"6mXhzkzW": {}, "kFeZSoEA": {}, "cBdW19m4": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'eu6d5tA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'jUmiTqpy' \
    'hPFdxLzF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
