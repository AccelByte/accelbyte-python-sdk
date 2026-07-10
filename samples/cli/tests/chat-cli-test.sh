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
chat-admin-send-chat '{"message": "Q7KYnIuMBvaO35ll", "metadata": "zQRaT5kPxUfofvnn"}' 'SuB0y5WUlrMdI4sN' --login_with_auth "Bearer foo"
chat-admin-delete-chat 'veabntBSxTeIv53H' 'GCiljvjKoyD6SCwG' --login_with_auth "Bearer foo"
chat-admin-topic-members 'rncqmLtjQHAf8Tgo' --login_with_auth "Bearer foo"
chat-admin-topic-shards 'Nm03VLisV6zwPuo3' --login_with_auth "Bearer foo"
chat-admin-unban-topic-members '{"userIds": ["td6TC6I3lMjGSWN2", "laRlxfcjHfYakUCT", "qGkE7wcWfDslpJSq"]}' 'GAXQ0yYoNRKd3IL5' --login_with_auth "Bearer foo"
chat-admin-add-topic-member '{"isAdmin": true}' 'AQ6iiPlSC2uE4o5V' 'wdo3fePqIJA8IHtr' --login_with_auth "Bearer foo"
chat-admin-remove-topic-member 'kmu0hpDDWVAla2l5' 'BYNtIuS5S5XUdjso' --login_with_auth "Bearer foo"
chat-admin-query-topic --login_with_auth "Bearer foo"
chat-admin-query-users-topic 'qwGyzzWi9gwQYv7t' --login_with_auth "Bearer foo"
chat-public-get-muted-topics --login_with_auth "Bearer foo"
chat-public-topic-list --login_with_auth "Bearer foo"
chat-public-ban-topic-members '{"userIDs": ["1o7TTr1DmrhZv15T", "7quIOvBMcaYmvCkG", "Z5dAgqxpBFmaLoxo"]}' 'zr6wfNPX2bOItRMv' --login_with_auth "Bearer foo"
chat-public-chat-history 'qtlB2jJCSQT279ZZ' --login_with_auth "Bearer foo"
chat-public-delete-chat 'PYGu0rdlgdWyOtXi' '3choQrpOsDBU5Sep' --login_with_auth "Bearer foo"
chat-public-mute-user '{"duration": 19, "userId": "8MyKrQpM4hkkK6KK"}' 'XNB3Gv0IqmF51Tkh' --login_with_auth "Bearer foo"
chat-public-unban-topic-members '{"userIDs": ["jYnaq6foWvXa3bMr", "XsDr6kILsSSyDdmy", "kmoPYgc2L4jk4Lo0"]}' 'LSP0pf4IxjUkl535' --login_with_auth "Bearer foo"
chat-public-unmute-user '{"userId": "X3ateEKDpADz1x3p"}' 'oD3Qgb3boLQQ1MzH' --login_with_auth "Bearer foo"
chat-admin-get-all-config-v1 --login_with_auth "Bearer foo"
chat-admin-get-log-config --login_with_auth "Bearer foo"
chat-admin-patch-update-log-config '{"internalAccessLogEnabled": true, "logLevel": "trace", "logLevelDB": "fatal", "slowQueryThreshold": 26, "socketLogEnabled": false}' --login_with_auth "Bearer foo"
chat-admin-get-config-v1 --login_with_auth "Bearer foo"
chat-admin-update-config-v1 '{"chatRateLimitBurst": 56, "chatRateLimitDuration": 46, "concurrentUsersLimit": 6, "enableClanChat": false, "enableManualTopicCreation": true, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "XgdAPh1EThG96gAF", "filterParam": "KK2WDgCcxvONZm3E", "filterType": "eERmDnyeFoF7VSZ6", "generalRateLimitBurst": 32, "generalRateLimitDuration": 74, "maxChatMessageLength": 11, "maxChatMetadataSize": 4, "shardCapacityLimit": 89, "shardDefaultLimit": 44, "shardHardLimit": 64, "spamChatBurst": 27, "spamChatDuration": 87, "spamMuteDuration": 8}' --login_with_auth "Bearer foo"
chat-export-config --login_with_auth "Bearer foo"
chat-import-config --login_with_auth "Bearer foo"
chat-admin-get-inbox-categories --login_with_auth "Bearer foo"
chat-admin-add-inbox-category '{"enabled": true, "expiresIn": 98, "hook": {"driver": "2Tb3g7mSQUhAEtrm", "params": {"jqU6YE3p4lSck0ZH": {}, "n5GI39YBHqaTHeKt": {}, "W18iGeUlc9d9sogW": {}}}, "jsonSchema": {"a24CKNS0GqVvUfHQ": {}, "vsHXNUNe4mhgo5QB": {}, "65lSAiYnNjkfZrQv": {}}, "name": "GgbLdLsFzHkBMr1y", "saveInbox": true, "sendNotification": false}' --login_with_auth "Bearer foo"
chat-admin-delete-inbox-category 'lNFSrUEirnjX9fDm' --login_with_auth "Bearer foo"
chat-admin-update-inbox-category '{"enabled": false, "expiresIn": 98, "hook": {"driver": "eZxzfTcyiuATus9h", "params": {"sfpFDcSDG8aMVGLi": {}, "BNrDjqoxcwgGLXpU": {}, "L4pp2ncYAHdNzDme": {}}}, "jsonSchema": {"IP6rOvDz9KOsb392": {}, "k6YmJFfRByjlBiuF": {}, "M3FIoVk8T3GpAnkC": {}}, "saveInbox": false, "sendNotification": true}' 'PxB1UskYs4Yw20DO' --login_with_auth "Bearer foo"
chat-admin-get-category-schema 'qOBSC2DKHRuPMMWH' --login_with_auth "Bearer foo"
chat-admin-list-kafka-topic --login_with_auth "Bearer foo"
chat-admin-delete-inbox-message '8Yb33T5UBJCjfcnL' --login_with_auth "Bearer foo"
chat-admin-get-inbox-messages --login_with_auth "Bearer foo"
chat-admin-save-inbox-message '{"category": "RfxeCSz9WEi8Kllo", "expiredAt": 9, "message": {"wdNFLTm5T50x9WT0": {}, "GfH2rtOa4EXsXzOX": {}, "QAk4mqrxzTtuLl4X": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["bGL8QOxtjzm8y2wN", "hmwoYZyI4EFZKBcY", "rCEAE7WIsfmx40NL"]}' --login_with_auth "Bearer foo"
chat-admin-unsend-inbox-message '{"userIds": ["Rc6m8heKnWhzfe2N", "ubeoKFeIaFQCYoDP", "ICpnduEEQlULdJz4"]}' 'mnRBkMNxvvKgAT8m' --login_with_auth "Bearer foo"
chat-admin-get-inbox-users 'JrYq6hRkloqxM3gp' --login_with_auth "Bearer foo"
chat-admin-update-inbox-message '{"expiredAt": 46, "message": {"C2J9jyEW6GLbc0Na": {}, "KDUL3sa13lk1dQBH": {}, "O86IlBhnetU4RwTq": {}}, "scope": "USER", "userIds": ["XlTDBzOuYsaZA2yy", "d4mbqoOfADMMAXFa", "Y9eKa699bRVhyaKw"]}' 'wrAP2aMlu7WtjCto' --login_with_auth "Bearer foo"
chat-admin-send-inbox-message '{}' 'YetOO847g8OudOfj' --login_with_auth "Bearer foo"
chat-admin-get-inbox-stats --login_with_auth "Bearer foo"
chat-admin-get-chat-snapshot 'nCuHZ3c46IjGa23Y' --login_with_auth "Bearer foo"
chat-admin-delete-chat-snapshot 'vYmmDg7VYPXIuvUY' --login_with_auth "Bearer foo"
chat-admin-profanity-query --login_with_auth "Bearer foo"
chat-admin-profanity-create '{"falseNegative": ["TZBRujIUE1Tq5jyA", "ZvkRCMNFIurjh2im", "db4rbkXj0ZwsVC0g"], "falsePositive": ["L97ZVJSPqJiwv1ql", "YB1RSKs6gQxC3Gb7", "S0o4zGYY7KQI1AeF"], "word": "gPqaOkvo1aolB4lk", "wordType": "KB4EYOkQ1jMD3cym"}' --login_with_auth "Bearer foo"
chat-admin-profanity-create-bulk '{"dictionaries": [{"falseNegative": ["8xIfkOVW2grREOLx", "0KOww3HICQLfl7MU", "BG7qtPu64yAtURKL"], "falsePositive": ["Rkb738HGS6rDgMdI", "IlhS1fSiM9331m7T", "a1PsKc50Kv6ecnEe"], "word": "vcAx2K2zkRenmPZn", "wordType": "GBt4P7WnbdSJtjX7"}, {"falseNegative": ["ZshZyZl5x4bRXBHU", "TrDzZSKscfOcYu3d", "pCROYqUiGKXVFCmp"], "falsePositive": ["o6sPwVOEDSJsEK5Q", "pNhlI2iS5EpGhhvX", "Yck0upMzUYnb76tF"], "word": "kEORV3bu1bNCtX7W", "wordType": "40V6Do5sYadCCFrH"}, {"falseNegative": ["HC3DpZxkrQDXuNFv", "iMarv8mnfHK8CCmE", "2lPnsbD3SGEdlwuU"], "falsePositive": ["ccE536ugBp3HBvep", "nDCjgyJlXe36mgWj", "LfFmteue9nzJ6fH2"], "word": "4T805tVg8JqU0jZp", "wordType": "jvsugAOS7u8RiWye"}]}' --login_with_auth "Bearer foo"
chat-admin-profanity-export --login_with_auth "Bearer foo"
chat-admin-profanity-group --login_with_auth "Bearer foo"
chat-admin-profanity-import 'tmp.dat' --login_with_auth "Bearer foo"
chat-admin-profanity-update '{"falseNegative": ["rCSa8SRgwsAj1ik1", "jglaDXTvKCWwNTAh", "d2wrS0uPdjhdinpn"], "falsePositive": ["g5BLy8wbhMssAHja", "pIkY9Rf4wP57dBZN", "R88YbCtmKy8M9zVr"], "word": "jfGXZnqAQUoY1Gjl", "wordType": "IIk0iKoTTS1j02o7"}' 'JjTXAQN0qdskdQV0' --login_with_auth "Bearer foo"
chat-admin-profanity-delete 'TqI8EFnmDbxIxi4Y' --login_with_auth "Bearer foo"
chat-public-get-messages --login_with_auth "Bearer foo"
chat-public-get-config-v1 --login_with_auth "Bearer foo"
chat-public-get-chat-snapshot 'KlONk2Q5Y4Jvaizw' 'iilatuUjjt9lIMGq' --login_with_auth "Bearer foo"
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
echo "1..65"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminFilterChatMessage
$PYTHON -m $MODULE 'chat-admin-filter-chat-message' \
    '{"message": "l5ElEa9EIIlGcHB3", "timestamp": 58, "topicId": "hRON0bc1eMbEIjow", "topicType": "PERSONAL", "userId": "KesKoELCpobBEG8X"}' \
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
    '{"description": "645xpdXpai0rYaT5", "name": "hOPjaf3H0tYighU0"}' \
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
    '{"admins": ["VUfcYHJbBfAKSiPW", "3VgsZXiR1DJ7HVWq", "MkNSawQUWDFJvJBW"], "description": "ic7UkBeIXuqDuAXI", "isChannel": true, "isJoinable": false, "members": ["bQ71w0deoV9Lx5RD", "A1l2XcrciYNEzvSZ", "IPkhSgORcz5S5Bvm"], "name": "gBLxh4ijFnE3Tam6", "shardLimit": 33, "type": "Nzy1adnSKOLFKx1d"}' \
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
    '{"description": "X4LuWJu3pDMUAeeZ", "isJoinable": true, "name": "7SBROPYuG6XqP6oo"}' \
    '7G73zdxTgOfnwIdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateTopic' test.out

#- 11 AdminDeleteTopic
$PYTHON -m $MODULE 'chat-admin-delete-topic' \
    'Na29fDLh741IslKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteTopic' test.out

#- 12 AdminBanTopicMembers
$PYTHON -m $MODULE 'chat-admin-ban-topic-members' \
    '{"userIds": ["zGlLKWUtDQs61OQA", "oxyyQpRWCiiPDGQh", "NPEwiJCf2XJVrlzq"]}' \
    'Qls1ozhLVA3kE8jK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminBanTopicMembers' test.out

#- 13 AdminChannelTopicInfo
$PYTHON -m $MODULE 'chat-admin-channel-topic-info' \
    'vgatOEBM70TdlNBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminChannelTopicInfo' test.out

#- 14 AdminTopicChatHistory
eval_tap 0 14 'AdminTopicChatHistory # SKIP deprecated' test.out

#- 15 AdminSendChat
$PYTHON -m $MODULE 'chat-admin-send-chat' \
    '{"message": "YOmpu1VCarzBsV6x", "metadata": "nZ5Jrzzjrcaug6CW"}' \
    'VG8SWP3glU6muswV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminSendChat' test.out

#- 16 AdminDeleteChat
$PYTHON -m $MODULE 'chat-admin-delete-chat' \
    'JnNnN7kAa7j0riFc' \
    '5HTHQIoVsGo7dwV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeleteChat' test.out

#- 17 AdminTopicMembers
$PYTHON -m $MODULE 'chat-admin-topic-members' \
    'DBqFKHQkETJyTlUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminTopicMembers' test.out

#- 18 AdminTopicShards
$PYTHON -m $MODULE 'chat-admin-topic-shards' \
    'wDTnoujQD4IEiH9Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminTopicShards' test.out

#- 19 AdminUnbanTopicMembers
$PYTHON -m $MODULE 'chat-admin-unban-topic-members' \
    '{"userIds": ["5qXn3aoRtlqOECoh", "ViHA5CzgFSy8X1A3", "PrIfapq5AAeMe4L3"]}' \
    'mDWORBVXTIIJM9Xs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUnbanTopicMembers' test.out

#- 20 AdminAddTopicMember
$PYTHON -m $MODULE 'chat-admin-add-topic-member' \
    '{"isAdmin": true}' \
    'IIZxiXNMR9BgaWcF' \
    'X3SUBhyoTsMWPAxU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminAddTopicMember' test.out

#- 21 AdminRemoveTopicMember
$PYTHON -m $MODULE 'chat-admin-remove-topic-member' \
    'MkawaGpAyrIwMif3' \
    'BOdkocVTd4BxqGWV' \
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
    '6mTJ0sQs6XNbjvqh' \
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
    '{"userIDs": ["nUVLWu8olKdxL6oz", "RmDD0jJvlfV5OemP", "YdYT7DROCjtuzFMb"]}' \
    'AG9YI89hmguB8FOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicBanTopicMembers' test.out

#- 27 PublicChatHistory
$PYTHON -m $MODULE 'chat-public-chat-history' \
    'jMLo4b9rIzqYkEps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicChatHistory' test.out

#- 28 PublicDeleteChat
$PYTHON -m $MODULE 'chat-public-delete-chat' \
    'tyVTBcrM8rG0rH0z' \
    'cswwVeMK6MbGIVIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeleteChat' test.out

#- 29 PublicMuteUser
$PYTHON -m $MODULE 'chat-public-mute-user' \
    '{"duration": 79, "userId": "vvwLc7KY3uVoJXTI"}' \
    'MtpgkieDyF97lGdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicMuteUser' test.out

#- 30 PublicUnbanTopicMembers
$PYTHON -m $MODULE 'chat-public-unban-topic-members' \
    '{"userIDs": ["iHKxbWCYzo8yO2KT", "K9tmmOnYnOpas6gh", "P1y4Zi7s7QBlk44Z"]}' \
    '44B1GZgKg4uKxaCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicUnbanTopicMembers' test.out

#- 31 PublicUnmuteUser
$PYTHON -m $MODULE 'chat-public-unmute-user' \
    '{"userId": "cGLuC3brWdTYCfHk"}' \
    'IySok5DiXZtLW87r' \
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
    '{"internalAccessLogEnabled": true, "logLevel": "info", "logLevelDB": "panic", "slowQueryThreshold": 37, "socketLogEnabled": false}' \
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
    '{"chatRateLimitBurst": 35, "chatRateLimitDuration": 23, "concurrentUsersLimit": 50, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "X3viLvtEk4mTIpUA", "filterParam": "9gxo8SV38nEhoXmM", "filterType": "2W7l6jHMA2rG3nak", "generalRateLimitBurst": 29, "generalRateLimitDuration": 95, "maxChatMessageLength": 32, "maxChatMetadataSize": 79, "shardCapacityLimit": 55, "shardDefaultLimit": 92, "shardHardLimit": 50, "spamChatBurst": 69, "spamChatDuration": 46, "spamMuteDuration": 80}' \
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
    '{"enabled": false, "expiresIn": 13, "hook": {"driver": "lu01nryEJ0NqoTow", "params": {"0qiOiC4j0iktm0ZP": {}, "LkLOsp0LZ5njN86H": {}, "l8kUXzt6bSc6bWvg": {}}}, "jsonSchema": {"pVyW9dD1kOmvrAej": {}, "cq2LgkQuaS7RBx3v": {}, "im02jBOxrZDyvpcL": {}}, "name": "YOWA8NjxOnaEok4n", "saveInbox": false, "sendNotification": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminAddInboxCategory' test.out

#- 41 AdminDeleteInboxCategory
$PYTHON -m $MODULE 'chat-admin-delete-inbox-category' \
    'CzfsflhjbngJOUn1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteInboxCategory' test.out

#- 42 AdminUpdateInboxCategory
$PYTHON -m $MODULE 'chat-admin-update-inbox-category' \
    '{"enabled": false, "expiresIn": 67, "hook": {"driver": "OJtxqMPpcVfRwNj5", "params": {"47fH0XrKEDpEY8Vn": {}, "ocGAjci0V3tBf2jn": {}, "HGKXphn50c9tNLDl": {}}}, "jsonSchema": {"jhZ2jxLRX3z46OCa": {}, "GBeMfPlNos4yBRjr": {}, "ERHEonAZR8GmEu0q": {}}, "saveInbox": false, "sendNotification": true}' \
    '6WQ5UBEU1QAOHfZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminUpdateInboxCategory' test.out

#- 43 AdminGetCategorySchema
$PYTHON -m $MODULE 'chat-admin-get-category-schema' \
    'GhxOdcuDXSxSc3aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetCategorySchema' test.out

#- 44 AdminListKafkaTopic
$PYTHON -m $MODULE 'chat-admin-list-kafka-topic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminListKafkaTopic' test.out

#- 45 AdminDeleteInboxMessage
$PYTHON -m $MODULE 'chat-admin-delete-inbox-message' \
    'PV87pna08gxefTYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteInboxMessage' test.out

#- 46 AdminGetInboxMessages
$PYTHON -m $MODULE 'chat-admin-get-inbox-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetInboxMessages' test.out

#- 47 AdminSaveInboxMessage
$PYTHON -m $MODULE 'chat-admin-save-inbox-message' \
    '{"category": "huxaEc7M4P7UckSC", "expiredAt": 75, "message": {"ePeN8i4GrFES9z7x": {}, "ueHpATHccee9GXhK": {}, "cjmSEwdrkEnnqKzF": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["fYalUlfwEQKjU7eH", "GebSVu0LQ40kepEa", "C4dfiOMZfEhHr39p"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminSaveInboxMessage' test.out

#- 48 AdminUnsendInboxMessage
$PYTHON -m $MODULE 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["ysFO3Zvc1BZG99Ly", "vfvHEsJKQQewVLMU", "oAnaRcYp7FUjfIGa"]}' \
    'ffoflEIByYqeKN0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUnsendInboxMessage' test.out

#- 49 AdminGetInboxUsers
$PYTHON -m $MODULE 'chat-admin-get-inbox-users' \
    'eGelYF5wWaDhukU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetInboxUsers' test.out

#- 50 AdminUpdateInboxMessage
$PYTHON -m $MODULE 'chat-admin-update-inbox-message' \
    '{"expiredAt": 21, "message": {"vWgSHdfo07UctPEr": {}, "qxyMyOK06MqQBErx": {}, "gjVBycvU4PbmRDcr": {}}, "scope": "NAMESPACE", "userIds": ["qymxLD1Lcvw6T6mZ", "EiwxxElpMYSWIeVz", "m7z9noowmlTIKVow"]}' \
    'i0RY2VN4ZONJREdU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminUpdateInboxMessage' test.out

#- 51 AdminSendInboxMessage
$PYTHON -m $MODULE 'chat-admin-send-inbox-message' \
    '{}' \
    'Q3z9F1BxNNgnke4a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminSendInboxMessage' test.out

#- 52 AdminGetInboxStats
$PYTHON -m $MODULE 'chat-admin-get-inbox-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminGetInboxStats' test.out

#- 53 AdminGetChatSnapshot
$PYTHON -m $MODULE 'chat-admin-get-chat-snapshot' \
    'kncw7wu9TmXfJWBP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetChatSnapshot' test.out

#- 54 AdminDeleteChatSnapshot
$PYTHON -m $MODULE 'chat-admin-delete-chat-snapshot' \
    'rx9Ns8eLzYEvwSWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminDeleteChatSnapshot' test.out

#- 55 AdminProfanityQuery
$PYTHON -m $MODULE 'chat-admin-profanity-query' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminProfanityQuery' test.out

#- 56 AdminProfanityCreate
$PYTHON -m $MODULE 'chat-admin-profanity-create' \
    '{"falseNegative": ["aLQjctvrK2jhsYpK", "PlXn77AtYoFzLAAT", "PY8P8P3cfoivvQxe"], "falsePositive": ["vecWw7Rry0KK5rgA", "GO0dW8rX2MVUGKSZ", "4GcLkt4pK32sJxlZ"], "word": "cCTpTdRtCHvuk6B6", "wordType": "XTmSLyn50sigBVZx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminProfanityCreate' test.out

#- 57 AdminProfanityCreateBulk
$PYTHON -m $MODULE 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{"falseNegative": ["iKdV57GvRyd9UuL0", "2Le8HSCslsDd4M1F", "5qRIblS7Nz81GRaz"], "falsePositive": ["PAANjfBoldFOyqA2", "clJ5gEOaCgM6Yn6R", "ugbNEIpGBFUjOn5m"], "word": "M7k8nbLzvtCIW5yn", "wordType": "MKquUicAeIVXtoWA"}, {"falseNegative": ["XhMlW4tLqX7OICf5", "oD1e6oI9FmYel0kO", "w72o8Zkgk0jS6rDW"], "falsePositive": ["UwfhKvrf2AaH4yCW", "rHSppnIZkNnTn3rz", "H5NvAtcvNedgS1fU"], "word": "fKmihDbmu8ePWlQM", "wordType": "VDXEHeiGTnwyEw6h"}, {"falseNegative": ["IWDZrpP7rz3ISW51", "0kHr4isTKWjmv67n", "uHCXWfwnwGioVwVz"], "falsePositive": ["mmBVVFfpqx1AeLtz", "cPJ3jtDYBo4FUTH7", "CGfKSyxgRR1DiCqS"], "word": "MzpqIFGLkDs7ACC1", "wordType": "RgBfoNrHlFi2qJLg"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminProfanityCreateBulk' test.out

#- 58 AdminProfanityExport
$PYTHON -m $MODULE 'chat-admin-profanity-export' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminProfanityExport' test.out

#- 59 AdminProfanityGroup
$PYTHON -m $MODULE 'chat-admin-profanity-group' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminProfanityGroup' test.out

#- 60 AdminProfanityImport
$PYTHON -m $MODULE 'chat-admin-profanity-import' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminProfanityImport' test.out

#- 61 AdminProfanityUpdate
$PYTHON -m $MODULE 'chat-admin-profanity-update' \
    '{"falseNegative": ["mBLE35YhyiDV90Se", "I5yppBHoytVznCgN", "yx9fbT63ShEh8PbG"], "falsePositive": ["ikLjgjcj34uulU6F", "YBZsWFbr3RSP0W9n", "Bhvhf8Q0DtJMcYQd"], "word": "N66bswAgt65X4N1L", "wordType": "QZmB61JMdtwCVUrY"}' \
    'Que84dwmbwFEnAZa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminProfanityUpdate' test.out

#- 62 AdminProfanityDelete
$PYTHON -m $MODULE 'chat-admin-profanity-delete' \
    'WsQJtRYoagRJK5PX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminProfanityDelete' test.out

#- 63 PublicGetMessages
$PYTHON -m $MODULE 'chat-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGetMessages' test.out

#- 64 PublicGetConfigV1
$PYTHON -m $MODULE 'chat-public-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicGetConfigV1' test.out

#- 65 PublicGetChatSnapshot
$PYTHON -m $MODULE 'chat-public-get-chat-snapshot' \
    '9UcOvhPyE11TRT2S' \
    'Kseoe8VLie0LBa36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetChatSnapshot' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
