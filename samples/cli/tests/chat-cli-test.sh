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
chat-admin-filter-chat-message '{"message": "EAxcVpFrttufHIRd", "timestamp": 68, "topicId": "Dc09nIW0Oaiw9B0D", "topicType": "GROUP", "userId": "ktQG0h5JAav5kRa6"}' --login_with_auth "Bearer foo"
chat-admin-chat-history --login_with_auth "Bearer foo"
chat-admin-create-namespace-topic '{"description": "2WopBJHPtcDs8bBZ", "name": "LCXLx8bbgorQeFbQ"}' --login_with_auth "Bearer foo"
chat-admin-topic-list --login_with_auth "Bearer foo"
chat-admin-create-topic '{"admins": ["1g7qbPngUNB1vRod", "wpzS6DaDpv8N7ZQV", "qGj6oDLjWjkY1aXl"], "description": "FcDtgOjchIua5tWE", "isChannel": true, "isJoinable": true, "members": ["ogW7olvbTgrhRTcP", "iSuL0Sly6XM4OI18", "mAQLnzjMf8GZ2WBZ"], "name": "qxYG3aREAu2D6QVK", "shardLimit": 81, "type": "vdiRilZ7oFgx4c8O"}' --login_with_auth "Bearer foo"
chat-admin-channel-topic-list --login_with_auth "Bearer foo"
chat-admin-channel-topic-summary --login_with_auth "Bearer foo"
chat-admin-query-topic-log --login_with_auth "Bearer foo"
chat-admin-update-topic '{"description": "umKtPDKJDXn7Z4U6", "isJoinable": true, "name": "VbMqSszE8GHavj7A"}' 'orKsxwkosAVerXpc' --login_with_auth "Bearer foo"
chat-admin-delete-topic '1C8XfwHuKeb9l3rG' --login_with_auth "Bearer foo"
chat-admin-ban-topic-members '{"userIds": ["N9A3sNm84hddSpHt", "0P7MIIR7CkyF6C7d", "uuyZ0GhDogqrhBRd"]}' '8lDR6qVNPRZYdFLI' --login_with_auth "Bearer foo"
chat-admin-channel-topic-info 'AjGGJddVCvu9vx5K' --login_with_auth "Bearer foo"
chat-admin-send-chat '{"message": "Q7KYnIuMBvaO35ll"}' 'zQRaT5kPxUfofvnn' --login_with_auth "Bearer foo"
chat-admin-delete-chat 'SuB0y5WUlrMdI4sN' 'veabntBSxTeIv53H' --login_with_auth "Bearer foo"
chat-admin-topic-members 'GCiljvjKoyD6SCwG' --login_with_auth "Bearer foo"
chat-admin-topic-shards 'rncqmLtjQHAf8Tgo' --login_with_auth "Bearer foo"
chat-admin-unban-topic-members '{"userIds": ["Nm03VLisV6zwPuo3", "td6TC6I3lMjGSWN2", "laRlxfcjHfYakUCT"]}' 'qGkE7wcWfDslpJSq' --login_with_auth "Bearer foo"
chat-admin-add-topic-member '{"isAdmin": true}' 'AXQ0yYoNRKd3IL5T' 'AQ6iiPlSC2uE4o5V' --login_with_auth "Bearer foo"
chat-admin-remove-topic-member 'wdo3fePqIJA8IHtr' 'kmu0hpDDWVAla2l5' --login_with_auth "Bearer foo"
chat-admin-query-topic --login_with_auth "Bearer foo"
chat-admin-query-users-topic 'BYNtIuS5S5XUdjso' --login_with_auth "Bearer foo"
chat-public-get-muted-topics --login_with_auth "Bearer foo"
chat-public-topic-list --login_with_auth "Bearer foo"
chat-public-ban-topic-members '{"userIDs": ["qwGyzzWi9gwQYv7t", "1o7TTr1DmrhZv15T", "7quIOvBMcaYmvCkG"]}' 'Z5dAgqxpBFmaLoxo' --login_with_auth "Bearer foo"
chat-public-chat-history 'zr6wfNPX2bOItRMv' --login_with_auth "Bearer foo"
chat-public-delete-chat 'qtlB2jJCSQT279ZZ' 'PYGu0rdlgdWyOtXi' --login_with_auth "Bearer foo"
chat-public-mute-user '{"duration": 44, "userId": "choQrpOsDBU5Sepj"}' 'ChB3V0v52Dlym6pu' --login_with_auth "Bearer foo"
chat-public-unban-topic-members '{"userIDs": ["Q23xoJ8aeCnaLpUK", "p44YUDjasWIPUvmE", "ejtGeoyIPa8ZRrvj"]}' 'j7il35MXbN9oCMNq' --login_with_auth "Bearer foo"
chat-public-unmute-user '{"userId": "q98SjTvhZNkSQ70D"}' '0H6BXksUC9b6i5lZ' --login_with_auth "Bearer foo"
chat-admin-get-all-config-v1 --login_with_auth "Bearer foo"
chat-admin-get-log-config --login_with_auth "Bearer foo"
chat-admin-patch-update-log-config '{"internalAccessLogEnabled": true, "logLevel": "info", "logLevelDB": "fatal", "slowQueryThreshold": 87, "socketLogEnabled": true}' --login_with_auth "Bearer foo"
chat-admin-get-config-v1 --login_with_auth "Bearer foo"
chat-admin-update-config-v1 '{"chatRateLimitBurst": 14, "chatRateLimitDuration": 2, "concurrentUsersLimit": 9, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "Q1MzH7Qm8bwbmXgd", "filterParam": "APh1EThG96gAFKK2", "filterType": "WDgCcxvONZm3EeER", "generalRateLimitBurst": 25, "generalRateLimitDuration": 69, "maxChatMessageLength": 61, "shardCapacityLimit": 32, "shardDefaultLimit": 28, "shardHardLimit": 74, "spamChatBurst": 49, "spamChatDuration": 74, "spamMuteDuration": 9}' --login_with_auth "Bearer foo"
chat-export-config --login_with_auth "Bearer foo"
chat-import-config --login_with_auth "Bearer foo"
chat-admin-get-inbox-categories --login_with_auth "Bearer foo"
chat-admin-add-inbox-category '{"enabled": false, "expiresIn": 29, "hook": {"driver": "mVr9XuoJbRFQSKVP", "params": {"Hbn4Xxtu7LQRENjE": {}, "Eztx1WsYSiZqan0n": {}, "SBJroav91GXlvPG6": {}}}, "jsonSchema": {"bFYReVHQipcCx9Zw": {}, "5D2L7vIYhGGSyEW4": {}, "ZJJ42d3PBddN8S48": {}}, "name": "l9lyNApflxqMrj3o", "saveInbox": false, "sendNotification": false}' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-category 'LdLsFzHkBMr1yrOM' --login_with_auth "Bearer foo"
chat-admin-update-inbox-category '{"enabled": false, "expiresIn": 40, "hook": {"driver": "NFSrUEirnjX9fDmI", "params": {"beZxzfTcyiuATus9": {}, "hsfpFDcSDG8aMVGL": {}, "iBNrDjqoxcwgGLXp": {}}}, "jsonSchema": {"UL4pp2ncYAHdNzDm": {}, "eIP6rOvDz9KOsb39": {}, "2k6YmJFfRByjlBiu": {}}, "saveInbox": true, "sendNotification": false}' 'oVk8T3GpAnkCmBUq' --login_with_auth "Bearer foo"
chat-admin-get-category-schema 'g2SCnqntX9y1aZSW' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-message 'MiVi10sG6vxkfUcm' --login_with_auth "Bearer foo"
chat-admin-get-inbox-messages --login_with_auth "Bearer foo"
chat-admin-save-inbox-message '{"category": "qRRbceJ5i0EeDxOg", "expiredAt": 55, "message": {"eCSz9WEi8KlloeH0": {}, "JT1yduat2vQR3biB": {}, "fsu4jmsRE2w1yEkL": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["mqrxzTtuLl4XlbGL", "8QOxtjzm8y2wNhmw", "oYZyI4EFZKBcYrCE"]}' --login_with_auth "Bearer foo"
chat-admin-unsend-inbox-message '{"userIds": ["AE7WIsfmx40NLRc6", "m8heKnWhzfe2Nube", "oKFeIaFQCYoDPICp"]}' 'nduEEQlULdJz4mnR' --login_with_auth "Bearer foo"
chat-admin-get-inbox-users 'BkMNxvvKgAT8mJrY' --login_with_auth "Bearer foo"
chat-admin-update-inbox-message '{"expiredAt": 33, "message": {"IUXiI07A68eaqC2J": {}, "9jyEW6GLbc0NaKDU": {}, "L3sa13lk1dQBHO86": {}}, "scope": "NAMESPACE", "userIds": ["Wn3CO39PXDNxtXge", "O3FgkXhjDzaQY3sn", "n2ZkP7cFdP43e5dC"]}' '9XIBudfZgrbHDIDm' --login_with_auth "Bearer foo"
chat-admin-send-inbox-message '{}' '4hMzF4TxodenSrUT' --login_with_auth "Bearer foo"
chat-admin-get-inbox-stats --login_with_auth "Bearer foo"
chat-admin-get-chat-snapshot 'vfqU0bfoMm5cTtFW' --login_with_auth "Bearer foo"
chat-admin-delete-chat-snapshot 'botQyXJRcQWsmqPN' --login_with_auth "Bearer foo"
chat-admin-profanity-query --login_with_auth "Bearer foo"
chat-admin-profanity-create '{"falseNegative": ["s92epxk0i8VxsZNe", "reSvf9699mCEHThU", "JkETAsSp7gh4TeUT"], "falsePositive": ["kOkAYfJB8AT9t4Tv", "207Y2QD3oD5fLCr3", "OOlXVv8ZGF7uYnGz"], "word": "pipNDigNJma1Mbqq", "wordType": "ZtfNWql4nmwAft4g"}' --login_with_auth "Bearer foo"
chat-admin-profanity-create-bulk '{"dictionaries": [{"falseNegative": ["qkNNlWkD9eOziYRF", "On0jJLHC9LxhvNXT", "wGBCtohLtl9Zuhyt"], "falsePositive": ["m5UDrT6QXCs5SPBb", "RPZTF6oQAXVG7tns", "Zg5QgXjvyGJPN4eX"], "word": "bJE5Vs2GcyomQoIX", "wordType": "imBJehyxlNsjUgxB"}, {"falseNegative": ["kF6wFPoJeQediogE", "hhM2rIizGdKvOPdq", "5xrgxSmy1DN9LFkY"], "falsePositive": ["W5DQyj4bj5Ro2oga", "Kt2ujQSa3Zdb65UX", "my0Zp6iIaTIKUkmk"], "word": "k9QM0NBMA9ORxpzw", "wordType": "LR2AK6eXUGPJsw1f"}, {"falseNegative": ["iP80G9Pclxcft2ul", "IJzPyrVEiOG4Ucqs", "uGKHhMRWLVd3DlhL"], "falsePositive": ["uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds", "Mrok0WvGYYnx4V70"], "word": "9xbnGezKsDwG2omO", "wordType": "R2nvYI9TVqJdvzcW"}]}' --login_with_auth "Bearer foo"
chat-admin-profanity-export --login_with_auth "Bearer foo"
chat-admin-profanity-group --login_with_auth "Bearer foo"
chat-admin-profanity-import 'tmp.dat' --login_with_auth "Bearer foo"
chat-admin-profanity-update '{"falseNegative": ["bfUpaXp5JMl5LL4b", "TxBmZjdrrIxsB0NR", "sB1fPqqRRulpqpym"], "falsePositive": ["DkQhtrHWwRVnwVBO", "qOHi8pWGd1juYhiq", "jRJOqB5F93zFQbJn"], "word": "dUDpdONneAczbBdH", "wordType": "b2slt71B1SmZp2JZ"}' 'p50CnPb71ORYcmQb' --login_with_auth "Bearer foo"
chat-admin-profanity-delete 'TU5JX8ccLjMXJRk0' --login_with_auth "Bearer foo"
chat-public-get-messages --login_with_auth "Bearer foo"
chat-public-get-config-v1 --login_with_auth "Bearer foo"
chat-public-get-chat-snapshot 'eaKQDOJvrTefglSs' '6g4iY9u02aCNYIWe' --login_with_auth "Bearer foo"
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
echo "1..64"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminFilterChatMessage
$PYTHON -m $MODULE 'chat-admin-filter-chat-message' \
    '{"message": "kp18lOC3mNqF7Bl0", "timestamp": 76, "topicId": "Ea9EIIlGcHB3CfR3", "topicType": "GROUP", "userId": "0bc1eMbEIjowLqc3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminFilterChatMessage' test.out

#- 3 AdminChatHistory
$PYTHON -m $MODULE 'chat-admin-chat-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminChatHistory' test.out

#- 4 AdminCreateNamespaceTopic
$PYTHON -m $MODULE 'chat-admin-create-namespace-topic' \
    '{"description": "ecjXJbZDKKoxLE1Y", "name": "3Dymtj3giPg4x4yi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateNamespaceTopic' test.out

#- 5 AdminTopicList
$PYTHON -m $MODULE 'chat-admin-topic-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminTopicList' test.out

#- 6 AdminCreateTopic
$PYTHON -m $MODULE 'chat-admin-create-topic' \
    '{"admins": ["PX6ues1Hhhkg1yLV", "bLFzHEP8cM4NTwr0", "KHaAsmTej52WKi6t"], "description": "ArAURt9plCSVq8Pd", "isChannel": false, "isJoinable": false, "members": ["BeIXuqDuAXI66bQ7", "1w0deoV9Lx5RDA1l", "2XcrciYNEzvSZIPk"], "name": "hSgORcz5S5BvmgBL", "shardLimit": 48, "type": "vuKNuy0ytZQ7M6Nz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminCreateTopic' test.out

#- 7 AdminChannelTopicList
$PYTHON -m $MODULE 'chat-admin-channel-topic-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminChannelTopicList' test.out

#- 8 AdminChannelTopicSummary
$PYTHON -m $MODULE 'chat-admin-channel-topic-summary' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminChannelTopicSummary' test.out

#- 9 AdminQueryTopicLog
$PYTHON -m $MODULE 'chat-admin-query-topic-log' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryTopicLog' test.out

#- 10 AdminUpdateTopic
$PYTHON -m $MODULE 'chat-admin-update-topic' \
    '{"description": "y1adnSKOLFKx1dX4", "isJoinable": false, "name": "uWJu3pDMUAeeZ97S"}' \
    'BROPYuG6XqP6oo7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
$PYTHON -m $MODULE 'chat-admin-delete-topic' \
    '73zdxTgOfnwIdlNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
$PYTHON -m $MODULE 'chat-admin-ban-topic-members' \
    '{"userIds": ["29fDLh741IslKHzG", "lLKWUtDQs61OQAox", "yyQpRWCiiPDGQhNP"]}' \
    'EwiJCf2XJVrlzqQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
$PYTHON -m $MODULE 'chat-admin-channel-topic-info' \
    's1ozhLVA3kE8jKvg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
$PYTHON -m $MODULE 'chat-admin-send-chat' \
    '{"message": "atOEBM70TdlNBJYO"}' \
    'mpu1VCarzBsV6xnZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
$PYTHON -m $MODULE 'chat-admin-delete-chat' \
    '5Jrzzjrcaug6CWVG' \
    '8SWP3glU6muswVJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
$PYTHON -m $MODULE 'chat-admin-topic-members' \
    'NnN7kAa7j0riFc5H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
$PYTHON -m $MODULE 'chat-admin-topic-shards' \
    'THQIoVsGo7dwV9DB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
$PYTHON -m $MODULE 'chat-admin-unban-topic-members' \
    '{"userIds": ["qFKHQkETJyTlUrwD", "TnoujQD4IEiH9Z5q", "Xn3aoRtlqOECohVi"]}' \
    'HA5CzgFSy8X1A3Pr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
$PYTHON -m $MODULE 'chat-admin-add-topic-member' \
    '{"isAdmin": false}' \
    'iIZsMfB4ZH3mtgWg' \
    'U4pCAKxeE70CaunQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
$PYTHON -m $MODULE 'chat-admin-remove-topic-member' \
    'Nxot371W9G4AvQkq' \
    'sGnmyo5JJTUVmb8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminRemoveTopicMember' test.out

#- 22 AdminQueryTopic
$PYTHON -m $MODULE 'chat-admin-query-topic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryTopic' test.out

#- 23 AdminQueryUsersTopic
$PYTHON -m $MODULE 'chat-admin-query-users-topic' \
    'EXFTlEMEsFzYqwgK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryUsersTopic' test.out

#- 24 PublicGetMutedTopics
$PYTHON -m $MODULE 'chat-public-get-muted-topics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetMutedTopics' test.out

#- 25 PublicTopicList
$PYTHON -m $MODULE 'chat-public-topic-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicTopicList' test.out

#- 26 PublicBanTopicMembers
$PYTHON -m $MODULE 'chat-public-ban-topic-members' \
    '{"userIDs": ["1Np5nodqpLm7FhJB", "NXzAFdO0Khqf6kiT", "dSGv2LFjAKY7Cbgs"]}' \
    'WqFWZX7kPBom8F9G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
$PYTHON -m $MODULE 'chat-public-chat-history' \
    'LLTG8phc3n4iLoIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
$PYTHON -m $MODULE 'chat-public-delete-chat' \
    'lKlpO2pqiXJF3WGR' \
    'aoQomSJC4DdrKF7S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
$PYTHON -m $MODULE 'chat-public-mute-user' \
    '{"duration": 96, "userId": "TBcrM8rG0rH0zcsw"}' \
    'wVeMK6MbGIVIu8vv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
$PYTHON -m $MODULE 'chat-public-unban-topic-members' \
    '{"userIDs": ["wLc7KY3uVoJXTIMt", "pgkieDyF97lGdMiH", "KxbWCYzo8yO2KTK9"]}' \
    'tmmOnYnOpas6ghP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
$PYTHON -m $MODULE 'chat-public-unmute-user' \
    '{"userId": "y4Zi7s7QBlk44Z44"}' \
    'B1GZgKg4uKxaCgcG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
$PYTHON -m $MODULE 'chat-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetLogConfig
$PYTHON -m $MODULE 'chat-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetLogConfig' test.out

#- 34 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'chat-admin-patch-update-log-config' \
    '{"internalAccessLogEnabled": true, "logLevel": "error", "logLevelDB": "info", "slowQueryThreshold": 53, "socketLogEnabled": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminPatchUpdateLogConfig' test.out

#- 35 AdminGetConfigV1
$PYTHON -m $MODULE 'chat-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetConfigV1' test.out

#- 36 AdminUpdateConfigV1
$PYTHON -m $MODULE 'chat-admin-update-config-v1' \
    '{"chatRateLimitBurst": 3, "chatRateLimitDuration": 18, "concurrentUsersLimit": 36, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "lVf4jvapseE9LN9b", "filterParam": "vhOrHflIOd6X3viL", "filterType": "vtEk4mTIpUA9gxo8", "generalRateLimitBurst": 91, "generalRateLimitDuration": 29, "maxChatMessageLength": 98, "shardCapacityLimit": 53, "shardDefaultLimit": 77, "shardHardLimit": 28, "spamChatBurst": 93, "spamChatDuration": 63, "spamMuteDuration": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateConfigV1' test.out

#- 37 ExportConfig
$PYTHON -m $MODULE 'chat-export-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'ExportConfig' test.out

#- 38 ImportConfig
$PYTHON -m $MODULE 'chat-import-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'ImportConfig' test.out

#- 39 AdminGetInboxCategories
$PYTHON -m $MODULE 'chat-admin-get-inbox-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminGetInboxCategories' test.out

#- 40 AdminAddInboxCategory
$PYTHON -m $MODULE 'chat-admin-add-inbox-category' \
    '{"enabled": false, "expiresIn": 13, "hook": {"driver": "oXmM2W7l6jHMA2rG", "params": {"3nakopAywelu01nr": {}, "yEJ0NqoTow0qiOiC": {}, "4j0iktm0ZPLkLOsp": {}}}, "jsonSchema": {"0LZ5njN86Hl8kUXz": {}, "t6bSc6bWvgpVyW9d": {}, "D1kOmvrAejcq2Lgk": {}}, "name": "QuaS7RBx3vim02jB", "saveInbox": true, "sendNotification": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
$PYTHON -m $MODULE 'chat-admin-delete-inbox-category' \
    'YhWV1qx8CzPML52f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
$PYTHON -m $MODULE 'chat-admin-update-inbox-category' \
    '{"enabled": false, "expiresIn": 28, "hook": {"driver": "XUr9Sk4lq2faBcAX", "params": {"XKlhvyH8paOJtxqM": {}, "PpcVfRwNj547fH0X": {}, "rKEDpEY8VnocGAjc": {}}}, "jsonSchema": {"i0V3tBf2jnHGKXph": {}, "n50c9tNLDljhZ2jx": {}, "LRX3z46OCaGBeMfP": {}}, "saveInbox": false, "sendNotification": true}' \
    'os4yBRjrERHEonAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
$PYTHON -m $MODULE 'chat-admin-get-category-schema' \
    'R8GmEu0q1p6QCyY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminDeleteInboxMessage
$PYTHON -m $MODULE 'chat-admin-delete-inbox-message' \
    'vSkVFWdsbYuVEGVx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteInboxMessage' test.out

#- 45 AdminGetInboxMessages
$PYTHON -m $MODULE 'chat-admin-get-inbox-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxMessages' test.out

#- 46 AdminSaveInboxMessage
$PYTHON -m $MODULE 'chat-admin-save-inbox-message' \
    '{"category": "YheR3j5mNZ6vwv7K", "expiredAt": 54, "message": {"8gxefTYKhuxaEc7M": {}, "4P7UckSC6ePeN8i4": {}, "GrFES9z7xueHpATH": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["q7akMpcmnnx6RVBr", "op9v7aZK3h65hbN1", "5zfQSfQrtfF3TQN0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminSaveInboxMessage' test.out

#- 47 AdminUnsendInboxMessage
$PYTHON -m $MODULE 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["OcNDLr36vzohZyjM", "QAg5mPYhrLTyU8Oh", "gfY9JQYGF4bYXEcE"]}' \
    'Nx9xZlAchob44lON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUnsendInboxMessage' test.out

#- 48 AdminGetInboxUsers
$PYTHON -m $MODULE 'chat-admin-get-inbox-users' \
    'DDwMvgI0HlyPR7wZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxUsers' test.out

#- 49 AdminUpdateInboxMessage
$PYTHON -m $MODULE 'chat-admin-update-inbox-message' \
    '{"expiredAt": 82, "message": {"ByYqeKN0meGelYF5": {}, "wWaDhukU4khGG4vZ": {}, "FTYnPkmSu4PWam1j": {}}, "scope": "USER", "userIds": ["06MqQBErxgjVBycv", "U4PbmRDcrg0DjQjB", "ECXvea7H1m2lJFRZ"]}' \
    '3ZprZ60zMjhTHeh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminUpdateInboxMessage' test.out

#- 50 AdminSendInboxMessage
$PYTHON -m $MODULE 'chat-admin-send-inbox-message' \
    '{}' \
    '4TSenE5hCFkIf5we' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminSendInboxMessage' test.out

#- 51 AdminGetInboxStats
$PYTHON -m $MODULE 'chat-admin-get-inbox-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminGetInboxStats' test.out

#- 52 AdminGetChatSnapshot
$PYTHON -m $MODULE 'chat-admin-get-chat-snapshot' \
    'qZ18MH57l2Zsrh90' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetChatSnapshot' test.out

#- 53 AdminDeleteChatSnapshot
$PYTHON -m $MODULE 'chat-admin-delete-chat-snapshot' \
    'ETtYmGukz3Mnlrjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminDeleteChatSnapshot' test.out

#- 54 AdminProfanityQuery
$PYTHON -m $MODULE 'chat-admin-profanity-query' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityQuery' test.out

#- 55 AdminProfanityCreate
$PYTHON -m $MODULE 'chat-admin-profanity-create' \
    '{"falseNegative": ["Hp6B8Vj7rXFgDnDk", "dZ9bpjb1tdA3QhjC", "MW64f4XhIjSoTB2N"], "falsePositive": ["MKtezapPr2QEPx3z", "TxBGtEJIYppuUSsK", "oHw2hyd12uSE7BEv"], "word": "3aevq6iohU1cg4W1", "wordType": "IS3Uv1BpWoJBaqdg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityCreate' test.out

#- 56 AdminProfanityCreateBulk
$PYTHON -m $MODULE 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{"falseNegative": ["2FHcunsS1lnaO2m9", "vqjhbeK2qN8g6x2P", "yYDo5R3hLiD5sf5y"], "falsePositive": ["1JsxJNGmyt0SQDUD", "oWBZVGLlkUetzCAW", "c9x1aMjgGim51T10"], "word": "7XIZRZ7tZdIs0xf4", "wordType": "czdt7zqmSKxOEQlV"}, {"falseNegative": ["cx6GqsBq8vdhWVnu", "YLgpZehK0G2nmyuV", "iB9kRTcSQdTnNYGe"], "falsePositive": ["AfYFG3wSkHKufBdS", "3ZOokZB4cXnAXyuG", "z6LlxHv8SwyagYvD"], "word": "J3w3UNgIGj2jZtEY", "wordType": "T8sIPSE1XXPzySa0"}, {"falseNegative": ["sZoFS6xCOWMpyh9p", "MsQgb64ELbzDMwyo", "4nIRysQdbufXjYnS"], "falsePositive": ["oIFeouC2m38kXrDZ", "WlGVE9sJ4NpUtKp6", "M9I6nEwnZhsjwJeG"], "word": "waPSDMZz95OYKiqa", "wordType": "ZD63xe5rruJVfLGe"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreateBulk' test.out

#- 57 AdminProfanityExport
$PYTHON -m $MODULE 'chat-admin-profanity-export' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityExport' test.out

#- 58 AdminProfanityGroup
$PYTHON -m $MODULE 'chat-admin-profanity-group' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityGroup' test.out

#- 59 AdminProfanityImport
$PYTHON -m $MODULE 'chat-admin-profanity-import' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityImport' test.out

#- 60 AdminProfanityUpdate
$PYTHON -m $MODULE 'chat-admin-profanity-update' \
    '{"falseNegative": ["a0ZtlzUcuHAXz0UV", "31MfuGaXsAuGsZaS", "HevO0TQNEI3kfabx"], "falsePositive": ["JWWSI1ECUo1NPpeF", "hUztXDgB7n4C97uA", "PP8PATLpUpxeJlsB"], "word": "JT6Hh3OMjAjq2mK8", "wordType": "lbSEEelxnb5QxWG2"}' \
    'HFnZlA6HKWW4fI1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityUpdate' test.out

#- 61 AdminProfanityDelete
$PYTHON -m $MODULE 'chat-admin-profanity-delete' \
    'QcoBQELcNlZkqTZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityDelete' test.out

#- 62 PublicGetMessages
$PYTHON -m $MODULE 'chat-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetMessages' test.out

#- 63 PublicGetConfigV1
$PYTHON -m $MODULE 'chat-public-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGetConfigV1' test.out

#- 64 PublicGetChatSnapshot
$PYTHON -m $MODULE 'chat-public-get-chat-snapshot' \
    'KgXNwvm4e5GX6H74' \
    '2OixhtAoKiVm6URT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicGetChatSnapshot' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
