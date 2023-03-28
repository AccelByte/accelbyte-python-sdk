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
session-admin-get-dsmc-configuration-default --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"clientVersion": "EAxcVpFr", "deployment": "ttufHIRd", "inactiveTimeout": 68, "inviteTimeout": 59, "joinability": "9UzVRiXb", "maxPlayers": 33, "minPlayers": 1, "name": "lAw7r6W2", "persistent": false, "requestedRegions": ["HpzSn3ZP", "Udc0qh4n", "8mzZ0m8S"], "textChat": true, "type": "cDs8bBZL"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'CXLx8bbg' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "orQeFbQ1", "deployment": "g7qbPngU", "inactiveTimeout": 82, "inviteTimeout": 56, "joinability": "lyzSxwEl", "maxPlayers": 65, "minPlayers": 91, "name": "HHdgs21J", "persistent": true, "requestedRegions": ["7ZQVqGj6", "oDLjWjkY", "1aXlFcDt"], "textChat": false, "type": "8NY4YkHs"}' '1cnz1JSD' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'gY1TXp38' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'zsCTCrbC' 'bPOyNQkT' '7NvyE3cw' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'yALczNIi' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"cXm7agSr": {}, "jJW2OQNO": {}, "s1PXhT5F": {}}, "backfillTicketID": "vdiRilZ7", "clientVersion": "oFgx4c8O", "configurationName": "umKtPDKJ", "deployment": "DXn7Z4U6", "inactiveTimeout": 66, "inviteTimeout": 38, "joinability": "VbMqSszE", "matchPool": "8GHavj7A", "maxPlayers": 30, "minPlayers": 6, "requestedRegions": ["rKsxwkos", "AVerXpc1", "C8XfwHuK"], "serverName": "eb9l3rGN", "teams": [{"UserIDs": ["9A3sNm84", "hddSpHt0", "P7MIIR7C"], "parties": [{"partyID": "kyF6C7du", "userIDs": ["uyZ0GhDo", "gqrhBRd8", "lDR6qVNP"]}, {"partyID": "RZYdFLIA", "userIDs": ["jGGJddVC", "vu9vx5KQ", "7KYnIuMB"]}, {"partyID": "vaO35llz", "userIDs": ["QRaT5kPx", "UfofvnnS", "uB0y5WUl"]}]}, {"UserIDs": ["rMdI4sNv", "eabntBSx", "TeIv53HG"], "parties": [{"partyID": "CiljvjKo", "userIDs": ["yD6SCwGr", "ncqmLtjQ", "HAf8TgoN"]}, {"partyID": "m03VLisV", "userIDs": ["6zwPuo3t", "d6TC6I3l", "MjGSWN2l"]}, {"partyID": "aRlxfcjH", "userIDs": ["fYakUCTq", "GkE7wcWf", "DslpJSqG"]}]}, {"UserIDs": ["AXQ0yYoN", "RKd3IL5T", "AQ6iiPlS"], "parties": [{"partyID": "C2uE4o5V", "userIDs": ["wdo3fePq", "IJA8IHtr", "kmu0hpDD"]}, {"partyID": "WVAla2l5", "userIDs": ["BYNtIuS5", "S5XUdjso", "qwGyzzWi"]}, {"partyID": "9gwQYv7t", "userIDs": ["1o7TTr1D", "mrhZv15T", "7quIOvBM"]}]}], "textChat": false, "ticketIDs": ["U6RBt0zY", "oMcHyCUE", "XlAvxJMd"], "type": "alwSyliW"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"MNW5NyLu": {}, "0M3VHh2E": {}, "I8JlDbPW": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'bQ6Q9lNm' --login_with_auth "Bearer foo"
session-get-game-session 'qRBaAkLn' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"vxkT1X68": {}, "cmDc3fxU": {}, "8MyKrQpM": {}}, "backfillTicketID": "4hkkK6KK", "clientVersion": "XNB3Gv0I", "deployment": "qmF51Tkh", "inactiveTimeout": 19, "inviteTimeout": 32, "joinability": "Ynaq6foW", "matchPool": "vXa3bMrX", "maxPlayers": 38, "minPlayers": 18, "requestedRegions": ["Dr6kILsS", "SyDdmykm", "oPYgc2L4"], "teams": [{"UserIDs": ["jk4Lo0LS", "P0pf4Ixj", "Ukl535X3"], "parties": [{"partyID": "ateEKDpA", "userIDs": ["Dz1x3poD", "3Qgb3boL", "QQ1MzH7Q"]}, {"partyID": "m8bwbmXg", "userIDs": ["dAPh1ETh", "G96gAFKK", "2WDgCcxv"]}, {"partyID": "ONZm3EeE", "userIDs": ["RmDnyeFo", "F7VSZ6pf", "3vneSD2T"]}]}, {"UserIDs": ["b3g7mSQU", "hAEtrmjq", "U6YE3p4l"], "parties": [{"partyID": "Sck0ZHn5", "userIDs": ["GI39YBHq", "aTHeKtW1", "8iGeUlc9"]}, {"partyID": "d9sogWa2", "userIDs": ["4CKNS0Gq", "VvUfHQvs", "HXNUNe4m"]}, {"partyID": "hgo5QB65", "userIDs": ["lSAiYnNj", "kfZrQvGg", "bLdLsFzH"]}]}, {"UserIDs": ["kBMr1yrO", "MlNFSrUE", "irnjX9fD"], "parties": [{"partyID": "mIbeZxzf", "userIDs": ["TcyiuATu", "s9hsfpFD", "cSDG8aMV"]}, {"partyID": "GLiBNrDj", "userIDs": ["qoxcwgGL", "XpUL4pp2", "ncYAHdNz"]}, {"partyID": "DmeIP6rO", "userIDs": ["vDz9KOsb", "392k6YmJ", "FfRByjlB"]}]}], "ticketIDs": ["iuFM3FIo", "Vk8T3GpA", "nkCmBUqg"], "type": "2SCnqntX", "version": 50}' '0DOqOBSC' --login_with_auth "Bearer foo"
session-delete-game-session '2DKHRuPM' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"MWH8Yb33": {}, "T5UBJCjf": {}, "cnLRfxeC": {}}, "backfillTicketID": "Sz9WEi8K", "clientVersion": "lloeH0JT", "deployment": "1yduat2v", "inactiveTimeout": 88, "inviteTimeout": 100, "joinability": "R3biBfsu", "matchPool": "4jmsRE2w", "maxPlayers": 82, "minPlayers": 50, "requestedRegions": ["XQAk4mqr", "xzTtuLl4", "XlbGL8QO"], "teams": [{"UserIDs": ["xtjzm8y2", "wNhmwoYZ", "yI4EFZKB"], "parties": [{"partyID": "cYrCEAE7", "userIDs": ["WIsfmx40", "NLRc6m8h", "eKnWhzfe"]}, {"partyID": "2NubeoKF", "userIDs": ["eIaFQCYo", "DPICpndu", "EEQlULdJ"]}, {"partyID": "z4mnRBkM", "userIDs": ["NxvvKgAT", "8mJrYq6h", "RkloqxM3"]}]}, {"UserIDs": ["gpwxcfMy", "9XzjjI5Y", "bsKoADkz"], "parties": [{"partyID": "JEN2VHzi", "userIDs": ["h3bit0VW", "n3CO39PX", "DNxtXgeO"]}, {"partyID": "3FgkXhjD", "userIDs": ["zaQY3snn", "2ZkP7cFd", "P43e5dC9"]}, {"partyID": "XIBudfZg", "userIDs": ["rbHDIDm4", "hMzF4Txo", "denSrUTv"]}]}, {"UserIDs": ["fqU0bfoM", "m5cTtFWb", "otQyXJRc"], "parties": [{"partyID": "QWsmqPNs", "userIDs": ["92epxk0i", "8VxsZNer", "eSvf9699"]}, {"partyID": "mCEHThUJ", "userIDs": ["kETAsSp7", "gh4TeUTk", "OkAYfJB8"]}, {"partyID": "AT9t4Tv2", "userIDs": ["07Y2QD3o", "D5fLCr3O", "OlXVv8ZG"]}]}], "ticketIDs": ["F7uYnGzp", "ipNDigNJ", "ma1MbqqZ"], "type": "tfNWql4n", "version": 26}' '4lkKB4EY' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "OkQ1jMD3"}' 'cym8xIfk' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "OVW2grRE"}' 'OLx0KOww' --login_with_auth "Bearer foo"
session-join-game-session '3HICQLfl' --login_with_auth "Bearer foo"
session-leave-game-session '7MUBG7qt' --login_with_auth "Bearer foo"
session-public-game-session-reject 'Pu64yAtU' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "RKLRkb73", "userIDs": ["8HGS6rDg", "MdIIlhS1", "fSiM9331"]}, {"partyID": "m7Ta1PsK", "userIDs": ["c50Kv6ec", "nEevcAx2", "K2zkRenm"]}, {"partyID": "PZnGBt4P", "userIDs": ["7WnbdSJt", "jX7ZshZy", "Zl5x4bRX"]}], "proposedTeams": [{"UserIDs": ["BHUTrDzZ", "SKscfOcY", "u3dpCROY"], "parties": [{"partyID": "qUiGKXVF", "userIDs": ["Cmpo6sPw", "VOEDSJsE", "K5QpNhlI"]}, {"partyID": "2iS5EpGh", "userIDs": ["hvXYck0u", "pMzUYnb7", "6tFkEORV"]}, {"partyID": "3bu1bNCt", "userIDs": ["X7W40V6D", "o5sYadCC", "FrHHC3Dp"]}]}, {"UserIDs": ["ZxkrQDXu", "NFviMarv", "8mnfHK8C"], "parties": [{"partyID": "CmE2lPns", "userIDs": ["bD3SGEdl", "wuUccE53", "6ugBp3HB"]}, {"partyID": "vepnDCjg", "userIDs": ["yJlXe36m", "gWjLfFmt", "eue9nzJ6"]}, {"partyID": "fH24T805", "userIDs": ["tVg8JqU0", "jZpjvsug", "AOS7u8Ri"]}]}, {"UserIDs": ["WyerCSa8", "SRgwsAj1", "ik1jglaD"], "parties": [{"partyID": "XTvKCWwN", "userIDs": ["TAhd2wrS", "0uPdjhdi", "npng5BLy"]}, {"partyID": "8wbhMssA", "userIDs": ["HjapIkY9", "Rf4wP57d", "BZNR88Yb"]}, {"partyID": "CtmKy8M9", "userIDs": ["zVrjfGXZ", "nqAQUoY1", "GjlIIk0i"]}]}], "version": 74}' '0CnPb71O' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "RYcmQbTU"}' --login_with_auth "Bearer foo"
session-public-get-party '5JX8ccLj' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"MXJRk0ea": {}, "KQDOJvrT": {}, "efglSs6g": {}}, "inactiveTimeout": 88, "inviteTimeout": 16, "joinability": "5Y4Jvaiz", "maxPlayers": 47, "minPlayers": 16, "type": "IWekp18l", "version": 84}' 't9lIMGql' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"5ElEa9EI": {}, "IlGcHB3C": {}, "fR3ncDlw": {}}, "inactiveTimeout": 17, "inviteTimeout": 80, "joinability": "3v3MFFJ1", "maxPlayers": 76, "minPlayers": 5, "type": "esKoELCp", "version": 30}' 'DKKoxLE1' --login_with_auth "Bearer foo"
session-public-generate-party-code 'Y3Dymtj3' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'giPg4x4y' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "iPX6ues1"}' 'Hhhkg1yL' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "VbLFzHEP"}' '8cM4NTwr' --login_with_auth "Bearer foo"
session-public-party-join '0KHaAsmT' --login_with_auth "Bearer foo"
session-public-party-leave 'ej52WKi6' --login_with_auth "Bearer foo"
session-public-party-reject 'tArAURt9' --login_with_auth "Bearer foo"
session-public-party-kick 'plCSVq8P' 'dH6hJPUA' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"c0RVwXgA": {}, "gntLMCua": {}, "XBWQi6Bq": {}}, "configurationName": "Pg4xr0lC", "inactiveTimeout": 0, "inviteTimeout": 17, "joinability": "ncUZGCHs", "maxPlayers": 85, "members": [{"ID": "YoLfR1Kt", "PlatformID": "Ov7Zy0b6", "PlatformUserID": "5uvuKNuy"}, {"ID": "0ytZQ7M6", "PlatformID": "Nzy1adnS", "PlatformUserID": "KOLFKx1d"}, {"ID": "X4LuWJu3", "PlatformID": "pDMUAeeZ", "PlatformUserID": "97SBROPY"}], "minPlayers": 41, "textChat": false, "type": "G6XqP6oo"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "data": {"73zdxTgO": {}, "fnwIdlNa": {}, "29fDLh74": {}}, "platforms": [{"name": "1IslKHzG", "userID": "lLKWUtDQ"}, {"name": "s61OQAox", "userID": "yyQpRWCi"}, {"name": "iPDGQhNP", "userID": "EwiJCf2X"}]}' --login_with_auth "Bearer foo"
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
echo "1..47"

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

#- 4 AdminGetDSMCConfigurationDefault
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"clientVersion": "JVrlzqQl", "deployment": "s1ozhLVA", "inactiveTimeout": 51, "inviteTimeout": 22, "joinability": "rBvvWm4u", "maxPlayers": 6, "minPlayers": 84, "name": "E0OXudXg", "persistent": false, "requestedRegions": ["BJYOmpu1", "VCarzBsV", "6xnZ5Jrz"], "textChat": true, "type": "Q7hfxnhL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'd3Knakno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "ed9DHhLO", "deployment": "qQGhCUr6", "inactiveTimeout": 18, "inviteTimeout": 55, "joinability": "TrjyEgar", "maxPlayers": 54, "minPlayers": 7, "name": "HTHQIoVs", "persistent": false, "requestedRegions": ["tRbRcrEv", "eMdAdiPK", "DUVSC00P"], "textChat": false, "type": "eDcaggin"}' \
    'xnFIna3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'ddcbsPhe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationTemplateV1' test.out

#- 10 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetDSMCConfiguration' test.out

#- 11 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminSyncDSMCConfiguration' test.out

#- 12 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'TH26IUJN' \
    'vYuGRUvp' \
    'ZaHCuESO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateGameSessionMember' test.out

#- 14 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminQueryParties' test.out

#- 15 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryPlayerAttributes' test.out

#- 16 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'iIZsMfB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPlayerAttributes' test.out

#- 17 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"ZH3mtgWg": {}, "U4pCAKxe": {}, "E70CaunQ": {}}, "backfillTicketID": "Nxot371W", "clientVersion": "9G4AvQkq", "configurationName": "sGnmyo5J", "deployment": "JTUVmb8G", "inactiveTimeout": 62, "inviteTimeout": 46, "joinability": "XFTlEMEs", "matchPool": "FzYqwgK1", "maxPlayers": 81, "minPlayers": 29, "requestedRegions": ["p5nodqpL", "m7FhJBNX", "zAFdO0Kh"], "serverName": "qf6kiTdS", "teams": [{"UserIDs": ["Gv2LFjAK", "Y7CbgsWq", "FWZX7kPB"], "parties": [{"partyID": "om8F9GLL", "userIDs": ["TG8phc3n", "4iLoIllK", "lpO2pqiX"]}, {"partyID": "JF3WGRao", "userIDs": ["QomSJC4D", "drKF7SUQ", "PLG59e0k"]}, {"partyID": "5ZtX6wK7", "userIDs": ["PpUlcIW3", "2iK7MGt1", "ixY5rA1W"]}]}, {"UserIDs": ["oVeJIePF", "8ZrQzP4z", "vtdxdbZU"], "parties": [{"partyID": "pd6FJtHJ", "userIDs": ["1pyVwyKQ", "LY6FEO65", "Rb3z7CYL"]}, {"partyID": "M8IlsHqf", "userIDs": ["fnrfsGlf", "PaZKBwa3", "Ddb60ufP"]}, {"partyID": "pzwj1QGI", "userIDs": ["FmlVf4jv", "apseE9LN", "9bvhOrHf"]}]}, {"UserIDs": ["lIOd6X3v", "iLvtEk4m", "TIpUA9gx"], "parties": [{"partyID": "o8SV38nE", "userIDs": ["hoXmM2W7", "l6jHMA2r", "G3nakopA"]}, {"partyID": "ywelu01n", "userIDs": ["ryEJ0Nqo", "Tow0qiOi", "C4j0iktm"]}, {"partyID": "0ZPLkLOs", "userIDs": ["p0LZ5njN", "86Hl8kUX", "zt6bSc6b"]}]}], "textChat": false, "ticketIDs": ["vgpVyW9d", "D1kOmvrA", "ejcq2Lgk"], "type": "QuaS7RBx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'CreateGameSession' test.out

#- 18 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"3vim02jB": {}, "OxrZDyvp": {}, "cLYOWA8N": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicQueryGameSessions' test.out

#- 19 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'jxOnaEok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetGameSessionByPodName' test.out

#- 20 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '4nOOCzfs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetGameSession' test.out

#- 21 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"flhjbngJ": {}, "OUn18G5M": {}, "lfDTk8aG": {}}, "backfillTicketID": "40Nlncce", "clientVersion": "IZSwgAIk", "deployment": "gzh4pTU0", "inactiveTimeout": 54, "inviteTimeout": 54, "joinability": "m4DZhl0b", "matchPool": "QxFJ3sWC", "maxPlayers": 33, "minPlayers": 31, "requestedRegions": ["QpQ2FbKP", "FMycMSQ4", "qfAacR0L"], "teams": [{"UserIDs": ["gB5BUXvj", "cu2s6w3V", "ifnKqmTS"], "parties": [{"partyID": "oGH1XEfY", "userIDs": ["6QAYn6WQ", "5UBEU1QA", "OHfZiGhx"]}, {"partyID": "OdcuDXSx", "userIDs": ["Sc3aZPV8", "7pna08gx", "efTYKhux"]}, {"partyID": "aEc7M4P7", "userIDs": ["UckSC6eP", "eN8i4GrF", "ES9z7xue"]}]}, {"UserIDs": ["HpATHcce", "e9GXhKcj", "mSEwdrkE"], "parties": [{"partyID": "nnqKzFsL", "userIDs": ["fYalUlfw", "EQKjU7eH", "GebSVu0L"]}, {"partyID": "Q40kepEa", "userIDs": ["C4dfiOMZ", "fEhHr39p", "ysFO3Zvc"]}, {"partyID": "1BZG99Ly", "userIDs": ["vfvHEsJK", "QQewVLMU", "oAnaRcYp"]}]}, {"UserIDs": ["7FUjfIGa", "ffoflEIB", "yYqeKN0m"], "parties": [{"partyID": "eGelYF5w", "userIDs": ["WaDhukU4", "khGG4vZF", "TYnPkmSu"]}, {"partyID": "4PWam1jx", "userIDs": ["R7SETWjt", "eoc8fgvZ", "DDhoO05o"]}, {"partyID": "KqymxLD1", "userIDs": ["Lcvw6T6m", "ZEiwxxEl", "pMYSWIeV"]}]}], "ticketIDs": ["zm7z9noo", "wmlTIKVo", "wi0RY2VN"], "type": "4ZONJREd", "version": 96}' \
    '2Zsrh90E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateGameSession' test.out

#- 22 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'TtYmGukz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteGameSession' test.out

#- 23 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"3MnlrjcH": {}, "p6B8Vj7r": {}, "XFgDnDkd": {}}, "backfillTicketID": "Z9bpjb1t", "clientVersion": "dA3QhjCM", "deployment": "W64f4XhI", "inactiveTimeout": 18, "inviteTimeout": 85, "joinability": "SoTB2NMK", "matchPool": "tezapPr2", "maxPlayers": 88, "minPlayers": 63, "requestedRegions": ["8P8P3cfo", "ivvQxeve", "cWw7Rry0"], "teams": [{"UserIDs": ["KK5rgAGO", "0dW8rX2M", "VUGKSZ4G"], "parties": [{"partyID": "cLkt4pK3", "userIDs": ["2sJxlZcC", "TpTdRtCH", "vuk6B6XT"]}, {"partyID": "mSLyn50s", "userIDs": ["igBVZxiK", "dV57GvRy", "d9UuL02L"]}, {"partyID": "e8HSCsls", "userIDs": ["Dd4M1F5q", "RIblS7Nz", "81GRazPA"]}]}, {"UserIDs": ["ANjfBold", "FOyqA2cl", "J5gEOaCg"], "parties": [{"partyID": "M6Yn6Rug", "userIDs": ["bNEIpGBF", "UjOn5mM7", "k8nbLzvt"]}, {"partyID": "CIW5ynMK", "userIDs": ["quUicAeI", "VXtoWAXh", "MlW4tLqX"]}, {"partyID": "7OICf5oD", "userIDs": ["1e6oI9Fm", "Yel0kOw7", "2o8Zkgk0"]}]}, {"UserIDs": ["jS6rDWUw", "fhKvrf2A", "aH4yCWrH"], "parties": [{"partyID": "SppnIZkN", "userIDs": ["nTn3rzH5", "NvAtcvNe", "dgS1fUfK"]}, {"partyID": "mihDbmu8", "userIDs": ["ePWlQMVD", "XEHeiGTn", "wyEw6hIW"]}, {"partyID": "DZrpP7rz", "userIDs": ["3ISW510k", "Hr4isTKW", "jmv67nuH"]}]}], "ticketIDs": ["CXWfwnwG", "ioVwVzmm", "BVVFfpqx"], "type": "1AeLtzcP", "version": 73}' \
    'wJeGwaPS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PatchUpdateGameSession' test.out

#- 24 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "DMZz95OY"}' \
    'KiqaZD63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateGameSessionBackfillTicketID' test.out

#- 25 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "xe5rruJV"}' \
    'fLGea0Zt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicGameSessionInvite' test.out

#- 26 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'lzUcuHAX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'JoinGameSession' test.out

#- 27 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'z0UV31Mf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'LeaveGameSession' test.out

#- 28 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'uGaXsAuG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGameSessionReject' test.out

#- 29 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "sZaSHevO", "userIDs": ["0TQNEI3k", "fabxJWWS", "I1ECUo1N"]}, {"partyID": "PpeFhUzt", "userIDs": ["XDgB7n4C", "97uAPP8P", "ATLpUpxe"]}, {"partyID": "JlsBJT6H", "userIDs": ["h3OMjAjq", "2mK8lbSE", "Eelxnb5Q"]}], "proposedTeams": [{"UserIDs": ["xWG2HFnZ", "lA6HKWW4", "fI1IQcoB"], "parties": [{"partyID": "QELcNlZk", "userIDs": ["qTZrKgXN", "wvm4e5GX", "6H742Oix"]}, {"partyID": "htAoKiVm", "userIDs": ["6URT95Xh", "nUcvWB28", "MpusuhhD"]}, {"partyID": "J5slzgiW", "userIDs": ["ZEtyd56L", "fxnbY97j", "jYgXchCb"]}]}, {"UserIDs": ["kXX26uEd", "CfQaMAQu", "TKfC0I2k"], "parties": [{"partyID": "NjCMDtDM", "userIDs": ["rentgn3D", "hqciwIeS", "hF9RKb9v"]}, {"partyID": "vxuJlhXb", "userIDs": ["WhbwPwTo", "C6knjVwV", "nzaqSfJi"]}, {"partyID": "QFC2gXod", "userIDs": ["a0kg16yU", "SpSOAjHJ", "WwfCjYwW"]}]}, {"UserIDs": ["kLob9gKL", "qs2nEZhp", "ByfHZinx"], "parties": [{"partyID": "NfgPAwkM", "userIDs": ["BsznlBUq", "nLT4AbGp", "tKaWNvPb"]}, {"partyID": "pg7yrRvX", "userIDs": ["fZ6rvgvE", "Y3Hht1Sw", "qTsKKKo3"]}, {"partyID": "7NHDOQe9", "userIDs": ["1Ps3ztUI", "V0dS6hIH", "9c4Vfkyr"]}]}], "version": 46}' \
    'GZeMgsRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AppendTeamGameSession' test.out

#- 30 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "mH1EQrYm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPartyJoinCode' test.out

#- 31 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'kPKTPOlh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetParty' test.out

#- 32 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"TtSiZNCx": {}, "uogFteTH": {}, "Je4BhSSQ": {}}, "inactiveTimeout": 21, "inviteTimeout": 87, "joinability": "jr9b8MuY", "maxPlayers": 25, "minPlayers": 26, "type": "ufFVTOhv", "version": 87}' \
    'YxEQdf3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicUpdateParty' test.out

#- 33 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"woGGoY7x": {}, "mFNAmjDD": {}, "Cvs78mcM": {}}, "inactiveTimeout": 6, "inviteTimeout": 63, "joinability": "iS76YApG", "maxPlayers": 73, "minPlayers": 30, "type": "ufwLYkqI", "version": 14}' \
    'uwC3Wgum' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPatchUpdateParty' test.out

#- 34 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'rIz4NhGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePartyCode' test.out

#- 35 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'tZpr4U4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicRevokePartyCode' test.out

#- 36 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "wQIiLXgm"}' \
    'RasvjO4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyInvite' test.out

#- 37 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "j8m3XEwP"}' \
    '2b4gd3xO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicPromotePartyLeader' test.out

#- 38 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'eii8Jnms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoin' test.out

#- 39 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'sep2xD2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyLeave' test.out

#- 40 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'Y0kABeGs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyReject' test.out

#- 41 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '9yxahld1' \
    'pO0Gyf5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyKick' test.out

#- 42 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"O3COyMvc": {}, "zgEpzZ3F": {}, "btxfhcRC": {}}, "configurationName": "7IVYa6iZ", "inactiveTimeout": 8, "inviteTimeout": 41, "joinability": "cRxIsZvD", "maxPlayers": 17, "members": [{"ID": "rmzVr5XT", "PlatformID": "1Nxw0v1d", "PlatformUserID": "MQ9Rrbk6"}, {"ID": "C2cVWf6t", "PlatformID": "tvbU1PO6", "PlatformUserID": "ApCD2VXi"}, {"ID": "dT7w0Oc1", "PlatformID": "5N8WXBPp", "PlatformUserID": "17PAewqS"}], "minPlayers": 26, "textChat": true, "type": "x3B4t7WQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicCreateParty' test.out

#- 43 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetPlayerAttributes' test.out

#- 44 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "data": {"6EjRwEQl": {}, "NapJRfk4": {}, "f9Zcw1pE": {}}, "platforms": [{"name": "HAyNFxcV", "userID": "TKuAQTGh"}, {"name": "5BxjWOoz", "userID": "GoDtsUuY"}, {"name": "o5p8ED5Q", "userID": "ZAufwNa8"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicStorePlayerAttributes' test.out

#- 45 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicDeletePlayerAttributes' test.out

#- 46 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicQueryMyGameSessions' test.out

#- 47 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
