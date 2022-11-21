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
session-admin-create-configuration-template-v1 '{"clientVersion": "MDEFlDc0", "deployment": "PDOnRH1J", "inactiveTimeout": 34, "inviteTimeout": 46, "joinability": "OKafUITw", "maxPlayers": 36, "minPlayers": 33, "name": "fPSvAtsn", "requestedRegions": ["eZr2QoWS", "VEbQkznO", "TlF1qG12"], "type": "xC45MhKE"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '9a3Isd6s' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "Zf4uDppk", "deployment": "IEtcxYbN", "inactiveTimeout": 48, "inviteTimeout": 19, "joinability": "BHOkXy5d", "maxPlayers": 0, "minPlayers": 92, "name": "i705e4WD", "requestedRegions": ["79G9F3Io", "lj9nJ1li", "OfkDTCd5"], "type": "5Rh7w5o3"}' '5Pc8XONH' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'ySLW5Ss9' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'VJrSshwk' 'UULhlJd1' 'tXWYTeTC' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"hZqt1Wxo": {}, "NCHNWv5Y": {}, "lbZatHor": {}}, "backfillTicketID": "LFcoljZO", "clientVersion": "JRPXdKuJ", "configurationName": "fSi08WGk", "deployment": "BwaiX16y", "inactiveTimeout": 35, "inviteTimeout": 2, "joinability": "6eoQ3Zl3", "matchPool": "NewTD7nk", "maxPlayers": 40, "minPlayers": 68, "requestedRegions": ["uUnEbRsA", "Spkm7y71", "lwLnoSql"], "serverName": "FqEsccvS", "teams": [{"UserIDs": ["OxwvWG1y", "mZEFbQBI", "aS1LYmiQ"]}, {"UserIDs": ["UPNWhbfl", "b0tkjlmx", "Lq9kmV4R"]}, {"UserIDs": ["lEcfIJmf", "c2x3KBIk", "QTmnNuxl"]}], "ticketIDs": ["IGRmY5XR", "0PaMM360", "rns6aTze"], "type": "FoxnwSIV"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"uuYWQLJi": {}, "6oRRjodu": {}, "lIkuGs96": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'qXKstxc4' --login_with_auth "Bearer foo"
session-get-game-session '9QhmW1kz' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"Z9hoxgfb": {}, "4K1zSrEd": {}, "0mdw9alB": {}}, "backfillTicketID": "PVB9tKaV", "clientVersion": "FVf6EnAr", "deployment": "pbhQfVwL", "inactiveTimeout": 96, "inviteTimeout": 59, "joinability": "U6iCbN41", "matchPool": "53lA9b67", "maxPlayers": 28, "minPlayers": 50, "requestedRegions": ["SU5rV2XT", "CFGuEqcS", "gxUQ50wN"], "teams": [{"UserIDs": ["VFzRM7Qa", "5QPvoeCH", "fn8E9dcg"]}, {"UserIDs": ["siEBTR2t", "P9IyCvx3", "StuTZfUr"]}, {"UserIDs": ["A1BYRXkF", "0m7Hpss7", "Se5bZ0RU"]}], "ticketIDs": ["ZtgnBuMc", "bm7ICYOf", "KDTjn36N"], "type": "vw1kznRM", "version": 32}' 'OVq3u73F' --login_with_auth "Bearer foo"
session-delete-game-session 'Qswkkuwl' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"EuW8FHDw": {}, "ZPplD1bL": {}, "UWQwwsjR": {}}, "backfillTicketID": "Wxk975xT", "clientVersion": "7vK0Eztn", "deployment": "rrIZ8Dzi", "inactiveTimeout": 47, "inviteTimeout": 89, "joinability": "epbesBsc", "matchPool": "xHoo0CAc", "maxPlayers": 13, "minPlayers": 31, "requestedRegions": ["VXFxk12z", "DvpIyGJ8", "e41twmp8"], "teams": [{"UserIDs": ["Q3LqsYlV", "brLjS9kF", "VUjx8NCD"]}, {"UserIDs": ["RbVx9AXr", "zECAkpaY", "WL0vjeaj"]}, {"UserIDs": ["ZU74UqW1", "BCtLlDL2", "N3AmcAtG"]}], "ticketIDs": ["0Bu45I0t", "Nf5oEvwJ", "LWN4Jyov"], "type": "oXsVbihT", "version": 73}' 'vMVRT27W' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "d9OQwnQD"}' 'TbxJqoHF' --login_with_auth "Bearer foo"
session-join-game-session 'gq4TgqpW' --login_with_auth "Bearer foo"
session-leave-game-session 'dnXNQIYm' --login_with_auth "Bearer foo"
session-public-game-session-reject 'HiSay6pb' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "zn6Djf87"}' --login_with_auth "Bearer foo"
session-public-get-party 'Z1OhCRve' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"7g95zXyK": {}, "ZOM6JWp8": {}, "8oBh4TYJ": {}}, "inactiveTimeout": 26, "inviteTimeout": 35, "joinability": "HKFcRSJm", "maxPlayers": 82, "minPlayers": 53, "type": "PsbCLBVA", "version": 10}' 'LTLY9MFJ' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"OlovcKdq": {}, "5OjzfOf5": {}, "hLYMABpi": {}}, "inactiveTimeout": 5, "inviteTimeout": 72, "joinability": "70ZRuK9p", "maxPlayers": 42, "minPlayers": 84, "type": "GqCUIKb6", "version": 50}' 'nDocTVPd' --login_with_auth "Bearer foo"
session-public-generate-party-code 'uPQhhfxp' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'NOSTMp8G' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "mWhQaERg"}' 'TgDitpwT' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "Y3TRQRW3"}' 'tuxRFKfk' --login_with_auth "Bearer foo"
session-public-party-join 'OeVrbtTn' --login_with_auth "Bearer foo"
session-public-party-leave 'l70VkQv4' --login_with_auth "Bearer foo"
session-public-party-reject '8tp4UCzQ' --login_with_auth "Bearer foo"
session-public-party-kick 'ThqJVpXB' 'jC891MdZ' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"tWtLifrO": {}, "z4MwThhQ": {}, "Ow4faRYu": {}}, "configurationName": "zNlrBWpH", "inactiveTimeout": 27, "inviteTimeout": 3, "joinability": "czlvoPtC", "maxPlayers": 51, "members": [{"ID": "u4ePCDwY", "PlatformID": "1dgdvnml", "PlatformUserID": "CHL7kQWx"}, {"ID": "FWwD4NwL", "PlatformID": "8NfjreOu", "PlatformUserID": "AA4vjhfH"}, {"ID": "6xzGx8IQ", "PlatformID": "aXgAaWoU", "PlatformUserID": "oW6mlDSA"}], "minPlayers": 5, "type": "KkkZSawd"}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "fAh6jXyl", "deployment": "gwnawkYQ", "inactiveTimeout": 83, "inviteTimeout": 66, "joinability": "5vzpe2EK", "maxPlayers": 74, "minPlayers": 77, "name": "mF7miNzL", "requestedRegions": ["t1irXgm3", "Itto8tTs", "jugMTdCJ"], "type": "AifTJ7v6"}' \
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
    'jG8T8NiD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "ih15wKQk", "deployment": "NSzZ1obI", "inactiveTimeout": 29, "inviteTimeout": 38, "joinability": "NaBCI26K", "maxPlayers": 12, "minPlayers": 3, "name": "hDiwhFxa", "requestedRegions": ["bsY27iYO", "sNZ7p5NS", "5IzjynLu"], "type": "y0wsXrLi"}' \
    '9FfiRmgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'Ny52W4LH' \
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
    'BlkEmX4O' \
    'pYCBEVCv' \
    'HHXH0FRO' \
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
    '{"attributes": {"PpXxsRbB": {}, "CA1uJFea": {}, "5IpaFqHX": {}}, "backfillTicketID": "BHNXNG9p", "clientVersion": "z5r8qyfc", "configurationName": "jEN1b28l", "deployment": "HDqud36J", "inactiveTimeout": 58, "inviteTimeout": 38, "joinability": "JAjwNR7H", "matchPool": "vXauP8S0", "maxPlayers": 63, "minPlayers": 99, "requestedRegions": ["W0Xm9oUk", "KJ9mTneQ", "GhP6TWtu"], "serverName": "Fymyniby", "teams": [{"UserIDs": ["6jcPvERJ", "wifye0l3", "cJXg6pDe"]}, {"UserIDs": ["3k5XTYWa", "4deQbnC6", "zohFIJKJ"]}, {"UserIDs": ["DpCpLcuP", "yaafi9qW", "xNWS5rEj"]}], "ticketIDs": ["5biQmrW2", "oeRdV6lH", "P2E6dslr"], "type": "crKyNPWR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"HY4bVElE": {}, "UG9pinqk": {}, "oo2qZ7tU": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'eI56wbdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'Cq58eIEW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"y3elKwge": {}, "7hCVDUsR": {}, "IYAPH6GD": {}}, "backfillTicketID": "JlQYi36B", "clientVersion": "K9yyaeng", "deployment": "zBAwYaPo", "inactiveTimeout": 92, "inviteTimeout": 45, "joinability": "rJHZDgYK", "matchPool": "IOOK63H1", "maxPlayers": 52, "minPlayers": 45, "requestedRegions": ["8Wh3MtzO", "8igjmP3A", "h9p7nN6n"], "teams": [{"UserIDs": ["dmM4ImxW", "kEFjcwLU", "0tBcQe6y"]}, {"UserIDs": ["3rkmivWt", "iJuE3XWf", "yQf5amwE"]}, {"UserIDs": ["00M7qL6M", "AtFZzHz0", "1SjBeMsI"]}], "ticketIDs": ["r3dxPYL3", "EstG52jJ", "hTImWK27"], "type": "d1KuVlsn", "version": 17}' \
    'ulSy7MY1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'SPUu9Jhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"A7Quwrwd": {}, "DIQC2iEV": {}, "c9pYnDgC": {}}, "backfillTicketID": "OCNzxMZC", "clientVersion": "xL6VtoBN", "deployment": "YXuPNTg9", "inactiveTimeout": 48, "inviteTimeout": 68, "joinability": "czoQ0kDr", "matchPool": "5WDM2tmW", "maxPlayers": 90, "minPlayers": 11, "requestedRegions": ["qdNWKGmL", "crCSPsKr", "CuNYzgE1"], "teams": [{"UserIDs": ["2ZVuM5Vh", "iC90VpQ2", "ngvRjBgL"]}, {"UserIDs": ["kws4sWbR", "viViPvsE", "fMuzzrV6"]}, {"UserIDs": ["X7x7OV5A", "QXvG68DS", "NgMfprBg"]}], "ticketIDs": ["PAcNm8Py", "wJD1563C", "HoVxTGbO"], "type": "uQXOhkIc", "version": 69}' \
    'TlQlg0EP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "l6kwp8oU"}' \
    'TjXrAhMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '5gQG2r7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'Bm08u1a8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'VMheriRF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "MygeDKRG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'qk7qtQLv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"XDjPpddN": {}, "bi0AhJQK": {}, "1tZ15WQu": {}}, "inactiveTimeout": 66, "inviteTimeout": 7, "joinability": "9C5oyTsZ", "maxPlayers": 77, "minPlayers": 64, "type": "SQYPBo3K", "version": 41}' \
    'yhR3WRtG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"AGOHgi8a": {}, "jB70BrQ2": {}, "ZLNK6mvq": {}}, "inactiveTimeout": 39, "inviteTimeout": 45, "joinability": "Gy1vVG5S", "maxPlayers": 32, "minPlayers": 24, "type": "q9EXbObf", "version": 79}' \
    'a9pCyETM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'tput0iAw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'hOaDDpjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "mgYwbjPJ"}' \
    'PimjPLI2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "BhrxYOjL"}' \
    'Xyk8lLOU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'gglVZQi9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '9twQMe39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'HegodqiT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'DWadqINz' \
    'TMFR9jz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"fqTIj98z": {}, "gHA9Zxkm": {}, "ovI26KHF": {}}, "configurationName": "kDB97uxp", "inactiveTimeout": 12, "inviteTimeout": 27, "joinability": "q3EN2pzN", "maxPlayers": 85, "members": [{"ID": "e8bYVOAz", "PlatformID": "G4kDkuvm", "PlatformUserID": "OtMYwblg"}, {"ID": "pjC9jeVs", "PlatformID": "nl2PXwE0", "PlatformUserID": "VWXOq7B5"}, {"ID": "Gznw6zQ4", "PlatformID": "2JEthBYt", "PlatformUserID": "XH60o2O1"}], "minPlayers": 91, "type": "bTdqGZbw"}' \
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
