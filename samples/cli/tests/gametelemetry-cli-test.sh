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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "SlgzQFdT", "EventName": "z7RUMWHu", "EventNamespace": "zzmLJmva", "EventTimestamp": "1998-12-15T00:00:00Z", "Payload": {"bEdeGhh7": {}, "TWZDPym2": {}, "HXEUY2Ex": {}}}, {"EventId": "OIWWR1TY", "EventName": "05RYn0NK", "EventNamespace": "Sh1qZI8o", "EventTimestamp": "1998-12-21T00:00:00Z", "Payload": {"x8bjSEVy": {}, "fCBelC0U": {}, "rh1bxiLR": {}}}, {"EventId": "q35MpBHz", "EventName": "THMMZSHG", "EventNamespace": "pLl8jGKq", "EventTimestamp": "1994-06-12T00:00:00Z", "Payload": {"zbDaS0E3": {}, "qE4vcy80": {}, "M9spvyuK": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'o85Zs0vB' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'JlSMsylv' 'LQ7LNPEP' --login_with_auth "Bearer foo"
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
    '[{"EventId": "ZLSxk1hM", "EventName": "s1YAfQed", "EventNamespace": "C8YF1PAb", "EventTimestamp": "1974-04-12T00:00:00Z", "Payload": {"CUGERsul": {}, "G2l5yhYj": {}, "nijlscgC": {}}}, {"EventId": "K8GiqcZ6", "EventName": "Lr2hxUAP", "EventNamespace": "g9f5eXHz", "EventTimestamp": "1979-06-06T00:00:00Z", "Payload": {"xe9dCSOp": {}, "JO3eG5Mc": {}, "KnO0r63B": {}}}, {"EventId": "dAPKAC0i", "EventName": "UsmIIyRi", "EventNamespace": "fZwIPbGh", "EventTimestamp": "1997-09-13T00:00:00Z", "Payload": {"HnDfofQy": {}, "XqepDw1W": {}, "lqusDVHi": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'F5KfmR9O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'QgVGEvfl' \
    'SlBNxRNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
