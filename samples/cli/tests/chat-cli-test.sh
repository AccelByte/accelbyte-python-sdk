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
chat-admin-chat-history --login_with_auth "Bearer foo"
chat-admin-create-namespace-topic '{"description": "EAxcVpFrttufHIRd", "name": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
chat-admin-topic-list --login_with_auth "Bearer foo"
chat-admin-create-topic '{"admins": ["W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b", "BZLCXLx8bbgorQeF"], "description": "bQ1g7qbPngUNB1vR", "isChannel": false, "isJoinable": true, "members": ["dwpzS6DaDpv8N7ZQ", "VqGj6oDLjWjkY1aX", "lFcDtgOjchIua5tW"], "name": "EIC32ogW7olvbTgr", "shardLimit": 15, "type": "TCrbCbPOyNQkT7Nv"}' --login_with_auth "Bearer foo"
chat-admin-channel-topic-list --login_with_auth "Bearer foo"
chat-admin-channel-topic-summary --login_with_auth "Bearer foo"
chat-admin-query-topic-log --login_with_auth "Bearer foo"
chat-admin-update-topic '{"description": "yE3cwyALczNIicXm", "isJoinable": false, "name": "WBZqxYG3aREAu2D6"}' 'QVKNCWP75TB0i7pK' --login_with_auth "Bearer foo"
chat-admin-delete-topic 'xR8dl0zRVW4EZG9m' --login_with_auth "Bearer foo"
chat-admin-ban-topic-members '{"userIds": ["0XcgGVbMqSszE8GH", "avj7AorKsxwkosAV", "erXpc1C8XfwHuKeb"]}' '9l3rGN9A3sNm84hd' --login_with_auth "Bearer foo"
chat-admin-channel-topic-info 'dSpHt0P7MIIR7Cky' --login_with_auth "Bearer foo"
chat-admin-send-chat '{"message": "F6C7duuyZ0GhDogq"}' 'rhBRd8lDR6qVNPRZ' --login_with_auth "Bearer foo"
chat-admin-delete-chat 'YdFLIAjGGJddVCvu' '9vx5KQ7KYnIuMBva' --login_with_auth "Bearer foo"
chat-admin-topic-members 'O35llzQRaT5kPxUf' --login_with_auth "Bearer foo"
chat-admin-topic-shards 'ofvnnSuB0y5WUlrM' --login_with_auth "Bearer foo"
chat-admin-unban-topic-members '{"userIds": ["dI4sNveabntBSxTe", "Iv53HGCiljvjKoyD", "6SCwGrncqmLtjQHA"]}' 'f8TgoNm03VLisV6z' --login_with_auth "Bearer foo"
chat-admin-add-topic-member '{"isAdmin": true}' 'Vo3twu0MesTCf9x4' 'rt69lna7qxNeIxPz' --login_with_auth "Bearer foo"
chat-admin-remove-topic-member '6MbwL6IY69z1UaLq' 'YSYWytLPziZMdjxc' --login_with_auth "Bearer foo"
chat-admin-query-topic --login_with_auth "Bearer foo"
chat-admin-query-users-topic 'BZufQxGiHPllG4cY' --login_with_auth "Bearer foo"
chat-public-get-muted-topics --login_with_auth "Bearer foo"
chat-public-topic-list --login_with_auth "Bearer foo"
chat-public-ban-topic-members '{"userIDs": ["EzfTD1ZBm3MqHcUm", "LZZbSqb8RwNmn9Hr", "NQy4uZAAiE0mit9R"]}' 'GCCHYzUOcEdscKHP' --login_with_auth "Bearer foo"
chat-public-chat-history 'EqgA8yu7Vk6Jt4Ym' --login_with_auth "Bearer foo"
chat-public-delete-chat 'os9Jcdos4fYcTVU6' 'RBt0zYoMcHyCUEXl' --login_with_auth "Bearer foo"
chat-public-mute-user '{"duration": 55, "userId": "aLoxozr6wfNPX2bO"}' 'ItRMvqtlB2jJCSQT' --login_with_auth "Bearer foo"
chat-public-unban-topic-members '{"userIDs": ["279ZZPYGu0rdlgdW", "yOtXi3choQrpOsDB", "U5SepjChB3V0v52D"]}' 'lym6puQ23xoJ8aeC' --login_with_auth "Bearer foo"
chat-public-unmute-user '{"userId": "naLpUKp44YUDjasW"}' 'IPUvmEejtGeoyIPa' --login_with_auth "Bearer foo"
chat-admin-get-all-config-v1 --login_with_auth "Bearer foo"
chat-admin-get-config-v1 --login_with_auth "Bearer foo"
chat-admin-update-config-v1 '{"chatRateLimitBurst": 51, "chatRateLimitDuration": 61, "concurrentUsersLimit": 90, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "vjj7il35MXbN9oCM", "filterParam": "Nqq98SjTvhZNkSQ7", "filterType": "0D0H6BXksUC9b6i5", "generalRateLimitBurst": 23, "generalRateLimitDuration": 32, "shardCapacityLimit": 30, "shardDefaultLimit": 58, "shardHardLimit": 60, "spamChatBurst": 47, "spamChatDuration": 87, "spamMuteDuration": 44}' --login_with_auth "Bearer foo"
chat-export-config --login_with_auth "Bearer foo"
chat-import-config --login_with_auth "Bearer foo"
chat-admin-get-inbox-categories --login_with_auth "Bearer foo"
chat-admin-add-inbox-category '{"enabled": false, "expiresIn": 2, "hook": {"driver": "KAFKA", "params": {"boLQQ1MzH7Qm8bwb": {}, "mXgdAPh1EThG96gA": {}, "FKK2WDgCcxvONZm3": {}}}, "jsonSchema": {"EeERmDnyeFoF7VSZ": {}, "6pf3vneSD2Tb3g7m": {}, "SQUhAEtrmjqU6YE3": {}}, "name": "p4lSck0ZHn5GI39Y", "saveInbox": true, "sendNotification": true}' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-category 'HqaTHeKtW18iGeUl' --login_with_auth "Bearer foo"
chat-admin-update-inbox-category '{"enabled": false, "expiresIn": 87, "hook": {"driver": "KAFKA", "params": {"d9sogWa24CKNS0Gq": {}, "VvUfHQvsHXNUNe4m": {}, "hgo5QB65lSAiYnNj": {}}}, "jsonSchema": {"kfZrQvGgbLdLsFzH": {}, "kBMr1yrOMlNFSrUE": {}, "irnjX9fDmIbeZxzf": {}}, "saveInbox": false, "sendNotification": true}' 'G26yUZNmTBcvrbYC' --login_with_auth "Bearer foo"
chat-admin-get-category-schema 'wZtxFHyPLtI8ilby' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-message 'DPUIj88cekdqCt81' --login_with_auth "Bearer foo"
chat-admin-get-inbox-messages --login_with_auth "Bearer foo"
chat-admin-save-inbox-message '{"category": "P1ktfIovmv9gsR5c", "expiredAt": 74, "message": {"9KOsb392k6YmJFfR": {}, "ByjlBiuFM3FIoVk8": {}, "T3GpAnkCmBUqg2SC": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["s4Yw20DOqOBSC2DK", "HRuPMMWH8Yb33T5U", "BJCjfcnLRfxeCSz9"]}' --login_with_auth "Bearer foo"
chat-admin-unsend-inbox-message '{"userIds": ["WEi8KlloeH0JT1yd", "uat2vQR3biBfsu4j", "msRE2w1yEkLgh3tI"]}' 'Yt4SqYUTLDx9gIiD' --login_with_auth "Bearer foo"
chat-admin-get-inbox-users 'andpGT2t24aOMh5e' --login_with_auth "Bearer foo"
chat-admin-update-inbox-message '{"expiredAt": 59, "message": {"I4EFZKBcYrCEAE7W": {}, "Isfmx40NLRc6m8he": {}, "KnWhzfe2NubeoKFe": {}}, "scope": "NAMESPACE", "userIds": ["A84Z8YYk6QEgJjBb", "EDoNf3n0hEoRCAcf", "80zfFyabWAgIUXiI"]}' '07A68eaqC2J9jyEW' --login_with_auth "Bearer foo"
chat-admin-send-inbox-message '{}' '6GLbc0NaKDUL3sa1' --login_with_auth "Bearer foo"
chat-admin-get-inbox-stats --login_with_auth "Bearer foo"
chat-admin-get-chat-snapshot '3lk1dQBHO86IlBhn' --login_with_auth "Bearer foo"
chat-admin-delete-chat-snapshot 'etU4RwTqUXlTDBzO' --login_with_auth "Bearer foo"
chat-admin-profanity-query --login_with_auth "Bearer foo"
chat-admin-profanity-create '{"falseNegative": ["uYsaZA2yyd4mbqoO", "fADMMAXFaY9eKa69", "9bRVhyaKwwrAP2aM"], "falsePositive": ["lu7WtjCtoYetOO84", "7g8OudOfjnCuHZ3c", "46IjGa23YvYmmDg7"], "word": "VYPXIuvUYTZBRujI", "wordType": "UE1Tq5jyAZvkRCMN"}' --login_with_auth "Bearer foo"
chat-admin-profanity-create-bulk '{"dictionaries": [{"falseNegative": ["FIurjh2imdb4rbkX", "j0ZwsVC0gL97ZVJS", "PqJiwv1qlYB1RSKs"], "falsePositive": ["6gQxC3Gb7S0o4zGY", "Y7KQI1AeFgPqaOkv", "o1aolB4lkKB4EYOk"], "word": "Q1jMD3cym8xIfkOV", "wordType": "W2grREOLx0KOww3H"}, {"falseNegative": ["ICQLfl7MUBG7qtPu", "64yAtURKLRkb738H", "GS6rDgMdIIlhS1fS"], "falsePositive": ["iM9331m7Ta1PsKc5", "0Kv6ecnEevcAx2K2", "zkRenmPZnGBt4P7W"], "word": "nbdSJtjX7ZshZyZl", "wordType": "5x4bRXBHUTrDzZSK"}, {"falseNegative": ["scfOcYu3dpCROYqU", "iGKXVFCmpo6sPwVO", "EDSJsEK5QpNhlI2i"], "falsePositive": ["S5EpGhhvXYck0upM", "zUYnb76tFkEORV3b", "u1bNCtX7W40V6Do5"], "word": "sYadCCFrHHC3DpZx", "wordType": "krQDXuNFviMarv8m"}]}' --login_with_auth "Bearer foo"
chat-admin-profanity-export --login_with_auth "Bearer foo"
chat-admin-profanity-group --login_with_auth "Bearer foo"
chat-admin-profanity-import 'tmp.dat' --login_with_auth "Bearer foo"
chat-admin-profanity-update '{"falseNegative": ["nfHK8CCmE2lPnsbD", "3SGEdlwuUccE536u", "gBp3HBvepnDCjgyJ"], "falsePositive": ["lXe36mgWjLfFmteu", "e9nzJ6fH24T805tV", "g8JqU0jZpjvsugAO"], "word": "S7u8RiWyerCSa8SR", "wordType": "gwsAj1ik1jglaDXT"}' 'vKCWwNTAhd2wrS0u' --login_with_auth "Bearer foo"
chat-admin-profanity-delete 'Pdjhdinpng5BLy8w' --login_with_auth "Bearer foo"
chat-public-get-messages --login_with_auth "Bearer foo"
chat-public-get-chat-snapshot 'bhMssAHjapIkY9Rf' '4wP57dBZNR88YbCt' --login_with_auth "Bearer foo"
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
echo "1..60"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminChatHistory
$PYTHON -m $MODULE 'chat-admin-chat-history' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminChatHistory' test.out

#- 3 AdminCreateNamespaceTopic
$PYTHON -m $MODULE 'chat-admin-create-namespace-topic' \
    '{"description": "mKy8M9zVrjfGXZnq", "name": "AQUoY1GjlIIk0iKo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNamespaceTopic' test.out

#- 4 AdminTopicList
$PYTHON -m $MODULE 'chat-admin-topic-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminTopicList' test.out

#- 5 AdminCreateTopic
$PYTHON -m $MODULE 'chat-admin-create-topic' \
    '{"admins": ["TTS1j02o7JjTXAQN", "0qdskdQV0TqI8EFn", "mDbxIxi4YKlONk2Q"], "description": "5Y4JvaizwiilatuU", "isChannel": false, "isJoinable": false, "members": ["jt9lIMGql5ElEa9E", "IIlGcHB3CfR3ncDl", "wi3v3MFFJ1KesKoE"], "name": "LCpobBEG8X645xpd", "shardLimit": 39, "type": "pai0rYaT5hOPjaf3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateTopic' test.out

#- 6 AdminChannelTopicList
$PYTHON -m $MODULE 'chat-admin-channel-topic-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminChannelTopicList' test.out

#- 7 AdminChannelTopicSummary
$PYTHON -m $MODULE 'chat-admin-channel-topic-summary' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminChannelTopicSummary' test.out

#- 8 AdminQueryTopicLog
$PYTHON -m $MODULE 'chat-admin-query-topic-log' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminQueryTopicLog' test.out

#- 9 AdminUpdateTopic
$PYTHON -m $MODULE 'chat-admin-update-topic' \
    '{"description": "H0tYighU0VUfcYHJ", "isJoinable": false, "name": "EP8cM4NTwr0KHaAs"}' \
    'mTej52WKi6tArAUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
$PYTHON -m $MODULE 'chat-admin-delete-topic' \
    't9plCSVq8PdH6hJP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
$PYTHON -m $MODULE 'chat-admin-ban-topic-members' \
    '{"userIds": ["UAc0RVwXgAgntLMC", "uaXBWQi6BqPg4xr0", "lCancUZGCHsZYoLf"]}' \
    'R1KtOv7Zy0b65uvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
$PYTHON -m $MODULE 'chat-admin-channel-topic-info' \
    'KNuy0ytZQ7M6Nzy1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
$PYTHON -m $MODULE 'chat-admin-send-chat' \
    '{"message": "adnSKOLFKx1dX4Lu"}' \
    'WJu3pDMUAeeZ97SB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
$PYTHON -m $MODULE 'chat-admin-delete-chat' \
    'ROPYuG6XqP6oo7G7' \
    '3zdxTgOfnwIdlNa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
$PYTHON -m $MODULE 'chat-admin-topic-members' \
    '9fDLh741IslKHzGl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
$PYTHON -m $MODULE 'chat-admin-topic-shards' \
    'LKWUtDQs61OQAoxy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
$PYTHON -m $MODULE 'chat-admin-unban-topic-members' \
    '{"userIds": ["yQpRWCiiPDGQhNPE", "wiJCf2XJVrlzqQls", "1ozhLVA3kE8jKvga"]}' \
    'tOEBM70TdlNBJYOm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
$PYTHON -m $MODULE 'chat-admin-add-topic-member' \
    '{"isAdmin": true}' \
    'Twlc6esUp6Sw1I98' \
    'jeZQ7hfxnhLd3Kna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
$PYTHON -m $MODULE 'chat-admin-remove-topic-member' \
    'knoed9DHhLOqQGhC' \
    'Ur6iTrjyEgarAdNJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminRemoveTopicMember' test.out

#- 21 AdminQueryTopic
$PYTHON -m $MODULE 'chat-admin-query-topic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryTopic' test.out

#- 22 AdminQueryUsersTopic
$PYTHON -m $MODULE 'chat-admin-query-users-topic' \
    'OIG36I6tRbRcrEve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminQueryUsersTopic' test.out

#- 23 PublicGetMutedTopics
$PYTHON -m $MODULE 'chat-public-get-muted-topics' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicGetMutedTopics' test.out

#- 24 PublicTopicList
$PYTHON -m $MODULE 'chat-public-topic-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicTopicList' test.out

#- 25 PublicBanTopicMembers
$PYTHON -m $MODULE 'chat-public-ban-topic-members' \
    '{"userIDs": ["MdAdiPKDUVSC00PY", "eDcagginxnFIna3y", "ddcbsPheTH26IUJN"]}' \
    'vYuGRUvpZaHCuESO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
$PYTHON -m $MODULE 'chat-public-chat-history' \
    'iIZsMfB4ZH3mtgWg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
$PYTHON -m $MODULE 'chat-public-delete-chat' \
    'U4pCAKxeE70CaunQ' \
    'Nxot371W9G4AvQkq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
$PYTHON -m $MODULE 'chat-public-mute-user' \
    '{"duration": 39, "userId": "UBhyoTsMWPAxUMka"}' \
    'waGpAyrIwMif3BOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
$PYTHON -m $MODULE 'chat-public-unban-topic-members' \
    '{"userIDs": ["kocVTd4BxqGWV6mT", "J0sQs6XNbjvqhnUV", "LWu8olKdxL6ozRmD"]}' \
    'D0jJvlfV5OemPYdY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
$PYTHON -m $MODULE 'chat-public-unmute-user' \
    '{"userId": "T7DROCjtuzFMbAG9"}' \
    'YI89hmguB8FOTjML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicUnmuteUser' test.out

#- 31 AdminGetAllConfigV1
$PYTHON -m $MODULE 'chat-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetAllConfigV1' test.out

#- 32 AdminGetConfigV1
$PYTHON -m $MODULE 'chat-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetConfigV1' test.out

#- 33 AdminUpdateConfigV1
$PYTHON -m $MODULE 'chat-admin-update-config-v1' \
    '{"chatRateLimitBurst": 30, "chatRateLimitDuration": 30, "concurrentUsersLimit": 88, "enableClanChat": false, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "rIzqYkEpstyVTBcr", "filterParam": "M8rG0rH0zcswwVeM", "filterType": "K6MbGIVIu8vvwLc7", "generalRateLimitBurst": 74, "generalRateLimitDuration": 36, "shardCapacityLimit": 55, "shardDefaultLimit": 41, "shardHardLimit": 98, "spamChatBurst": 100, "spamChatDuration": 29, "spamMuteDuration": 30}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateConfigV1' test.out

#- 34 ExportConfig
$PYTHON -m $MODULE 'chat-export-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'ExportConfig' test.out

#- 35 ImportConfig
$PYTHON -m $MODULE 'chat-import-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ImportConfig' test.out

#- 36 AdminGetInboxCategories
$PYTHON -m $MODULE 'chat-admin-get-inbox-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetInboxCategories' test.out

#- 37 AdminAddInboxCategory
$PYTHON -m $MODULE 'chat-admin-add-inbox-category' \
    '{"enabled": false, "expiresIn": 93, "hook": {"driver": "KAFKA", "params": {"tpgkieDyF97lGdMi": {}, "HKxbWCYzo8yO2KTK": {}, "9tmmOnYnOpas6ghP": {}}}, "jsonSchema": {"1y4Zi7s7QBlk44Z4": {}, "4B1GZgKg4uKxaCgc": {}, "GLuC3brWdTYCfHkI": {}}, "name": "ySok5DiXZtLW87rG", "saveInbox": true, "sendNotification": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
$PYTHON -m $MODULE 'chat-admin-delete-inbox-category' \
    'flIOd6X3viLvtEk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
$PYTHON -m $MODULE 'chat-admin-update-inbox-category' \
    '{"enabled": false, "expiresIn": 69, "hook": {"driver": "KAFKA", "params": {"RwrKt2ecozL0TOg5": {}, "4vCE48L5oLF6M4lN": {}, "a4JUMSHNgqRqCV7u": {}}}, "jsonSchema": {"samANkZlOX9Sfo95": {}, "HgXqKhTPkwfLM9uS": {}, "ybRzWek2gZvRrvr0": {}}, "saveInbox": false, "sendNotification": false}' \
    '9d9lvccKMLhrTrcB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
$PYTHON -m $MODULE 'chat-admin-get-category-schema' \
    'E2ItBS3KtKZWe8ao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
$PYTHON -m $MODULE 'chat-admin-delete-inbox-message' \
    'FzAyBME74HUtipUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxMessage' test.out

#- 42 AdminGetInboxMessages
$PYTHON -m $MODULE 'chat-admin-get-inbox-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetInboxMessages' test.out

#- 43 AdminSaveInboxMessage
$PYTHON -m $MODULE 'chat-admin-save-inbox-message' \
    '{"category": "YhWV1qx8CzPML52f", "expiredAt": 1, "message": {"naEok4nOOCzfsflh": {}, "jbngJOUn18G5MlfD": {}, "Tk8aG40NlncceIZS": {}}, "scope": "USER", "status": "SENT", "userIds": ["gAIkgzh4pTU0Am4D", "Zhl0bQxFJ3sWCqQp", "Q2FbKPFMycMSQ4qf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
$PYTHON -m $MODULE 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["AacR0LgB5BUXvjcu", "2s6w3VifnKqmTSoG", "H1XEfY6QAYn6WQ5U"]}' \
    'BEU1QAOHfZiGhxOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
$PYTHON -m $MODULE 'chat-admin-get-inbox-users' \
    'cuDXSxSc3aZPV87p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
$PYTHON -m $MODULE 'chat-admin-update-inbox-message' \
    '{"expiredAt": 27, "message": {"K8Asvt1j1Rx59hes": {}, "NWy2NvZ85DDKDAF8": {}, "KDsBZOuYQJ03BAHZ": {}}, "scope": "NAMESPACE", "userIds": ["Hccee9GXhKcjmSEw", "drkEnnqKzFsLfYal", "UlfwEQKjU7eHGebS"]}' \
    'Vu0LQ40kepEaC4df' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
$PYTHON -m $MODULE 'chat-admin-send-inbox-message' \
    '{}' \
    'iOMZfEhHr39pysFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminSendInboxMessage' test.out

#- 48 AdminGetInboxStats
$PYTHON -m $MODULE 'chat-admin-get-inbox-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetInboxStats' test.out

#- 49 AdminGetChatSnapshot
$PYTHON -m $MODULE 'chat-admin-get-chat-snapshot' \
    '3Zvc1BZG99LyvfvH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
$PYTHON -m $MODULE 'chat-admin-delete-chat-snapshot' \
    'EsJKQQewVLMUoAna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteChatSnapshot' test.out

#- 51 AdminProfanityQuery
$PYTHON -m $MODULE 'chat-admin-profanity-query' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminProfanityQuery' test.out

#- 52 AdminProfanityCreate
$PYTHON -m $MODULE 'chat-admin-profanity-create' \
    '{"falseNegative": ["RcYp7FUjfIGaffof", "lEIByYqeKN0meGel", "YF5wWaDhukU4khGG"], "falsePositive": ["4vZFTYnPkmSu4PWa", "m1jxR7SETWjteoc8", "fgvZDDhoO05oKqym"], "word": "xLD1Lcvw6T6mZEiw", "wordType": "xxElpMYSWIeVzm7z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
$PYTHON -m $MODULE 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{"falseNegative": ["9noowmlTIKVowi0R", "Y2VN4ZONJREdUQ3z", "9F1BxNNgnke4aknc"], "falsePositive": ["w7wu9TmXfJWBPrx9", "Ns8eLzYEvwSWTaLQ", "jctvrK2jhsYpKPlX"], "word": "n77AtYoFzLAATPY8", "wordType": "P8P3cfoivvQxevec"}, {"falseNegative": ["Ww7Rry0KK5rgAGO0", "dW8rX2MVUGKSZ4Gc", "Lkt4pK32sJxlZcCT"], "falsePositive": ["pTdRtCHvuk6B6XTm", "SLyn50sigBVZxiKd", "V57GvRyd9UuL02Le"], "word": "8HSCslsDd4M1F5qR", "wordType": "IblS7Nz81GRazPAA"}, {"falseNegative": ["NjfBoldFOyqA2clJ", "5gEOaCgM6Yn6Rugb", "NEIpGBFUjOn5mM7k"], "falsePositive": ["8nbLzvtCIW5ynMKq", "uUicAeIVXtoWAXhM", "lW4tLqX7OICf5oD1"], "word": "e6oI9FmYel0kOw72", "wordType": "o8Zkgk0jS6rDWUwf"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreateBulk' test.out

#- 54 AdminProfanityExport
$PYTHON -m $MODULE 'chat-admin-profanity-export' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityExport' test.out

#- 55 AdminProfanityGroup
$PYTHON -m $MODULE 'chat-admin-profanity-group' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityGroup' test.out

#- 56 AdminProfanityImport
$PYTHON -m $MODULE 'chat-admin-profanity-import' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityImport' test.out

#- 57 AdminProfanityUpdate
$PYTHON -m $MODULE 'chat-admin-profanity-update' \
    '{"falseNegative": ["hKvrf2AaH4yCWrHS", "ppnIZkNnTn3rzH5N", "vAtcvNedgS1fUfKm"], "falsePositive": ["ihDbmu8ePWlQMVDX", "EHeiGTnwyEw6hIWD", "ZrpP7rz3ISW510kH"], "word": "r4isTKWjmv67nuHC", "wordType": "XWfwnwGioVwVzmmB"}' \
    'VVFfpqx1AeLtzcPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
$PYTHON -m $MODULE 'chat-admin-profanity-delete' \
    '3jtDYBo4FUTH7CGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityDelete' test.out

#- 59 PublicGetMessages
$PYTHON -m $MODULE 'chat-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetMessages' test.out

#- 60 PublicGetChatSnapshot
$PYTHON -m $MODULE 'chat-public-get-chat-snapshot' \
    'KSyxgRR1DiCqSMzp' \
    'qIFGLkDs7ACC1RgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
