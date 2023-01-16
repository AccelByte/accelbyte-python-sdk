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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "RYrx7n2x", "EventName": "Ix80ptDd", "EventNamespace": "0rBtsAae", "EventTimestamp": "1990-07-30T00:00:00Z", "Payload": {"Gnk66D8B": {}, "zJ1qpxt6": {}, "f0WGOS7J": {}}}, {"EventId": "2r4pRyBX", "EventName": "Wd67TQML", "EventNamespace": "s3rWAyzO", "EventTimestamp": "1983-03-31T00:00:00Z", "Payload": {"ZtSeiakk": {}, "HOUSe1tF": {}, "AGNZaddW": {}}}, {"EventId": "675bcycn", "EventName": "Ymr3dVdw", "EventNamespace": "wN0FXRT3", "EventTimestamp": "1974-08-25T00:00:00Z", "Payload": {"Ze4AmUjL": {}, "ll9tzxUg": {}, "dt0XkD9M": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'G6DPh03Z' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'TW0cPXIT' 'Fy9z1yQk' --login_with_auth "Bearer foo"
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
    '[{"EventId": "tVnEGbhB", "EventName": "kUcNKLS3", "EventNamespace": "ppNGvV7q", "EventTimestamp": "1975-06-12T00:00:00Z", "Payload": {"U7IJb6s9": {}, "XsrbFKxu": {}, "dYpqBsAf": {}}}, {"EventId": "lRVYjhWb", "EventName": "1z0FLmJa", "EventNamespace": "jrN9Wa6Q", "EventTimestamp": "1992-07-14T00:00:00Z", "Payload": {"2DszoPnD": {}, "xN3c3lv9": {}, "GRGfQWsM": {}}}, {"EventId": "V4ETbRQ6", "EventName": "pQzNO28M", "EventNamespace": "Ab80zvDh", "EventTimestamp": "1976-06-21T00:00:00Z", "Payload": {"EGFjHith": {}, "7S8JmoJX": {}, "7cQNjhNa": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    '1V5EBBpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'jkcLqXkW' \
    'jSvd9mco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
