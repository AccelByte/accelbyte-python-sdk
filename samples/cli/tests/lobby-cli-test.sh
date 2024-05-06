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
lobby-get-user-friends-updated --login_with_auth "Bearer foo"
lobby-get-user-incoming-friends --login_with_auth "Bearer foo"
lobby-get-user-incoming-friends-with-time --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends-with-time --login_with_auth "Bearer foo"
lobby-get-user-friends-with-platform --login_with_auth "Bearer foo"
lobby-user-request-friend '{"friendId": "EAxcVpFrttufHIRd", "friendPublicId": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "W2ktQG0h5JAav5kR"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "a62WopBJHPtcDs8b"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "BZLCXLx8bbgorQeF"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'bQ1g7qbPngUNB1vR' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "odwpzS6DaDpv8N7Z"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["QVqGj6oDLjWjkY1a", "XlFcDtgOjchIua5t", "WEIC32ogW7olvbTg"]}' 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
lobby-bulk-delete-friends '{"friendIds": ["M4OI18mAQLnzjMf8", "GZ2WBZqxYG3aREAu", "2D6QVKNCWP75TB0i"]}' '7pKxR8dl0zRVW4EZ' --login_with_auth "Bearer foo"
lobby-sync-native-friends '[{"isLogin": false, "platformId": "9m0XcgGVbMqSszE8", "platformToken": "GHavj7AorKsxwkos", "psnEnv": "AVerXpc1C8XfwHuK"}, {"isLogin": false, "platformId": "LEzth6mXhzkzWkFe", "platformToken": "ZSoEAcBdW19m4eu6", "psnEnv": "d5tA5jUmiTqpyhPF"}, {"isLogin": false, "platformId": "qrhBRd8lDR6qVNPR", "platformToken": "ZYdFLIAjGGJddVCv", "psnEnv": "u9vx5KQ7KYnIuMBv"}]' --login_with_auth "Bearer foo"
lobby-sync-native-blocked-user '[{"platformId": "aO35llzQRaT5kPxU", "psnEnv": "fofvnnSuB0y5WUlr"}, {"platformId": "MdI4sNveabntBSxT", "psnEnv": "eIv53HGCiljvjKoy"}, {"platformId": "D6SCwGrncqmLtjQH", "psnEnv": "Af8TgoNm03VLisV6"}]' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": true, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 42, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 40, "chatRateLimitDuration": 47, "concurrentUsersLimit": 39, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "C6I3lMjGSWN2laRl", "generalRateLimitBurst": 48, "generalRateLimitDuration": 48, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 82, "maxFriendsLimit": 5, "maxPartyMember": 10, "profanityFilter": false, "readyConsentTimeout": 71, "unregisterDelay": 68}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'xPz6MbwL6IY69z1U' --login_with_auth "Bearer foo"
lobby-get-incoming-friend-requests 'aLqYSYWytLPziZMd' --login_with_auth "Bearer foo"
lobby-admin-list-friends-of-friends 'jxcBZufQxGiHPllG' --login_with_auth "Bearer foo"
lobby-get-outgoing-friend-requests '4cYEzfTD1ZBm3MqH' --login_with_auth "Bearer foo"
lobby-admin-get-global-config --login_with_auth "Bearer foo"
lobby-admin-update-global-config '{"regionRetryMapping": {"cUmLZZbSqb8RwNmn": ["9HrNQy4uZAAiE0mi", "t9RGCCHYzUOcEdsc", "KHPEqgA8yu7Vk6Jt"], "4Ymos9Jcdos4fYcT": ["VU6RBt0zYoMcHyCU", "EXlAvxJMdalwSyli", "WMNW5NyLu0M3VHh2"], "EI8JlDbPWbQ6Q9lN": ["mqRBaAkLnvxkT1X6", "8cmDc3fxU8MyKrQp", "M4hkkK6KKXNB3Gv0"]}, "regionURLMapping": ["IqmF51TkhjYnaq6f", "oWvXa3bMrXsDr6kI", "LsSSyDdmykmoPYgc"], "testGameMode": "2L4jk4Lo0LSP0pf4", "testRegionURLMapping": ["IxjUkl535X3ateEK", "DpADz1x3poD3Qgb3", "boLQQ1MzH7Qm8bwb"], "testTargetUserIDs": ["mXgdAPh1EThG96gA", "FKK2WDgCcxvONZm3", "EeERmDnyeFoF7VSZ"]}' --login_with_auth "Bearer foo"
lobby-admin-delete-global-config --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "6pf3vneSD2Tb3g7m", "topicName": "SQUhAEtrmjqU6YE3", "userIds": ["p4lSck0ZHn5GI39Y", "BHqaTHeKtW18iGeU", "lc9d9sogWa24CKNS"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "0GqVvUfHQvsHXNUN", "topicName": "e4mhgo5QB65lSAiY"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "nNjkfZrQvGgbLdLs", "topicName": "FzHkBMr1yrOMlNFS"}' 'rUEirnjX9fDmIbeZ' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"xzfTcyiuATus9hsf": "pFDcSDG8aMVGLiBN", "rDjqoxcwgGLXpUL4": "pp2ncYAHdNzDmeIP", "6rOvDz9KOsb392k6": "YmJFfRByjlBiuFM3"}, "templateLanguage": "FIoVk8T3GpAnkCmB", "templateSlug": "Uqg2SCnqntX9y1aZ", "topicName": "SWMiVi10sG6vxkfU"}' 'cmqRRbceJ5i0EeDx' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "OgBnhhqElIaDml48", "templateLanguage": "wdNFLTm5T50x9WT0", "templateSlug": "GfH2rtOa4EXsXzOX"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"QAk4mqrxzTtuLl4X": "lbGL8QOxtjzm8y2w", "NhmwoYZyI4EFZKBc": "YrCEAE7WIsfmx40N", "LRc6m8heKnWhzfe2": "NubeoKFeIaFQCYoD"}, "templateLanguage": "PICpnduEEQlULdJz", "templateSlug": "4mnRBkMNxvvKgAT8", "topicName": "mJrYq6hRkloqxM3g"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'pwxcfMy9XzjjI5Yb' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'sKoADkzJEN2VHzih' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin '3bit0VWn3CO39PXD' 'NxtXgeO3FgkXhjDz' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "aQY3snn2ZkP7cFdP"}' '43e5dC9XIBudfZgr' 'bHDIDm4hMzF4Txod' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'enSrUTvfqU0bfoMm' '5cTtFWbotQyXJRcQ' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'WsmqPNs92epxk0i8' 'VxsZNereSvf9699m' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "CEHThUJkETAsSp7g", "topicName": "h4TeUTkOkAYfJB8A"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'T9t4Tv207Y2QD3oD' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "5fLCr3OOlXVv8ZGF"}' '7uYnGzpipNDigNJm' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'a1MbqqZtfNWql4nm' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "wAft4gqkNNlWkD9e", "topicName": "OziYRFOn0jJLHC9L"}' 'xhvNXTwGBCtohLtl' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"9Zuhytm5UDrT6QXC": "s5SPBbRPZTF6oQAX", "VG7tnsZg5QgXjvyG": "JPN4eXbJE5Vs2Gcy", "omQoIXimBJehyxlN": "sjUgxBkF6wFPoJeQ"}, "templateLanguage": "ediogEhhM2rIizGd", "templateSlug": "KvOPdq5xrgxSmy1D", "topicName": "N9LFkYW5DQyj4bj5"}' 'Ro2ogaKt2ujQSa3Z' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'db65UXmy0Zp6iIaT' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"IKUkmkk9QM0NBMA9": {}, "ORxpzwLR2AK6eXUG": {}, "PJsw1fiP80G9Pclx": {}}, "updatedAt": 4}' 'rHHC3DpZxkrQDXuN' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'FviMarv8mnfHK8CC' 'mE2lPnsbD3SGEdlw' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'uUccE536ugBp3HBv' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-bulk-player-blocked-players-v1 '{"listBlockedUserId": ["epnDCjgyJlXe36mg", "WjLfFmteue9nzJ6f", "H24T805tVg8JqU0j"]}' --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'ZpjvsugAOS7u8RiW' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"yerCSa8SRgwsAj1i": "k1jglaDXTvKCWwNT", "Ahd2wrS0uPdjhdin": "png5BLy8wbhMssAH", "japIkY9Rf4wP57dB": "ZNR88YbCtmKy8M9z"}}' 'VrjfGXZnqAQUoY1G' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'jlIIk0iKoTTS1j02' 'o7JjTXAQN0qdskdQ' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'V0TqI8EFnmDbxIxi' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 '4YKlONk2Q5Y4Jvai' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["zwiilatuUjjt9lIM", "Gql5ElEa9EIIlGcH", "B3CfR3ncDlwi3v3M"]}' 'FFJ1KesKoELCpobB' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "EG8X645xpdXpai0r"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'YaT5hOPjaf3H0tYi' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "ghU0VUfcYHJbBfAK", "note": "SiPW3VgsZXiR1DJ7"}' 'HVWqMkNSawQUWDFJ' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "vJBWic7UkBeIXuqD", "note": "uAXI66bQ71w0deoV"}, {"filter": "9Lx5RDA1l2XcrciY", "note": "NEzvSZIPkhSgORcz"}, {"filter": "5S5BvmgBLxh4ijFn", "note": "E3Tam69qSZ7PC6f6"}]}' 'QkmZXElW9YfRSse6' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[54, 60, 55]' 'MUAeeZ97SBROPYuG' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "6XqP6oo7G73zdxTg"}' 'OfnwIdlNa29fDLh7' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": true, "name": "IslKHzGlLKWUtDQs"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": true, "isMandatory": false, "newName": "oxyyQpRWCiiPDGQh"}' 'NPEwiJCf2XJVrlzq' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'Qls1ozhLVA3kE8jK' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "vgatOEBM70TdlNBJ"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "YOmpu1VCarzBsV6x", "profanityLevel": "nZ5Jrzzjrcaug6CW"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "VG8SWP3glU6muswV"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "JnNnN7kAa7j0riFc"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 '5HTHQIoVsGo7dwV9' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"DBqFKHQkETJyTlUr": {}, "wDTnoujQD4IEiH9Z": {}, "5qXn3aoRtlqOECoh": {}}, "updatedAt": 97}' 'UJNvYuGRUvpZaHCu' --login_with_auth "Bearer foo"
lobby-public-set-party-limit-v1 '{"limit": 62}' 'rIfapq5AAeMe4L3m' --login_with_auth "Bearer foo"
lobby-public-player-block-players-v1 '{"blockedUserId": "DWORBVXTIIJM9XsY"}' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-public-unblock-player-v1 '{"userId": "IIZxiXNMR9BgaWcF"}' --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'X3SUBhyoTsMWPAxU' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "MkawaGpAyrIwMif3", "topic": "BOdkocVTd4BxqGWV"}' --login_with_auth "Bearer foo"
lobby-get-my-notifications --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"6mTJ0sQs6XNbjvqh": "nUVLWu8olKdxL6oz", "RmDD0jJvlfV5OemP": "YdYT7DROCjtuzFMb", "AG9YI89hmguB8FOT": "jMLo4b9rIzqYkEps"}, "templateLanguage": "tyVTBcrM8rG0rH0z", "templateSlug": "cswwVeMK6MbGIVIu", "topic": "8vvwLc7KY3uVoJXT"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "IMtpgkieDyF97lGd", "templateLanguage": "MiHKxbWCYzo8yO2K", "templateSlug": "TK9tmmOnYnOpas6g"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'hP1y4Zi7s7QBlk44' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'Z44B1GZgKg4uKxaC' --login_with_auth "Bearer foo"
lobby-get-localization-template 'gcGLuC3brWdTYCfH' 'kIySok5DiXZtLW87' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "rGysryod3dNQrmsA"}' 'pRA6HX3RwrKt2eco' 'zL0TOg54vCE48L5o' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'LF6M4lNa4JUMSHNg' 'qRqCV7usamANkZlO' --login_with_auth "Bearer foo"
lobby-publish-template 'X9Sfo95HgXqKhTPk' 'wfLM9uSybRzWek2g' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "ZvRrvr0n9d9lvccK", "topic": "MLhrTrcBE2ItBS3K"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'tKZWe8aoFzAyBME7' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "4HUtipUWYhWV1qx8"}' 'CzPML52faXUr9Sk4' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'lq2faBcAXXKlhvyH' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "8paOJtxqMPpcVfRw", "topic": "Nj547fH0XrKEDpEY"}' '8VnocGAjci0V3tBf' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"2jnHGKXphn50c9tN": "LDljhZ2jxLRX3z46", "OCaGBeMfPlNos4yB": "RjrERHEonAZR8GmE", "u0q1p6QCyY6vSkVF": "WdsbYuVEGVxYheR3"}, "templateLanguage": "j5mNZ6vwv7K8Asvt", "templateSlug": "1j1Rx59hesNWy2Nv", "topic": "Z85DDKDAF8KDsBZO"}' 'uYQJ03BAHZ7c53q7' --login_with_auth "Bearer foo"
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
echo "1..105"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetUserFriendsUpdated
$PYTHON -m $MODULE 'lobby-get-user-friends-updated' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetUserFriendsUpdated' test.out

#- 3 GetUserIncomingFriends
$PYTHON -m $MODULE 'lobby-get-user-incoming-friends' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetUserIncomingFriends' test.out

#- 4 GetUserIncomingFriendsWithTime
$PYTHON -m $MODULE 'lobby-get-user-incoming-friends-with-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetUserIncomingFriendsWithTime' test.out

#- 5 GetUserOutgoingFriends
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserOutgoingFriends' test.out

#- 6 GetUserOutgoingFriendsWithTime
$PYTHON -m $MODULE 'lobby-get-user-outgoing-friends-with-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetUserOutgoingFriendsWithTime' test.out

#- 7 GetUserFriendsWithPlatform
$PYTHON -m $MODULE 'lobby-get-user-friends-with-platform' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetUserFriendsWithPlatform' test.out

#- 8 UserRequestFriend
$PYTHON -m $MODULE 'lobby-user-request-friend' \
    '{"friendId": "akMpcmnnx6RVBrop", "friendPublicId": "9v7aZK3h65hbN15z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UserRequestFriend' test.out

#- 9 UserAcceptFriendRequest
$PYTHON -m $MODULE 'lobby-user-accept-friend-request' \
    '{"friendId": "fQSfQrtfF3TQN0Oc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'UserAcceptFriendRequest' test.out

#- 10 UserCancelFriendRequest
$PYTHON -m $MODULE 'lobby-user-cancel-friend-request' \
    '{"friendId": "NDLr36vzohZyjMQA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserCancelFriendRequest' test.out

#- 11 UserRejectFriendRequest
$PYTHON -m $MODULE 'lobby-user-reject-friend-request' \
    '{"friendId": "g5mPYhrLTyU8Ohgf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UserRejectFriendRequest' test.out

#- 12 UserGetFriendshipStatus
$PYTHON -m $MODULE 'lobby-user-get-friendship-status' \
    'Y9JQYGF4bYXEcENx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UserGetFriendshipStatus' test.out

#- 13 UserUnfriendRequest
$PYTHON -m $MODULE 'lobby-user-unfriend-request' \
    '{"friendId": "9xZlAchob44lONDD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UserUnfriendRequest' test.out

#- 14 AddFriendsWithoutConfirmation
$PYTHON -m $MODULE 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["wMvgI0HlyPR7wZNi", "VsF6xG2mXEQdbzIV", "y8alncV7vWgSHdfo"]}' \
    '07UctPErqxyMyOK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddFriendsWithoutConfirmation' test.out

#- 15 BulkDeleteFriends
$PYTHON -m $MODULE 'lobby-bulk-delete-friends' \
    '{"friendIds": ["6MqQBErxgjVBycvU", "4PbmRDcrg0DjQjBE", "CXvea7H1m2lJFRZ3"]}' \
    'ZprZ60zMjhTHeh94' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkDeleteFriends' test.out

#- 16 SyncNativeFriends
$PYTHON -m $MODULE 'lobby-sync-native-friends' \
    '[{"isLogin": false, "platformId": "SenE5hCFkIf5weqZ", "platformToken": "18MH57l2Zsrh90ET", "psnEnv": "tYmGukz3MnlrjcHp"}, {"isLogin": false, "platformId": "B8Vj7rXFgDnDkdZ9", "platformToken": "bpjb1tdA3QhjCMW6", "psnEnv": "4f4XhIjSoTB2NMKt"}, {"isLogin": false, "platformId": "FzLAATPY8P8P3cfo", "platformToken": "ivvQxevecWw7Rry0", "psnEnv": "KK5rgAGO0dW8rX2M"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'SyncNativeFriends' test.out

#- 17 SyncNativeBlockedUser
$PYTHON -m $MODULE 'lobby-sync-native-blocked-user' \
    '[{"platformId": "VUGKSZ4GcLkt4pK3", "psnEnv": "2sJxlZcCTpTdRtCH"}, {"platformId": "vuk6B6XTmSLyn50s", "psnEnv": "igBVZxiKdV57GvRy"}, {"platformId": "d9UuL02Le8HSCsls", "psnEnv": "Dd4M1F5qRIblS7Nz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'SyncNativeBlockedUser' test.out

#- 18 AdminGetAllConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-all-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetAllConfigV1' test.out

#- 19 AdminGetConfigV1
$PYTHON -m $MODULE 'lobby-admin-get-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetConfigV1' test.out

#- 20 AdminUpdateConfigV1
$PYTHON -m $MODULE 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 53, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 55, "chatRateLimitDuration": 40, "concurrentUsersLimit": 55, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "AWc9x1aMjgGim51T", "generalRateLimitBurst": 63, "generalRateLimitDuration": 84, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 59, "maxFriendsLimit": 71, "maxPartyMember": 12, "profanityFilter": false, "readyConsentTimeout": 39, "unregisterDelay": 90}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateConfigV1' test.out

#- 21 AdminExportConfigV1
$PYTHON -m $MODULE 'lobby-admin-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminExportConfigV1' test.out

#- 22 AdminImportConfigV1
$PYTHON -m $MODULE 'lobby-admin-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminImportConfigV1' test.out

#- 23 GetListOfFriends
$PYTHON -m $MODULE 'lobby-get-list-of-friends' \
    'dIs0xf4czdt7zqmS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetListOfFriends' test.out

#- 24 GetIncomingFriendRequests
$PYTHON -m $MODULE 'lobby-get-incoming-friend-requests' \
    'KxOEQlVcx6GqsBq8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetIncomingFriendRequests' test.out

#- 25 AdminListFriendsOfFriends
$PYTHON -m $MODULE 'lobby-admin-list-friends-of-friends' \
    'vdhWVnuYLgpZehK0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminListFriendsOfFriends' test.out

#- 26 GetOutgoingFriendRequests
$PYTHON -m $MODULE 'lobby-get-outgoing-friend-requests' \
    'G2nmyuViB9kRTcSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetOutgoingFriendRequests' test.out

#- 27 AdminGetGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-get-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetGlobalConfig' test.out

#- 28 AdminUpdateGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-update-global-config' \
    '{"regionRetryMapping": {"dTnNYGeAfYFG3wSk": ["HKufBdS3ZOokZB4c", "XnAXyuGz6LlxHv8S", "wyagYvDJ3w3UNgIG"], "j2jZtEYT8sIPSE1X": ["XPzySa0sZoFS6xCO", "WMpyh9pMsQgb64EL", "bzDMwyo4nIRysQdb"], "ufXjYnSoIFeouC2m": ["38kXrDZWlGVE9sJ4", "NpUtKp6M9I6nEwnZ", "hsjwJeGwaPSDMZz9"]}, "regionURLMapping": ["5OYKiqaZD63xe5rr", "uJVfLGea0ZtlzUcu", "HAXz0UV31MfuGaXs"], "testGameMode": "AuGsZaSHevO0TQNE", "testRegionURLMapping": ["I3kfabxJWWSI1ECU", "o1NPpeFhUztXDgB7", "n4C97uAPP8PATLpU"], "testTargetUserIDs": ["pxeJlsBJT6Hh3OMj", "Ajq2mK8lbSEEelxn", "b5QxWG2HFnZlA6HK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateGlobalConfig' test.out

#- 29 AdminDeleteGlobalConfig
$PYTHON -m $MODULE 'lobby-admin-delete-global-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteGlobalConfig' test.out

#- 30 SendMultipleUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "WW4fI1IQcoBQELcN", "topicName": "lZkqTZrKgXNwvm4e", "userIds": ["5GX6H742OixhtAoK", "iVm6URT95XhnUcvW", "B28MpusuhhDJ5slz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'SendMultipleUsersFreeformNotificationV1Admin' test.out

#- 31 SendUsersFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "giWZEtyd56LfxnbY", "topicName": "97jjYgXchCbkXX26"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SendUsersFreeformNotificationV1Admin' test.out

#- 32 SendPartyFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-freeform-notification-v1-admin' \
    '{"message": "uEdCfQaMAQuTKfC0", "topicName": "I2kNjCMDtDMrentg"}' \
    'n3DhqciwIeShF9RK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SendPartyFreeformNotificationV1Admin' test.out

#- 33 SendPartyTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-party-templated-notification-v1-admin' \
    '{"templateContext": {"b9vvxuJlhXbWhbwP": "wToC6knjVwVnzaqS", "fJiQFC2gXoda0kg1": "6yUSpSOAjHJWwfCj", "YwWkLob9gKLqs2nE": "ZhpByfHZinxNfgPA"}, "templateLanguage": "wkMBsznlBUqnLT4A", "templateSlug": "bGptKaWNvPbpg7yr", "topicName": "RvXfZ6rvgvEY3Hht"}' \
    '1SwqTsKKKo37NHDO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SendPartyTemplatedNotificationV1Admin' test.out

#- 34 GetAllNotificationTemplatesV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-templates-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetAllNotificationTemplatesV1Admin' test.out

#- 35 CreateNotificationTemplateV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "Qe91Ps3ztUIV0dS6", "templateLanguage": "hIH9c4VfkyrwpuXx", "templateSlug": "baERbfgPmi0eHkt1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreateNotificationTemplateV1Admin' test.out

#- 36 SendUsersTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"mr9EOIFg0dnWIYN2": "NVL70Iw157g00jr9", "b8MuYmmeKTmBNvGY": "xEQdf3ewoGGoY7xm", "FNAmjDDCvs78mcMd": "iS76YApGJ9ufwLYk"}, "templateLanguage": "qIgLuZS6hsQryiEt", "templateSlug": "OAbpeUNf26UqkCfg", "topicName": "CUYBn2xaOBdPF0Jm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SendUsersTemplatedNotificationV1Admin' test.out

#- 37 GetTemplateSlugLocalizationsTemplateV1Admin
$PYTHON -m $MODULE 'lobby-get-template-slug-localizations-template-v1-admin' \
    'X8qwU1cTuHHPB5S3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetTemplateSlugLocalizationsTemplateV1Admin' test.out

#- 38 DeleteNotificationTemplateSlugV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-template-slug-v1-admin' \
    'DvPRCzBrVUxmDOj3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteNotificationTemplateSlugV1Admin' test.out

#- 39 GetSingleTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-get-single-template-localization-v1-admin' \
    'cvRFaTC11W0TGTCm' \
    '4fZWuk6pQxDQpKqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetSingleTemplateLocalizationV1Admin' test.out

#- 40 UpdateTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "LGeMvr9TsvcMQ7dB"}' \
    'saIecRxIsZvD6rmz' \
    'Vr5XT1Nxw0v1dMQ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateTemplateLocalizationV1Admin' test.out

#- 41 DeleteTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-delete-template-localization-v1-admin' \
    'Rrbk6C2cVWf6ttvb' \
    'U1PO6ApCD2VXidT7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteTemplateLocalizationV1Admin' test.out

#- 42 PublishTemplateLocalizationV1Admin
$PYTHON -m $MODULE 'lobby-publish-template-localization-v1-admin' \
    'w0Oc15N8WXBPp17P' \
    'AewqSm5x3B4t7WQn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublishTemplateLocalizationV1Admin' test.out

#- 43 GetAllNotificationTopicsV1Admin
$PYTHON -m $MODULE 'lobby-get-all-notification-topics-v1-admin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetAllNotificationTopicsV1Admin' test.out

#- 44 CreateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-create-notification-topic-v1-admin' \
    '{"description": "p8jXZedgt5cyNe27", "topicName": "HLtwtVOaxgP6Jbct"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreateNotificationTopicV1Admin' test.out

#- 45 GetNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-get-notification-topic-v1-admin' \
    '8puMybYGxD9IPmms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetNotificationTopicV1Admin' test.out

#- 46 UpdateNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-update-notification-topic-v1-admin' \
    '{"description": "Lmu3kaPj0O4zd8Tb"}' \
    '7cUNGPTBxiFFCrn7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateNotificationTopicV1Admin' test.out

#- 47 DeleteNotificationTopicV1Admin
$PYTHON -m $MODULE 'lobby-delete-notification-topic-v1-admin' \
    'djjs69FTFVGUVhvK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteNotificationTopicV1Admin' test.out

#- 48 SendSpecificUserFreeformNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "hJCmeisql14mUHVb", "topicName": "MPimNhcZsU3VAdMD"}' \
    'cb4qlkiFAamqvZI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'SendSpecificUserFreeformNotificationV1Admin' test.out

#- 49 SendSpecificUserTemplatedNotificationV1Admin
$PYTHON -m $MODULE 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"KwjqPBiWXade41s3": "rH34mB2yPlRpWjmH", "ZAAvKTH8MuqIg0Cz": "kguwuJCW7EEFB67A", "ODbi9BzupBsFpYc7": "7GtRUcCFeY5g4XgB"}, "templateLanguage": "sbfzqxBPNe8ae1Il", "templateSlug": "4aAtEbu4IjGdqthR", "topicName": "xTjQ7gkZEY8rG0q0"}' \
    'Q2Qd2JzRbkF2I03d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'SendSpecificUserTemplatedNotificationV1Admin' test.out

#- 50 AdminGetPartyDataV1
$PYTHON -m $MODULE 'lobby-admin-get-party-data-v1' \
    'IjvBbA6bfbYaJCJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetPartyDataV1' test.out

#- 51 AdminUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-admin-update-party-attributes-v1' \
    '{"custom_attribute": {"fk2TUvn95FhO7VW3": {}, "mbDVMDu87t0ldWf7": {}, "iSGIiKFtWtn4Yr2s": {}}, "updatedAt": 43}' \
    'J1QHZQxPRXH7uxBJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminUpdatePartyAttributesV1' test.out

#- 52 AdminJoinPartyV1
$PYTHON -m $MODULE 'lobby-admin-join-party-v1' \
    'EECQE1li3Bg7Jxc9' \
    'pUnZmvhidwCkZwqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AdminJoinPartyV1' test.out

#- 53 AdminGetUserPartyV1
$PYTHON -m $MODULE 'lobby-admin-get-user-party-v1' \
    'YLfTiCO1NDBvQvRP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AdminGetUserPartyV1' test.out

#- 54 AdminGetLobbyCCU
$PYTHON -m $MODULE 'lobby-admin-get-lobby-ccu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AdminGetLobbyCCU' test.out

#- 55 AdminGetBulkPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["nAz4VzW0CpoBCbyJ", "sF5IjF1c0W338HS6", "CBgVRyihYNZ84CVh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AdminGetBulkPlayerBlockedPlayersV1' test.out

#- 56 AdminGetAllPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-all-player-session-attribute' \
    'ziXV8HwSmvcvcDKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AdminGetAllPlayerSessionAttribute' test.out

#- 57 AdminSetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-set-player-session-attribute' \
    '{"attributes": {"19yVRafCjOuSYht8": "3AdvBaagTiRJ8daG", "TVX3Bb7jlz5IfHgK": "jI9mwJSrN8jkIykR", "2zbaI6PD7fEscShn": "GUGUtV9GJ279GDbL"}}' \
    'Nwjm3FK0nnX2poMf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AdminSetPlayerSessionAttribute' test.out

#- 58 AdminGetPlayerSessionAttribute
$PYTHON -m $MODULE 'lobby-admin-get-player-session-attribute' \
    'Z1hDHtbh4HtMlFgv' \
    'h2Dp2SoiIPp1yvfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AdminGetPlayerSessionAttribute' test.out

#- 59 AdminGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-players-v1' \
    'HS0VgLu11A3HTovF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AdminGetPlayerBlockedPlayersV1' test.out

#- 60 AdminGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-admin-get-player-blocked-by-players-v1' \
    'i4tPAGfleyCA6jEt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AdminGetPlayerBlockedByPlayersV1' test.out

#- 61 AdminBulkBlockPlayersV1
$PYTHON -m $MODULE 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["cqsnzoVILjkwW61d", "uF87aUyrdt4XSpWB", "AetsanzqP8oxfrtb"]}' \
    'ECD1CYPwaiBAxfYL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AdminBulkBlockPlayersV1' test.out

#- 62 AdminDebugProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-debug-profanity-filters' \
    '{"text": "8Avt70ZUT2fSk3LL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AdminDebugProfanityFilters' test.out

#- 63 AdminGetProfanityListFiltersV1
$PYTHON -m $MODULE 'lobby-admin-get-profanity-list-filters-v1' \
    '0calqxEewuGS469k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'AdminGetProfanityListFiltersV1' test.out

#- 64 AdminAddProfanityFilterIntoList
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filter-into-list' \
    '{"filter": "2hG0WKt4sUmanYxM", "note": "0UHZVNYzGMNIpWoS"}' \
    'LkUrfuf4U3WeYeA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'AdminAddProfanityFilterIntoList' test.out

#- 65 AdminAddProfanityFilters
$PYTHON -m $MODULE 'lobby-admin-add-profanity-filters' \
    '{"filters": [{"filter": "t2ENKKWrFtHIi1CM", "note": "gKAOG5iDcCR5PbCv"}, {"filter": "DLil8wj9cKM3Ar6M", "note": "F35hCER4nGmWGgTJ"}, {"filter": "fHlJl4tHGa4XfZcd", "note": "9CVnGqMX9FieeEss"}]}' \
    'WEUl07bhwntCVqiY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'AdminAddProfanityFilters' test.out

#- 66 AdminImportProfanityFiltersFromFile
$PYTHON -m $MODULE 'lobby-admin-import-profanity-filters-from-file' \
    '[83, 91, 72]' \
    'lKNchPHNL4X3LLaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'AdminImportProfanityFiltersFromFile' test.out

#- 67 AdminDeleteProfanityFilter
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-filter' \
    '{"filter": "PGdqLE8SohhhuiTn"}' \
    'JarYYkHBDdSzBXdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'AdminDeleteProfanityFilter' test.out

#- 68 AdminGetProfanityLists
$PYTHON -m $MODULE 'lobby-admin-get-profanity-lists' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'AdminGetProfanityLists' test.out

#- 69 AdminCreateProfanityList
$PYTHON -m $MODULE 'lobby-admin-create-profanity-list' \
    '{"isEnabled": false, "isMandatory": true, "name": "Pmv34h6T7Esufmfx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AdminCreateProfanityList' test.out

#- 70 AdminUpdateProfanityList
$PYTHON -m $MODULE 'lobby-admin-update-profanity-list' \
    '{"isEnabled": true, "isMandatory": true, "newName": "E3fsNy9Z9OhxXvCp"}' \
    '9y7fLD2qfCXnlUnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AdminUpdateProfanityList' test.out

#- 71 AdminDeleteProfanityList
$PYTHON -m $MODULE 'lobby-admin-delete-profanity-list' \
    'xT1WsRNMZcA92hzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AdminDeleteProfanityList' test.out

#- 72 AdminGetProfanityRule
$PYTHON -m $MODULE 'lobby-admin-get-profanity-rule' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'AdminGetProfanityRule' test.out

#- 73 AdminSetProfanityRuleForNamespace
$PYTHON -m $MODULE 'lobby-admin-set-profanity-rule-for-namespace' \
    '{"rule": "7MNa8vVe4MHX6AgM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'AdminSetProfanityRuleForNamespace' test.out

#- 74 AdminVerifyMessageProfanityResponse
$PYTHON -m $MODULE 'lobby-admin-verify-message-profanity-response' \
    '{"message": "ep90AyyUJyAK5PRM", "profanityLevel": "RMwdvl0hv6g62GxB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'AdminVerifyMessageProfanityResponse' test.out

#- 75 AdminGetThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-get-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'AdminGetThirdPartyConfig' test.out

#- 76 AdminUpdateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-update-third-party-config' \
    '{"apiKey": "W2tQF5tkTjgJaMYv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'AdminUpdateThirdPartyConfig' test.out

#- 77 AdminCreateThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-create-third-party-config' \
    '{"apiKey": "NQOsDa4bkcgepqtx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'AdminCreateThirdPartyConfig' test.out

#- 78 AdminDeleteThirdPartyConfig
$PYTHON -m $MODULE 'lobby-admin-delete-third-party-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'AdminDeleteThirdPartyConfig' test.out

#- 79 PublicGetMessages
$PYTHON -m $MODULE 'lobby-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicGetMessages' test.out

#- 80 PublicGetPartyDataV1
$PYTHON -m $MODULE 'lobby-public-get-party-data-v1' \
    'jbrztee7QLTGAak7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicGetPartyDataV1' test.out

#- 81 PublicUpdatePartyAttributesV1
$PYTHON -m $MODULE 'lobby-public-update-party-attributes-v1' \
    '{"custom_attribute": {"Kaol01DK97D2xnik": {}, "42miteR5eQAe1rzm": {}, "mgqBPRmd6mO4oI8K": {}}, "updatedAt": 61}' \
    'm9yEYWNGMy2pgSGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdatePartyAttributesV1' test.out

#- 82 PublicSetPartyLimitV1
$PYTHON -m $MODULE 'lobby-public-set-party-limit-v1' \
    '{"limit": 96}' \
    'EkvI4oxZEDxGiBnN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicSetPartyLimitV1' test.out

#- 83 PublicPlayerBlockPlayersV1
$PYTHON -m $MODULE 'lobby-public-player-block-players-v1' \
    '{"blockedUserId": "bn0zaf7CaOSlHXrU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPlayerBlockPlayersV1' test.out

#- 84 PublicGetPlayerBlockedPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicGetPlayerBlockedPlayersV1' test.out

#- 85 PublicGetPlayerBlockedByPlayersV1
$PYTHON -m $MODULE 'lobby-public-get-player-blocked-by-players-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicGetPlayerBlockedByPlayersV1' test.out

#- 86 PublicUnblockPlayerV1
$PYTHON -m $MODULE 'lobby-public-unblock-player-v1' \
    '{"userId": "SA6sMJzA5mtqISQ8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicUnblockPlayerV1' test.out

#- 87 UsersPresenceHandlerV1
$PYTHON -m $MODULE 'lobby-users-presence-handler-v1' \
    '3TTbtefXWznDe4LQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UsersPresenceHandlerV1' test.out

#- 88 FreeFormNotification
$PYTHON -m $MODULE 'lobby-free-form-notification' \
    '{"message": "dXfFBii2RAMEX5RM", "topic": "jBFVZGYzQqV8d9mD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'FreeFormNotification' test.out

#- 89 GetMyNotifications
$PYTHON -m $MODULE 'lobby-get-my-notifications' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetMyNotifications' test.out

#- 90 NotificationWithTemplate
$PYTHON -m $MODULE 'lobby-notification-with-template' \
    '{"templateContext": {"dUIoiIJFNxuNOmUS": "Ww18T1IxVWCxdvPL", "9e4P01vxP8xj1LyE": "irURERnEMzpImW6s", "jAHyCK5tNanGBrkz": "Uvck3xTtmOFMebS4"}, "templateLanguage": "AdlNzwog2IhErkNh", "templateSlug": "NcECWwchW6zL9Skb", "topic": "LlrNXnGanMazb8jv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'NotificationWithTemplate' test.out

#- 91 GetGameTemplate
$PYTHON -m $MODULE 'lobby-get-game-template' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGameTemplate' test.out

#- 92 CreateTemplate
$PYTHON -m $MODULE 'lobby-create-template' \
    '{"templateContent": "RWenURH48aJuALEc", "templateLanguage": "SqcE15u6D31DjOsr", "templateSlug": "s3CUYATdqnQGbqiq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'CreateTemplate' test.out

#- 93 GetSlugTemplate
$PYTHON -m $MODULE 'lobby-get-slug-template' \
    'OkNeATj7eGjodd7C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetSlugTemplate' test.out

#- 94 DeleteTemplateSlug
$PYTHON -m $MODULE 'lobby-delete-template-slug' \
    'cJUrI6MAugK5kypN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'DeleteTemplateSlug' test.out

#- 95 GetLocalizationTemplate
$PYTHON -m $MODULE 'lobby-get-localization-template' \
    'rp2nFe9FmN86sK5L' \
    'Oq4ft5jGcMICPUYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetLocalizationTemplate' test.out

#- 96 UpdateLocalizationTemplate
$PYTHON -m $MODULE 'lobby-update-localization-template' \
    '{"templateContent": "fG6jl9U4jReteIMg"}' \
    'zISomCsodJrhQW41' \
    'q2OspCZbt3Uta5I0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateLocalizationTemplate' test.out

#- 97 DeleteTemplateLocalization
$PYTHON -m $MODULE 'lobby-delete-template-localization' \
    'uGcL1koyHjCH5olY' \
    'LETRpABAmO2EGvJ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'DeleteTemplateLocalization' test.out

#- 98 PublishTemplate
$PYTHON -m $MODULE 'lobby-publish-template' \
    'UMS93yOxNInDByhn' \
    'oluO6ti0QP2ssiJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'PublishTemplate' test.out

#- 99 GetTopicByNamespace
$PYTHON -m $MODULE 'lobby-get-topic-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'GetTopicByNamespace' test.out

#- 100 CreateTopic
$PYTHON -m $MODULE 'lobby-create-topic' \
    '{"description": "6OzOj84O6tgohjtC", "topic": "7bzjPpucddXJ5zif"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'CreateTopic' test.out

#- 101 GetTopicByTopicName
$PYTHON -m $MODULE 'lobby-get-topic-by-topic-name' \
    'F8y959anrNSleywH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetTopicByTopicName' test.out

#- 102 UpdateTopicByTopicName
$PYTHON -m $MODULE 'lobby-update-topic-by-topic-name' \
    '{"description": "bHig6IKWVZ77KeRW"}' \
    'dECaFGzfZ2hxcJ2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'UpdateTopicByTopicName' test.out

#- 103 DeleteTopicByTopicName
$PYTHON -m $MODULE 'lobby-delete-topic-by-topic-name' \
    'nemn7M23SzUo4hNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'DeleteTopicByTopicName' test.out

#- 104 FreeFormNotificationByUserID
$PYTHON -m $MODULE 'lobby-free-form-notification-by-user-id' \
    '{"message": "Dh9ZFP1OW0nXOErQ", "topic": "PS4VsRoYIK69yg9A"}' \
    'DCGiXaLs2xjHkinO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'FreeFormNotificationByUserID' test.out

#- 105 NotificationWithTemplateByUserID
$PYTHON -m $MODULE 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"D975nARHCmhNHSXu": "qIHsxvaUoXDmwWsu", "kxncuD3QxCXMd00Y": "BWCaVVmM45mfIZsW", "hkS476dGGJwJ00UH": "197MJ6zU7JLMQyMW"}, "templateLanguage": "zYQCAaPJgoxGJoJa", "templateSlug": "SzUtY4ZD0Xtb0U4p", "topic": "H16NUsVY21NVIs7N"}' \
    'Ren2Y3Ns0QJQeaWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'NotificationWithTemplateByUserID' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
