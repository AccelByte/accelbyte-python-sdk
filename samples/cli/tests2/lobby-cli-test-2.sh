#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error > test.out 2>&1 << END
lobby-get-user-friends-updated --login_with_auth "Bearer foo"
lobby-get-user-incoming-friends --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends --login_with_auth "Bearer foo"
lobby-user-request-friend '{"friendId": "FtBxyZcD"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "XBpGlsQu"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "Ju8vMf0I"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "sJkTrd8I"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'DcV2zXnT' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "KjXY1bPq"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["amiBxx9C"]}' 's18EY84e' --login_with_auth "Bearer foo"
lobby-personal-chat-history 'kItqRzHU' '1oh570KQ' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'BVaewc72' 'krSha68n' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 31, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 72, "chatRateLimitDuration": 24, "concurrentUsersLimit": 68, "disableInvitationOnJoinParty": true, "enableChat": true, "entitlementCheck": false, "entitlementItemID": "NEUsxFb8", "generalRateLimitBurst": 56, "generalRateLimitDuration": 70, "keepPresenceActivityOnDisconnect": true, "maxPartyMember": 70, "profanityFilter": false, "readyConsentTimeout": 77}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'SxECbZby' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "gyoarORo", "topicName": "eNHSb8Rh", "userIds": ["3kgs9qqJ"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "bnQsoBgi", "topicName": "VpP8Cm3y"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "vASUoxdx", "topicName": "xFqmAGTJ"}' '8IEdagEt' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"p4w29KOu": "9c19R6XD"}, "templateLanguage": "qWHkkP8n", "templateSlug": "pLEKMfji", "topicName": "X7jpkVZk"}' '3IaQYEmq' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "GodOEGt9", "templateLanguage": "gPOj0c6i", "templateSlug": "0JkvIas7"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"3ucYnFAJ": "3DK5T4Eo"}, "templateLanguage": "gg0Y39Uo", "templateSlug": "Ylpv5bVA", "topicName": "gtsDhUTD"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'UscbQDjb' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'TQuPMz2P' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'TRlkyU89' 'ZPOw6zPF' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "J42cwmzB"}' 'BSMNcoAA' 'OjKNjfcY' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'Hm093aYg' 'BU1sqjyK' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin '0XH45PaR' 'SOFQBtu2' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "3REZ8hRV", "topicName": "X7LGOvDd"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'YiQS9i7m' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "V1C91pjG"}' '9gpxL6yc' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'TQdvln2L' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "AuSQWEXL", "topicName": "6LFE1YHo"}' '9m126ZWc' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"8hHtWvbN": "YqgUqslA"}, "templateLanguage": "rFPiHUIv", "templateSlug": "aCv8kU9d", "topicName": "BBpdsJLh"}' 'sVyExrkx' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 'oot0B7WO' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"fercZdpM": {}}, "updatedAt": 5}' 'i37Ds7YS' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 'fExaI3uz' 'LteMbFAl' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 't4hr7HmO' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'YiBA5ltA' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"OXmlG6eh": "1dTdoTFp"}}' 'BIcuC1dQ' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'Y93OJnJ6' 'Te9vD8ld' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'z7Hu8AD7' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 '9kdWunvi' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["zU0q1pHy"]}' 'hhERoGgd' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "rysMizBG"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'SRdP2l7D' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "NSZ8Aq0X", "note": "iPLQXSe0"}' '7ZddOGTM' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "lJjBwj9H", "note": "JHQKseEd"}]}' 'SXRDSvgu' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[0]' 'uw1xT7eM' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "wSl9MLH0"}' 'NnTJ2ulN' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": true, "isMandatory": true, "name": "vwJaQa54"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "vA8RWSpa"}' 'bUt7xk6Q' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'xyWhfqoW' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "fJw2o8oW"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "UqvPCZ2H", "profanityLevel": "zT7NXmWD"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "lXsuNIdQ"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "JR5lsNOl"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'vkfwaSbn' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'suLCgTox' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"uVTekJgv": {}}, "updatedAt": 13}' '6h5HIpH0' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'DviplEk4' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "vj3LDp4y", "topic": "qDt8QUZD"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"pxlHasin": "GcjrkmRM"}, "templateLanguage": "ttgjDSaI", "templateSlug": "VBmft3Ud", "topic": "g7p9PGmY"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "2H5kX4Ms", "templateLanguage": "isSX28nA", "templateSlug": "RxWRpv5o"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'u5xtvd28' --login_with_auth "Bearer foo"
lobby-delete-template-slug 'OUfCt8UJ' --login_with_auth "Bearer foo"
lobby-get-localization-template 'C5flNyj6' 'HsTtX8P3' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "llnaaS9l"}' 'qyygPcfk' 'JIxfQZza' --login_with_auth "Bearer foo"
lobby-delete-template-localization '8kNVbDxV' 'Mq7HJk0F' --login_with_auth "Bearer foo"
lobby-publish-template '89xAc3YV' 'faENtrl0' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "pTKZTXqz", "topic": "HuBMYQSA"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name '2jz1ZOpd' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "OjSyMddB"}' '41JuMf7R' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'UyBHRj8I' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "iRimRllH", "topic": "T6Dc40vF"}' 'FA6gpU7E' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"W3x1dCpm": "55gOeqQI"}, "templateLanguage": "qcJVKmBM", "templateSlug": "1J1IbuTr", "topic": "rkbmuT1w"}' 'hOqmEnDX' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE