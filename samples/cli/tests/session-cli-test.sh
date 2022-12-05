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
session-admin-create-configuration-template-v1 '{"clientVersion": "RLAiQVxZ", "deployment": "lMhMPgjL", "inactiveTimeout": 18, "inviteTimeout": 5, "joinability": "UgnTZoud", "maxPlayers": 19, "minPlayers": 6, "name": "xgg6RZFx", "requestedRegions": ["9wn5r4Hj", "k2bNrkT6", "jSxye2mR"], "textChat": false, "type": "UHX2pC9J"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'chirbLJK' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "koSeDiZi", "deployment": "g7S1b24X", "inactiveTimeout": 74, "inviteTimeout": 26, "joinability": "RTxTG8PD", "maxPlayers": 26, "minPlayers": 26, "name": "OSnIXAtR", "requestedRegions": ["JIsxzxpK", "f0VpNu2j", "Xm83I4Rb"], "textChat": true, "type": "HoyE1ouN"}' 'T3fSRaSQ' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'd5EzyOB7' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member '6zqQDYPV' 'WiPnrtM3' 'mZ1vxYCf' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"TEh140Kr": {}, "7DDbKF2h": {}, "FjLI6HLU": {}}, "backfillTicketID": "B9UcBPEg", "clientVersion": "yGFzjTcR", "configurationName": "5zCJ9csm", "deployment": "PJ3gsBpO", "inactiveTimeout": 3, "inviteTimeout": 38, "joinability": "Sb2jj92m", "matchPool": "ACg43I1u", "maxPlayers": 93, "minPlayers": 13, "requestedRegions": ["VdMCagrB", "HUc6YJPE", "X3OLD6VZ"], "serverName": "ZoLVmEAK", "teams": [{"UserIDs": ["CvbIDZYx", "gb8PFjDW", "Rw68MlX3"]}, {"UserIDs": ["gy6rO3LH", "K0LNc1RY", "4uC9zNyn"]}, {"UserIDs": ["PZHMyXpV", "fWw9kzHT", "UnIRHkUS"]}], "textChat": true, "ticketIDs": ["r567JgaG", "FYjz5Kjw", "sdZTkowQ"], "type": "F8ag7jos"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"o6uOq2Kj": {}, "HD4BhAz2": {}, "RfR2Q8QD": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'DTV91p6P' --login_with_auth "Bearer foo"
session-get-game-session '03SawI9x' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"kbegX6yz": {}, "XIVBWQiC": {}, "5ligI47c": {}}, "backfillTicketID": "wGV38yGU", "clientVersion": "AMOyQJTq", "deployment": "jR6NKFZK", "inactiveTimeout": 86, "inviteTimeout": 92, "joinability": "e5tulG68", "matchPool": "5gjlme0R", "maxPlayers": 99, "minPlayers": 59, "requestedRegions": ["79WCAcBj", "n54PEZIK", "OcAJwA9L"], "teams": [{"UserIDs": ["NCZTzW8j", "msQxExiM", "u9eXF7l2"]}, {"UserIDs": ["qWQseieH", "tGA7riXw", "ag6V5VuK"]}, {"UserIDs": ["fIO2TWw1", "EE0wOdkV", "TcSqt7St"]}], "ticketIDs": ["prBOFjAz", "z6TwZtxY", "MXJhWLuj"], "type": "NqCJdYuU", "version": 61}' 'Of2m7fKS' --login_with_auth "Bearer foo"
session-delete-game-session 'gDG8vVCB' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"RTdGmQ8i": {}, "aBb1qXgq": {}, "upMHVP1f": {}}, "backfillTicketID": "0V3hTm48", "clientVersion": "mYTb2qqB", "deployment": "ld64OZ6r", "inactiveTimeout": 53, "inviteTimeout": 92, "joinability": "UyXG3tR8", "matchPool": "lGOnwonr", "maxPlayers": 92, "minPlayers": 89, "requestedRegions": ["IuKlfIbV", "MjfFPxc3", "zxrNUvea"], "teams": [{"UserIDs": ["qjxOFhcL", "LP2Cmlut", "kSzU7j3Y"]}, {"UserIDs": ["QuuJp8KW", "F6EzYR84", "iUmicQUW"]}, {"UserIDs": ["ErSVad5r", "BubuI6S7", "5jF8fijZ"]}], "ticketIDs": ["rQWDqvRf", "dxRpcC6H", "eatHgvRt"], "type": "yeqXCZzD", "version": 84}' '8vvmuewG' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "4YsrzOTW"}' 'eNc9zP6w' --login_with_auth "Bearer foo"
session-join-game-session 'Uoq7O9qu' --login_with_auth "Bearer foo"
session-leave-game-session '99rmyhq3' --login_with_auth "Bearer foo"
session-public-game-session-reject 'EYpYGsS0' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "zjAVHRCV"}' --login_with_auth "Bearer foo"
session-public-get-party '9kZX47k5' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"3ZaI0eZh": {}, "bcZSgXBm": {}, "uJaTwSho": {}}, "inactiveTimeout": 5, "inviteTimeout": 44, "joinability": "NS1WFGdy", "maxPlayers": 82, "minPlayers": 78, "type": "i0ItgCX6", "version": 99}' 'aeirN6I5' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"tXgE2RAH": {}, "RrncETpL": {}, "2aoAm5bl": {}}, "inactiveTimeout": 8, "inviteTimeout": 28, "joinability": "hE6XlMfz", "maxPlayers": 62, "minPlayers": 22, "type": "Vgy4qnvN", "version": 5}' 'XeYGIZip' --login_with_auth "Bearer foo"
session-public-generate-party-code 'sCdkkKL2' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'Qk1cjdZx' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "SVtx6msY"}' 'VyWs8kmG' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "Ev3CXUVp"}' 'YvQ1HIwv' --login_with_auth "Bearer foo"
session-public-party-join 'Y3dr30f2' --login_with_auth "Bearer foo"
session-public-party-leave '8JjrZbsR' --login_with_auth "Bearer foo"
session-public-party-reject 'cH3wtmVs' --login_with_auth "Bearer foo"
session-public-party-kick 'J3WMyG54' 'f27ktw4Z' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"KIOANIav": {}, "8pPQkNUl": {}, "10bVJLud": {}}, "configurationName": "kMVPPb6j", "inactiveTimeout": 34, "inviteTimeout": 34, "joinability": "sIsoTReh", "maxPlayers": 40, "members": [{"ID": "glR4QofR", "PlatformID": "9P8NnABa", "PlatformUserID": "zw41P8YP"}, {"ID": "XvpmjPnn", "PlatformID": "eNqd1VI2", "PlatformUserID": "QvQZUeHl"}, {"ID": "EvZ3k5Nq", "PlatformID": "9oPr304k", "PlatformUserID": "nt2ueeNJ"}], "minPlayers": 80, "textChat": true, "type": "JpRElaJs"}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "ouB1wOna", "deployment": "RLDOEnx7", "inactiveTimeout": 78, "inviteTimeout": 19, "joinability": "az3JDzU7", "maxPlayers": 7, "minPlayers": 41, "name": "XCa1uDdD", "requestedRegions": ["XrTW1ou2", "PtEjuvx2", "l0hYJTv1"], "textChat": false, "type": "KGeOOEMb"}' \
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
    'K0vZJCxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "LDFXMijs", "deployment": "G6zeiUJF", "inactiveTimeout": 77, "inviteTimeout": 78, "joinability": "bPKN00On", "maxPlayers": 41, "minPlayers": 24, "name": "PpwyyXVS", "requestedRegions": ["YJoEs285", "IClNmZm5", "J00Mjfrs"], "textChat": true, "type": "QM4LLdnJ"}' \
    '1K8tTDeS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '2DH8iIFF' \
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
    'h67jEUIz' \
    'uJJ1nGSQ' \
    'qNDzxBBG' \
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
    '{"attributes": {"Jdfyovim": {}, "tu9vvWJP": {}, "C67Fa020": {}}, "backfillTicketID": "6cAG1gep", "clientVersion": "DWk63mnP", "configurationName": "HmXIWk7p", "deployment": "sMijZzVQ", "inactiveTimeout": 100, "inviteTimeout": 95, "joinability": "Xkq8tM2U", "matchPool": "rVTWVnmK", "maxPlayers": 14, "minPlayers": 29, "requestedRegions": ["FHVJEtXZ", "OEv2V0Qy", "Rbejfl6p"], "serverName": "rXbB9MSn", "teams": [{"UserIDs": ["TqXr7CvT", "ad00DCoV", "zUx3mKb7"]}, {"UserIDs": ["lStAMbmT", "HOoGOLAp", "FmNm31v8"]}, {"UserIDs": ["MkGqQreH", "KjONviJW", "ojxZ8e2a"]}], "textChat": true, "ticketIDs": ["nw5crOlr", "i4blVSo2", "mPtDBdGA"], "type": "jIJ2v2yG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"CES6hhr1": {}, "o5T3347k": {}, "7Sofjqto": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '3yIOXnoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'GPFs5izL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"viDakdnT": {}, "K1zIJ1DN": {}, "y1t2j9Oz": {}}, "backfillTicketID": "vIW50vCr", "clientVersion": "ZLKTWkxL", "deployment": "h8ZHwGN5", "inactiveTimeout": 58, "inviteTimeout": 96, "joinability": "aZzHJ9GB", "matchPool": "40XPEZWM", "maxPlayers": 73, "minPlayers": 6, "requestedRegions": ["43LY0xt2", "4ndK6IsG", "DQ80k2Uz"], "teams": [{"UserIDs": ["mFYpHa0Y", "ZyKQo0VS", "zBSDcsYb"]}, {"UserIDs": ["zNfzLJjN", "RiCP39cE", "BxHRdyRd"]}, {"UserIDs": ["JOYMneq3", "yNumQVQz", "APObA0WX"]}], "ticketIDs": ["zbnP2m1M", "gakhC74z", "IlIsBdOX"], "type": "Sm0kMuBn", "version": 90}' \
    'ZfCqfxjD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'RwCPRXRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"iCcPFggh": {}, "zZdAgET4": {}, "KFKilmys": {}}, "backfillTicketID": "FRyq9VSz", "clientVersion": "esE5tvYS", "deployment": "JRbGBEDV", "inactiveTimeout": 22, "inviteTimeout": 69, "joinability": "nIwI6o6l", "matchPool": "jukgVorm", "maxPlayers": 28, "minPlayers": 14, "requestedRegions": ["4M3UknYZ", "zO4GAkBd", "TDZ51Yfe"], "teams": [{"UserIDs": ["yvt9goSI", "qILOZ5S2", "HhHDSL7j"]}, {"UserIDs": ["i1BeKLAw", "Slb6IZDP", "X2dGdMEk"]}, {"UserIDs": ["ekmqQKjy", "0SHmLOF2", "emX6vxiS"]}], "ticketIDs": ["dnwyg9CE", "AfqUEqDn", "msDCLCAC"], "type": "wVqmtQ90", "version": 98}' \
    'oJMGejmP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "m0wVdB2V"}' \
    '3w9sj1ce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '27dMsF5f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'qFktGC5V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    '1tJHFGzg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "luoRRwct"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'So7E3i3V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"SSjxXXAj": {}, "8fCzxNNT": {}, "gTnGSWjM": {}}, "inactiveTimeout": 18, "inviteTimeout": 84, "joinability": "sUoZglkf", "maxPlayers": 93, "minPlayers": 87, "type": "TNy741o4", "version": 85}' \
    'dlGv0wyz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"UYBFGUbj": {}, "q1i37hcJ": {}, "KeLCJnmU": {}}, "inactiveTimeout": 6, "inviteTimeout": 22, "joinability": "cnIiXEso", "maxPlayers": 9, "minPlayers": 37, "type": "gefDcSEJ", "version": 94}' \
    '25bMM6U4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'JFAcARDY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '4py2aVsC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "huiiF12s"}' \
    'JjLN2RDH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "FVONXNYu"}' \
    'm9Zp4FkE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'm0qtPFa1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'PVshkuxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'CFhCjJET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'CEBICWKE' \
    'X2yxZHab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"o5kg7l7t": {}, "jxUHWJXn": {}, "WouvyQEq": {}}, "configurationName": "FwHTQC4Y", "inactiveTimeout": 38, "inviteTimeout": 94, "joinability": "qHj5PFP1", "maxPlayers": 95, "members": [{"ID": "JmFnYz7G", "PlatformID": "8myKNOkD", "PlatformUserID": "GYeri401"}, {"ID": "qOw69eR4", "PlatformID": "ouUNDjV0", "PlatformUserID": "YulmRT5w"}, {"ID": "SvUWNEYi", "PlatformID": "vWeMvRv9", "PlatformUserID": "jE0Kn2r1"}], "minPlayers": 19, "textChat": false, "type": "9qanMD6C"}' \
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
