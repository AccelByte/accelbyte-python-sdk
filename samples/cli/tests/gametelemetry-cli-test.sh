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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "Tcu1c3PI", "EventName": "0rDXsq1r", "EventNamespace": "XVjUX3Ji", "EventTimestamp": "1973-05-27T00:00:00Z", "Payload": {"1gRbL3jO": {}, "eUuvGMmQ": {}, "s3wtOuco": {}}}, {"EventId": "ZmoeIva9", "EventName": "KnW2i2kQ", "EventNamespace": "95swmBsY", "EventTimestamp": "1987-09-21T00:00:00Z", "Payload": {"Ni2Lt6Wg": {}, "AviApkso": {}, "oY0Ra5VF": {}}}, {"EventId": "PvAgaqZK", "EventName": "C2dHBCDl", "EventNamespace": "BuGfyfI6", "EventTimestamp": "1971-11-01T00:00:00Z", "Payload": {"fqhWaBy5": {}, "y6DoHFFh": {}, "xW5AcoYv": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'dUhgmrgm' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'VE6Dhnia' 'i61XQ6Av' --login_with_auth "Bearer foo"
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
    '[{"EventId": "vX5Gucou", "EventName": "t5ehqEB1", "EventNamespace": "RiOIHWzl", "EventTimestamp": "1976-10-04T00:00:00Z", "Payload": {"cBfByhfh": {}, "EXWwIg4k": {}, "Ik8RqATp": {}}}, {"EventId": "pUPyjvpa", "EventName": "5F3uqfb5", "EventNamespace": "S0KoNDNh", "EventTimestamp": "1994-01-29T00:00:00Z", "Payload": {"tkvEc65l": {}, "YB2lWj4o": {}, "eweA7nq3": {}}}, {"EventId": "ASROGZRU", "EventName": "QHhNcGlV", "EventNamespace": "7aPo8gKg", "EventTimestamp": "1988-08-28T00:00:00Z", "Payload": {"AffTYCM2": {}, "Y5jJsAwF": {}, "a2F0KhKY": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'hamUeF4u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'VmYVZvJk' \
    'qkl4bOng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
