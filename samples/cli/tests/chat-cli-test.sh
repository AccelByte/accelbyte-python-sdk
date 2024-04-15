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
chat-admin-add-inbox-category '{"enabled": false, "expiresIn": 2, "hook": {"driver": "2e8c5csSovoqsZNB", "params": {"dte9NDUPVJf6c2Z0": {}, "QZxfgPubTDIHrvqA": {}, "ThuwjRHpKKTlmVr9": {}}}, "jsonSchema": {"XuoJbRFQSKVPHbn4": {}, "Xxtu7LQRENjEEztx": {}, "1WsYSiZqan0nSBJr": {}}, "name": "oav91GXlvPG6bFYR", "saveInbox": false, "sendNotification": false}' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-category 'HQipcCx9Zw5D2L7v' --login_with_auth "Bearer foo"
chat-admin-update-inbox-category '{"enabled": true, "expiresIn": 15, "hook": {"driver": "VvUfHQvsHXNUNe4m", "params": {"hgo5QB65lSAiYnNj": {}, "kfZrQvGgbLdLsFzH": {}, "kBMr1yrOMlNFSrUE": {}}}, "jsonSchema": {"irnjX9fDmIbeZxzf": {}, "TcyiuATus9hsfpFD": {}, "cSDG8aMVGLiBNrDj": {}}, "saveInbox": true, "sendNotification": false}' 'oxcwgGLXpUL4pp2n' --login_with_auth "Bearer foo"
chat-admin-get-category-schema 'cYAHdNzDmeIP6rOv' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-message 'Dz9KOsb392k6YmJF' --login_with_auth "Bearer foo"
chat-admin-get-inbox-messages --login_with_auth "Bearer foo"
chat-admin-save-inbox-message '{"category": "fRByjlBiuFM3FIoV", "expiredAt": 22, "message": {"1X2PFAAMwzHPxB1U": {}, "skYs4Yw20DOqOBSC": {}, "2DKHRuPMMWH8Yb33": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["UBJCjfcnLRfxeCSz", "9WEi8KlloeH0JT1y", "duat2vQR3biBfsu4"]}' --login_with_auth "Bearer foo"
chat-admin-unsend-inbox-message '{"userIds": ["jmsRE2w1yEkLgh3t", "IYt4SqYUTLDx9gIi", "DandpGT2t24aOMh5"]}' 'eC3IHeHSKLCa3xre' --login_with_auth "Bearer foo"
chat-admin-get-inbox-users 'NDUWehwH3q31A806' --login_with_auth "Bearer foo"
chat-admin-update-inbox-message '{"expiredAt": 60, "message": {"eKnWhzfe2NubeoKF": {}, "eIaFQCYoDPICpndu": {}, "EEQlULdJz4mnRBkM": {}}, "scope": "NAMESPACE", "userIds": ["xvvKgAT8mJrYq6hR", "kloqxM3gpwxcfMy9", "XzjjI5YbsKoADkzJ"]}' 'EN2VHzih3bit0VWn' --login_with_auth "Bearer foo"
chat-admin-send-inbox-message '{}' '3CO39PXDNxtXgeO3' --login_with_auth "Bearer foo"
chat-admin-get-inbox-stats --login_with_auth "Bearer foo"
chat-admin-get-chat-snapshot 'FgkXhjDzaQY3snn2' --login_with_auth "Bearer foo"
chat-admin-delete-chat-snapshot 'ZkP7cFdP43e5dC9X' --login_with_auth "Bearer foo"
chat-admin-profanity-query --login_with_auth "Bearer foo"
chat-admin-profanity-create '{"falseNegative": ["IBudfZgrbHDIDm4h", "MzF4TxodenSrUTvf", "qU0bfoMm5cTtFWbo"], "falsePositive": ["tQyXJRcQWsmqPNs9", "2epxk0i8VxsZNere", "Svf9699mCEHThUJk"], "word": "ETAsSp7gh4TeUTkO", "wordType": "kAYfJB8AT9t4Tv20"}' --login_with_auth "Bearer foo"
chat-admin-profanity-create-bulk '{"dictionaries": [{"falseNegative": ["7Y2QD3oD5fLCr3OO", "lXVv8ZGF7uYnGzpi", "pNDigNJma1MbqqZt"], "falsePositive": ["fNWql4nmwAft4gqk", "NNlWkD9eOziYRFOn", "0jJLHC9LxhvNXTwG"], "word": "BCtohLtl9Zuhytm5", "wordType": "UDrT6QXCs5SPBbRP"}, {"falseNegative": ["ZTF6oQAXVG7tnsZg", "5QgXjvyGJPN4eXbJ", "E5Vs2GcyomQoIXim"], "falsePositive": ["BJehyxlNsjUgxBkF", "6wFPoJeQediogEhh", "M2rIizGdKvOPdq5x"], "word": "rgxSmy1DN9LFkYW5", "wordType": "DQyj4bj5Ro2ogaKt"}, {"falseNegative": ["2ujQSa3Zdb65UXmy", "0Zp6iIaTIKUkmkk9", "QM0NBMA9ORxpzwLR"], "falsePositive": ["2AK6eXUGPJsw1fiP", "80G9Pclxcft2ulIJ", "zPyrVEiOG4UcqsuG"], "word": "KHhMRWLVd3DlhLuI", "wordType": "pomM8sm1MiaI1mX2"}]}' --login_with_auth "Bearer foo"
chat-admin-profanity-export --login_with_auth "Bearer foo"
chat-admin-profanity-group --login_with_auth "Bearer foo"
chat-admin-profanity-import 'tmp.dat' --login_with_auth "Bearer foo"
chat-admin-profanity-update '{"falseNegative": ["tJoARtdbBe7udsMr", "ok0WvGYYnx4V709x", "bnGezKsDwG2omOR2"], "falsePositive": ["nvYI9TVqJdvzcWbf", "UpaXp5JMl5LL4bTx", "BmZjdrrIxsB0NRsB"], "word": "1fPqqRRulpqpymDk", "wordType": "QhtrHWwRVnwVBOqO"}' 'Hi8pWGd1juYhiqjR' --login_with_auth "Bearer foo"
chat-admin-profanity-delete 'JOqB5F93zFQbJndU' --login_with_auth "Bearer foo"
chat-public-get-messages --login_with_auth "Bearer foo"
chat-public-get-chat-snapshot 'DpdONneAczbBdHb2' 'slt71B1SmZp2JZp5' --login_with_auth "Bearer foo"
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
    '{"description": "0CnPb71ORYcmQbTU", "name": "5JX8ccLjMXJRk0ea"}' \
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
    '{"admins": ["KQDOJvrTefglSs6g", "4iY9u02aCNYIWekp", "18lOC3mNqF7Bl0Lc"], "description": "ghVHfPEspxwhRON0", "isChannel": false, "isJoinable": true, "members": ["c1eMbEIjowLqc3ec", "jXJbZDKKoxLE1Y3D", "ymtj3giPg4x4yiPX"], "name": "6ues1Hhhkg1yLVbL", "shardLimit": 64, "type": "HJbBfAKSiPW3VgsZ"}' \
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
    '{"description": "XiR1DJ7HVWqMkNSa", "isJoinable": true, "name": "URt9plCSVq8PdH6h"}' \
    'JPUAc0RVwXgAgntL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateTopic' test.out

#- 10 AdminDeleteTopic
$PYTHON -m $MODULE 'chat-admin-delete-topic' \
    'MCuaXBWQi6BqPg4x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteTopic' test.out

#- 11 AdminBanTopicMembers
$PYTHON -m $MODULE 'chat-admin-ban-topic-members' \
    '{"userIds": ["r0lCancUZGCHsZYo", "LfR1KtOv7Zy0b65u", "vuKNuy0ytZQ7M6Nz"]}' \
    'y1adnSKOLFKx1dX4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminBanTopicMembers' test.out

#- 12 AdminChannelTopicInfo
$PYTHON -m $MODULE 'chat-admin-channel-topic-info' \
    'LuWJu3pDMUAeeZ97' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminChannelTopicInfo' test.out

#- 13 AdminTopicChatHistory
eval_tap 0 13 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 14 AdminSendChat
$PYTHON -m $MODULE 'chat-admin-send-chat' \
    '{"message": "SBROPYuG6XqP6oo7"}' \
    'G73zdxTgOfnwIdlN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminSendChat' test.out

#- 15 AdminDeleteChat
$PYTHON -m $MODULE 'chat-admin-delete-chat' \
    'a29fDLh741IslKHz' \
    'GlLKWUtDQs61OQAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteChat' test.out

#- 16 AdminTopicMembers
$PYTHON -m $MODULE 'chat-admin-topic-members' \
    'xyyQpRWCiiPDGQhN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminTopicMembers' test.out

#- 17 AdminTopicShards
$PYTHON -m $MODULE 'chat-admin-topic-shards' \
    'PEwiJCf2XJVrlzqQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicShards' test.out

#- 18 AdminUnbanTopicMembers
$PYTHON -m $MODULE 'chat-admin-unban-topic-members' \
    '{"userIds": ["ls1ozhLVA3kE8jKv", "gatOEBM70TdlNBJY", "Ompu1VCarzBsV6xn"]}' \
    'Z5Jrzzjrcaug6CWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUnbanTopicMembers' test.out

#- 19 AdminAddTopicMember
$PYTHON -m $MODULE 'chat-admin-add-topic-member' \
    '{"isAdmin": false}' \
    '8SWP3glU6muswVJn' \
    'NnN7kAa7j0riFc5H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminAddTopicMember' test.out

#- 20 AdminRemoveTopicMember
$PYTHON -m $MODULE 'chat-admin-remove-topic-member' \
    'THQIoVsGo7dwV9DB' \
    'qFKHQkETJyTlUrwD' \
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
    'TnoujQD4IEiH9Z5q' \
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
    '{"userIDs": ["Xn3aoRtlqOECohVi", "HA5CzgFSy8X1A3Pr", "Ifapq5AAeMe4L3mD"]}' \
    'WORBVXTIIJM9XsYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicBanTopicMembers' test.out

#- 26 PublicChatHistory
$PYTHON -m $MODULE 'chat-public-chat-history' \
    'IZxiXNMR9BgaWcFX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicChatHistory' test.out

#- 27 PublicDeleteChat
$PYTHON -m $MODULE 'chat-public-delete-chat' \
    '3SUBhyoTsMWPAxUM' \
    'kawaGpAyrIwMif3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicDeleteChat' test.out

#- 28 PublicMuteUser
$PYTHON -m $MODULE 'chat-public-mute-user' \
    '{"duration": 83, "userId": "K1Np5nodqpLm7FhJ"}' \
    'BNXzAFdO0Khqf6ki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicMuteUser' test.out

#- 29 PublicUnbanTopicMembers
$PYTHON -m $MODULE 'chat-public-unban-topic-members' \
    '{"userIDs": ["TdSGv2LFjAKY7Cbg", "sWqFWZX7kPBom8F9", "GLLTG8phc3n4iLoI"]}' \
    'llKlpO2pqiXJF3WG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicUnbanTopicMembers' test.out

#- 30 PublicUnmuteUser
$PYTHON -m $MODULE 'chat-public-unmute-user' \
    '{"userId": "RaoQomSJC4DdrKF7"}' \
    'SUQPLG59e0k5ZtX6' \
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
    '{"chatRateLimitBurst": 46, "chatRateLimitDuration": 46, "concurrentUsersLimit": 74, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "MK6MbGIVIu8vvwLc", "filterParam": "7KY3uVoJXTIMtpgk", "filterType": "ieDyF97lGdMiHKxb", "generalRateLimitBurst": 100, "generalRateLimitDuration": 58, "shardCapacityLimit": 65, "shardDefaultLimit": 73, "shardHardLimit": 53, "spamChatBurst": 40, "spamChatDuration": 29, "spamMuteDuration": 69}' \
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
    '{"enabled": true, "expiresIn": 83, "hook": {"driver": "pyVwyKQLY6FEO65R", "params": {"b3z7CYLM8IlsHqff": {}, "nrfsGlfPaZKBwa3D": {}, "db60ufPpzwj1QGIF": {}}}, "jsonSchema": {"mlVf4jvapseE9LN9": {}, "bvhOrHflIOd6X3vi": {}, "LvtEk4mTIpUA9gxo": {}}, "name": "8SV38nEhoXmM2W7l", "saveInbox": false, "sendNotification": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminAddInboxCategory' test.out

#- 38 AdminDeleteInboxCategory
$PYTHON -m $MODULE 'chat-admin-delete-inbox-category' \
    'HMA2rG3nakopAywe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteInboxCategory' test.out

#- 39 AdminUpdateInboxCategory
$PYTHON -m $MODULE 'chat-admin-update-inbox-category' \
    '{"enabled": false, "expiresIn": 33, "hook": {"driver": "u01nryEJ0NqoTow0", "params": {"qiOiC4j0iktm0ZPL": {}, "kLOsp0LZ5njN86Hl": {}, "8kUXzt6bSc6bWvgp": {}}}, "jsonSchema": {"VyW9dD1kOmvrAejc": {}, "q2LgkQuaS7RBx3vi": {}, "m02jBOxrZDyvpcLY": {}}, "saveInbox": true, "sendNotification": true}' \
    'ML52faXUr9Sk4lq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateInboxCategory' test.out

#- 40 AdminGetCategorySchema
$PYTHON -m $MODULE 'chat-admin-get-category-schema' \
    'faBcAXXKlhvyH8pa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetCategorySchema' test.out

#- 41 AdminDeleteInboxMessage
$PYTHON -m $MODULE 'chat-admin-delete-inbox-message' \
    'OJtxqMPpcVfRwNj5' \
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
    '{"category": "47fH0XrKEDpEY8Vn", "expiredAt": 30, "message": {"U0Am4DZhl0bQxFJ3": {}, "sWCqQpQ2FbKPFMyc": {}, "MSQ4qfAacR0LgB5B": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["vjcu2s6w3VifnKqm", "TSoGH1XEfY6QAYn6", "WQ5UBEU1QAOHfZiG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminSaveInboxMessage' test.out

#- 44 AdminUnsendInboxMessage
$PYTHON -m $MODULE 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["hxOdcuDXSxSc3aZP", "V87pna08gxefTYKh", "uxaEc7M4P7UckSC6"]}' \
    'ePeN8i4GrFES9z7x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminUnsendInboxMessage' test.out

#- 45 AdminGetInboxUsers
$PYTHON -m $MODULE 'chat-admin-get-inbox-users' \
    'ueHpATHccee9GXhK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetInboxUsers' test.out

#- 46 AdminUpdateInboxMessage
$PYTHON -m $MODULE 'chat-admin-update-inbox-message' \
    '{"expiredAt": 4, "message": {"nnx6RVBrop9v7aZK": {}, "3h65hbN15zfQSfQr": {}, "tfF3TQN0OcNDLr36": {}}, "scope": "USER", "userIds": ["aC4dfiOMZfEhHr39", "pysFO3Zvc1BZG99L", "yvfvHEsJKQQewVLM"]}' \
    'UoAnaRcYp7FUjfIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateInboxMessage' test.out

#- 47 AdminSendInboxMessage
$PYTHON -m $MODULE 'chat-admin-send-inbox-message' \
    '{}' \
    'affoflEIByYqeKN0' \
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
    'meGelYF5wWaDhukU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetChatSnapshot' test.out

#- 50 AdminDeleteChatSnapshot
$PYTHON -m $MODULE 'chat-admin-delete-chat-snapshot' \
    '4khGG4vZFTYnPkmS' \
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
    '{"falseNegative": ["u4PWam1jxR7SETWj", "teoc8fgvZDDhoO05", "oKqymxLD1Lcvw6T6"], "falsePositive": ["mZEiwxxElpMYSWIe", "Vzm7z9noowmlTIKV", "owi0RY2VN4ZONJRE"], "word": "dUQ3z9F1BxNNgnke", "wordType": "4akncw7wu9TmXfJW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityCreate' test.out

#- 53 AdminProfanityCreateBulk
$PYTHON -m $MODULE 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{"falseNegative": ["BPrx9Ns8eLzYEvwS", "WTaLQjctvrK2jhsY", "pKPlXn77AtYoFzLA"], "falsePositive": ["ATPY8P8P3cfoivvQ", "xevecWw7Rry0KK5r", "gAGO0dW8rX2MVUGK"], "word": "SZ4GcLkt4pK32sJx", "wordType": "lZcCTpTdRtCHvuk6"}, {"falseNegative": ["B6XTmSLyn50sigBV", "ZxiKdV57GvRyd9Uu", "L02Le8HSCslsDd4M"], "falsePositive": ["1F5qRIblS7Nz81GR", "azPAANjfBoldFOyq", "A2clJ5gEOaCgM6Yn"], "word": "6RugbNEIpGBFUjOn", "wordType": "5mM7k8nbLzvtCIW5"}, {"falseNegative": ["ynMKquUicAeIVXto", "WAXhMlW4tLqX7OIC", "f5oD1e6oI9FmYel0"], "falsePositive": ["kOw72o8Zkgk0jS6r", "DWUwfhKvrf2AaH4y", "CWrHSppnIZkNnTn3"], "word": "rzH5NvAtcvNedgS1", "wordType": "fUfKmihDbmu8ePWl"}]}' \
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
    '{"falseNegative": ["QMVDXEHeiGTnwyEw", "6hIWDZrpP7rz3ISW", "510kHr4isTKWjmv6"], "falsePositive": ["7nuHCXWfwnwGioVw", "VzmmBVVFfpqx1AeL", "tzcPJ3jtDYBo4FUT"], "word": "H7CGfKSyxgRR1DiC", "wordType": "qSMzpqIFGLkDs7AC"}' \
    'C1RgBfoNrHlFi2qJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityUpdate' test.out

#- 58 AdminProfanityDelete
$PYTHON -m $MODULE 'chat-admin-profanity-delete' \
    'LgmBLE35YhyiDV90' \
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
    'SeI5yppBHoytVznC' \
    'gNyx9fbT63ShEh8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetChatSnapshot' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
