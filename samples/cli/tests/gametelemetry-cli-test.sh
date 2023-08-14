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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"ClientTimestamp": "1986-06-05T00:00:00Z", "EventId": "AxcVpFrttufHIRdH", "EventName": "9UzVRiXbqlAw7r6W", "EventNamespace": "2ktQG0h5JAav5kRa", "EventTimestamp": "1977-04-17T00:00:00Z", "Payload": {"opBJHPtcDs8bBZLC": {}, "XLx8bbgorQeFbQ1g": {}, "7qbPngUNB1vRodwp": {}}}, {"ClientTimestamp": "1984-09-17T00:00:00Z", "EventId": "S6DaDpv8N7ZQVqGj", "EventName": "6oDLjWjkY1aXlFcD", "EventNamespace": "tgOjchIua5tWEIC3", "EventTimestamp": "1999-08-29T00:00:00Z", "Payload": {"ogW7olvbTgrhRTcP": {}, "iSuL0Sly6XM4OI18": {}, "mAQLnzjMf8GZ2WBZ": {}}}, {"ClientTimestamp": "1979-03-19T00:00:00Z", "EventId": "xYG3aREAu2D6QVKN", "EventName": "CWP75TB0i7pKxR8d", "EventNamespace": "l0zRVW4EZG9m0Xcg", "EventTimestamp": "1987-05-30T00:00:00Z", "Payload": {"VbMqSszE8GHavj7A": {}, "orKsxwkosAVerXpc": {}, "1C8XfwHuKeb9l3rG": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'N9A3sNm84hddSpHt' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put '0P7MIIR7CkyF6C7d' 'uuyZ0GhDogqrhBRd' --login_with_auth "Bearer foo"
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
    '[{"ClientTimestamp": "1998-03-29T00:00:00Z", "EventId": "5MYzYiKWe5dNRljv", "EventName": "7IPrDQQRgat0Sevk", "EventNamespace": "LGMS0lyuI9a2I9u6", "EventTimestamp": "1995-12-18T00:00:00Z", "Payload": {"pbsx5w8hqUI06UpO": {}, "XGSLmCVuHOPlLlkv": {}, "R8sKgnuRkgghGoYu": {}}}, {"ClientTimestamp": "1978-04-04T00:00:00Z", "EventId": "D391C2qtPYokahFj", "EventName": "kQsfCaTmt1d67FXG", "EventNamespace": "k2s9Q0mPVo3twu0M", "EventTimestamp": "1973-08-20T00:00:00Z", "Payload": {"sTCf9x4rt69lna7q": {}, "xNeIxPz6MbwL6IY6": {}, "9z1UaLqYSYWytLPz": {}}}, {"ClientTimestamp": "1975-07-23T00:00:00Z", "EventId": "ZMdjxcBZufQxGiHP", "EventName": "llG4cYEzfTD1ZBm3", "EventNamespace": "MqHcUmLZZbSqb8Rw", "EventTimestamp": "1991-05-05T00:00:00Z", "Payload": {"mn9HrNQy4uZAAiE0": {}, "mit9RGCCHYzUOcEd": {}, "scKHPEqgA8yu7Vk6": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'Jt4Ymos9Jcdos4fY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'cTVU6RBt0zYoMcHy' \
    'CUEXlAvxJMdalwSy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
