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
session-admin-create-configuration-template-v1 '{"clientVersion": "SzE54kIe", "deployment": "TxNQM7QJ", "inactiveTimeout": 9, "inviteTimeout": 99, "joinability": "WEAgsnTG", "maxPlayers": 59, "minPlayers": 21, "name": "N7osGxzo", "requestedRegions": ["FPtXcc84", "Y7mZwxjA", "qnPD5VOH"], "textChat": false, "type": "w9YGq0hL"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'lJhLk6JG' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "WFzasxkx", "deployment": "QHjm2jG7", "inactiveTimeout": 58, "inviteTimeout": 31, "joinability": "Re5f05MX", "maxPlayers": 28, "minPlayers": 32, "name": "28XtMWA7", "requestedRegions": ["X9h1tvrl", "TZDwEheV", "cGpBQgdQ"], "textChat": false, "type": "hLlExdsW"}' 'vlGBrD74' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'vCJZjDjf' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'pjmWsSRF' 'sTzSQPsk' 'yRrkFNON' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'Rjz9qKVs' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"Ppow6Ooh": {}, "y0aCCl0A": {}, "02ES0El7": {}}, "backfillTicketID": "NQafYuwC", "clientVersion": "jElIwI0n", "configurationName": "g12ygNAh", "deployment": "SKOoWfAB", "inactiveTimeout": 29, "inviteTimeout": 13, "joinability": "a0Y1mjqh", "matchPool": "9YoXPH1V", "maxPlayers": 15, "minPlayers": 4, "requestedRegions": ["tNqy0bjx", "eBPy36yL", "m9mdeWsO"], "serverName": "3kzTKmPT", "teams": [{"UserIDs": ["VuMpf6b9", "vBgelMuC", "7TT1ghoc"], "parties": [{"partyID": "NkMOmUzC", "userIDs": ["vFOIoWnk", "UFaTP7YN", "J85Q7zls"]}, {"partyID": "ntluMc1i", "userIDs": ["NMqmrCFy", "js5uiHsF", "6tSGj526"]}, {"partyID": "Z0EJTg0r", "userIDs": ["xxQyzwFq", "blhOpkLD", "Udlhddww"]}]}, {"UserIDs": ["R1qrQNMp", "RAF8CiaC", "uRmENuCE"], "parties": [{"partyID": "fHO2Rhya", "userIDs": ["0Djf6Twn", "WnNSCpq0", "6dK4wrI2"]}, {"partyID": "2jDDWs1J", "userIDs": ["6hu9yLva", "OCAPR4rM", "1Zc1IDmK"]}, {"partyID": "Zgy7z82m", "userIDs": ["pWkgE1CE", "MqItCjMU", "BSPgdJt3"]}]}, {"UserIDs": ["J59Cz82w", "DNH0PM4H", "ZdPLqa1V"], "parties": [{"partyID": "fa3bjRat", "userIDs": ["lWpGBvO6", "ZlAhzORT", "XsVQ3k2U"]}, {"partyID": "JxISabrI", "userIDs": ["x0TGuXu3", "QLCVYMPa", "AiM9JuCy"]}, {"partyID": "yQM68vDW", "userIDs": ["YDqPzH33", "psMFf5Cu", "gKdrM82F"]}]}], "textChat": true, "ticketIDs": ["Rqy5JJ6r", "Bw2jjTbN", "sIGuLCIu"], "type": "8pdbF9Mw"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"Loht4WuS": {}, "lB1kpUK3": {}, "qrGoEqxy": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'fVhVjWT7' --login_with_auth "Bearer foo"
session-get-game-session 'TCtdXySZ' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"WJmgj5Sa": {}, "53rar8Vf": {}, "nt0J7mDQ": {}}, "backfillTicketID": "uczEfLoW", "clientVersion": "PjXD826u", "deployment": "EYIvCJ3A", "inactiveTimeout": 52, "inviteTimeout": 18, "joinability": "gtIGpplK", "matchPool": "yb1odLln", "maxPlayers": 70, "minPlayers": 99, "requestedRegions": ["jYev39y3", "DnVwy7Ya", "s23xK66Z"], "teams": [{"UserIDs": ["yBGyht7X", "nDQ592Iz", "JpcOFJ9H"], "parties": [{"partyID": "X8AKiOJi", "userIDs": ["2ghHB4cV", "T3efg7jG", "NTggQr6j"]}, {"partyID": "FYwYIe5Z", "userIDs": ["7lpIMznT", "eBEc5Cts", "uViAm7An"]}, {"partyID": "oQSrDlGF", "userIDs": ["bDJG8JzK", "Hr6Rat2o", "oAfiONj8"]}]}, {"UserIDs": ["vaESzVcz", "mUWf616T", "MPTf0HXl"], "parties": [{"partyID": "BJpppsfu", "userIDs": ["OhtkXqwm", "PTJsREJk", "6DTIiG5g"]}, {"partyID": "jWfZdJdJ", "userIDs": ["Sd3lAPGS", "vPUizsXB", "HhlwImCt"]}, {"partyID": "PPO6j34w", "userIDs": ["eNgqLx5H", "wJlNpVNZ", "vMcV3ekQ"]}]}, {"UserIDs": ["vdtwj1Lb", "eLu3Sc8H", "PEyXK2lZ"], "parties": [{"partyID": "2X1yiy1G", "userIDs": ["n9aZUUAy", "I1S14JiC", "Byp3VTfT"]}, {"partyID": "SxfdDNi8", "userIDs": ["ToFBSGSM", "s3srGYNE", "DdVW6O0J"]}, {"partyID": "rLiJJlzt", "userIDs": ["wAIV0I3S", "3cFq5okS", "JjrUcYGG"]}]}], "ticketIDs": ["GvvKDAa5", "7cD8ux75", "Sv70X6vN"], "type": "nXBI8JRm", "version": 1}' 'vfcPDoBd' --login_with_auth "Bearer foo"
session-delete-game-session 'L1w3RpK0' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"Ro6TLXUc": {}, "ngYMTuue": {}, "ldVMDC5L": {}}, "backfillTicketID": "THC0oG2H", "clientVersion": "LAqdQpzt", "deployment": "EqNiqVoP", "inactiveTimeout": 21, "inviteTimeout": 14, "joinability": "ABX0zEmH", "matchPool": "ERfKlDZH", "maxPlayers": 95, "minPlayers": 10, "requestedRegions": ["EhcLKpXj", "VDkN2iem", "mMiHinS9"], "teams": [{"UserIDs": ["tA5pgX32", "MSKYHwA0", "we88Uedf"], "parties": [{"partyID": "HXWYoiJf", "userIDs": ["uArfSYkX", "ZlFIJLxj", "X1ZloaTB"]}, {"partyID": "E2FWAWXP", "userIDs": ["8DDYteC1", "IMHf4M7o", "nRE9bvyx"]}, {"partyID": "VAjmZbEh", "userIDs": ["gwFUVEnM", "JCIkoaV0", "qFHRv7dK"]}]}, {"UserIDs": ["I9595OEv", "qHpO3siX", "BT7Mj2cu"], "parties": [{"partyID": "NVRmTmZe", "userIDs": ["F8CwoKaq", "PgmkcYYX", "lPED8B6s"]}, {"partyID": "53UHljrA", "userIDs": ["AEffMyfr", "mhdB2c2u", "EOyJaNpQ"]}, {"partyID": "r7FkKH6y", "userIDs": ["GEYIe8aR", "sobRCOoW", "jbXXOxTE"]}]}, {"UserIDs": ["6vil9Ory", "7wotE64y", "c6st4Wgo"], "parties": [{"partyID": "C2vCIdvh", "userIDs": ["BJFzWvfK", "FBDZmIuN", "tyO2oGXB"]}, {"partyID": "8dphT3Mf", "userIDs": ["poHgQ5oT", "qKpabV64", "o8dbZT2A"]}, {"partyID": "Ks8GJk8W", "userIDs": ["MqWyPORA", "jmZ0Jxut", "06JTmoLi"]}]}], "ticketIDs": ["oURCA5Ym", "7mbdbZ8x", "RXxBMeXC"], "type": "uYDyDWR4", "version": 91}' 'dCRALm3n' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "HKdXNAvj"}' 'HPpxARY2' --login_with_auth "Bearer foo"
session-join-game-session 'LnWm0p3b' --login_with_auth "Bearer foo"
session-leave-game-session 'MNGduhC4' --login_with_auth "Bearer foo"
session-public-game-session-reject '7Zy9oYJu' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "cwJjWhaC"}' --login_with_auth "Bearer foo"
session-public-get-party 'Dx3Ts345' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"tGEv5tZS": {}, "SLJnYqDS": {}, "6uLki4RA": {}}, "inactiveTimeout": 67, "inviteTimeout": 12, "joinability": "dRq8aj3G", "maxPlayers": 100, "minPlayers": 5, "type": "qpwM0EEV", "version": 79}' 'B1gv4uTD' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"bVE1y0rG": {}, "inPsmqd7": {}, "PWVCBEh0": {}}, "inactiveTimeout": 32, "inviteTimeout": 48, "joinability": "ndDXGE8z", "maxPlayers": 18, "minPlayers": 4, "type": "2e4MBBvy", "version": 55}' 'UOP2Lm15' --login_with_auth "Bearer foo"
session-public-generate-party-code 'n2eaTc7D' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'X1gCbSGh' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "dLb976IM"}' 'zP1gPDwM' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "TH89hoyR"}' 'zZyCS5G2' --login_with_auth "Bearer foo"
session-public-party-join 'fhjQmn9w' --login_with_auth "Bearer foo"
session-public-party-leave '2ziiRn79' --login_with_auth "Bearer foo"
session-public-party-reject 'dyz6zdxC' --login_with_auth "Bearer foo"
session-public-party-kick 'WWVFyMMT' '6tuNBaLi' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"XOybzdbc": {}, "Ennx9W9P": {}, "a6BGlPd7": {}}, "configurationName": "sBICBWRr", "inactiveTimeout": 51, "inviteTimeout": 80, "joinability": "qbxg4zHA", "maxPlayers": 23, "members": [{"ID": "fzIWxdWC", "PlatformID": "tf0LL6dX", "PlatformUserID": "okE7UQFH"}, {"ID": "5wB3Zs4G", "PlatformID": "bwS91xTk", "PlatformUserID": "UnsFQTjB"}, {"ID": "fr9RBlbZ", "PlatformID": "8FYwvmoc", "PlatformUserID": "Y0awlSKT"}], "minPlayers": 1, "textChat": true, "type": "BV1aJVSX"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "data": {"bf1qxv4o": {}, "dKRFwB9O": {}, "Ho9iPOqz": {}}, "platforms": [{"name": "0fWZmLlg", "userID": "KFjbyFOX"}, {"name": "NjfbpZM9", "userID": "8J09NlFD"}, {"name": "qyjV1yYs", "userID": "IqlARob0"}]}' --login_with_auth "Bearer foo"
session-public-delete-player-attributes --login_with_auth "Bearer foo"
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
echo "1..42"

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
    '{"clientVersion": "0nSHxdyQ", "deployment": "r9XxDVzV", "inactiveTimeout": 4, "inviteTimeout": 95, "joinability": "L0Ss4fay", "maxPlayers": 6, "minPlayers": 21, "name": "09I6H2LC", "requestedRegions": ["2GGB5kmi", "F7XIQs1a", "QjMDlx87"], "textChat": true, "type": "xPgeRxnd"}' \
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
    'YpKaI0fm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "4J06nFz2", "deployment": "NutVaVxb", "inactiveTimeout": 6, "inviteTimeout": 47, "joinability": "U7ngj8BC", "maxPlayers": 35, "minPlayers": 60, "name": "vKznh6US", "requestedRegions": ["99TbkvgS", "aW9FxmrX", "MRVwPRfu"], "textChat": true, "type": "0duIj486"}' \
    'fID3ZXWE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'zsFjL0m5' \
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
    'fIW0mYhb' \
    'MWJmJVfs' \
    'HK95769s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'OQaWdkDL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"Fq812kaN": {}, "RNTyZ791": {}, "QHMivjCJ": {}}, "backfillTicketID": "hLsdGt9q", "clientVersion": "ot3ighJl", "configurationName": "pSctq7JE", "deployment": "H7kaEoal", "inactiveTimeout": 50, "inviteTimeout": 82, "joinability": "MVzyCTtP", "matchPool": "Yv7IovOS", "maxPlayers": 68, "minPlayers": 96, "requestedRegions": ["Ni0foAko", "3erwiNxl", "Ygb60H9C"], "serverName": "DZQ3Terl", "teams": [{"UserIDs": ["7rT4yp5C", "F7cdDBWn", "F6kT3miZ"], "parties": [{"partyID": "kzXvSyQZ", "userIDs": ["EPYBHl9r", "RMeWp3c0", "gutVBdyt"]}, {"partyID": "vt6VqxvV", "userIDs": ["Kvvebzcr", "oVp8Ea0Y", "2jMZfZpf"]}, {"partyID": "qE0MCApi", "userIDs": ["U7XDzVpg", "N2IHRocT", "Uok9d1s2"]}]}, {"UserIDs": ["sSJipw2w", "BQ4IGCCy", "znYhFcxy"], "parties": [{"partyID": "92dEi2Fd", "userIDs": ["w4VTOn8K", "556tmgSc", "QwxSyB6A"]}, {"partyID": "vYk40cF3", "userIDs": ["1YU6gGl6", "dBrtghBr", "fhjeHvHZ"]}, {"partyID": "Q6rjId99", "userIDs": ["3j2Cwegt", "9YMnjQAD", "t1mQ61vf"]}]}, {"UserIDs": ["UfzahYmC", "97BTF8vV", "UsbbO3Gu"], "parties": [{"partyID": "S4FlLpsk", "userIDs": ["KEUfjSkQ", "yzyvFOL3", "2fScftFZ"]}, {"partyID": "JDdhUuG6", "userIDs": ["lBC67DyX", "LIO16pqD", "GhPwrHVv"]}, {"partyID": "BitQIoI8", "userIDs": ["KmgNOIZu", "4zFZLjgN", "3RXU7yxb"]}]}], "textChat": true, "ticketIDs": ["vBHXdcZI", "uFdYCZZd", "bN5BtVUH"], "type": "J9IbvAfy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"dX6MOBuS": {}, "pFGSL1NY": {}, "F4HiJELY": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'mkKrHR5A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'kwlIF6CJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"HpDKWTIq": {}, "kM8X0OkR": {}, "0P18oA5i": {}}, "backfillTicketID": "CKocijmZ", "clientVersion": "5gs3g0eO", "deployment": "yYweuWfF", "inactiveTimeout": 65, "inviteTimeout": 93, "joinability": "hVlQCTMy", "matchPool": "64W0dxxH", "maxPlayers": 40, "minPlayers": 21, "requestedRegions": ["EoIhWi0r", "ynEQhATn", "ZMiA3oko"], "teams": [{"UserIDs": ["XZfc0Zsu", "lMB1HXY2", "D7Pw3jgn"], "parties": [{"partyID": "PhAcypef", "userIDs": ["kgMlltit", "cwDXatbJ", "TcipH7DP"]}, {"partyID": "zMZK33MR", "userIDs": ["n4FuZ4YW", "Li1TtGFM", "mAdHev8B"]}, {"partyID": "DU7jPJjM", "userIDs": ["rXkWkcXT", "m3ZjSbrb", "pnzeDiOA"]}]}, {"UserIDs": ["BF6YsoV3", "kMdOJjky", "F1GnYWvn"], "parties": [{"partyID": "smTBb7Ok", "userIDs": ["K6ejlISV", "OZuRp8Wj", "gFziGpHL"]}, {"partyID": "khMsuPSJ", "userIDs": ["EOP15wAH", "KQttzppp", "lB150fw6"]}, {"partyID": "aFhYN5fi", "userIDs": ["a1Av71E2", "fB8Vt1lg", "ldi9vqQ1"]}]}, {"UserIDs": ["fxyAPwJ8", "yusszLSg", "IhuJ8TC4"], "parties": [{"partyID": "SprtqORH", "userIDs": ["PW3UX26R", "v5IJ4N0z", "TZ1vw9Wl"]}, {"partyID": "DxEGoWMI", "userIDs": ["eh2gjdvD", "FlBG245A", "DslvxsUh"]}, {"partyID": "QgXX2Eek", "userIDs": ["x6gtr2On", "vJDfB8iC", "qtSqgHuZ"]}]}], "ticketIDs": ["6S6e8rKD", "CWZzqeAs", "VheMLukM"], "type": "j4JyejG5", "version": 80}' \
    'POPpfKIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'LT98Bp8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Es95Bwtf": {}, "8divO1ts": {}, "m1JPfRZy": {}}, "backfillTicketID": "xxfMj0qT", "clientVersion": "ckWUB22u", "deployment": "TDOKAfma", "inactiveTimeout": 17, "inviteTimeout": 9, "joinability": "aUuu7GSr", "matchPool": "JIYzmKSa", "maxPlayers": 62, "minPlayers": 92, "requestedRegions": ["pWb0UYLE", "nvJlhNdd", "vtr61wht"], "teams": [{"UserIDs": ["e7DKYGTi", "ZqZD9oOE", "XSGe1Boi"], "parties": [{"partyID": "KQLiht5r", "userIDs": ["hJ3L5yiz", "PwtBXkCp", "4avdmCWf"]}, {"partyID": "7bXwkDuf", "userIDs": ["HqCe3XXs", "vFRggONK", "FGZH6xZe"]}, {"partyID": "P6T82Pmg", "userIDs": ["Mesa1sSk", "7ywdiTc2", "i38AXR9H"]}]}, {"UserIDs": ["5Y6MsPD3", "46uGRyy9", "Xq5atz1I"], "parties": [{"partyID": "tKP9sKEa", "userIDs": ["8Jb8qiww", "OR581nUM", "DcdsS7Aq"]}, {"partyID": "WhmerZ2K", "userIDs": ["PFzHkGhu", "tORXfoin", "pMoR2Z4Q"]}, {"partyID": "yyXeLKgB", "userIDs": ["6QmYOAKL", "abLyJjox", "wMPUe0qA"]}]}, {"UserIDs": ["G233v1Ra", "P1PwoBGC", "KvEqqHlS"], "parties": [{"partyID": "SmfbcQrN", "userIDs": ["YJ0C4UmJ", "S4flIii3", "mBUDOd49"]}, {"partyID": "8uysreja", "userIDs": ["lvMxhOoV", "1M1yrsvX", "JbHw8YXH"]}, {"partyID": "P6Gwtqse", "userIDs": ["mxrJ6Ddp", "wBtKtm1t", "YPE96jn3"]}]}], "ticketIDs": ["rLOWdWk4", "exKozuss", "BOBtbmjW"], "type": "pTbmJPXS", "version": 55}' \
    'wn2AUELn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "rOyAEF8s"}' \
    '2e7sW5NA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '1puEktNp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'VoENCJkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'sQWQhz9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "uEj2EIEE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'Fctt4nwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"cG41n8E4": {}, "YxbZzqhX": {}, "bDQkEbyE": {}}, "inactiveTimeout": 6, "inviteTimeout": 26, "joinability": "kZIG621a", "maxPlayers": 11, "minPlayers": 35, "type": "mFNsq7KO", "version": 88}' \
    'lJQ8dQKd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"bAzIfSMG": {}, "AGj5v0oi": {}, "rPla3nVk": {}}, "inactiveTimeout": 20, "inviteTimeout": 7, "joinability": "cHFFKJMV", "maxPlayers": 29, "minPlayers": 8, "type": "nrawac3h", "version": 54}' \
    'miAtX887' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'TDaxn2HZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'uxCalW2V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "BfY7dQFI"}' \
    'sLX2qqvs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "uGwrnQ7t"}' \
    'zDmEwpRB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'TrHm2lpA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'vn4MdPZ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'mY6VxmXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '8Gijew0r' \
    'y91Zj5vN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"w8669m3I": {}, "rpRx6WV2": {}, "Yt0iAhfZ": {}}, "configurationName": "UxlK7Hf0", "inactiveTimeout": 50, "inviteTimeout": 97, "joinability": "9302ufaV", "maxPlayers": 3, "members": [{"ID": "CdJzmAaT", "PlatformID": "cT7qIn9s", "PlatformUserID": "I1wHlmAT"}, {"ID": "eT2GItv9", "PlatformID": "hnPvN0Xe", "PlatformUserID": "PWqBmp7b"}, {"ID": "Y5ux6jR7", "PlatformID": "cYvt1BNO", "PlatformUserID": "sGWYBiNE"}], "minPlayers": 67, "textChat": true, "type": "M6WVhpi5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicCreateParty' test.out

#- 38 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetPlayerAttributes' test.out

#- 39 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "data": {"tKs59Jsu": {}, "1G97JqX2": {}, "Np1OQE6R": {}}, "platforms": [{"name": "QWNqoGvY", "userID": "ceGnpADD"}, {"name": "i4VKmyRc", "userID": "R0uXfPU3"}, {"name": "CiGAPYVl", "userID": "l9Jzh2Jn"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicStorePlayerAttributes' test.out

#- 40 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicDeletePlayerAttributes' test.out

#- 41 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
