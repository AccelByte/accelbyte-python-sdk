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
chat-admin-get-config-v1 --login_with_auth "Bearer foo"
chat-admin-update-config-v1 '{"chatRateLimitBurst": 58, "chatRateLimitDuration": 60, "concurrentUsersLimit": 47, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "2e8c5csSovoqsZNB", "filterParam": "dte9NDUPVJf6c2Z0", "filterType": "QZxfgPubTDIHrvqA", "generalRateLimitBurst": 94, "generalRateLimitDuration": 16, "maxChatMessageLength": 63, "shardCapacityLimit": 42, "shardDefaultLimit": 10, "shardHardLimit": 45, "spamChatBurst": 62, "spamChatDuration": 19, "spamMuteDuration": 90}' --login_with_auth "Bearer foo"
chat-export-config --login_with_auth "Bearer foo"
chat-import-config --login_with_auth "Bearer foo"
chat-admin-get-inbox-categories --login_with_auth "Bearer foo"
chat-admin-add-inbox-category '{"enabled": false, "expiresIn": 69, "hook": {"driver": "DnyeFoF7VSZ6pf3v", "params": {"neSD2Tb3g7mSQUhA": {}, "EtrmjqU6YE3p4lSc": {}, "k0ZHn5GI39YBHqaT": {}}}, "jsonSchema": {"HeKtW18iGeUlc9d9": {}, "sogWa24CKNS0GqVv": {}, "UfHQvsHXNUNe4mhg": {}}, "name": "o5QB65lSAiYnNjkf", "saveInbox": true, "sendNotification": true}' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-category 'QvGgbLdLsFzHkBMr' --login_with_auth "Bearer foo"
chat-admin-update-inbox-category '{"enabled": true, "expiresIn": 50, "hook": {"driver": "HSZjtqXyJ58f7Gc2", "params": {"6SaiGVkydwYWQG26": {}, "yUZNmTBcvrbYCwZt": {}, "xFHyPLtI8ilbyDPU": {}}}, "jsonSchema": {"Ij88cekdqCt81P1k": {}, "tfIovmv9gsR5cJcH": {}, "m3SZLxoRDFuuuySj": {}}, "saveInbox": false, "sendNotification": true}' 'a9LJE8HoRS1X2PFA' --login_with_auth "Bearer foo"
chat-admin-get-category-schema 'AMwzHPxB1UskYs4Y' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-message 'w20DOqOBSC2DKHRu' --login_with_auth "Bearer foo"
chat-admin-get-inbox-messages --login_with_auth "Bearer foo"
chat-admin-save-inbox-message '{"category": "PMMWH8Yb33T5UBJC", "expiredAt": 18, "message": {"0EeDxOgBnhhqElIa": {}, "Dml48wdNFLTm5T50": {}, "x9WT0GfH2rtOa4EX": {}}, "scope": "USER", "status": "SENT", "userIds": ["zOXQAk4mqrxzTtuL", "l4XlbGL8QOxtjzm8", "y2wNhmwoYZyI4EFZ"]}' --login_with_auth "Bearer foo"
chat-admin-unsend-inbox-message '{"userIds": ["KBcYrCEAE7WIsfmx", "40NLRc6m8heKnWhz", "fe2NubeoKFeIaFQC"]}' 'YoDPICpnduEEQlUL' --login_with_auth "Bearer foo"
chat-admin-get-inbox-users 'dJz4mnRBkMNxvvKg' --login_with_auth "Bearer foo"
chat-admin-update-inbox-message '{"expiredAt": 55, "message": {"FyabWAgIUXiI07A6": {}, "8eaqC2J9jyEW6GLb": {}, "c0NaKDUL3sa13lk1": {}}, "scope": "NAMESPACE", "userIds": ["ih3bit0VWn3CO39P", "XDNxtXgeO3FgkXhj", "DzaQY3snn2ZkP7cF"]}' 'dP43e5dC9XIBudfZ' --login_with_auth "Bearer foo"
chat-admin-send-inbox-message '{}' 'grbHDIDm4hMzF4Tx' --login_with_auth "Bearer foo"
chat-admin-get-inbox-stats --login_with_auth "Bearer foo"
chat-admin-get-chat-snapshot 'odenSrUTvfqU0bfo' --login_with_auth "Bearer foo"
chat-admin-delete-chat-snapshot 'Mm5cTtFWbotQyXJR' --login_with_auth "Bearer foo"
chat-admin-profanity-query --login_with_auth "Bearer foo"
chat-admin-profanity-create '{"falseNegative": ["cQWsmqPNs92epxk0", "i8VxsZNereSvf969", "9mCEHThUJkETAsSp"], "falsePositive": ["7gh4TeUTkOkAYfJB", "8AT9t4Tv207Y2QD3", "oD5fLCr3OOlXVv8Z"], "word": "GF7uYnGzpipNDigN", "wordType": "Jma1MbqqZtfNWql4"}' --login_with_auth "Bearer foo"
chat-admin-profanity-create-bulk '{"dictionaries": [{"falseNegative": ["nmwAft4gqkNNlWkD", "9eOziYRFOn0jJLHC", "9LxhvNXTwGBCtohL"], "falsePositive": ["tl9Zuhytm5UDrT6Q", "XCs5SPBbRPZTF6oQ", "AXVG7tnsZg5QgXjv"], "word": "yGJPN4eXbJE5Vs2G", "wordType": "cyomQoIXimBJehyx"}, {"falseNegative": ["lNsjUgxBkF6wFPoJ", "eQediogEhhM2rIiz", "GdKvOPdq5xrgxSmy"], "falsePositive": ["1DN9LFkYW5DQyj4b", "j5Ro2ogaKt2ujQSa", "3Zdb65UXmy0Zp6iI"], "word": "aTIKUkmkk9QM0NBM", "wordType": "A9ORxpzwLR2AK6eX"}, {"falseNegative": ["UGPJsw1fiP80G9Pc", "lxcft2ulIJzPyrVE", "iOG4UcqsuGKHhMRW"], "falsePositive": ["LVd3DlhLuIpomM8s", "m1MiaI1mX2tJoARt", "dbBe7udsMrok0WvG"], "word": "YYnx4V709xbnGezK", "wordType": "sDwG2omOR2nvYI9T"}]}' --login_with_auth "Bearer foo"
chat-admin-profanity-export --login_with_auth "Bearer foo"
chat-admin-profanity-group --login_with_auth "Bearer foo"
chat-admin-profanity-import 'tmp.dat' --login_with_auth "Bearer foo"
chat-admin-profanity-update '{"falseNegative": ["VqJdvzcWbfUpaXp5", "JMl5LL4bTxBmZjdr", "rIxsB0NRsB1fPqqR"], "falsePositive": ["RulpqpymDkQhtrHW", "wRVnwVBOqOHi8pWG", "d1juYhiqjRJOqB5F"], "word": "93zFQbJndUDpdONn", "wordType": "eAczbBdHb2slt71B"}' '1SmZp2JZp50CnPb7' --login_with_auth "Bearer foo"
chat-admin-profanity-delete '1ORYcmQbTU5JX8cc' --login_with_auth "Bearer foo"
chat-public-get-messages --login_with_auth "Bearer foo"
chat-public-get-config-v1 --login_with_auth "Bearer foo"
chat-public-get-chat-snapshot 'LjMXJRk0eaKQDOJv' 'rTefglSs6g4iY9u0' --login_with_auth "Bearer foo"
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
echo "1..62"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminFilterChatMessage
$PYTHON -m $MODULE 'chat-admin-filter-chat-message' \
    '{"message": "2aCNYIWekp18lOC3", "timestamp": 26, "topicId": "IMGql5ElEa9EIIlG", "topicType": "GROUP", "userId": "spxwhRON0bc1eMbE"}' \
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
    '{"description": "IjowLqc3ecjXJbZD", "name": "KKoxLE1Y3Dymtj3g"}' \
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
    '{"admins": ["iPg4x4yiPX6ues1H", "hhkg1yLVbLFzHEP8", "cM4NTwr0KHaAsmTe"], "description": "j52WKi6tArAURt9p", "isChannel": false, "isJoinable": true, "members": ["vJBWic7UkBeIXuqD", "uAXI66bQ71w0deoV", "9Lx5RDA1l2XcrciY"], "name": "NEzvSZIPkhSgORcz", "shardLimit": 43, "type": "S5BvmgBLxh4ijFnE"}' \
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
    '{"description": "3Tam69qSZ7PC6f6Q", "isJoinable": false, "name": "LFKx1dX4LuWJu3pD"}' \
    'MUAeeZ97SBROPYuG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
$PYTHON -m $MODULE 'chat-admin-delete-topic' \
    '6XqP6oo7G73zdxTg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
$PYTHON -m $MODULE 'chat-admin-ban-topic-members' \
    '{"userIds": ["OfnwIdlNa29fDLh7", "41IslKHzGlLKWUtD", "Qs61OQAoxyyQpRWC"]}' \
    'iiPDGQhNPEwiJCf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
$PYTHON -m $MODULE 'chat-admin-channel-topic-info' \
    'XJVrlzqQls1ozhLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
$PYTHON -m $MODULE 'chat-admin-send-chat' \
    '{"message": "A3kE8jKvgatOEBM7"}' \
    '0TdlNBJYOmpu1VCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
$PYTHON -m $MODULE 'chat-admin-delete-chat' \
    'rzBsV6xnZ5Jrzzjr' \
    'caug6CWVG8SWP3gl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
$PYTHON -m $MODULE 'chat-admin-topic-members' \
    'U6muswVJnNnN7kAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
$PYTHON -m $MODULE 'chat-admin-topic-shards' \
    '7j0riFc5HTHQIoVs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
$PYTHON -m $MODULE 'chat-admin-unban-topic-members' \
    '{"userIds": ["Go7dwV9DBqFKHQkE", "TJyTlUrwDTnoujQD", "4IEiH9Z5qXn3aoRt"]}' \
    'lqOECohViHA5CzgF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
$PYTHON -m $MODULE 'chat-admin-add-topic-member' \
    '{"isAdmin": true}' \
    'y8X1A3PrIfapq5AA' \
    'eMe4L3mDWORBVXTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
$PYTHON -m $MODULE 'chat-admin-remove-topic-member' \
    'IJM9XsYIIZxiXNMR' \
    '9BgaWcFX3SUBhyoT' \
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
    'sMWPAxUMkawaGpAy' \
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
    '{"userIDs": ["rIwMif3BOdkocVTd", "4BxqGWV6mTJ0sQs6", "XNbjvqhnUVLWu8ol"]}' \
    'KdxL6ozRmDD0jJvl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
$PYTHON -m $MODULE 'chat-public-chat-history' \
    'fV5OemPYdYT7DROC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
$PYTHON -m $MODULE 'chat-public-delete-chat' \
    'jtuzFMbAG9YI89hm' \
    'guB8FOTjMLo4b9rI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
$PYTHON -m $MODULE 'chat-public-mute-user' \
    '{"duration": 53, "userId": "C4DdrKF7SUQPLG59"}' \
    'e0k5ZtX6wK7PpUlc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
$PYTHON -m $MODULE 'chat-public-unban-topic-members' \
    '{"userIDs": ["IW32iK7MGt1ixY5r", "A1WoVeJIePF8ZrQz", "P4zvtdxdbZUpd6FJ"]}' \
    'tHJ1pyVwyKQLY6FE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
$PYTHON -m $MODULE 'chat-public-unmute-user' \
    '{"userId": "O65Rb3z7CYLM8Ils"}' \
    'HqffnrfsGlfPaZKB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicUnmuteUser' test.out

#- 32 AdminGetAllConfigV1
$PYTHON -m $MODULE 'chat-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetAllConfigV1' test.out

#- 33 AdminGetConfigV1
$PYTHON -m $MODULE 'chat-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetConfigV1' test.out

#- 34 AdminUpdateConfigV1
$PYTHON -m $MODULE 'chat-admin-update-config-v1' \
    '{"chatRateLimitBurst": 45, "chatRateLimitDuration": 1, "concurrentUsersLimit": 42, "enableClanChat": true, "enableManualTopicCreation": true, "enableProfanityFilter": false, "filterAppName": "aCgcGLuC3brWdTYC", "filterParam": "fHkIySok5DiXZtLW", "filterType": "87rGysryod3dNQrm", "generalRateLimitBurst": 38, "generalRateLimitDuration": 43, "maxChatMessageLength": 55, "shardCapacityLimit": 39, "shardDefaultLimit": 32, "shardHardLimit": 62, "spamChatBurst": 88, "spamChatDuration": 21, "spamMuteDuration": 53}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdateConfigV1' test.out

#- 35 ExportConfig
$PYTHON -m $MODULE 'chat-export-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ExportConfig' test.out

#- 36 ImportConfig
$PYTHON -m $MODULE 'chat-import-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ImportConfig' test.out

#- 37 AdminGetInboxCategories
$PYTHON -m $MODULE 'chat-admin-get-inbox-categories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetInboxCategories' test.out

#- 38 AdminAddInboxCategory
$PYTHON -m $MODULE 'chat-admin-add-inbox-category' \
    '{"enabled": false, "expiresIn": 69, "hook": {"driver": "TIpUA9gxo8SV38nE", "params": {"hoXmM2W7l6jHMA2r": {}, "G3nakopAywelu01n": {}, "ryEJ0NqoTow0qiOi": {}}}, "jsonSchema": {"C4j0iktm0ZPLkLOs": {}, "p0LZ5njN86Hl8kUX": {}, "zt6bSc6bWvgpVyW9": {}}, "name": "dD1kOmvrAejcq2Lg", "saveInbox": false, "sendNotification": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminAddInboxCategory' test.out

#- 39 AdminDeleteInboxCategory
$PYTHON -m $MODULE 'chat-admin-delete-inbox-category' \
    'uaS7RBx3vim02jBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteInboxCategory' test.out

#- 40 AdminUpdateInboxCategory
$PYTHON -m $MODULE 'chat-admin-update-inbox-category' \
    '{"enabled": true, "expiresIn": 100, "hook": {"driver": "rZDyvpcLYOWA8Njx", "params": {"OnaEok4nOOCzfsfl": {}, "hjbngJOUn18G5Mlf": {}, "DTk8aG40NlncceIZ": {}}}, "jsonSchema": {"SwgAIkgzh4pTU0Am": {}, "4DZhl0bQxFJ3sWCq": {}, "QpQ2FbKPFMycMSQ4": {}}, "saveInbox": true, "sendNotification": true}' \
    'fAacR0LgB5BUXvjc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminUpdateInboxCategory' test.out

#- 41 AdminGetCategorySchema
$PYTHON -m $MODULE 'chat-admin-get-category-schema' \
    'u2s6w3VifnKqmTSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetCategorySchema' test.out

#- 42 AdminDeleteInboxMessage
$PYTHON -m $MODULE 'chat-admin-delete-inbox-message' \
    'GH1XEfY6QAYn6WQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteInboxMessage' test.out

#- 43 AdminGetInboxMessages
$PYTHON -m $MODULE 'chat-admin-get-inbox-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetInboxMessages' test.out

#- 44 AdminSaveInboxMessage
$PYTHON -m $MODULE 'chat-admin-save-inbox-message' \
    '{"category": "UBEU1QAOHfZiGhxO", "expiredAt": 6, "message": {"VxYheR3j5mNZ6vwv": {}, "7K8Asvt1j1Rx59he": {}, "sNWy2NvZ85DDKDAF": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["4GrFES9z7xueHpAT", "Hccee9GXhKcjmSEw", "drkEnnqKzFsLfYal"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminSaveInboxMessage' test.out

#- 45 AdminUnsendInboxMessage
$PYTHON -m $MODULE 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["UlfwEQKjU7eHGebS", "Vu0LQ40kepEaC4df", "iOMZfEhHr39pysFO"]}' \
    '3Zvc1BZG99LyvfvH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminUnsendInboxMessage' test.out

#- 46 AdminGetInboxUsers
$PYTHON -m $MODULE 'chat-admin-get-inbox-users' \
    'EsJKQQewVLMUoAna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxUsers' test.out

#- 47 AdminUpdateInboxMessage
$PYTHON -m $MODULE 'chat-admin-update-inbox-message' \
    '{"expiredAt": 90, "message": {"ONDDwMvgI0HlyPR7": {}, "wZNiVsF6xG2mXEQd": {}, "bzIVy8alncV7vWgS": {}}, "scope": "USER", "userIds": ["dfo07UctPErqxyMy", "OK06MqQBErxgjVBy", "cvU4PbmRDcrg0DjQ"]}' \
    'jBECXvea7H1m2lJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateInboxMessage' test.out

#- 48 AdminSendInboxMessage
$PYTHON -m $MODULE 'chat-admin-send-inbox-message' \
    '{}' \
    'RZ3ZprZ60zMjhTHe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSendInboxMessage' test.out

#- 49 AdminGetInboxStats
$PYTHON -m $MODULE 'chat-admin-get-inbox-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxStats' test.out

#- 50 AdminGetChatSnapshot
$PYTHON -m $MODULE 'chat-admin-get-chat-snapshot' \
    'h94TSenE5hCFkIf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetChatSnapshot' test.out

#- 51 AdminDeleteChatSnapshot
$PYTHON -m $MODULE 'chat-admin-delete-chat-snapshot' \
    'weqZ18MH57l2Zsrh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteChatSnapshot' test.out

#- 52 AdminProfanityQuery
$PYTHON -m $MODULE 'chat-admin-profanity-query' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminProfanityQuery' test.out

#- 53 AdminProfanityCreate
$PYTHON -m $MODULE 'chat-admin-profanity-create' \
    '{"falseNegative": ["90ETtYmGukz3Mnlr", "jcHp6B8Vj7rXFgDn", "DkdZ9bpjb1tdA3Qh"], "falsePositive": ["jCMW64f4XhIjSoTB", "2NMKtezapPr2QEPx", "3zTxBGtEJIYppuUS"], "word": "sKoHw2hyd12uSE7B", "wordType": "Ev3aevq6iohU1cg4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminProfanityCreate' test.out

#- 54 AdminProfanityCreateBulk
$PYTHON -m $MODULE 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{"falseNegative": ["W1IS3Uv1BpWoJBaq", "dg2FHcunsS1lnaO2", "m9vqjhbeK2qN8g6x"], "falsePositive": ["2PyYDo5R3hLiD5sf", "5y1JsxJNGmyt0SQD", "UDoWBZVGLlkUetzC"], "word": "AWc9x1aMjgGim51T", "wordType": "107XIZRZ7tZdIs0x"}, {"falseNegative": ["f4czdt7zqmSKxOEQ", "lVcx6GqsBq8vdhWV", "nuYLgpZehK0G2nmy"], "falsePositive": ["uViB9kRTcSQdTnNY", "GeAfYFG3wSkHKufB", "dS3ZOokZB4cXnAXy"], "word": "uGz6LlxHv8SwyagY", "wordType": "vDJ3w3UNgIGj2jZt"}, {"falseNegative": ["EYT8sIPSE1XXPzyS", "a0sZoFS6xCOWMpyh", "9pMsQgb64ELbzDMw"], "falsePositive": ["yo4nIRysQdbufXjY", "nSoIFeouC2m38kXr", "DZWlGVE9sJ4NpUtK"], "word": "p6M9I6nEwnZhsjwJ", "wordType": "eGwaPSDMZz95OYKi"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminProfanityCreateBulk' test.out

#- 55 AdminProfanityExport
$PYTHON -m $MODULE 'chat-admin-profanity-export' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityExport' test.out

#- 56 AdminProfanityGroup
$PYTHON -m $MODULE 'chat-admin-profanity-group' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityGroup' test.out

#- 57 AdminProfanityImport
$PYTHON -m $MODULE 'chat-admin-profanity-import' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityImport' test.out

#- 58 AdminProfanityUpdate
$PYTHON -m $MODULE 'chat-admin-profanity-update' \
    '{"falseNegative": ["qaZD63xe5rruJVfL", "Gea0ZtlzUcuHAXz0", "UV31MfuGaXsAuGsZ"], "falsePositive": ["aSHevO0TQNEI3kfa", "bxJWWSI1ECUo1NPp", "eFhUztXDgB7n4C97"], "word": "uAPP8PATLpUpxeJl", "wordType": "sBJT6Hh3OMjAjq2m"}' \
    'K8lbSEEelxnb5QxW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityUpdate' test.out

#- 59 AdminProfanityDelete
$PYTHON -m $MODULE 'chat-admin-profanity-delete' \
    'G2HFnZlA6HKWW4fI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityDelete' test.out

#- 60 PublicGetMessages
$PYTHON -m $MODULE 'chat-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetMessages' test.out

#- 61 PublicGetConfigV1
$PYTHON -m $MODULE 'chat-public-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetConfigV1' test.out

#- 62 PublicGetChatSnapshot
$PYTHON -m $MODULE 'chat-public-get-chat-snapshot' \
    '1IQcoBQELcNlZkqT' \
    'ZrKgXNwvm4e5GX6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetChatSnapshot' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
