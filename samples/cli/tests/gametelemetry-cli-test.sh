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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "sM6S3Z3o", "EventName": "LyUCmFb6", "EventNamespace": "llDMKdF9", "EventTimestamp": "1982-02-04T00:00:00Z", "Payload": {"cip679EN": {}, "XwonS0zJ": {}, "gYzVV9np": {}}}, {"EventId": "ZU52ny7l", "EventName": "EShytK1o", "EventNamespace": "kVjpEl1F", "EventTimestamp": "1973-02-25T00:00:00Z", "Payload": {"ysowqXHl": {}, "LPrD7vKs": {}, "lMX5PeAV": {}}}, {"EventId": "dBHI8LpW", "EventName": "SF3AFJzR", "EventNamespace": "t9BqL52s", "EventTimestamp": "1978-10-20T00:00:00Z", "Payload": {"c1Ohmon1": {}, "yFusfGcK": {}, "yMoArMXT": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'pBs3aAuA' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'JjsmH0l0' 'F0QlPw5o' --login_with_auth "Bearer foo"
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
    '[{"EventId": "5ylFX8K0", "EventName": "ndHTRgwU", "EventNamespace": "djfynWJL", "EventTimestamp": "1996-01-28T00:00:00Z", "Payload": {"NHPtxDuF": {}, "WrnIcoS3": {}, "WQMdXVBO": {}}}, {"EventId": "ht4OpQHw", "EventName": "ekxNsjhd", "EventNamespace": "lWGRfq4h", "EventTimestamp": "1994-11-16T00:00:00Z", "Payload": {"H3Ww6Qxs": {}, "RnUepO9V": {}, "DWF7ELBg": {}}}, {"EventId": "za8QgaWA", "EventName": "lovIkqf9", "EventNamespace": "oSlExPMo", "EventTimestamp": "1994-08-19T00:00:00Z", "Payload": {"TT9B8UYw": {}, "MOdObc0c": {}, "y9Z2ZXwb": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    '8Jvw9nPe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    '8SIbnkjB' \
    '4RTd2mkg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
