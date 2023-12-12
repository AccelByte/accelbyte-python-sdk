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
chat-admin-add-inbox-category '{"enabled": false, "expiresIn": 2, "hook": {"driver": "KAFKA", "params": "boLQQ1MzH7Qm8bwb"}, "jsonSchema": {"mXgdAPh1EThG96gA": {}, "FKK2WDgCcxvONZm3": {}, "EeERmDnyeFoF7VSZ": {}}, "name": "6pf3vneSD2Tb3g7m", "saveInbox": true, "sendNotification": true}' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-category 'UhAEtrmjqU6YE3p4' --login_with_auth "Bearer foo"
chat-admin-update-inbox-category '{"enabled": false, "expiresIn": 91, "hook": {"driver": "KAFKA", "params": "ck0ZHn5GI39YBHqa"}, "jsonSchema": {"THeKtW18iGeUlc9d": {}, "9sogWa24CKNS0GqV": {}, "vUfHQvsHXNUNe4mh": {}}, "saveInbox": false, "sendNotification": false}' 'o5QB65lSAiYnNjkf' --login_with_auth "Bearer foo"
chat-admin-get-category-schema 'ZrQvGgbLdLsFzHkB' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-message 'Mr1yrOMlNFSrUEir' --login_with_auth "Bearer foo"
chat-admin-get-inbox-messages --login_with_auth "Bearer foo"
chat-admin-save-inbox-message '{"category": "njX9fDmIbeZxzfTc", "expiredAt": 49, "message": {"G26yUZNmTBcvrbYC": {}, "wZtxFHyPLtI8ilby": {}, "DPUIj88cekdqCt81": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["dNzDmeIP6rOvDz9K", "Osb392k6YmJFfRBy", "jlBiuFM3FIoVk8T3"]}' --login_with_auth "Bearer foo"
chat-admin-unsend-inbox-message '{"userIds": ["GpAnkCmBUqg2SCnq", "ntX9y1aZSWMiVi10", "sG6vxkfUcmqRRbce"]}' 'J5i0EeDxOgBnhhqE' --login_with_auth "Bearer foo"
chat-admin-get-inbox-users 'lIaDml48wdNFLTm5' --login_with_auth "Bearer foo"
chat-admin-update-inbox-message '{"expiredAt": 94, "message": {"at2vQR3biBfsu4jm": {}, "sRE2w1yEkLgh3tIY": {}, "t4SqYUTLDx9gIiDa": {}}, "scope": "NAMESPACE", "userIds": ["jzm8y2wNhmwoYZyI", "4EFZKBcYrCEAE7WI", "sfmx40NLRc6m8heK"]}' 'nWhzfe2NubeoKFeI' --login_with_auth "Bearer foo"
chat-admin-send-inbox-message '{}' 'aFQCYoDPICpnduEE' --login_with_auth "Bearer foo"
chat-admin-get-inbox-stats --login_with_auth "Bearer foo"
chat-admin-get-chat-snapshot 'QlULdJz4mnRBkMNx' --login_with_auth "Bearer foo"
chat-admin-delete-chat-snapshot 'vvKgAT8mJrYq6hRk' --login_with_auth "Bearer foo"
chat-admin-profanity-query --login_with_auth "Bearer foo"
chat-admin-profanity-create '{"falseNegative": ["loqxM3gpwxcfMy9X", "zjjI5YbsKoADkzJE", "N2VHzih3bit0VWn3"], "falsePositive": ["CO39PXDNxtXgeO3F", "gkXhjDzaQY3snn2Z", "kP7cFdP43e5dC9XI"], "word": "BudfZgrbHDIDm4hM", "wordType": "zF4TxodenSrUTvfq"}' --login_with_auth "Bearer foo"
chat-admin-profanity-create-bulk '{"dictionaries": [{"falseNegative": ["U0bfoMm5cTtFWbot", "QyXJRcQWsmqPNs92", "epxk0i8VxsZNereS"], "falsePositive": ["vf9699mCEHThUJkE", "TAsSp7gh4TeUTkOk", "AYfJB8AT9t4Tv207"], "word": "Y2QD3oD5fLCr3OOl", "wordType": "XVv8ZGF7uYnGzpip"}, {"falseNegative": ["NDigNJma1MbqqZtf", "NWql4nmwAft4gqkN", "NlWkD9eOziYRFOn0"], "falsePositive": ["jJLHC9LxhvNXTwGB", "CtohLtl9Zuhytm5U", "DrT6QXCs5SPBbRPZ"], "word": "TF6oQAXVG7tnsZg5", "wordType": "QgXjvyGJPN4eXbJE"}, {"falseNegative": ["5Vs2GcyomQoIXimB", "JehyxlNsjUgxBkF6", "wFPoJeQediogEhhM"], "falsePositive": ["2rIizGdKvOPdq5xr", "gxSmy1DN9LFkYW5D", "Qyj4bj5Ro2ogaKt2"], "word": "ujQSa3Zdb65UXmy0", "wordType": "Zp6iIaTIKUkmkk9Q"}]}' --login_with_auth "Bearer foo"
chat-admin-profanity-export --login_with_auth "Bearer foo"
chat-admin-profanity-group --login_with_auth "Bearer foo"
chat-admin-profanity-import 'tmp.dat' --login_with_auth "Bearer foo"
chat-admin-profanity-update '{"falseNegative": ["M0NBMA9ORxpzwLR2", "AK6eXUGPJsw1fiP8", "0G9Pclxcft2ulIJz"], "falsePositive": ["PyrVEiOG4UcqsuGK", "HhMRWLVd3DlhLuIp", "omM8sm1MiaI1mX2t"], "word": "JoARtdbBe7udsMro", "wordType": "k0WvGYYnx4V709xb"}' 'nGezKsDwG2omOR2n' --login_with_auth "Bearer foo"
chat-admin-profanity-delete 'vYI9TVqJdvzcWbfU' --login_with_auth "Bearer foo"
chat-public-get-messages --login_with_auth "Bearer foo"
chat-public-get-chat-snapshot 'paXp5JMl5LL4bTxB' 'mZjdrrIxsB0NRsB1' --login_with_auth "Bearer foo"
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
    '{"description": "fPqqRRulpqpymDkQ", "name": "htrHWwRVnwVBOqOH"}' \
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
    '{"admins": ["i8pWGd1juYhiqjRJ", "OqB5F93zFQbJndUD", "pdONneAczbBdHb2s"], "description": "lt71B1SmZp2JZp50", "isChannel": true, "isJoinable": false, "members": ["TS1j02o7JjTXAQN0", "qdskdQV0TqI8EFnm", "DbxIxi4YKlONk2Q5"], "name": "Y4JvaizwiilatuUj", "shardLimit": 18, "type": "OC3mNqF7Bl0LcghV"}' \
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
    '{"description": "HfPEspxwhRON0bc1", "isJoinable": false, "name": "i3v3MFFJ1KesKoEL"}' \
    'CpobBEG8X645xpdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
$PYTHON -m $MODULE 'chat-admin-delete-topic' \
    'pai0rYaT5hOPjaf3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
$PYTHON -m $MODULE 'chat-admin-ban-topic-members' \
    '{"userIds": ["H0tYighU0VUfcYHJ", "bBfAKSiPW3VgsZXi", "R1DJ7HVWqMkNSawQ"]}' \
    'UWDFJvJBWic7UkBe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
$PYTHON -m $MODULE 'chat-admin-channel-topic-info' \
    'IXuqDuAXI66bQ71w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
$PYTHON -m $MODULE 'chat-admin-send-chat' \
    '{"message": "0deoV9Lx5RDA1l2X"}' \
    'crciYNEzvSZIPkhS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
$PYTHON -m $MODULE 'chat-admin-delete-chat' \
    'gORcz5S5BvmgBLxh' \
    '4ijFnE3Tam69qSZ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
$PYTHON -m $MODULE 'chat-admin-topic-members' \
    'PC6f6QkmZXElW9Yf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
$PYTHON -m $MODULE 'chat-admin-topic-shards' \
    'RSse6AAz3S4czz0Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
$PYTHON -m $MODULE 'chat-admin-unban-topic-members' \
    '{"userIds": ["KFlAVmVLu4AOec0z", "8eBeeoip68J1nsv4", "W2OJhtafxMSJlHeb"]}' \
    '34sZKHcl5LLLOexL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
$PYTHON -m $MODULE 'chat-admin-add-topic-member' \
    '{"isAdmin": true}' \
    'fZvWtND2tcBFpX8l' \
    'NtFEJ7tnkY6Mca5a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
$PYTHON -m $MODULE 'chat-admin-remove-topic-member' \
    'fj12K2IzrBvvWm4u' \
    'dE0OXudXgNne8kJA' \
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
    'Twlc6esUp6Sw1I98' \
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
    '{"userIDs": ["jeZQ7hfxnhLd3Kna", "knoed9DHhLOqQGhC", "Ur6iTrjyEgarAdNJ"]}' \
    'OIG36I6tRbRcrEve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
$PYTHON -m $MODULE 'chat-public-chat-history' \
    'MdAdiPKDUVSC00PY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
$PYTHON -m $MODULE 'chat-public-delete-chat' \
    'eDcagginxnFIna3y' \
    'ddcbsPheTH26IUJN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
$PYTHON -m $MODULE 'chat-public-mute-user' \
    '{"duration": 45, "userId": "5CzgFSy8X1A3PrIf"}' \
    'apq5AAeMe4L3mDWO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
$PYTHON -m $MODULE 'chat-public-unban-topic-members' \
    '{"userIDs": ["RBVXTIIJM9XsYIIZ", "xiXNMR9BgaWcFX3S", "UBhyoTsMWPAxUMka"]}' \
    'waGpAyrIwMif3BOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
$PYTHON -m $MODULE 'chat-public-unmute-user' \
    '{"userId": "kocVTd4BxqGWV6mT"}' \
    'J0sQs6XNbjvqhnUV' \
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
    '{"chatRateLimitBurst": 76, "chatRateLimitDuration": 92, "concurrentUsersLimit": 99, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "LFjAKY7CbgsWqFWZ", "filterParam": "X7kPBom8F9GLLTG8", "filterType": "phc3n4iLoIllKlpO", "generalRateLimitBurst": 25, "generalRateLimitDuration": 32, "shardCapacityLimit": 14, "shardDefaultLimit": 34, "shardHardLimit": 41, "spamChatBurst": 17, "spamChatDuration": 57, "spamMuteDuration": 74}' \
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
    '{"enabled": false, "expiresIn": 67, "hook": {"driver": "KAFKA", "params": "o4b9rIzqYkEpstyV"}, "jsonSchema": {"TBcrM8rG0rH0zcsw": {}, "wVeMK6MbGIVIu8vv": {}, "wLc7KY3uVoJXTIMt": {}}, "name": "pgkieDyF97lGdMiH", "saveInbox": true, "sendNotification": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
$PYTHON -m $MODULE 'chat-admin-delete-inbox-category' \
    'bWCYzo8yO2KTK9tm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
$PYTHON -m $MODULE 'chat-admin-update-inbox-category' \
    '{"enabled": false, "expiresIn": 83, "hook": {"driver": "KAFKA", "params": "FEO65Rb3z7CYLM8I"}, "jsonSchema": {"lsHqffnrfsGlfPaZ": {}, "KBwa3Ddb60ufPpzw": {}, "j1QGIFmlVf4jvaps": {}}, "saveInbox": false, "sendNotification": false}' \
    'E9LN9bvhOrHflIOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
$PYTHON -m $MODULE 'chat-admin-get-category-schema' \
    '6X3viLvtEk4mTIpU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
$PYTHON -m $MODULE 'chat-admin-delete-inbox-message' \
    'A9gxo8SV38nEhoXm' \
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
    '{"category": "M2W7l6jHMA2rG3na", "expiredAt": 22, "message": {"JUMSHNgqRqCV7usa": {}, "mANkZlOX9Sfo95Hg": {}, "XqKhTPkwfLM9uSyb": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["jN86Hl8kUXzt6bSc", "6bWvgpVyW9dD1kOm", "vrAejcq2LgkQuaS7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
$PYTHON -m $MODULE 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["RBx3vim02jBOxrZD", "yvpcLYOWA8NjxOna", "Eok4nOOCzfsflhjb"]}' \
    'ngJOUn18G5MlfDTk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
$PYTHON -m $MODULE 'chat-admin-get-inbox-users' \
    '8aG40NlncceIZSwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
$PYTHON -m $MODULE 'chat-admin-update-inbox-message' \
    '{"expiredAt": 55, "message": {"EDpEY8VnocGAjci0": {}, "V3tBf2jnHGKXphn5": {}, "0c9tNLDljhZ2jxLR": {}}, "scope": "NAMESPACE", "userIds": ["3z46OCaGBeMfPlNo", "s4yBRjrERHEonAZR", "8GmEu0q1p6QCyY6v"]}' \
    'SkVFWdsbYuVEGVxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
$PYTHON -m $MODULE 'chat-admin-send-inbox-message' \
    '{}' \
    'heR3j5mNZ6vwv7K8' \
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
    'Asvt1j1Rx59hesNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
$PYTHON -m $MODULE 'chat-admin-delete-chat-snapshot' \
    'y2NvZ85DDKDAF8KD' \
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
    '{"falseNegative": ["sBZOuYQJ03BAHZ7c", "53q7akMpcmnnx6RV", "Brop9v7aZK3h65hb"], "falsePositive": ["N15zfQSfQrtfF3TQ", "N0OcNDLr36vzohZy", "jMQAg5mPYhrLTyU8"], "word": "OhgfY9JQYGF4bYXE", "wordType": "cENx9xZlAchob44l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
$PYTHON -m $MODULE 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{"falseNegative": ["ONDDwMvgI0HlyPR7", "wZNiVsF6xG2mXEQd", "bzIVy8alncV7vWgS"], "falsePositive": ["Hdfo07UctPErqxyM", "yOK06MqQBErxgjVB", "ycvU4PbmRDcrg0Dj"], "word": "QjBECXvea7H1m2lJ", "wordType": "FRZ3ZprZ60zMjhTH"}, {"falseNegative": ["eh94TSenE5hCFkIf", "5weqZ18MH57l2Zsr", "h90ETtYmGukz3Mnl"], "falsePositive": ["rjcHp6B8Vj7rXFgD", "nDkdZ9bpjb1tdA3Q", "hjCMW64f4XhIjSoT"], "word": "B2NMKtezapPr2QEP", "wordType": "x3zTxBGtEJIYppuU"}, {"falseNegative": ["SsKoHw2hyd12uSE7", "BEv3aevq6iohU1cg", "4W1IS3Uv1BpWoJBa"], "falsePositive": ["qdg2FHcunsS1lnaO", "2m9vqjhbeK2qN8g6", "x2PyYDo5R3hLiD5s"], "word": "f5y1JsxJNGmyt0SQ", "wordType": "DUDoWBZVGLlkUetz"}]}' \
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
    '{"falseNegative": ["CAWc9x1aMjgGim51", "T107XIZRZ7tZdIs0", "xf4czdt7zqmSKxOE"], "falsePositive": ["QlVcx6GqsBq8vdhW", "VnuYLgpZehK0G2nm", "yuViB9kRTcSQdTnN"], "word": "YGeAfYFG3wSkHKuf", "wordType": "BdS3ZOokZB4cXnAX"}' \
    'yuGz6LlxHv8Swyag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
$PYTHON -m $MODULE 'chat-admin-profanity-delete' \
    'YvDJ3w3UNgIGj2jZ' \
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
    'tEYT8sIPSE1XXPzy' \
    'Sa0sZoFS6xCOWMpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
