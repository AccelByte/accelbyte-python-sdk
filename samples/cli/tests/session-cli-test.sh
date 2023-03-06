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
session-admin-create-configuration-template-v1 '{"clientVersion": "EAxcVpFr", "deployment": "ttufHIRd", "inactiveTimeout": 68, "inviteTimeout": 59, "joinability": "9UzVRiXb", "maxPlayers": 33, "minPlayers": 1, "name": "lAw7r6W2", "requestedRegions": ["ktQG0h5J", "Aav5kRa6", "2WopBJHP"], "textChat": true, "type": "AMTwE6I5"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '6IaRDBXx' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "yaNoMR6h", "deployment": "kspInrAi", "inactiveTimeout": 31, "inviteTimeout": 82, "joinability": "6lyzSxwE", "maxPlayers": 24, "minPlayers": 52, "name": "FHHdgs21", "requestedRegions": ["Jub74CUk", "NmKJfh5p", "UkHODpoM"], "textChat": true, "type": "78NY4YkH"}' 's1cnz1JS' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'DgY1TXp3' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member '8zsCTCrb' 'CbPOyNQk' 'T7NvyE3c' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'wyALczNI' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"icXm7agS": {}, "rjJW2OQN": {}, "Os1PXhT5": {}}, "backfillTicketID": "FvdiRilZ", "clientVersion": "7oFgx4c8", "configurationName": "OumKtPDK", "deployment": "JDXn7Z4U", "inactiveTimeout": 14, "inviteTimeout": 66, "joinability": "su8Xfqlq", "matchPool": "NiTvB6Sd", "maxPlayers": 55, "minPlayers": 30, "requestedRegions": ["dIhUDrwo", "Z5MecdKi", "5r6QEa1y"], "serverName": "sLEzth6m", "teams": [{"UserIDs": ["XhzkzWkF", "eZSoEAcB", "dW19m4eu"], "parties": [{"partyID": "6d5tA5jU", "userIDs": ["miTqpyhP", "FdxLzFQN", "05MYzYiK"]}, {"partyID": "We5dNRlj", "userIDs": ["v7IPrDQQ", "Rgat0Sev", "kLGMS0ly"]}, {"partyID": "uI9a2I9u", "userIDs": ["6Vpbsx5w", "8hqUI06U", "pOXGSLmC"]}]}, {"UserIDs": ["VuHOPlLl", "kvR8sKgn", "uRkgghGo"], "parties": [{"partyID": "YupD391C", "userIDs": ["2qtPYoka", "hFjkQsfC", "aTmt1d67"]}, {"partyID": "FXGk2s9Q", "userIDs": ["0mPVo3tw", "u0MesTCf", "9x4rt69l"]}, {"partyID": "na7qxNeI", "userIDs": ["xPz6MbwL", "6IY69z1U", "aLqYSYWy"]}]}, {"UserIDs": ["tLPziZMd", "jxcBZufQ", "xGiHPllG"], "parties": [{"partyID": "4cYEzfTD", "userIDs": ["1ZBm3MqH", "cUmLZZbS", "qb8RwNmn"]}, {"partyID": "9HrNQy4u", "userIDs": ["ZAAiE0mi", "t9RGCCHY", "zUOcEdsc"]}, {"partyID": "KHPEqgA8", "userIDs": ["yu7Vk6Jt", "4Ymos9Jc", "dos4fYcT"]}]}], "textChat": false, "ticketIDs": ["U6RBt0zY", "oMcHyCUE", "XlAvxJMd"], "type": "alwSyliW"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"MNW5NyLu": {}, "0M3VHh2E": {}, "I8JlDbPW": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'bQ6Q9lNm' --login_with_auth "Bearer foo"
session-get-game-session 'qRBaAkLn' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"vxkT1X68": {}, "cmDc3fxU": {}, "8MyKrQpM": {}}, "backfillTicketID": "4hkkK6KK", "clientVersion": "XNB3Gv0I", "deployment": "qmF51Tkh", "inactiveTimeout": 19, "inviteTimeout": 32, "joinability": "Ynaq6foW", "matchPool": "vXa3bMrX", "maxPlayers": 38, "minPlayers": 18, "requestedRegions": ["Dr6kILsS", "SyDdmykm", "oPYgc2L4"], "teams": [{"UserIDs": ["jk4Lo0LS", "P0pf4Ixj", "Ukl535X3"], "parties": [{"partyID": "ateEKDpA", "userIDs": ["Dz1x3poD", "3Qgb3boL", "QQ1MzH7Q"]}, {"partyID": "m8bwbmXg", "userIDs": ["dAPh1ETh", "G96gAFKK", "2WDgCcxv"]}, {"partyID": "ONZm3EeE", "userIDs": ["RmDnyeFo", "F7VSZ6pf", "3vneSD2T"]}]}, {"UserIDs": ["b3g7mSQU", "hAEtrmjq", "U6YE3p4l"], "parties": [{"partyID": "Sck0ZHn5", "userIDs": ["GI39YBHq", "aTHeKtW1", "8iGeUlc9"]}, {"partyID": "d9sogWa2", "userIDs": ["4CKNS0Gq", "VvUfHQvs", "HXNUNe4m"]}, {"partyID": "hgo5QB65", "userIDs": ["lSAiYnNj", "kfZrQvGg", "bLdLsFzH"]}]}, {"UserIDs": ["kBMr1yrO", "MlNFSrUE", "irnjX9fD"], "parties": [{"partyID": "mIbeZxzf", "userIDs": ["TcyiuATu", "s9hsfpFD", "cSDG8aMV"]}, {"partyID": "GLiBNrDj", "userIDs": ["qoxcwgGL", "XpUL4pp2", "ncYAHdNz"]}, {"partyID": "DmeIP6rO", "userIDs": ["vDz9KOsb", "392k6YmJ", "FfRByjlB"]}]}], "ticketIDs": ["iuFM3FIo", "Vk8T3GpA", "nkCmBUqg"], "type": "2SCnqntX", "version": 50}' '0DOqOBSC' --login_with_auth "Bearer foo"
session-delete-game-session '2DKHRuPM' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"MWH8Yb33": {}, "T5UBJCjf": {}, "cnLRfxeC": {}}, "backfillTicketID": "Sz9WEi8K", "clientVersion": "lloeH0JT", "deployment": "1yduat2v", "inactiveTimeout": 88, "inviteTimeout": 100, "joinability": "R3biBfsu", "matchPool": "4jmsRE2w", "maxPlayers": 82, "minPlayers": 50, "requestedRegions": ["XQAk4mqr", "xzTtuLl4", "XlbGL8QO"], "teams": [{"UserIDs": ["xtjzm8y2", "wNhmwoYZ", "yI4EFZKB"], "parties": [{"partyID": "cYrCEAE7", "userIDs": ["WIsfmx40", "NLRc6m8h", "eKnWhzfe"]}, {"partyID": "2NubeoKF", "userIDs": ["eIaFQCYo", "DPICpndu", "EEQlULdJ"]}, {"partyID": "z4mnRBkM", "userIDs": ["NxvvKgAT", "8mJrYq6h", "RkloqxM3"]}]}, {"UserIDs": ["gpwxcfMy", "9XzjjI5Y", "bsKoADkz"], "parties": [{"partyID": "JEN2VHzi", "userIDs": ["h3bit0VW", "n3CO39PX", "DNxtXgeO"]}, {"partyID": "3FgkXhjD", "userIDs": ["zaQY3snn", "2ZkP7cFd", "P43e5dC9"]}, {"partyID": "XIBudfZg", "userIDs": ["rbHDIDm4", "hMzF4Txo", "denSrUTv"]}]}, {"UserIDs": ["fqU0bfoM", "m5cTtFWb", "otQyXJRc"], "parties": [{"partyID": "QWsmqPNs", "userIDs": ["92epxk0i", "8VxsZNer", "eSvf9699"]}, {"partyID": "mCEHThUJ", "userIDs": ["kETAsSp7", "gh4TeUTk", "OkAYfJB8"]}, {"partyID": "AT9t4Tv2", "userIDs": ["07Y2QD3o", "D5fLCr3O", "OlXVv8ZG"]}]}], "ticketIDs": ["F7uYnGzp", "ipNDigNJ", "ma1MbqqZ"], "type": "tfNWql4n", "version": 26}' '4lkKB4EY' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "OkQ1jMD3"}' 'cym8xIfk' --login_with_auth "Bearer foo"
session-join-game-session 'OVW2grRE' --login_with_auth "Bearer foo"
session-leave-game-session 'OLx0KOww' --login_with_auth "Bearer foo"
session-public-game-session-reject '3HICQLfl' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "7MUBG7qt"}' --login_with_auth "Bearer foo"
session-public-get-party 'Pu64yAtU' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"RKLRkb73": {}, "8HGS6rDg": {}, "MdIIlhS1": {}}, "inactiveTimeout": 11, "inviteTimeout": 91, "joinability": "QgXjvyGJ", "maxPlayers": 85, "minPlayers": 94, "type": "N4eXbJE5", "version": 97}' 'Kv6ecnEe' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"vcAx2K2z": {}, "kRenmPZn": {}, "GBt4P7Wn": {}}, "inactiveTimeout": 2, "inviteTimeout": 86, "joinability": "dSJtjX7Z", "maxPlayers": 37, "minPlayers": 13, "type": "hZyZl5x4", "version": 3}' 'zGdKvOPd' --login_with_auth "Bearer foo"
session-public-generate-party-code 'q5xrgxSm' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'y1DN9LFk' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "YW5DQyj4"}' 'bj5Ro2og' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "aKt2ujQS"}' 'a3Zdb65U' --login_with_auth "Bearer foo"
session-public-party-join 'Xmy0Zp6i' --login_with_auth "Bearer foo"
session-public-party-leave 'IaTIKUkm' --login_with_auth "Bearer foo"
session-public-party-reject 'kk9QM0NB' --login_with_auth "Bearer foo"
session-public-party-kick 'MA9ORxpz' 'wLR2AK6e' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"XUGPJsw1": {}, "fiP80G9P": {}, "clxcft2u": {}}, "configurationName": "lIJzPyrV", "inactiveTimeout": 62, "inviteTimeout": 16, "joinability": "uNFviMar", "maxPlayers": 43, "members": [{"ID": "GKHhMRWL", "PlatformID": "Vd3DlhLu", "PlatformUserID": "IpomM8sm"}, {"ID": "1MiaI1mX", "PlatformID": "2tJoARtd", "PlatformUserID": "bBe7udsM"}, {"ID": "rok0WvGY", "PlatformID": "Ynx4V709", "PlatformUserID": "xbnGezKs"}], "minPlayers": 60, "textChat": false, "type": "wG2omOR2"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "data": {"Vg8JqU0j": {}, "ZpjvsugA": {}, "OS7u8RiW": {}}, "platforms": [{"name": "yerCSa8S", "userID": "RgwsAj1i"}, {"name": "k1jglaDX", "userID": "TvKCWwNT"}, {"name": "Ahd2wrS0", "userID": "uPdjhdin"}]}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "png5BLy8", "deployment": "wbhMssAH", "inactiveTimeout": 19, "inviteTimeout": 41, "joinability": "apIkY9Rf", "maxPlayers": 34, "minPlayers": 46, "name": "B5F93zFQ", "requestedRegions": ["bJndUDpd", "ONneAczb", "BdHb2slt"], "textChat": false, "type": "B1SmZp2J"}' \
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
    'Zp50CnPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "71ORYcmQ", "deployment": "bTU5JX8c", "inactiveTimeout": 4, "inviteTimeout": 21, "joinability": "LjMXJRk0", "maxPlayers": 9, "minPlayers": 62, "name": "aKQDOJvr", "requestedRegions": ["TefglSs6", "g4iY9u02", "aCNYIWek"], "textChat": true, "type": "uUjjt9lI"}' \
    'MGql5ElE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'a9EIIlGc' \
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
    'HB3CfR3n' \
    'cDlwi3v3' \
    'MFFJ1Kes' \
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
    'KoELCpob' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"BEG8X645": {}, "xpdXpai0": {}, "rYaT5hOP": {}}, "backfillTicketID": "jaf3H0tY", "clientVersion": "ighU0VUf", "configurationName": "cYHJbBfA", "deployment": "KSiPW3Vg", "inactiveTimeout": 37, "inviteTimeout": 69, "joinability": "ZXiR1DJ7", "matchPool": "HVWqMkNS", "maxPlayers": 1, "minPlayers": 55, "requestedRegions": ["wQUWDFJv", "JBWic7Uk", "BeIXuqDu"], "serverName": "AXI66bQ7", "teams": [{"UserIDs": ["1w0deoV9", "Lx5RDA1l", "2XcrciYN"], "parties": [{"partyID": "EzvSZIPk", "userIDs": ["hSgORcz5", "S5BvmgBL", "xh4ijFnE"]}, {"partyID": "3Tam69qS", "userIDs": ["Z7PC6f6Q", "kmZXElW9", "YfRSse6A"]}, {"partyID": "Az3S4czz", "userIDs": ["0QKFlAVm", "VLu4AOec", "0z8eBeeo"]}]}, {"UserIDs": ["ip68J1ns", "v4W2OJht", "afxMSJlH"], "parties": [{"partyID": "eb34sZKH", "userIDs": ["cl5LLLOe", "xL4fZvWt", "ND2tcBFp"]}, {"partyID": "X8lNtFEJ", "userIDs": ["7tnkY6Mc", "a5afj12K", "2IzrBvvW"]}, {"partyID": "m4udE0OX", "userIDs": ["udXgNne8", "kJATwlc6", "esUp6Sw1"]}]}, {"UserIDs": ["I98jeZQ7", "hfxnhLd3", "Knaknoed"], "parties": [{"partyID": "9DHhLOqQ", "userIDs": ["GhCUr6iT", "rjyEgarA", "dNJOIG36"]}, {"partyID": "I6tRbRcr", "userIDs": ["EveMdAdi", "PKDUVSC0", "0PYeDcag"]}, {"partyID": "ginxnFIn", "userIDs": ["a3yddcbs", "PheTH26I", "UJNvYuGR"]}]}], "textChat": true, "ticketIDs": ["y8X1A3Pr", "Ifapq5AA", "eMe4L3mD"], "type": "WORBVXTI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"IJM9XsYI": {}, "IZxiXNMR": {}, "9BgaWcFX": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '3SUBhyoT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'sMWPAxUM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"kawaGpAy": {}, "rIwMif3B": {}, "OdkocVTd": {}}, "backfillTicketID": "4BxqGWV6", "clientVersion": "mTJ0sQs6", "deployment": "XNbjvqhn", "inactiveTimeout": 96, "inviteTimeout": 93, "joinability": "VLWu8olK", "matchPool": "dxL6ozRm", "maxPlayers": 61, "minPlayers": 100, "requestedRegions": ["D0jJvlfV", "5OemPYdY", "T7DROCjt"], "teams": [{"UserIDs": ["uzFMbAG9", "YI89hmgu", "B8FOTjML"], "parties": [{"partyID": "o4b9rIzq", "userIDs": ["YkEpstyV", "TBcrM8rG", "0rH0zcsw"]}, {"partyID": "wVeMK6Mb", "userIDs": ["GIVIu8vv", "wLc7KY3u", "VoJXTIMt"]}, {"partyID": "pgkieDyF", "userIDs": ["97lGdMiH", "KxbWCYzo", "8yO2KTK9"]}]}, {"UserIDs": ["tmmOnYnO", "pas6ghP1", "y4Zi7s7Q"], "parties": [{"partyID": "Blk44Z44", "userIDs": ["B1GZgKg4", "uKxaCgcG", "LuC3brWd"]}, {"partyID": "TYCfHkIy", "userIDs": ["Sok5DiXZ", "tLW87rGy", "sryod3dN"]}, {"partyID": "QrmsApRA", "userIDs": ["6HX3RwrK", "t2ecozL0", "TOg54vCE"]}]}, {"UserIDs": ["48L5oLF6", "M4lNa4JU", "MSHNgqRq"], "parties": [{"partyID": "CV7usamA", "userIDs": ["NkZlOX9S", "fo95HgXq", "KhTPkwfL"]}, {"partyID": "M9uSybRz", "userIDs": ["Wek2gZvR", "rvr0n9d9", "lvccKMLh"]}, {"partyID": "rTrcBE2I", "userIDs": ["tBS3KtKZ", "We8aoFzA", "yBME74HU"]}]}], "ticketIDs": ["tipUWYhW", "V1qx8CzP", "ML52faXU"], "type": "r9Sk4lq2", "version": 12}' \
    'fsflhjbn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'gJOUn18G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"5MlfDTk8": {}, "aG40Nlnc": {}, "ceIZSwgA": {}}, "backfillTicketID": "Ikgzh4pT", "clientVersion": "U0Am4DZh", "deployment": "l0bQxFJ3", "inactiveTimeout": 39, "inviteTimeout": 67, "joinability": "WCqQpQ2F", "matchPool": "bKPFMycM", "maxPlayers": 91, "minPlayers": 88, "requestedRegions": ["2jxLRX3z", "46OCaGBe", "MfPlNos4"], "teams": [{"UserIDs": ["yBRjrERH", "EonAZR8G", "mEu0q1p6"], "parties": [{"partyID": "QCyY6vSk", "userIDs": ["VFWdsbYu", "VEGVxYhe", "R3j5mNZ6"]}, {"partyID": "vwv7K8As", "userIDs": ["vt1j1Rx5", "9hesNWy2", "NvZ85DDK"]}, {"partyID": "DAF8KDsB", "userIDs": ["ZOuYQJ03", "BAHZ7c53", "q7akMpcm"]}]}, {"UserIDs": ["nnx6RVBr", "op9v7aZK", "3h65hbN1"], "parties": [{"partyID": "5zfQSfQr", "userIDs": ["tfF3TQN0", "OcNDLr36", "vzohZyjM"]}, {"partyID": "QAg5mPYh", "userIDs": ["rLTyU8Oh", "gfY9JQYG", "F4bYXEcE"]}, {"partyID": "Nx9xZlAc", "userIDs": ["hob44lON", "DDwMvgI0", "HlyPR7wZ"]}]}, {"UserIDs": ["NiVsF6xG", "2mXEQdbz", "IVy8alnc"], "parties": [{"partyID": "V7vWgSHd", "userIDs": ["fo07UctP", "ErqxyMyO", "K06MqQBE"]}, {"partyID": "rxgjVByc", "userIDs": ["vU4PbmRD", "crg0DjQj", "BECXvea7"]}, {"partyID": "H1m2lJFR", "userIDs": ["Z3ZprZ60", "zMjhTHeh", "94TSenE5"]}]}], "ticketIDs": ["hCFkIf5w", "eqZ18MH5", "7l2Zsrh9"], "type": "0ETtYmGu", "version": 20}' \
    '4akncw7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "u9TmXfJW"}' \
    'BPrx9Ns8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'eLzYEvwS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'WTaLQjct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'vrK2jhsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "pKPlXn77"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'AtYoFzLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"ATPY8P8P": {}, "3cfoivvQ": {}, "xevecWw7": {}}, "inactiveTimeout": 90, "inviteTimeout": 29, "joinability": "ry0KK5rg", "maxPlayers": 54, "minPlayers": 41, "type": "GO0dW8rX", "version": 8}' \
    'MVUGKSZ4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"GcLkt4pK": {}, "32sJxlZc": {}, "CTpTdRtC": {}}, "inactiveTimeout": 69, "inviteTimeout": 4, "joinability": "vuk6B6XT", "maxPlayers": 26, "minPlayers": 84, "type": "SLyn50si", "version": 12}' \
    'eK2qN8g6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'x2PyYDo5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'R3hLiD5s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "f5y1JsxJ"}' \
    'NGmyt0SQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "DUDoWBZV"}' \
    'GLlkUetz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'CAWc9x1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'MjgGim51' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'T107XIZR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'Z7tZdIs0' \
    'xf4czdt7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"zqmSKxOE": {}, "QlVcx6Gq": {}, "sBq8vdhW": {}}, "configurationName": "VnuYLgpZ", "inactiveTimeout": 9, "inviteTimeout": 40, "joinability": "hK0G2nmy", "maxPlayers": 41, "members": [{"ID": "4tLqX7OI", "PlatformID": "Cf5oD1e6", "PlatformUserID": "oI9FmYel"}, {"ID": "0kOw72o8", "PlatformID": "Zkgk0jS6", "PlatformUserID": "rDWUwfhK"}, {"ID": "vrf2AaH4", "PlatformID": "yCWrHSpp", "PlatformUserID": "nIZkNnTn"}], "minPlayers": 71, "textChat": true, "type": "Gj2jZtEY"}' \
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
    '{"crossplayEnabled": true, "data": {"8sIPSE1X": {}, "XPzySa0s": {}, "ZoFS6xCO": {}}, "platforms": [{"name": "WMpyh9pM", "userID": "sQgb64EL"}, {"name": "bzDMwyo4", "userID": "nIRysQdb"}, {"name": "ufXjYnSo", "userID": "IFeouC2m"}]}' \
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
