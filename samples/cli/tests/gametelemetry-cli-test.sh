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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "hrhvdSGC", "EventName": "5PDvFPwU", "EventNamespace": "TtzbrK8r", "EventTimestamp": "1994-07-03T00:00:00Z", "Payload": {"dCippxQN": {}, "tUBhPIPs": {}, "wOrQTADA": {}}}, {"EventId": "bE6squeE", "EventName": "BJKPip9l", "EventNamespace": "lrFE5nc9", "EventTimestamp": "1980-12-02T00:00:00Z", "Payload": {"wkngNNlq": {}, "E6RAzgVX": {}, "pggzA2A9": {}}}, {"EventId": "vQ2DEmFg", "EventName": "8V7ey7N9", "EventNamespace": "Np5EKqyL", "EventTimestamp": "1982-03-17T00:00:00Z", "Payload": {"IhrxEHUp": {}, "3lqxvGHT": {}, "PoRSgrC8": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'gujZkq4J' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'vI7BK6jp' 'skwYYmr1' --login_with_auth "Bearer foo"
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
    '[{"EventId": "eQoB9VPA", "EventName": "eIxpvYhT", "EventNamespace": "XepBhQMk", "EventTimestamp": "1987-11-06T00:00:00Z", "Payload": {"hrQZyILF": {}, "CDq01AL2": {}, "ZtW8BFtP": {}}}, {"EventId": "xHOL6RLa", "EventName": "Xh2pfaOz", "EventNamespace": "CZYqw05A", "EventTimestamp": "1977-06-13T00:00:00Z", "Payload": {"RoQMgvRJ": {}, "vgkyBUIV": {}, "yVYCs9Rr": {}}}, {"EventId": "ZFyNyVs7", "EventName": "lUIyGNFN", "EventNamespace": "YqoBSOwY", "EventTimestamp": "1998-08-21T00:00:00Z", "Payload": {"AxazPwd7": {}, "f7tPyMU1": {}, "XCcpiiwN": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'oRxMZOJf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'NysTxANY' \
    'vWMi4MY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
