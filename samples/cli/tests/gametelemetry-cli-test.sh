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
gametelemetry-get-namespaces-game-telemetry-v1-admin-namespaces-get --login_with_auth "Bearer foo"
gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get --login_with_auth "Bearer foo"
gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post '[{"ClientTimestamp": "1986-06-05T00:00:00Z", "DeviceType": "AxcVpFrttufHIRdH", "EventId": "9UzVRiXbqlAw7r6W", "EventName": "2ktQG0h5JAav5kRa", "EventNamespace": "62WopBJHPtcDs8bB", "EventTimestamp": "1997-10-28T00:00:00Z", "Payload": {"6IaRDBXxyaNoMR6h": {}, "kspInrAip6lyzSxw": {}, "ElFHHdgs21Jub74C": {}}}, {"ClientTimestamp": "1995-09-24T00:00:00Z", "DeviceType": "kNmKJfh5pUkHODpo", "EventId": "MF78NY4YkHs1cnz1", "EventName": "JSDgY1TXp38zsCTC", "EventNamespace": "rbCbPOyNQkT7NvyE", "EventTimestamp": "1999-01-16T00:00:00Z", "Payload": {"8mAQLnzjMf8GZ2WB": {}, "ZqxYG3aREAu2D6QV": {}, "KNCWP75TB0i7pKxR": {}}}, {"ClientTimestamp": "1992-01-28T00:00:00Z", "DeviceType": "umKtPDKJDXn7Z4U6", "EventId": "8su8XfqlqNiTvB6S", "EventName": "dAdIhUDrwoZ5Mecd", "EventNamespace": "Ki5r6QEa1ysLEzth", "EventTimestamp": "1987-04-10T00:00:00Z", "Payload": {"N9A3sNm84hddSpHt": {}, "0P7MIIR7CkyF6C7d": {}, "uuyZ0GhDogqrhBRd": {}}}]' --login_with_auth "Bearer foo"
gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get '8lDR6qVNPRZYdFLI' --login_with_auth "Bearer foo"
gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put 'AjGGJddVCvu9vx5K' 'Q7KYnIuMBvaO35ll' --login_with_auth "Bearer foo"
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
echo "1..6"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespacesGameTelemetryV1AdminNamespacesGet
$PYTHON -m $MODULE 'gametelemetry-get-namespaces-game-telemetry-v1-admin-namespaces-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespacesGameTelemetryV1AdminNamespacesGet' test.out

#- 3 GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet
$PYTHON -m $MODULE 'gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet' test.out

#- 4 ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
$PYTHON -m $MODULE 'gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post' \
    '[{"ClientTimestamp": "1984-12-10T00:00:00Z", "DeviceType": "Vpbsx5w8hqUI06Up", "EventId": "OXGSLmCVuHOPlLlk", "EventName": "vR8sKgnuRkgghGoY", "EventNamespace": "upD391C2qtPYokah", "EventTimestamp": "1987-01-19T00:00:00Z", "Payload": {"jkQsfCaTmt1d67FX": {}, "Gk2s9Q0mPVo3twu0": {}, "MesTCf9x4rt69lna": {}}}, {"ClientTimestamp": "1976-05-12T00:00:00Z", "DeviceType": "xfcjHfYakUCTqGkE", "EventId": "7wcWfDslpJSqGAXQ", "EventName": "0yYoNRKd3IL5TAQ6", "EventNamespace": "iiPlSC2uE4o5Vwdo", "EventTimestamp": "1999-02-12T00:00:00Z", "Payload": {"MqHcUmLZZbSqb8Rw": {}, "Nmn9HrNQy4uZAAiE": {}, "0mit9RGCCHYzUOcE": {}}}, {"ClientTimestamp": "1972-07-29T00:00:00Z", "DeviceType": "scKHPEqgA8yu7Vk6", "EventId": "Jt4Ymos9Jcdos4fY", "EventName": "cTVU6RBt0zYoMcHy", "EventNamespace": "CUEXlAvxJMdalwSy", "EventTimestamp": "1976-12-08T00:00:00Z", "Payload": {"iWMNW5NyLu0M3VHh": {}, "2EI8JlDbPWbQ6Q9l": {}, "NmqRBaAkLnvxkT1X": {}}}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost' test.out

#- 5 ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
$PYTHON -m $MODULE 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    '68cmDc3fxU8MyKrQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet' test.out

#- 6 ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
$PYTHON -m $MODULE 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'pM4hkkK6KKXNB3Gv' \
    '0IqmF51TkhjYnaq6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
