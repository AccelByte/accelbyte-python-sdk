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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "ibePuVvU", "EventName": "lzuieqAZ", "EventNamespace": "X0xlDu8S", "EventTimestamp": "1989-08-09T00:00:00Z", "Payload": {"BEQSIfXW": {}, "iNMfpIM8": {}, "ksoedGVK": {}}}, {"EventId": "MWE5dC8k", "EventName": "e0nQdOiB", "EventNamespace": "i59N67ga", "EventTimestamp": "1978-09-17T00:00:00Z", "Payload": {"l1RcafK0": {}, "ct09iMhg": {}, "SEhCklZh": {}}}, {"EventId": "JlMMcdjB", "EventName": "eQ2LpTA3", "EventNamespace": "Z8UbuFBP", "EventTimestamp": "1981-10-12T00:00:00Z", "Payload": {"8KEYn91E": {}, "aWC2HuBG": {}, "dsnvkfyr": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'QCKOjJvG' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'J6C82xax' 'BTxONNSi' --login_with_auth "Bearer foo"
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
    '[{"EventId": "1nYohYx3", "EventName": "23HQGgyi", "EventNamespace": "p3Fe2urD", "EventTimestamp": "1982-07-02T00:00:00Z", "Payload": {"Y1dgIfoo": {}, "LC0jDxAz": {}, "TQeob6Ja": {}}}, {"EventId": "duvuBBjK", "EventName": "xYTtBUsK", "EventNamespace": "G9RkQuUI", "EventTimestamp": "1988-11-17T00:00:00Z", "Payload": {"vA9QjdAQ": {}, "dcYsIfMk": {}, "2Mg0k7IX": {}}}, {"EventId": "eVlNcUHX", "EventName": "TPTkjLbK", "EventNamespace": "P2h1zEMg", "EventTimestamp": "1998-04-05T00:00:00Z", "Payload": {"acqr4yuP": {}, "qV3XgG0h": {}, "5bHyMGVS": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'VaBBGVzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'PM3zUURB' \
    'cAcCTuFQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
