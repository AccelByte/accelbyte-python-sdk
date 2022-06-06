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

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
lobby-get-user-friends-updated --login_with_auth "Bearer foo"
lobby-get-user-incoming-friends --login_with_auth "Bearer foo"
lobby-get-user-outgoing-friends --login_with_auth "Bearer foo"
lobby-user-request-friend '{"friendId": "FtBxyZcD", "friendPublicId": "XBpGlsQu"}' --login_with_auth "Bearer foo"
lobby-user-accept-friend-request '{"friendId": "Ju8vMf0I"}' --login_with_auth "Bearer foo"
lobby-user-cancel-friend-request '{"friendId": "sJkTrd8I"}' --login_with_auth "Bearer foo"
lobby-user-reject-friend-request '{"friendId": "DcV2zXnT"}' --login_with_auth "Bearer foo"
lobby-user-get-friendship-status 'KjXY1bPq' --login_with_auth "Bearer foo"
lobby-user-unfriend-request '{"friendId": "amiBxx9C"}' --login_with_auth "Bearer foo"
lobby-add-friends-without-confirmation '{"friendIds": ["s18EY84e"]}' 'kItqRzHU' --login_with_auth "Bearer foo"
lobby-personal-chat-history '1oh570KQ' 'BVaewc72' --login_with_auth "Bearer foo"
lobby-admin-chat-history 'krSha68n' '3Ynozp1C' --login_with_auth "Bearer foo"
lobby-admin-get-all-config-v1 --login_with_auth "Bearer foo"
lobby-admin-get-config-v1 --login_with_auth "Bearer foo"
lobby-admin-update-config-v1 '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": true, "autoKickOnDisconnect": true, "autoKickOnDisconnectDelay": 6, "cancelTicketOnDisconnect": true, "chatRateLimitBurst": 93, "chatRateLimitDuration": 37, "concurrentUsersLimit": 46, "disableInvitationOnJoinParty": true, "enableChat": false, "entitlementCheck": true, "entitlementItemID": "J17M7DJZ", "generalRateLimitBurst": 0, "generalRateLimitDuration": 77, "keepPresenceActivityOnDisconnect": true, "maxPartyMember": 61, "profanityFilter": true, "readyConsentTimeout": 2}' --login_with_auth "Bearer foo"
lobby-admin-export-config-v1 --login_with_auth "Bearer foo"
lobby-admin-import-config-v1 --login_with_auth "Bearer foo"
lobby-get-list-of-friends 'Zbygyoar' --login_with_auth "Bearer foo"
lobby-send-multiple-users-freeform-notification-v1-admin '{"message": "ORoeNHSb", "topicName": "8Rh3kgs9", "userIds": ["qqJbnQso"]}' --login_with_auth "Bearer foo"
lobby-send-users-freeform-notification-v1-admin '{"message": "BgiVpP8C", "topicName": "m3yvASUo"}' --login_with_auth "Bearer foo"
lobby-send-party-freeform-notification-v1-admin '{"message": "xdxxFqmA", "topicName": "GTJ8IEda"}' 'gEtp4w29' --login_with_auth "Bearer foo"
lobby-send-party-templated-notification-v1-admin '{"templateContext": {"KOu9c19R": "6XDqWHkk"}, "templateLanguage": "P8npLEKM", "templateSlug": "fjiX7jpk", "topicName": "VZk3IaQY"}' 'EmqGodOE' --login_with_auth "Bearer foo"
lobby-get-all-notification-templates-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-template-v1-admin '{"templateContent": "Gt9gPOj0", "templateLanguage": "c6i0JkvI", "templateSlug": "as73ucYn"}' --login_with_auth "Bearer foo"
lobby-send-users-templated-notification-v1-admin '{"templateContext": {"FAJ3DK5T": "4Eogg0Y3"}, "templateLanguage": "9UoYlpv5", "templateSlug": "bVAgtsDh", "topicName": "UTDUscbQ"}' --login_with_auth "Bearer foo"
lobby-get-template-slug-localizations-template-v1-admin 'DjbTQuPM' --login_with_auth "Bearer foo"
lobby-delete-notification-template-slug-v1-admin 'z2PTRlky' --login_with_auth "Bearer foo"
lobby-get-single-template-localization-v1-admin 'U89ZPOw6' 'zPFJ42cw' --login_with_auth "Bearer foo"
lobby-update-template-localization-v1-admin '{"templateContent": "mzBBSMNc"}' 'oAAOjKNj' 'fcYHm093' --login_with_auth "Bearer foo"
lobby-delete-template-localization-v1-admin 'aYgBU1sq' 'jyK0XH45' --login_with_auth "Bearer foo"
lobby-publish-template-localization-v1-admin 'PaRSOFQB' 'tu23REZ8' --login_with_auth "Bearer foo"
lobby-get-all-notification-topics-v1-admin --login_with_auth "Bearer foo"
lobby-create-notification-topic-v1-admin '{"description": "hRVX7LGO", "topicName": "vDdYiQS9"}' --login_with_auth "Bearer foo"
lobby-get-notification-topic-v1-admin 'i7mV1C91' --login_with_auth "Bearer foo"
lobby-update-notification-topic-v1-admin '{"description": "pjG9gpxL"}' '6ycTQdvl' --login_with_auth "Bearer foo"
lobby-delete-notification-topic-v1-admin 'n2LAuSQW' --login_with_auth "Bearer foo"
lobby-send-specific-user-freeform-notification-v1-admin '{"message": "EXL6LFE1", "topicName": "YHo9m126"}' 'ZWc8hHtW' --login_with_auth "Bearer foo"
lobby-send-specific-user-templated-notification-v1-admin '{"templateContext": {"vbNYqgUq": "slArFPiH"}, "templateLanguage": "UIvaCv8k", "templateSlug": "U9dBBpds", "topicName": "JLhsVyEx"}' 'rkxoot0B' --login_with_auth "Bearer foo"
lobby-admin-get-party-data-v1 '7WOfercZ' --login_with_auth "Bearer foo"
lobby-admin-update-party-attributes-v1 '{"custom_attribute": {"dpMci37D": {}}, "updatedAt": 36}' '7YSfExaI' --login_with_auth "Bearer foo"
lobby-admin-join-party-v1 '3uzLteMb' 'FAlt4hr7' --login_with_auth "Bearer foo"
lobby-admin-get-user-party-v1 'HmOYiBA5' --login_with_auth "Bearer foo"
lobby-admin-get-lobby-ccu --login_with_auth "Bearer foo"
lobby-admin-get-all-player-session-attribute 'ltAOXmlG' --login_with_auth "Bearer foo"
lobby-admin-set-player-session-attribute '{"attributes": {"6eh1dTdo": "TFpBIcuC"}}' '1dQY93OJ' --login_with_auth "Bearer foo"
lobby-admin-get-player-session-attribute 'nJ6Te9vD' '8ldz7Hu8' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-players-v1 'AD79kdWu' --login_with_auth "Bearer foo"
lobby-admin-get-player-blocked-by-players-v1 'nvizU0q1' --login_with_auth "Bearer foo"
lobby-admin-bulk-block-players-v1 '{"listBlockedUserId": ["pHyhhERo"]}' 'GgdrysMi' --login_with_auth "Bearer foo"
lobby-admin-debug-profanity-filters '{"text": "zBGSRdP2"}' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-list-filters-v1 'l7DNSZ8A' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filter-into-list '{"filter": "q0XiPLQX", "note": "Se07ZddO"}' 'GTMlJjBw' --login_with_auth "Bearer foo"
lobby-admin-add-profanity-filters '{"filters": [{"filter": "j9HJHQKs", "note": "eEdSXRDS"}]}' 'vguauw1x' --login_with_auth "Bearer foo"
lobby-admin-import-profanity-filters-from-file '[91]' '7eMwSl9M' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-filter '{"filter": "LH0NnTJ2"}' 'ulNzBvwJ' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-lists --login_with_auth "Bearer foo"
lobby-admin-create-profanity-list '{"isEnabled": false, "isMandatory": false, "name": "547JllvA"}' --login_with_auth "Bearer foo"
lobby-admin-update-profanity-list '{"isEnabled": false, "isMandatory": false, "newName": "bUt7xk6Q"}' 'xyWhfqoW' --login_with_auth "Bearer foo"
lobby-admin-delete-profanity-list 'fJw2o8oW' --login_with_auth "Bearer foo"
lobby-admin-get-profanity-rule --login_with_auth "Bearer foo"
lobby-admin-set-profanity-rule-for-namespace '{"rule": "UqvPCZ2H"}' --login_with_auth "Bearer foo"
lobby-admin-verify-message-profanity-response '{"message": "zT7NXmWD", "profanityLevel": "lXsuNIdQ"}' --login_with_auth "Bearer foo"
lobby-admin-get-third-party-config --login_with_auth "Bearer foo"
lobby-admin-update-third-party-config '{"apiKey": "JR5lsNOl"}' --login_with_auth "Bearer foo"
lobby-admin-create-third-party-config '{"apiKey": "vkfwaSbn"}' --login_with_auth "Bearer foo"
lobby-admin-delete-third-party-config --login_with_auth "Bearer foo"
lobby-public-get-messages --login_with_auth "Bearer foo"
lobby-get-personal-chat-history-v1-public 'suLCgTox' --login_with_auth "Bearer foo"
lobby-public-get-party-data-v1 'uVTekJgv' --login_with_auth "Bearer foo"
lobby-public-update-party-attributes-v1 '{"custom_attribute": {"g6h5HIpH": {}}, "updatedAt": 58}' 'viplEk4v' --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-players-v1 --login_with_auth "Bearer foo"
lobby-public-get-player-blocked-by-players-v1 --login_with_auth "Bearer foo"
lobby-users-presence-handler-v1 'j3LDp4yq' --login_with_auth "Bearer foo"
lobby-free-form-notification '{"message": "Dt8QUZDp", "topic": "xlHasinG"}' --login_with_auth "Bearer foo"
lobby-notification-with-template '{"templateContext": {"cjrkmRMt": "tgjDSaIV"}, "templateLanguage": "Bmft3Udg", "templateSlug": "7p9PGmY2", "topic": "H5kX4Msi"}' --login_with_auth "Bearer foo"
lobby-get-game-template --login_with_auth "Bearer foo"
lobby-create-template '{"templateContent": "sSX28nAR", "templateLanguage": "xWRpv5ou", "templateSlug": "5xtvd28O"}' --login_with_auth "Bearer foo"
lobby-get-slug-template 'UfCt8UJC' --login_with_auth "Bearer foo"
lobby-delete-template-slug '5flNyj6H' --login_with_auth "Bearer foo"
lobby-get-localization-template 'sTtX8P3l' 'lnaaS9lq' --login_with_auth "Bearer foo"
lobby-update-localization-template '{"templateContent": "yygPcfkJ"}' 'IxfQZza8' 'kNVbDxVM' --login_with_auth "Bearer foo"
lobby-delete-template-localization 'q7HJk0F8' '9xAc3YVf' --login_with_auth "Bearer foo"
lobby-publish-template 'aENtrl0p' 'TKZTXqzH' --login_with_auth "Bearer foo"
lobby-get-topic-by-namespace --login_with_auth "Bearer foo"
lobby-create-topic '{"description": "uBMYQSA2", "topic": "jz1ZOpdO"}' --login_with_auth "Bearer foo"
lobby-get-topic-by-topic-name 'jSyMddB4' --login_with_auth "Bearer foo"
lobby-update-topic-by-topic-name '{"description": "1JuMf7RU"}' 'yBHRj8Ii' --login_with_auth "Bearer foo"
lobby-delete-topic-by-topic-name 'RimRllHT' --login_with_auth "Bearer foo"
lobby-free-form-notification-by-user-id '{"message": "6Dc40vFF", "topic": "A6gpU7EW"}' '3x1dCpm5' --login_with_auth "Bearer foo"
lobby-notification-with-template-by-user-id '{"templateContext": {"5gOeqQIq": "cJVKmBM1"}, "templateLanguage": "J1IbuTrr", "templateSlug": "kbmuT1wh", "topic": "OqmEnDXI"}' 'WrBPlSay' --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE