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
session-admin-create-configuration-template-v1 '{"clientVersion": "58WPV1Ag", "deployment": "alIpvVsI", "inactiveTimeout": 82, "inviteTimeout": 5, "joinability": "ZLiKe6yP", "maxPlayers": 59, "minPlayers": 12, "name": "RhDebuSW", "requestedRegions": ["ZPdoRlTx", "cp1Ft7I4", "qxzMpK1I"], "textChat": false, "type": "x0reEoUf"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'oC5oHdhh' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "FeM98GPP", "deployment": "ZpXNk1Fh", "inactiveTimeout": 74, "inviteTimeout": 5, "joinability": "itLZUloZ", "maxPlayers": 88, "minPlayers": 87, "name": "IJVfkNoz", "requestedRegions": ["8T15vWNG", "wzf43Psy", "SOrdJX1R"], "textChat": true, "type": "8hb6ie74"}' 'bOdPYssk' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'yZaJQNZp' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member '1KW3jkCF' 'LwjmlYzc' 'WyQWHQw7' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"Pz9f7SWa": {}, "9nphkLNl": {}, "9MXs1XT4": {}}, "backfillTicketID": "WFIotln3", "clientVersion": "nMZbgQBn", "configurationName": "uJ16prL9", "deployment": "e2YssL8Y", "inactiveTimeout": 27, "inviteTimeout": 22, "joinability": "Lw3EPblJ", "matchPool": "CYonLPuA", "maxPlayers": 64, "minPlayers": 81, "requestedRegions": ["wJNZBKUc", "KuvyMhLW", "3dj2xk21"], "serverName": "T5P7gBkk", "teams": [{"UserIDs": ["D8WrJID5", "cprKs131", "ByC4ETpE"]}, {"UserIDs": ["clOpX8ef", "dendnCDB", "1SbZUCMv"]}, {"UserIDs": ["UTLCBRln", "sHqsqQPt", "vDVHA1c5"]}], "textChat": true, "ticketIDs": ["WZ9SrI50", "C5k2ntQJ", "ItP43NCi"], "type": "A5oNnmRF"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"qSkUzldN": {}, "lrEvv03s": {}, "QnHHikFU": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'V8RjUH6g' --login_with_auth "Bearer foo"
session-get-game-session 'wEHIB96a' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"r5qPAAS7": {}, "xTNQY6rV": {}, "Vn3BKgEz": {}}, "backfillTicketID": "KRApoIvj", "clientVersion": "wBW5kbQ4", "deployment": "aGwQt5JI", "inactiveTimeout": 88, "inviteTimeout": 51, "joinability": "jeVrkt32", "matchPool": "3OwOvlLn", "maxPlayers": 30, "minPlayers": 20, "requestedRegions": ["7ugIHBw2", "J7HyzF0Q", "sh5lgbJx"], "teams": [{"UserIDs": ["MHY2B3QC", "epSjIaEq", "FsX5La8k"]}, {"UserIDs": ["3DaOm6D2", "RTADdubV", "bMZEZ68q"]}, {"UserIDs": ["rzrEqcMm", "QfNqazl6", "pJRsormd"]}], "ticketIDs": ["lmA17Nxc", "fwzrlwJW", "lkZlgC4l"], "type": "Ga6YI7iH", "version": 99}' 'IyVH2sHd' --login_with_auth "Bearer foo"
session-delete-game-session 'e1eC7SpC' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"xzUQHCjk": {}, "bWyWeixE": {}, "vlmqdAEJ": {}}, "backfillTicketID": "Gb616oMp", "clientVersion": "IRYe2rd5", "deployment": "O8XaF7QJ", "inactiveTimeout": 55, "inviteTimeout": 3, "joinability": "4xXi5IWW", "matchPool": "2F8adQCR", "maxPlayers": 84, "minPlayers": 3, "requestedRegions": ["566OrOAm", "c7u4rdAu", "66lg70OO"], "teams": [{"UserIDs": ["wpkz3jra", "RtB2U3BZ", "rHAEn2Ah"]}, {"UserIDs": ["XpBMFycc", "hXct9L72", "NLttVYyf"]}, {"UserIDs": ["GHrIhVbw", "ktTWP7JL", "nGeQGwUD"]}], "ticketIDs": ["IMGCD0tO", "U4tdVN7l", "upFxvlal"], "type": "LjOJIGOO", "version": 60}' 'div1IQVK' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "uXWpE3hy"}' 'dljprTGU' --login_with_auth "Bearer foo"
session-join-game-session '3F0sFSTS' --login_with_auth "Bearer foo"
session-leave-game-session '8RwGLv9R' --login_with_auth "Bearer foo"
session-public-game-session-reject 'xLDTBWc5' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "NVnLQQVo"}' --login_with_auth "Bearer foo"
session-public-get-party 'VVMs0b9d' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"4HcoSYDL": {}, "wvoOPFPk": {}, "qpPwtap0": {}}, "inactiveTimeout": 9, "inviteTimeout": 80, "joinability": "SUC4i6Jx", "maxPlayers": 40, "minPlayers": 52, "type": "KPIHvkN0", "version": 51}' 'vPVC8453' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"VGd3Wchw": {}, "ShMu8NQR": {}, "4exdjEXJ": {}}, "inactiveTimeout": 5, "inviteTimeout": 33, "joinability": "PIf91O3Z", "maxPlayers": 65, "minPlayers": 1, "type": "GfHSXjXF", "version": 10}' 'S574uQ58' --login_with_auth "Bearer foo"
session-public-generate-party-code 'EQFJLQhc' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'WiCzEktq' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "fHpzZxQ8"}' 'yC3eBAWv' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "MsPxDV86"}' 'FefwfNuz' --login_with_auth "Bearer foo"
session-public-party-join 'ZCO7VMxV' --login_with_auth "Bearer foo"
session-public-party-leave 'CtZe92vr' --login_with_auth "Bearer foo"
session-public-party-reject 'vpjY6mvG' --login_with_auth "Bearer foo"
session-public-party-kick 'wSwwWAjn' 'nSiOtibS' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"Fgf03SEa": {}, "oDCyNhzy": {}, "QurZ93Vp": {}}, "configurationName": "TMT27YGM", "inactiveTimeout": 74, "inviteTimeout": 95, "joinability": "I6Zkawoc", "maxPlayers": 56, "members": [{"ID": "x9fOCd97", "PlatformID": "bnr32K2S", "PlatformUserID": "P79wgXAG"}, {"ID": "p69lVrKR", "PlatformID": "BKd9wluF", "PlatformUserID": "opOteAuj"}, {"ID": "DqMEdsfG", "PlatformID": "RCcJYYZu", "PlatformUserID": "jtGtZsfO"}], "minPlayers": 93, "textChat": true, "type": "oEKRodTH"}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "wCHm31jV", "deployment": "r6n4bDEL", "inactiveTimeout": 83, "inviteTimeout": 59, "joinability": "PLTTn6M8", "maxPlayers": 76, "minPlayers": 35, "name": "sHY7MCew", "requestedRegions": ["0i4OSzcF", "MWSnIVg1", "o4PhY2Er"], "textChat": true, "type": "dLUvSGo7"}' \
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
    'oHjHHANQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "BYq4NUwG", "deployment": "MnbIsVxb", "inactiveTimeout": 69, "inviteTimeout": 16, "joinability": "XtZnp5tZ", "maxPlayers": 60, "minPlayers": 19, "name": "HVShOu3G", "requestedRegions": ["hKfIuqB3", "s1bg42Ef", "c09JTuSo"], "textChat": true, "type": "hxTk1UXE"}' \
    '8ZL5dUPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'Q96KcKHK' \
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
    '91jdWXZK' \
    'lgTQWe34' \
    'nviU5KcH' \
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
    '{"attributes": {"QEI2wFPu": {}, "HxaMoK3A": {}, "rL4DARuk": {}}, "backfillTicketID": "ULi1ooWc", "clientVersion": "FVMw1N8W", "configurationName": "0JDhGaXa", "deployment": "jObGlOmO", "inactiveTimeout": 53, "inviteTimeout": 48, "joinability": "e8FGMoE9", "matchPool": "9vOLAxGj", "maxPlayers": 43, "minPlayers": 20, "requestedRegions": ["mvtgWfZX", "qM68k3nr", "Bdo6szhB"], "serverName": "583ANTCs", "teams": [{"UserIDs": ["NuFC5qKZ", "25jB5hf2", "OB4qQwSL"]}, {"UserIDs": ["dp7t3mUt", "7Gllkkd8", "kLTCMqOJ"]}, {"UserIDs": ["W6l16Peu", "zgWCJTAR", "peyLm8Kl"]}], "textChat": true, "ticketIDs": ["bCGLmzPQ", "aiEKNXa3", "isP20dBs"], "type": "Nmnpfgl0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"vCLu91Tu": {}, "lbjDni6D": {}, "CTqRbHgs": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'EuH6smWT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'LaNKEVu7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"ltIvbRzu": {}, "pIhuC95K": {}, "huUjKC1v": {}}, "backfillTicketID": "3zRsmQam", "clientVersion": "lRT4cUrk", "deployment": "dTxOKlXI", "inactiveTimeout": 7, "inviteTimeout": 4, "joinability": "ZyKklHYI", "matchPool": "9e1R3T3L", "maxPlayers": 2, "minPlayers": 7, "requestedRegions": ["OjzrgMea", "IXRQudeg", "HhXTNEOj"], "teams": [{"UserIDs": ["VB1jzABU", "TidkIwX5", "YrvVrL8c"]}, {"UserIDs": ["NeIcQAZC", "S0dZTbLg", "WtUVOS2m"]}, {"UserIDs": ["83D8TcZF", "8ttRlcMM", "AyJmKLHX"]}], "ticketIDs": ["YYAQ4rx9", "glgQJ4Pp", "AD4ggr3s"], "type": "3Lk9QTRk", "version": 74}' \
    'QE3JFrwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    '2PFv6lF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"T6iClgXO": {}, "iGT1mBax": {}, "PMVl7Al9": {}}, "backfillTicketID": "xNIFNreU", "clientVersion": "h9d6gtFB", "deployment": "leHpz4kr", "inactiveTimeout": 69, "inviteTimeout": 25, "joinability": "vOZuWmLm", "matchPool": "BRypgP0I", "maxPlayers": 48, "minPlayers": 66, "requestedRegions": ["ugnBJCi5", "D1wwavU1", "6kRA9Idf"], "teams": [{"UserIDs": ["h55jrQGT", "AkO9KW6c", "pdq2RTcV"]}, {"UserIDs": ["uxl9Lv1Z", "JbMj8wYZ", "mEoI0kGP"]}, {"UserIDs": ["XFsyK7ZB", "BiLdlJqu", "fHbhrgsT"]}], "ticketIDs": ["scPZVAqJ", "oNTp71hI", "bQ4xhjNa"], "type": "58lB90HH", "version": 58}' \
    '7vaMpFRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "UiFTjmFH"}' \
    'yfknIj1J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'AQrNjHZS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'GMr8v1ND' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'we9RnYU3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "g6pWpTMJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'IDK7q2Mu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"iwRHVCiI": {}, "HwD66oEv": {}, "ok9OamRd": {}}, "inactiveTimeout": 57, "inviteTimeout": 1, "joinability": "FTwhWbGb", "maxPlayers": 14, "minPlayers": 13, "type": "FXndgoGD", "version": 26}' \
    'Urhmt1Ev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"BY9p0V6q": {}, "43LI7i6Q": {}, "sveTgVBC": {}}, "inactiveTimeout": 74, "inviteTimeout": 29, "joinability": "r5L8DrgY", "maxPlayers": 22, "minPlayers": 81, "type": "YZ7BL4qe", "version": 25}' \
    '7xqaguRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'Dfs7nP8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'Tir6r0ml' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "vNY4uWFw"}' \
    'Ht40roRX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "5UpI9aNs"}' \
    '6FMCRKvK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'l9jLJvlm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'tw2kRYeU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'hK6l2upL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '9DDXj2MJ' \
    'ZWAD0V07' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"9Uima2OT": {}, "7Vf3gSPl": {}, "M0X9bxmd": {}}, "configurationName": "B2ulLxJa", "inactiveTimeout": 70, "inviteTimeout": 63, "joinability": "G3M4WXZF", "maxPlayers": 3, "members": [{"ID": "LuL7WOcz", "PlatformID": "N5LmxvWy", "PlatformUserID": "ZkYxxdGO"}, {"ID": "O58bKy0T", "PlatformID": "MKD5Zmjm", "PlatformUserID": "gJz4Lkhi"}, {"ID": "A8aSRqMr", "PlatformID": "Yf2cyK7b", "PlatformUserID": "NVjDUEoO"}], "minPlayers": 53, "textChat": false, "type": "nPEjFq7b"}' \
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
