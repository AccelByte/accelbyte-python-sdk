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
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"EventId": "EAxcVpFrttufHIRd", "EventName": "H9UzVRiXbqlAw7r6", "EventNamespace": "W2ktQG0h5JAav5kR", "EventTimestamp": "1971-04-23T00:00:00Z", "Payload": {"2WopBJHPtcDs8bBZ": {}, "LCXLx8bbgorQeFbQ": {}, "1g7qbPngUNB1vRod": {}}}, {"EventId": "wpzS6DaDpv8N7ZQV", "EventName": "qGj6oDLjWjkY1aXl", "EventNamespace": "FcDtgOjchIua5tWE", "EventTimestamp": "1988-08-22T00:00:00Z", "Payload": {"JSDgY1TXp38zsCTC": {}, "rbCbPOyNQkT7NvyE": {}, "3cwyALczNIicXm7a": {}}}, {"EventId": "gSrjJW2OQNOs1PXh", "EventName": "T5FvdiRilZ7oFgx4", "EventNamespace": "c8OumKtPDKJDXn7Z", "EventTimestamp": "1996-01-14T00:00:00Z", "Payload": {"68su8XfqlqNiTvB6": {}, "SdAdIhUDrwoZ5Mec": {}, "dKi5r6QEa1ysLEzt": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get 'h6mXhzkzWkFeZSoE' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'AcBdW19m4eu6d5tA' '5jUmiTqpyhPFdxLz' --login_with_auth "Bearer foo"
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
    '[{"EventId": "FQN05MYzYiKWe5dN", "EventName": "Rljv7IPrDQQRgat0", "EventNamespace": "SevkLGMS0lyuI9a2", "EventTimestamp": "1988-03-30T00:00:00Z", "Payload": {"9u6Vpbsx5w8hqUI0": {}, "6UpOXGSLmCVuHOPl": {}, "LlkvR8sKgnuRkggh": {}}}, {"EventId": "GoYupD391C2qtPYo", "EventName": "kahFjkQsfCaTmt1d", "EventNamespace": "67FXGk2s9Q0mPVo3", "EventTimestamp": "1981-07-07T00:00:00Z", "Payload": {"td6TC6I3lMjGSWN2": {}, "laRlxfcjHfYakUCT": {}, "qGkE7wcWfDslpJSq": {}}}, {"EventId": "GAXQ0yYoNRKd3IL5", "EventName": "TAQ6iiPlSC2uE4o5", "EventNamespace": "Vwdo3fePqIJA8IHt", "EventTimestamp": "1979-05-17T00:00:00Z", "Payload": {"kmu0hpDDWVAla2l5": {}, "BYNtIuS5S5XUdjso": {}, "qwGyzzWi9gwQYv7t": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 4 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    '1o7TTr1DmrhZv15T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 5 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    '7quIOvBMcaYmvCkG' \
    'Z5dAgqxpBFmaLoxo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
