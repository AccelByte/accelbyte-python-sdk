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
session-get-healthcheck-info --login_with_auth "Bearer foo"
session-get-healthcheck-info-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"clientVersion": "9B2xf45P", "deployment": "pCwXE3jV", "inactiveTimeout": 44, "inviteTimeout": 8, "joinability": "8mgNtxA8", "maxPlayers": 100, "minPlayers": 17, "name": "q5TIOzVR", "requestedRegions": ["tfDnyRP1", "zY1ePlsq", "wJjiOgHo"], "type": "2X5oLiJU"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'dHV2lrAk' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "CBkmJb46", "deployment": "COslnHte", "inactiveTimeout": 73, "inviteTimeout": 94, "joinability": "PLRBNmOs", "maxPlayers": 62, "minPlayers": 9, "name": "MAKnriQB", "requestedRegions": ["mdcXFQeV", "CJiuuUCO", "ZTGJHhnO"], "type": "0oGbnr2l"}' 'qmiv8tg5' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'tvnH58Kf' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'GvesxrVb' 'ghQyvInS' 'emnGd3ic' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"B2M9hrVO": {}, "UdRqglIL": {}, "EfVzYUOM": {}}, "backfillTicketID": "1t639Rm1", "clientVersion": "XTGGc7Uw", "configurationName": "LDOfuwWE", "deployment": "aM5hDCk4", "inactiveTimeout": 1, "inviteTimeout": 11, "joinability": "r7sx3O2d", "matchPool": "rxiveGNV", "maxPlayers": 69, "minPlayers": 75, "requestedRegions": ["UtwnUkbn", "KjUpxSh7", "EEGedgwX"], "serverName": "rGu0Sjgc", "teams": [{"UserIDs": ["fN6rvu8W", "WziYbjwl", "rRlkmyJa"]}, {"UserIDs": ["WIadbOcw", "idsyFBoW", "Q9HDUOHi"]}, {"UserIDs": ["4yDAPTT5", "QTdHaFVJ", "nT2zESS9"]}], "ticketIDs": ["HsXfmOvS", "JzL0UFlo", "27GbAFTs"], "type": "MeOXlk7C"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"G8hnezuT": {}, "gtKIebux": {}, "cBdg2bOb": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'u6tnrIUV' --login_with_auth "Bearer foo"
session-get-game-session 'nfSmcpmt' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"AgTWusoQ": {}, "DHKJhXFX": {}, "YX2NuBDU": {}}, "backfillTicketID": "ZnYNBym2", "clientVersion": "ulTC7oZq", "deployment": "wHPhEpCD", "inactiveTimeout": 85, "inviteTimeout": 78, "joinability": "zXMSwANO", "matchPool": "azjJGlYJ", "maxPlayers": 71, "minPlayers": 89, "requestedRegions": ["vCUk6dMv", "QUrbZ6Cd", "gN3odKH5"], "teams": [{"UserIDs": ["NjBszd2v", "WAo1G6Bu", "S6mqASzn"]}, {"UserIDs": ["kZK0QxuW", "JwhQNJ2G", "iLzpxEYR"]}, {"UserIDs": ["vuDaai3j", "ITIUY0zZ", "VguwDM5f"]}], "ticketIDs": ["sfAWj0bB", "WztsTUOX", "iYk4gPH2"], "type": "wI9Z9Yjf", "version": 50}' 'RHEKuUoy' --login_with_auth "Bearer foo"
session-delete-game-session 'xDnIFyrf' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"F0HFXlB8": {}, "i9vuVwv8": {}, "XZQ69S7g": {}}, "backfillTicketID": "3P5OcLEl", "clientVersion": "5CCQJSWY", "deployment": "ZU5MHKFp", "inactiveTimeout": 24, "inviteTimeout": 15, "joinability": "jf6YP40Y", "matchPool": "8GqKKDrc", "maxPlayers": 69, "minPlayers": 87, "requestedRegions": ["qQmoP8Q1", "WzDvoDd7", "5W1gG8gG"], "teams": [{"UserIDs": ["3JBl4NUo", "AyG9VUaf", "FbQg3cPW"]}, {"UserIDs": ["oB8mTLHN", "IBS5OWlN", "Cd5QZaYk"]}, {"UserIDs": ["JW1zkUBj", "djb0GCAS", "RVQfIxkt"]}], "ticketIDs": ["3qRiYKa0", "r1jZeqeL", "AKynaiSP"], "type": "KzIMzHno", "version": 91}' 'iKYSiZ5l' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "GllFtl85"}' '07gp3Dl5' --login_with_auth "Bearer foo"
session-join-game-session 'o3IelCVY' --login_with_auth "Bearer foo"
session-leave-game-session 'ppwkHOt4' --login_with_auth "Bearer foo"
session-public-game-session-reject 'mwVVPv3G' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "hPnzOQm5"}' --login_with_auth "Bearer foo"
session-public-get-party 'JlFfTqZy' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"2WY30hR4": {}, "FqOei4u4": {}, "Kec46Lxh": {}}, "inactiveTimeout": 80, "inviteTimeout": 49, "joinability": "QolBdACt", "maxPlayers": 19, "minPlayers": 31, "type": "yenCj22x", "version": 98}' '1fJOdWIB' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"JyRIdYwD": {}, "ppKhbCfj": {}, "mcWdNhHg": {}}, "inactiveTimeout": 42, "inviteTimeout": 83, "joinability": "ml0nlI5o", "maxPlayers": 77, "minPlayers": 60, "type": "9lYNvT2b", "version": 20}' 'UnIBSLHG' --login_with_auth "Bearer foo"
session-public-generate-party-code 'VuV5kwOv' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'uaxTnWdv' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "KHu0X0FO"}' '77IecSrA' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "TZxFGX5f"}' 'Ni8UXMAq' --login_with_auth "Bearer foo"
session-public-party-join 'vNB9YK7G' --login_with_auth "Bearer foo"
session-public-party-leave 'LEcSFZvb' --login_with_auth "Bearer foo"
session-public-party-reject 'M6ciNxJC' --login_with_auth "Bearer foo"
session-public-party-kick '79aEKMzm' 'apZThHtl' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"TAc53YkL": {}, "LxqRlCwg": {}, "BijPrdXS": {}}, "configurationName": "V1FddizP", "inactiveTimeout": 87, "inviteTimeout": 2, "joinability": "j20huQFu", "maxPlayers": 10, "members": [{"ID": "DTZH3qCw", "PlatformID": "kO7B1JUe", "PlatformUserID": "SpgLg9EI"}, {"ID": "C9DQKlYj", "PlatformID": "ZZsnLVsN", "PlatformUserID": "Wk5l1dWB"}, {"ID": "Kgmpiiyp", "PlatformID": "5dj79LOo", "PlatformUserID": "imRlrI2I"}], "minPlayers": 59, "type": "1ibvyqjS"}' --login_with_auth "Bearer foo"
session-public-query-my-game-sessions --login_with_auth "Bearer foo"
session-public-query-my-parties --login_with_auth "Bearer foo"
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
echo "1..37"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetHealthcheckInfo
$PYTHON -m $MODULE 'session-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
$PYTHON -m $MODULE 'session-get-healthcheck-info-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"clientVersion": "bw1hCP4Y", "deployment": "yeYSnCR2", "inactiveTimeout": 32, "inviteTimeout": 45, "joinability": "tEP8qtUE", "maxPlayers": 77, "minPlayers": 65, "name": "uF0fT14O", "requestedRegions": ["BebvtZOV", "9tYbXuy9", "rB5C5j2C"], "type": "LNf5S4V0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'Q4p0BeZl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "ylfMJ4OG", "deployment": "13C49Hhx", "inactiveTimeout": 25, "inviteTimeout": 18, "joinability": "Fa3vbFas", "maxPlayers": 26, "minPlayers": 15, "name": "ygvuyhw5", "requestedRegions": ["LnMUIRzZ", "lKhOYMOm", "NgNk4UsQ"], "type": "dcJlMQaK"}' \
    'CSrLN55j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'tuEhynvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    '9AMtLjNk' \
    'lREuO131' \
    'VCGKYMA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"cMmeg9sz": {}, "ohZ9QjzA": {}, "VRwcuoLO": {}}, "backfillTicketID": "9ZZTLIxy", "clientVersion": "MznFYiuP", "configurationName": "rpbOWQTU", "deployment": "2M0XMzv2", "inactiveTimeout": 97, "inviteTimeout": 84, "joinability": "wLtMfsOy", "matchPool": "3Ohvu0X1", "maxPlayers": 39, "minPlayers": 67, "requestedRegions": ["vQsUThmo", "axcsP9Vz", "GfXbdD4b"], "serverName": "fCSz2tey", "teams": [{"UserIDs": ["5R3kpJ47", "Xz930zqK", "Jqhqb7dK"]}, {"UserIDs": ["5YpY7VYt", "EaLpXb9h", "YsC9lSxW"]}, {"UserIDs": ["CBzKjxi2", "FrL6BB0i", "d9FALIfJ"]}], "ticketIDs": ["sA99sQlO", "4dXHC6u1", "Tn9aKLFb"], "type": "sVOcwE9P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"d28yKFlG": {}, "58YlN7jn": {}, "WxeNMRT1": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'k0VXM6QV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'KaTaMe3z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"Xde6h5we": {}, "QVt7uYY7": {}, "3hoVJZp1": {}}, "backfillTicketID": "EpGPgaVU", "clientVersion": "SP3kLhkh", "deployment": "BQSOhsrO", "inactiveTimeout": 19, "inviteTimeout": 14, "joinability": "rCGNEoN5", "matchPool": "PDaekKcL", "maxPlayers": 32, "minPlayers": 33, "requestedRegions": ["7NXFMlCg", "RZ18NBpG", "RByY4tyS"], "teams": [{"UserIDs": ["zgG4Em0N", "7iy7LYra", "s0izPQ2f"]}, {"UserIDs": ["WV2YZNRa", "gUhOIuq8", "dBliYYfj"]}, {"UserIDs": ["bAmfyYFt", "vJTVS1vm", "6MDa44l1"]}], "ticketIDs": ["VxSY0yOw", "9XByNMbi", "HIhNYXWD"], "type": "37wrIMou", "version": 80}' \
    'WokzbOby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'mSWO4N1u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"k8t99yXG": {}, "BWVJICjE": {}, "Qzl5FQNk": {}}, "backfillTicketID": "dXZNrcuI", "clientVersion": "ma6wXwMP", "deployment": "CuVgjNEW", "inactiveTimeout": 68, "inviteTimeout": 63, "joinability": "AhhmhCC1", "matchPool": "i06Jspwe", "maxPlayers": 58, "minPlayers": 95, "requestedRegions": ["myRKPeUv", "4UxcQfq6", "rEOlXOz9"], "teams": [{"UserIDs": ["HGIs4YtQ", "bkJ9Asut", "pRT1Z9iq"]}, {"UserIDs": ["Umm8KC3m", "xgGAUKvw", "viAJILzK"]}, {"UserIDs": ["25OJXL00", "fg5G5qmB", "K6DTet2i"]}], "ticketIDs": ["XrZHwXcQ", "lJHNsJ3o", "AXw3TyTB"], "type": "1KZY5OBX", "version": 66}' \
    'hcEvehsF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "8nCV007r"}' \
    'OGxDih9x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '3J8lxpqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '1678wXYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'aTu5z305' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "ueJdZn8J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'gSsPTLss' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"6t9kw3Hc": {}, "niRlpLBm": {}, "J6hQ6rcz": {}}, "inactiveTimeout": 46, "inviteTimeout": 70, "joinability": "KEYWf28J", "maxPlayers": 21, "minPlayers": 72, "type": "H8tTtsr7", "version": 27}' \
    'VL6dJaK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"peywtTVK": {}, "1K0zkC2k": {}, "oCEPgl5Q": {}}, "inactiveTimeout": 35, "inviteTimeout": 20, "joinability": "ZMrLrjT5", "maxPlayers": 55, "minPlayers": 5, "type": "h0XcKHLL", "version": 51}' \
    'Aty2H4gL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'sqUrpSID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'n5boYD1W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "71UXude9"}' \
    'TbSPHIQE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "Kpn6v33l"}' \
    'lZS7UOpw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'BDrcBSTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'BsF10it6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'BRLpdnmN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '7XmfsICr' \
    'Dghvo5ih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"U6uakVgp": {}, "mO4B5rjn": {}, "Yd5iSFd3": {}}, "configurationName": "pPbLMXUK", "inactiveTimeout": 20, "inviteTimeout": 4, "joinability": "CuX6Gz0A", "maxPlayers": 62, "members": [{"ID": "ZhV5207Z", "PlatformID": "5lJTpkWy", "PlatformUserID": "ifzqIhfU"}, {"ID": "xQuYsRqo", "PlatformID": "poHfXUOL", "PlatformUserID": "uk1MxjBU"}, {"ID": "kxvvHXrR", "PlatformID": "L6i03Jub", "PlatformUserID": "E5ZNPULJ"}], "minPlayers": 61, "type": "GGqGqHFP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
