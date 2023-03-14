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
session-admin-create-configuration-template-v1 '{"clientVersion": "EAxcVpFr", "deployment": "ttufHIRd", "inactiveTimeout": 68, "inviteTimeout": 59, "joinability": "9UzVRiXb", "maxPlayers": 33, "minPlayers": 1, "name": "lAw7r6W2", "persistent": false, "persistentTTL": 69, "requestedRegions": ["tQG0h5JA", "av5kRa62", "WopBJHPt"], "textChat": false, "type": "MTwE6I56"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'IaRDBXxy' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "aNoMR6hk", "deployment": "spInrAip", "inactiveTimeout": 56, "inviteTimeout": 24, "joinability": "1vRodwpz", "maxPlayers": 91, "minPlayers": 70, "name": "6DaDpv8N", "requestedRegions": ["7ZQVqGj6", "oDLjWjkY", "1aXlFcDt"], "textChat": false, "type": "8NY4YkHs"}' '1cnz1JSD' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'gY1TXp38' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'zsCTCrbC' 'bPOyNQkT' '7NvyE3cw' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'yALczNIi' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"cXm7agSr": {}, "jJW2OQNO": {}, "s1PXhT5F": {}}, "backfillTicketID": "vdiRilZ7", "clientVersion": "oFgx4c8O", "configurationName": "umKtPDKJ", "deployment": "DXn7Z4U6", "inactiveTimeout": 66, "inviteTimeout": 38, "joinability": "VbMqSszE", "matchPool": "8GHavj7A", "maxPlayers": 30, "minPlayers": 6, "persistent": true, "persistentTTL": 71, "requestedRegions": ["KsxwkosA", "VerXpc1C", "8XfwHuKe"], "serverName": "b9l3rGN9", "teams": [{"UserIDs": ["A3sNm84h", "ddSpHt0P", "7MIIR7Ck"], "parties": [{"partyID": "yF6C7duu", "userIDs": ["yZ0GhDog", "qrhBRd8l", "DR6qVNPR"]}, {"partyID": "ZYdFLIAj", "userIDs": ["GGJddVCv", "u9vx5KQ7", "KYnIuMBv"]}, {"partyID": "aO35llzQ", "userIDs": ["RaT5kPxU", "fofvnnSu", "B0y5WUlr"]}]}, {"UserIDs": ["MdI4sNve", "abntBSxT", "eIv53HGC"], "parties": [{"partyID": "iljvjKoy", "userIDs": ["D6SCwGrn", "cqmLtjQH", "Af8TgoNm"]}, {"partyID": "03VLisV6", "userIDs": ["zwPuo3td", "6TC6I3lM", "jGSWN2la"]}, {"partyID": "RlxfcjHf", "userIDs": ["YakUCTqG", "kE7wcWfD", "slpJSqGA"]}]}, {"UserIDs": ["XQ0yYoNR", "Kd3IL5TA", "Q6iiPlSC"], "parties": [{"partyID": "2uE4o5Vw", "userIDs": ["do3fePqI", "JA8IHtrk", "mu0hpDDW"]}, {"partyID": "VAla2l5B", "userIDs": ["YNtIuS5S", "5XUdjsoq", "wGyzzWi9"]}, {"partyID": "gwQYv7t1", "userIDs": ["o7TTr1Dm", "rhZv15T7", "quIOvBMc"]}]}], "textChat": false, "ticketIDs": ["6RBt0zYo", "McHyCUEX", "lAvxJMda"], "type": "lwSyliWM"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"NW5NyLu0": {}, "M3VHh2EI": {}, "8JlDbPWb": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'Q6Q9lNmq' --login_with_auth "Bearer foo"
session-get-game-session 'RBaAkLnv' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"xkT1X68c": {}, "mDc3fxU8": {}, "MyKrQpM4": {}}, "backfillTicketID": "hkkK6KKX", "clientVersion": "NB3Gv0Iq", "deployment": "mF51Tkhj", "inactiveTimeout": 27, "inviteTimeout": 1, "joinability": "YUDjasWI", "matchPool": "PUvmEejt", "maxPlayers": 66, "minPlayers": 8, "requestedRegions": ["kILsSSyD", "dmykmoPY", "gc2L4jk4"], "teams": [{"UserIDs": ["Lo0LSP0p", "f4IxjUkl", "535X3ate"], "parties": [{"partyID": "EKDpADz1", "userIDs": ["x3poD3Qg", "b3boLQQ1", "MzH7Qm8b"]}, {"partyID": "wbmXgdAP", "userIDs": ["h1EThG96", "gAFKK2WD", "gCcxvONZ"]}, {"partyID": "m3EeERmD", "userIDs": ["nyeFoF7V", "SZ6pf3vn", "eSD2Tb3g"]}]}, {"UserIDs": ["7mSQUhAE", "trmjqU6Y", "E3p4lSck"], "parties": [{"partyID": "0ZHn5GI3", "userIDs": ["9YBHqaTH", "eKtW18iG", "eUlc9d9s"]}, {"partyID": "ogWa24CK", "userIDs": ["NS0GqVvU", "fHQvsHXN", "UNe4mhgo"]}, {"partyID": "5QB65lSA", "userIDs": ["iYnNjkfZ", "rQvGgbLd", "LsFzHkBM"]}]}, {"UserIDs": ["r1yrOMlN", "FSrUEirn", "jX9fDmIb"], "parties": [{"partyID": "eZxzfTcy", "userIDs": ["iuATus9h", "sfpFDcSD", "G8aMVGLi"]}, {"partyID": "BNrDjqox", "userIDs": ["cwgGLXpU", "L4pp2ncY", "AHdNzDme"]}, {"partyID": "IP6rOvDz", "userIDs": ["9KOsb392", "k6YmJFfR", "ByjlBiuF"]}]}], "ticketIDs": ["M3FIoVk8", "T3GpAnkC", "mBUqg2SC"], "type": "nqntX9y1", "version": 1}' 'OqOBSC2D' --login_with_auth "Bearer foo"
session-delete-game-session 'KHRuPMMW' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"H8Yb33T5": {}, "UBJCjfcn": {}, "LRfxeCSz": {}}, "backfillTicketID": "9WEi8Kll", "clientVersion": "oeH0JT1y", "deployment": "duat2vQR", "inactiveTimeout": 3, "inviteTimeout": 66, "joinability": "iBfsu4jm", "matchPool": "sRE2w1yE", "maxPlayers": 20, "minPlayers": 55, "requestedRegions": ["Lgh3tIYt", "4SqYUTLD", "x9gIiDan"], "teams": [{"UserIDs": ["dpGT2t24", "aOMh5eC3", "IHeHSKLC"], "parties": [{"partyID": "a3xreNDU", "userIDs": ["WehwH3q3", "1A806DJg", "as4b6z3L"]}, {"partyID": "NUj7fdgL", "userIDs": ["A84Z8YYk", "6QEgJjBb", "EDoNf3n0"]}, {"partyID": "hEoRCAcf", "userIDs": ["80zfFyab", "WAgIUXiI", "07A68eaq"]}]}, {"UserIDs": ["C2J9jyEW", "6GLbc0Na", "KDUL3sa1"], "parties": [{"partyID": "3lk1dQBH", "userIDs": ["O86IlBhn", "etU4RwTq", "UXlTDBzO"]}, {"partyID": "uYsaZA2y", "userIDs": ["yd4mbqoO", "fADMMAXF", "aY9eKa69"]}, {"partyID": "9bRVhyaK", "userIDs": ["wwrAP2aM", "lu7WtjCt", "oYetOO84"]}]}, {"UserIDs": ["7g8OudOf", "jnCuHZ3c", "46IjGa23"], "parties": [{"partyID": "YvYmmDg7", "userIDs": ["VYPXIuvU", "YTZBRujI", "UE1Tq5jy"]}, {"partyID": "AZvkRCMN", "userIDs": ["FIurjh2i", "mdb4rbkX", "j0ZwsVC0"]}, {"partyID": "gL97ZVJS", "userIDs": ["PqJiwv1q", "lYB1RSKs", "6gQxC3Gb"]}]}], "ticketIDs": ["7S0o4zGY", "Y7KQI1Ae", "FgPqaOkv"], "type": "o1aolB4l", "version": 21}' 'ft4gqkNN' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "lWkD9eOz"}' 'iYRFOn0j' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "JLHC9Lxh"}' 'vNXTwGBC' --login_with_auth "Bearer foo"
session-join-game-session 'tohLtl9Z' --login_with_auth "Bearer foo"
session-leave-game-session 'uhytm5UD' --login_with_auth "Bearer foo"
session-public-game-session-reject 'rT6QXCs5' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "SPBbRPZT"}' --login_with_auth "Bearer foo"
session-public-get-party 'F6oQAXVG' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"7tnsZg5Q": {}, "gXjvyGJP": {}, "N4eXbJE5": {}}, "inactiveTimeout": 97, "inviteTimeout": 75, "joinability": "s2GcyomQ", "maxPlayers": 30, "minPlayers": 5, "type": "IXimBJeh", "version": 50}' 'enmPZnGB' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"t4P7Wnbd": {}, "SJtjX7Zs": {}, "hZyZl5x4": {}}, "inactiveTimeout": 3, "inviteTimeout": 51, "joinability": "RXBHUTrD", "maxPlayers": 53, "minPlayers": 48, "type": "SKscfOcY", "version": 41}' 'N9LFkYW5' --login_with_auth "Bearer foo"
session-public-generate-party-code 'DQyj4bj5' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'Ro2ogaKt' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "2ujQSa3Z"}' 'db65UXmy' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "0Zp6iIaT"}' 'IKUkmkk9' --login_with_auth "Bearer foo"
session-public-party-join 'QM0NBMA9' --login_with_auth "Bearer foo"
session-public-party-leave 'ORxpzwLR' --login_with_auth "Bearer foo"
session-public-party-reject '2AK6eXUG' --login_with_auth "Bearer foo"
session-public-party-kick 'PJsw1fiP' '80G9Pclx' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"cft2ulIJ": {}, "zPyrVEiO": {}, "G4UcqsuG": {}}, "configurationName": "KHhMRWLV", "inactiveTimeout": 6, "inviteTimeout": 25, "joinability": "3DlhLuIp", "maxPlayers": 29, "members": [{"ID": "3SGEdlwu", "PlatformID": "UccE536u", "PlatformUserID": "gBp3HBve"}, {"ID": "pnDCjgyJ", "PlatformID": "lXe36mgW", "PlatformUserID": "jLfFmteu"}, {"ID": "e9nzJ6fH", "PlatformID": "24T805tV", "PlatformUserID": "g8JqU0jZ"}], "minPlayers": 31, "textChat": true, "type": "jvsugAOS"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "data": {"p5JMl5LL": {}, "4bTxBmZj": {}, "drrIxsB0": {}}, "platforms": [{"name": "NRsB1fPq", "userID": "qRRulpqp"}, {"name": "ymDkQhtr", "userID": "HWwRVnwV"}, {"name": "BOqOHi8p", "userID": "WGd1juYh"}]}' --login_with_auth "Bearer foo"
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
echo "1..43"

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
    '{"clientVersion": "iqjRJOqB", "deployment": "5F93zFQb", "inactiveTimeout": 74, "inviteTimeout": 27, "joinability": "YbCtmKy8", "maxPlayers": 79, "minPlayers": 10, "name": "9zVrjfGX", "persistent": false, "persistentTTL": 38, "requestedRegions": ["qAQUoY1G", "jlIIk0iK", "oTTS1j02"], "textChat": false, "type": "YcmQbTU5"}' \
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
    'JX8ccLjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "XJRk0eaK", "deployment": "QDOJvrTe", "inactiveTimeout": 10, "inviteTimeout": 12, "joinability": "KlONk2Q5", "maxPlayers": 42, "minPlayers": 74, "name": "02aCNYIW", "requestedRegions": ["ekp18lOC", "3mNqF7Bl", "0LcghVHf"], "textChat": true, "type": "cHB3CfR3"}' \
    'ncDlwi3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '3MFFJ1Ke' \
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
    'sKoELCpo' \
    'bBEG8X64' \
    '5xpdXpai' \
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
    '0rYaT5hO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"Pjaf3H0t": {}, "YighU0VU": {}, "fcYHJbBf": {}}, "backfillTicketID": "AKSiPW3V", "clientVersion": "gsZXiR1D", "configurationName": "J7HVWqMk", "deployment": "NSawQUWD", "inactiveTimeout": 64, "inviteTimeout": 23, "joinability": "JvJBWic7", "matchPool": "UkBeIXuq", "maxPlayers": 61, "minPlayers": 90, "persistent": true, "persistentTTL": 97, "requestedRegions": ["AXI66bQ7", "1w0deoV9", "Lx5RDA1l"], "serverName": "2XcrciYN", "teams": [{"UserIDs": ["EzvSZIPk", "hSgORcz5", "S5BvmgBL"], "parties": [{"partyID": "xh4ijFnE", "userIDs": ["3Tam69qS", "Z7PC6f6Q", "kmZXElW9"]}, {"partyID": "YfRSse6A", "userIDs": ["Az3S4czz", "0QKFlAVm", "VLu4AOec"]}, {"partyID": "0z8eBeeo", "userIDs": ["ip68J1ns", "v4W2OJht", "afxMSJlH"]}]}, {"UserIDs": ["eb34sZKH", "cl5LLLOe", "xL4fZvWt"], "parties": [{"partyID": "ND2tcBFp", "userIDs": ["X8lNtFEJ", "7tnkY6Mc", "a5afj12K"]}, {"partyID": "2IzrBvvW", "userIDs": ["m4udE0OX", "udXgNne8", "kJATwlc6"]}, {"partyID": "esUp6Sw1", "userIDs": ["I98jeZQ7", "hfxnhLd3", "Knaknoed"]}]}, {"UserIDs": ["9DHhLOqQ", "GhCUr6iT", "rjyEgarA"], "parties": [{"partyID": "dNJOIG36", "userIDs": ["I6tRbRcr", "EveMdAdi", "PKDUVSC0"]}, {"partyID": "0PYeDcag", "userIDs": ["ginxnFIn", "a3yddcbs", "PheTH26I"]}, {"partyID": "UJNvYuGR", "userIDs": ["UvpZaHCu", "ESOiIZsM", "fB4ZH3mt"]}]}], "textChat": false, "ticketIDs": ["DWORBVXT", "IIJM9XsY", "IIZxiXNM"], "type": "R9BgaWcF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"X3SUBhyo": {}, "TsMWPAxU": {}, "MkawaGpA": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'yrIwMif3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'BOdkocVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"d4BxqGWV": {}, "6mTJ0sQs": {}, "6XNbjvqh": {}}, "backfillTicketID": "nUVLWu8o", "clientVersion": "lKdxL6oz", "deployment": "RmDD0jJv", "inactiveTimeout": 24, "inviteTimeout": 11, "joinability": "kPBom8F9", "matchPool": "GLLTG8ph", "maxPlayers": 4, "minPlayers": 40, "requestedRegions": ["3n4iLoIl", "lKlpO2pq", "iXJF3WGR"], "teams": [{"UserIDs": ["aoQomSJC", "4DdrKF7S", "UQPLG59e"], "parties": [{"partyID": "0k5ZtX6w", "userIDs": ["K7PpUlcI", "W32iK7MG", "t1ixY5rA"]}, {"partyID": "1WoVeJIe", "userIDs": ["PF8ZrQzP", "4zvtdxdb", "ZUpd6FJt"]}, {"partyID": "HJ1pyVwy", "userIDs": ["KQLY6FEO", "65Rb3z7C", "YLM8IlsH"]}]}, {"UserIDs": ["qffnrfsG", "lfPaZKBw", "a3Ddb60u"], "parties": [{"partyID": "fPpzwj1Q", "userIDs": ["GIFmlVf4", "jvapseE9", "LN9bvhOr"]}, {"partyID": "HflIOd6X", "userIDs": ["3viLvtEk", "4mTIpUA9", "gxo8SV38"]}, {"partyID": "nEhoXmM2", "userIDs": ["W7l6jHMA", "2rG3nako", "pAywelu0"]}]}, {"UserIDs": ["1nryEJ0N", "qoTow0qi", "OiC4j0ik"], "parties": [{"partyID": "tm0ZPLkL", "userIDs": ["Osp0LZ5n", "jN86Hl8k", "UXzt6bSc"]}, {"partyID": "6bWvgpVy", "userIDs": ["W9dD1kOm", "vrAejcq2", "LgkQuaS7"]}, {"partyID": "RBx3vim0", "userIDs": ["2jBOxrZD", "yvpcLYOW", "A8NjxOna"]}]}], "ticketIDs": ["Eok4nOOC", "zfsflhjb", "ngJOUn18"], "type": "G5MlfDTk", "version": 4}' \
    'aG40Nlnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'ceIZSwgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Ikgzh4pT": {}, "U0Am4DZh": {}, "l0bQxFJ3": {}}, "backfillTicketID": "sWCqQpQ2", "clientVersion": "FbKPFMyc", "deployment": "MSQ4qfAa", "inactiveTimeout": 5, "inviteTimeout": 89, "joinability": "z46OCaGB", "matchPool": "eMfPlNos", "maxPlayers": 50, "minPlayers": 98, "requestedRegions": ["BRjrERHE", "onAZR8Gm", "Eu0q1p6Q"], "teams": [{"UserIDs": ["CyY6vSkV", "FWdsbYuV", "EGVxYheR"], "parties": [{"partyID": "3j5mNZ6v", "userIDs": ["wv7K8Asv", "t1j1Rx59", "hesNWy2N"]}, {"partyID": "vZ85DDKD", "userIDs": ["AF8KDsBZ", "OuYQJ03B", "AHZ7c53q"]}, {"partyID": "7akMpcmn", "userIDs": ["nx6RVBro", "p9v7aZK3", "h65hbN15"]}]}, {"UserIDs": ["zfQSfQrt", "fF3TQN0O", "cNDLr36v"], "parties": [{"partyID": "zohZyjMQ", "userIDs": ["Ag5mPYhr", "LTyU8Ohg", "fY9JQYGF"]}, {"partyID": "4bYXEcEN", "userIDs": ["x9xZlAch", "ob44lOND", "DwMvgI0H"]}, {"partyID": "lyPR7wZN", "userIDs": ["iVsF6xG2", "mXEQdbzI", "Vy8alncV"]}]}, {"UserIDs": ["7vWgSHdf", "o07UctPE", "rqxyMyOK"], "parties": [{"partyID": "06MqQBEr", "userIDs": ["xgjVBycv", "U4PbmRDc", "rg0DjQjB"]}, {"partyID": "ECXvea7H", "userIDs": ["1m2lJFRZ", "3ZprZ60z", "MjhTHeh9"]}, {"partyID": "4TSenE5h", "userIDs": ["CFkIf5we", "qZ18MH57", "l2Zsrh90"]}]}], "ticketIDs": ["ETtYmGuk", "z3Mnlrjc", "Hp6B8Vj7"], "type": "rXFgDnDk", "version": 6}' \
    'LzYEvwSW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "TaLQjctv"}' \
    'rK2jhsYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateGameSessionBackfillTicketID' test.out

#- 22 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "KPlXn77A"}' \
    'tYoFzLAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionInvite' test.out

#- 23 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'TPY8P8P3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'JoinGameSession' test.out

#- 24 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'cfoivvQx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'LeaveGameSession' test.out

#- 25 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'evecWw7R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicGameSessionReject' test.out

#- 26 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "ry0KK5rg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPartyJoinCode' test.out

#- 27 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'AGO0dW8r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGetParty' test.out

#- 28 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"X2MVUGKS": {}, "Z4GcLkt4": {}, "pK32sJxl": {}}, "inactiveTimeout": 28, "inviteTimeout": 5, "joinability": "JBaqdg2F", "maxPlayers": 68, "minPlayers": 69, "type": "cunsS1ln", "version": 0}' \
    'mSLyn50s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicUpdateParty' test.out

#- 29 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"igBVZxiK": {}, "dV57GvRy": {}, "d9UuL02L": {}}, "inactiveTimeout": 8, "inviteTimeout": 38, "joinability": "8HSCslsD", "maxPlayers": 7, "minPlayers": 81, "type": "4M1F5qRI", "version": 3}' \
    'UDoWBZVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPatchUpdateParty' test.out

#- 30 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'LlkUetzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGeneratePartyCode' test.out

#- 31 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'AWc9x1aM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicRevokePartyCode' test.out

#- 32 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "jgGim51T"}' \
    '107XIZRZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyInvite' test.out

#- 33 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "7tZdIs0x"}' \
    'f4czdt7z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPromotePartyLeader' test.out

#- 34 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'qmSKxOEQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyJoin' test.out

#- 35 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'lVcx6Gqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyLeave' test.out

#- 36 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'Bq8vdhWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyReject' test.out

#- 37 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'nuYLgpZe' \
    'hK0G2nmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyKick' test.out

#- 38 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"uViB9kRT": {}, "cSQdTnNY": {}, "GeAfYFG3": {}}, "configurationName": "wSkHKufB", "inactiveTimeout": 7, "inviteTimeout": 92, "joinability": "kgk0jS6r", "maxPlayers": 59, "members": [{"ID": "cXnAXyuG", "PlatformID": "z6LlxHv8", "PlatformUserID": "SwyagYvD"}, {"ID": "J3w3UNgI", "PlatformID": "Gj2jZtEY", "PlatformUserID": "T8sIPSE1"}, {"ID": "XXPzySa0", "PlatformID": "sZoFS6xC", "PlatformUserID": "OWMpyh9p"}], "minPlayers": 79, "textChat": true, "type": "TnwyEw6h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicCreateParty' test.out

#- 39 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPlayerAttributes' test.out

#- 40 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "data": {"WDZrpP7r": {}, "z3ISW510": {}, "kHr4isTK": {}}, "platforms": [{"name": "Wjmv67nu", "userID": "HCXWfwnw"}, {"name": "GioVwVzm", "userID": "mBVVFfpq"}, {"name": "x1AeLtzc", "userID": "PJ3jtDYB"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicStorePlayerAttributes' test.out

#- 41 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicDeletePlayerAttributes' test.out

#- 42 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyGameSessions' test.out

#- 43 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
