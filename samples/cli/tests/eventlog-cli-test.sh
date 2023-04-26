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
eventlog-query-event-stream-handler '{"clientId": "EAxcVpFrttufHIRd", "eventName": "H9UzVRiXbqlAw7r6", "payloadQuery": {"W2ktQG0h5JAav5kR": {}, "a62WopBJHPtcDs8b": {}, "BZLCXLx8bbgorQeF": {}}, "sessionId": "bQ1g7qbPngUNB1vR", "traceId": "odwpzS6DaDpv8N7Z", "userId": "QVqGj6oDLjWjkY1a", "version": 60}' --login_with_auth "Bearer foo"
eventlog-get-event-specific-user-v2-handler 'lFcDtgOjchIua5tW' --login_with_auth "Bearer foo"
eventlog-get-public-edit-history 'EIC32ogW7olvbTgr' --login_with_auth "Bearer foo"
eventlog-get-user-events-v2-public 'hRTcPiSuL0Sly6XM' --login_with_auth "Bearer foo"
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
echo "1..33"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AgentTypeDescriptionHandler
eval_tap 0 2 'AgentTypeDescriptionHandler # SKIP deprecated' test.out

#- 3 SpecificAgentTypeDescriptionHandler
eval_tap 0 3 'SpecificAgentTypeDescriptionHandler # SKIP deprecated' test.out

#- 4 EventIDDescriptionHandler
eval_tap 0 4 'EventIDDescriptionHandler # SKIP deprecated' test.out

#- 5 SpecificEventIDDescriptionHandler
eval_tap 0 5 'SpecificEventIDDescriptionHandler # SKIP deprecated' test.out

#- 6 EventLevelDescriptionHandler
eval_tap 0 6 'EventLevelDescriptionHandler # SKIP deprecated' test.out

#- 7 SpecificEventLevelDescriptionHandler
eval_tap 0 7 'SpecificEventLevelDescriptionHandler # SKIP deprecated' test.out

#- 8 EventTypeDescriptionHandler
eval_tap 0 8 'EventTypeDescriptionHandler # SKIP deprecated' test.out

#- 9 SpecificEventTypeDescriptionHandler
eval_tap 0 9 'SpecificEventTypeDescriptionHandler # SKIP deprecated' test.out

#- 10 UXNameDescriptionHandler
eval_tap 0 10 'UXNameDescriptionHandler # SKIP deprecated' test.out

#- 11 SpecificUXDescriptionHandler
eval_tap 0 11 'SpecificUXDescriptionHandler # SKIP deprecated' test.out

#- 12 GetEventByNamespaceHandler
eval_tap 0 12 'GetEventByNamespaceHandler # SKIP deprecated' test.out

#- 13 PostEventHandler
eval_tap 0 13 'PostEventHandler # SKIP deprecated' test.out

#- 14 GetEventByEventIDHandler
eval_tap 0 14 'GetEventByEventIDHandler # SKIP deprecated' test.out

#- 15 GetEventByEventTypeHandler
eval_tap 0 15 'GetEventByEventTypeHandler # SKIP deprecated' test.out

#- 16 GetEventByEventTypeAndEventIDHandler
eval_tap 0 16 'GetEventByEventTypeAndEventIDHandler # SKIP deprecated' test.out

#- 17 GetEventByUserIDHandler
eval_tap 0 17 'GetEventByUserIDHandler # SKIP deprecated' test.out

#- 18 GetUserActivitiesHandler
eval_tap 0 18 'GetUserActivitiesHandler # SKIP deprecated' test.out

#- 19 DeleteUserActivitiesHandler
eval_tap 0 19 'DeleteUserActivitiesHandler # SKIP deprecated' test.out

#- 20 GetEventByUserIDAndEventIDHandler
eval_tap 0 20 'GetEventByUserIDAndEventIDHandler # SKIP deprecated' test.out

#- 21 GetEventByUserIDAndEventTypeHandler
eval_tap 0 21 'GetEventByUserIDAndEventTypeHandler # SKIP deprecated' test.out

#- 22 GetEventByUserEventIDAndEventTypeHandler
eval_tap 0 22 'GetEventByUserEventIDAndEventTypeHandler # SKIP deprecated' test.out

#- 23 LastUserActivityTimeHandler
eval_tap 0 23 'LastUserActivityTimeHandler # SKIP deprecated' test.out

#- 24 GetRegisteredEventsHandler
eval_tap 0 24 'GetRegisteredEventsHandler # SKIP deprecated' test.out

#- 25 RegisterEventHandler
eval_tap 0 25 'RegisterEventHandler # SKIP deprecated' test.out

#- 26 GetRegisteredEventIDHandler
eval_tap 0 26 'GetRegisteredEventIDHandler # SKIP deprecated' test.out

#- 27 UpdateEventRegistryHandler
eval_tap 0 27 'UpdateEventRegistryHandler # SKIP deprecated' test.out

#- 28 UnregisterEventIDHandler
eval_tap 0 28 'UnregisterEventIDHandler # SKIP deprecated' test.out

#- 29 GetRegisteredEventsByEventTypeHandler
eval_tap 0 29 'GetRegisteredEventsByEventTypeHandler # SKIP deprecated' test.out

#- 30 QueryEventStreamHandler
$PYTHON -m $MODULE 'eventlog-query-event-stream-handler' \
    '{"clientId": "4OI18mAQLnzjMf8G", "eventName": "Z2WBZqxYG3aREAu2", "payloadQuery": {"D6QVKNCWP75TB0i7": {}, "pKxR8dl0zRVW4EZG": {}, "9m0XcgGVbMqSszE8": {}}, "sessionId": "GHavj7AorKsxwkos", "traceId": "AVerXpc1C8XfwHuK", "userId": "eb9l3rGN9A3sNm84", "version": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'QueryEventStreamHandler' test.out

#- 31 GetEventSpecificUserV2Handler
$PYTHON -m $MODULE 'eventlog-get-event-specific-user-v2-handler' \
    'ZSoEAcBdW19m4eu6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetEventSpecificUserV2Handler' test.out

#- 32 GetPublicEditHistory
$PYTHON -m $MODULE 'eventlog-get-public-edit-history' \
    'd5tA5jUmiTqpyhPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetPublicEditHistory' test.out

#- 33 GetUserEventsV2Public
$PYTHON -m $MODULE 'eventlog-get-user-events-v2-public' \
    'dxLzFQN05MYzYiKW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetUserEventsV2Public' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
