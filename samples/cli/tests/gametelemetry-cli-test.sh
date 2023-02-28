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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "SCDYlUYd", "EventName": "CWGSxoYM", "EventNamespace": "aR44Jehx", "EventTimestamp": "1998-11-12T00:00:00Z", "Payload": {"KpArJKj1": {}, "uyFO6n1g": {}, "70OPWxqC": {}}}, {"EventId": "aNYEkPZr", "EventName": "Wfd8FMhC", "EventNamespace": "GFHSHeGA", "EventTimestamp": "1979-06-24T00:00:00Z", "Payload": {"iHIWHSst": {}, "YI8DzOqP": {}, "0bY8AEQw": {}}}, {"EventId": "7LSIgTZx", "EventName": "iMSOmQ6h", "EventNamespace": "Uceg2Icr", "EventTimestamp": "1973-05-13T00:00:00Z", "Payload": {"dCiS9yLN": {}, "SRZTOBV2": {}, "QLVm5yyT": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'Nw4I34hp' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'oWWrfJEU' 'SM6WQhJ6' --login_with_auth "Bearer foo"
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
    '[{"EventId": "VPFhLM7o", "EventName": "VrjsSXMr", "EventNamespace": "53N2Vtlh", "EventTimestamp": "1976-12-18T00:00:00Z", "Payload": {"Vh8kJiZO": {}, "JjkQ88Yt": {}, "IJ0hfbhH": {}}}, {"EventId": "R4fQa1V6", "EventName": "eLfBNMNo", "EventNamespace": "mEbPD6ms", "EventTimestamp": "1993-09-14T00:00:00Z", "Payload": {"rHaKq90E": {}, "3cdPBoTq": {}, "1U3jceuk": {}}}, {"EventId": "IcseF3K5", "EventName": "hevYa8e9", "EventNamespace": "AVjsgNwd", "EventTimestamp": "1991-03-18T00:00:00Z", "Payload": {"No0RfQq1": {}, "TpoDJDev": {}, "9Y5DmCJ8": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'FGnfiMR6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'AL7Sc36u' \
    'QY7aCYtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
