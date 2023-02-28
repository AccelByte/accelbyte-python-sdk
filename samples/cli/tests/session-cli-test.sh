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
session-admin-create-configuration-template-v1 '{"clientVersion": "O4rhwH2P", "deployment": "l5JUAs4p", "inactiveTimeout": 3, "inviteTimeout": 88, "joinability": "TBFYDuAW", "maxPlayers": 84, "minPlayers": 74, "name": "Sv4mqhYc", "requestedRegions": ["083PdkTe", "fgY4B3nJ", "0wXXl2CA"], "textChat": true, "type": "mEhLSdTE"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'LFaZ7QqO' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "gpRateuM", "deployment": "W9Vz6m2w", "inactiveTimeout": 54, "inviteTimeout": 69, "joinability": "3I1MjBAu", "maxPlayers": 77, "minPlayers": 30, "name": "FvXLvuKC", "requestedRegions": ["BlnhpoL3", "A8vLLqj9", "S4bjLK3H"], "textChat": false, "type": "keq4KH3v"}' 'vIJs42on' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 't5CcdzO3' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'xf7VQaIu' 'oAN2w8t9' 'UErtmDqB' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'g2IETzY4' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"Rz4dpASU": {}, "zcQh8qcJ": {}, "2lKhoXW1": {}}, "backfillTicketID": "9ltpEBYn", "clientVersion": "CmUMscuz", "configurationName": "QveSle2w", "deployment": "biqYukWJ", "inactiveTimeout": 11, "inviteTimeout": 66, "joinability": "X5yBro2f", "matchPool": "s3owwRs3", "maxPlayers": 41, "minPlayers": 91, "requestedRegions": ["V31MhWxh", "fm8LqhTf", "RHyjVeoq"], "serverName": "NJbtsN7R", "teams": [{"UserIDs": ["jTDneL5c", "0Bp8bC01", "Ola51Vb4"], "parties": [{"partyID": "ckxiaAbj", "userIDs": ["cMGpJex8", "0j2bYUvq", "MH6XRYT7"]}, {"partyID": "vSKaNnw7", "userIDs": ["PKuZU3EE", "qsksNDXn", "O5fuy270"]}, {"partyID": "DvsfQ2Jj", "userIDs": ["0LoSvMen", "FzbSDbpr", "Z2UcsbCc"]}]}, {"UserIDs": ["rYESHJA5", "DU0oIw4Q", "Zr7ynAam"], "parties": [{"partyID": "A4xATciB", "userIDs": ["jgILt7dQ", "CZYWZ4ri", "PP9koVZD"]}, {"partyID": "R0TvuKpv", "userIDs": ["MtSLeg2z", "ixDFf1GH", "3LXgkLKM"]}, {"partyID": "LrtGfP7K", "userIDs": ["QYgdluKB", "FHeYyQKh", "e1r0mAHf"]}]}, {"UserIDs": ["pIbTo7Zm", "77O5U8OX", "YbsKXQCz"], "parties": [{"partyID": "YHTYBeKI", "userIDs": ["nM6gn067", "OgGU3qGD", "HNeTPfyz"]}, {"partyID": "bGtiB0tO", "userIDs": ["lGQZY1rL", "EEVgSWP1", "E36W8Pnf"]}, {"partyID": "do06dzL7", "userIDs": ["6yMPE9Zv", "tUOlrfLv", "GDKwgN81"]}]}], "textChat": true, "ticketIDs": ["t1sW02mQ", "GKLwxsfr", "5k3Du7Kf"], "type": "N5PPPmVt"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"jM3Esfum": {}, "sUbgUHyS": {}, "Ay1PjXZD": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'K68JNHEN' --login_with_auth "Bearer foo"
session-get-game-session 'yHiTCIRR' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"de8Q8MNn": {}, "MPcF1oDc": {}, "R6tHcaAG": {}}, "backfillTicketID": "emOFmquf", "clientVersion": "kujg6GP7", "deployment": "9daebufm", "inactiveTimeout": 8, "inviteTimeout": 6, "joinability": "TX9MWukF", "matchPool": "KOlOcvxn", "maxPlayers": 34, "minPlayers": 43, "requestedRegions": ["exa4hmep", "AEPZGdk6", "Ks0PDk2Q"], "teams": [{"UserIDs": ["U8yzqKxl", "8PzEdYLn", "K30BhG6g"], "parties": [{"partyID": "Of3pc2Q9", "userIDs": ["z1oxniVP", "jz8W1zrQ", "7FwaakY6"]}, {"partyID": "TpCe4pbl", "userIDs": ["UuavitLY", "SMGMLYV0", "VFwImW4R"]}, {"partyID": "Tm7uOeRn", "userIDs": ["OpLd7Ea3", "UrXDhro8", "b4185XPa"]}]}, {"UserIDs": ["LiwINqps", "MHCJrhwo", "PjbyS8QX"], "parties": [{"partyID": "XH5SJI1M", "userIDs": ["QRDttwqs", "PKV34CQw", "H5ht7Cwh"]}, {"partyID": "4t9Ee1CC", "userIDs": ["uJW1qwUe", "WWdf2eLZ", "CbNyAiF1"]}, {"partyID": "Z2BA4Zb3", "userIDs": ["YVvZYEhC", "2ID799k9", "NnX7lcFP"]}]}, {"UserIDs": ["6f8xTW56", "k8M1JXqk", "MjfoJxha"], "parties": [{"partyID": "02Iqeb4E", "userIDs": ["3lEoKoLH", "7FRbkEp1", "Xco9ic30"]}, {"partyID": "q7qwmjyF", "userIDs": ["04Q1xdCd", "owBWWEaX", "jxEGS4Ay"]}, {"partyID": "W43Gmw2e", "userIDs": ["QtW8XSAV", "dJYEZk3Z", "Y52y7xd7"]}]}], "ticketIDs": ["7bRfkefk", "wUxg9r2I", "yoMNPVQv"], "type": "Y1CYjwEm", "version": 7}' 'GTGJRTY9' --login_with_auth "Bearer foo"
session-delete-game-session '0CVZcJR2' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"Z0zvqIB3": {}, "1xe8RIQ6": {}, "1RnKSRTo": {}}, "backfillTicketID": "EsiKZZ3C", "clientVersion": "xCDpxbWy", "deployment": "UxRnHJem", "inactiveTimeout": 25, "inviteTimeout": 64, "joinability": "drQqMd9v", "matchPool": "0btqAMrA", "maxPlayers": 22, "minPlayers": 12, "requestedRegions": ["MF9TPePR", "vF6BZdwn", "5521J6y4"], "teams": [{"UserIDs": ["0JTnI7NJ", "5SEYVieo", "h7g3JI14"], "parties": [{"partyID": "4lrFZ5Kn", "userIDs": ["n7Y0uLRP", "gDg3OxIP", "Lxyz81n3"]}, {"partyID": "T2NHgBLs", "userIDs": ["PVZozDOp", "AQ6bMDzx", "et3yvMWQ"]}, {"partyID": "1E2vxjZj", "userIDs": ["5lG7PV0d", "NaKz83Mg", "X5J1ZRX5"]}]}, {"UserIDs": ["241maWcS", "xig0a2wq", "ImOHvIyP"], "parties": [{"partyID": "mHBhw0df", "userIDs": ["Af44BN5m", "TxkD3fpz", "gIK8CpKx"]}, {"partyID": "dTzzWdi1", "userIDs": ["JCCVX5QA", "ne4zkC21", "aqzNsMNE"]}, {"partyID": "BhGAAFJb", "userIDs": ["oZUCsBH8", "5VdNL7fD", "DtsZKPqk"]}]}, {"UserIDs": ["10eXM83g", "G9v26tei", "sFmwzVot"], "parties": [{"partyID": "tdO6aW1R", "userIDs": ["hDGIubvG", "utDvwABt", "xD1uDwEU"]}, {"partyID": "QDNtmQAi", "userIDs": ["Nqj77R8p", "ef4rG4hw", "iYky7ASV"]}, {"partyID": "OfqIpRRt", "userIDs": ["nLWslric", "hkeL4DBV", "7wXRZ6t3"]}]}], "ticketIDs": ["408G6Il5", "8smbk0Cv", "0DEXvZiP"], "type": "aC9j9e1I", "version": 39}' 'zWMA2CYo' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "ad7KJcEg"}' 'ukiUrW4A' --login_with_auth "Bearer foo"
session-join-game-session 'gZu1wXaG' --login_with_auth "Bearer foo"
session-leave-game-session 'LjytmG6J' --login_with_auth "Bearer foo"
session-public-game-session-reject '5TvDMNC5' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "qUC0PNYr"}' --login_with_auth "Bearer foo"
session-public-get-party 'oN3nNaYY' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"4Zx1X4gm": {}, "Letr3vaj": {}, "vbIeMO3B": {}}, "inactiveTimeout": 99, "inviteTimeout": 95, "joinability": "48ZnOxhB", "maxPlayers": 40, "minPlayers": 42, "type": "4zxBCDDw", "version": 6}' 'uVJhQGTo' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"NIT8stIv": {}, "D5zeP3qx": {}, "rNsTuvnl": {}}, "inactiveTimeout": 89, "inviteTimeout": 77, "joinability": "RpBvoWgr", "maxPlayers": 62, "minPlayers": 84, "type": "uERF3nC7", "version": 66}' 'LXjqTe2l' --login_with_auth "Bearer foo"
session-public-generate-party-code 'ZBbBuo6V' --login_with_auth "Bearer foo"
session-public-revoke-party-code '5ntIz5ma' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "Zp3w6E4f"}' 'jxLLzV0e' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "IyXjjOJp"}' 'sUZgHyNK' --login_with_auth "Bearer foo"
session-public-party-join 'dJjjP3Y3' --login_with_auth "Bearer foo"
session-public-party-leave 'U4BmX2OU' --login_with_auth "Bearer foo"
session-public-party-reject 'xvk8C4ol' --login_with_auth "Bearer foo"
session-public-party-kick 'zx8wUJ8c' 'BAToMvhb' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"ZpjnHtoT": {}, "6Lorcdvv": {}, "lx4opQh9": {}}, "configurationName": "CMnOMaFv", "inactiveTimeout": 68, "inviteTimeout": 35, "joinability": "y4GxPA6Z", "maxPlayers": 36, "members": [{"ID": "xEOef0Th", "PlatformID": "jfG5jy8m", "PlatformUserID": "IjJidRQE"}, {"ID": "a45AZBvi", "PlatformID": "4TRiGFh2", "PlatformUserID": "KW2AaClC"}, {"ID": "xZGoghsw", "PlatformID": "zdrNhsul", "PlatformUserID": "b5fIFcVS"}], "minPlayers": 52, "textChat": true, "type": "7LtGpcP4"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "data": {"FqehfvQ0": {}, "bgiw8Az3": {}, "XwwBZ5Jb": {}}, "platforms": [{"name": "dIXjZCGS", "userID": "pi9SFAuR"}, {"name": "gfg7BZGB", "userID": "9RQl6JdH"}, {"name": "6V5Zw6NT", "userID": "i2AkjeuG"}]}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "HnaKpkQW", "deployment": "BONEAPut", "inactiveTimeout": 81, "inviteTimeout": 25, "joinability": "9P5LlDlb", "maxPlayers": 14, "minPlayers": 27, "name": "oJIL8Hr3", "requestedRegions": ["WaJOq5XO", "TPJjYQ92", "ydab4ty0"], "textChat": true, "type": "5n2757bw"}' \
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
    'cSWDyy4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "rbOn5qF1", "deployment": "56wKBvUa", "inactiveTimeout": 31, "inviteTimeout": 6, "joinability": "jeOeeHaC", "maxPlayers": 20, "minPlayers": 68, "name": "IKj7Wrq6", "requestedRegions": ["TuBYDDki", "7Gf8EH8Q", "oTnB0bXx"], "textChat": false, "type": "JYnMEFVI"}' \
    '5gqUyo9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'v6sr8Vbc' \
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
    'RCZ4kY8k' \
    '5k9c0mA9' \
    'Zys4EhjO' \
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
    'FI4cGsS3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"4cQVuINs": {}, "xKWKil29": {}, "tpfx1OpA": {}}, "backfillTicketID": "WueCk6Ji", "clientVersion": "kaKXw5Rt", "configurationName": "dDVIfLKk", "deployment": "SFnJKa7i", "inactiveTimeout": 52, "inviteTimeout": 4, "joinability": "yZw2LAM4", "matchPool": "rE7jhiu8", "maxPlayers": 62, "minPlayers": 74, "requestedRegions": ["0svCsncT", "w4giz8M6", "VgKfsiql"], "serverName": "Gv0Euko2", "teams": [{"UserIDs": ["WKP5rzvW", "2FPdapLH", "60h7n60c"], "parties": [{"partyID": "WIQFxyJL", "userIDs": ["w0hZ2DSP", "AaD6MZJK", "Y9AhrJxm"]}, {"partyID": "h3GjBYgE", "userIDs": ["YbGrkiV3", "vPoJyXCs", "d5ABLl1D"]}, {"partyID": "RoZIn8AP", "userIDs": ["jE1xubgF", "8rNvORYN", "ZhGwy2RO"]}]}, {"UserIDs": ["uL8FJCdv", "sEXqGHm0", "J5S1rV1m"], "parties": [{"partyID": "0oMMMoqu", "userIDs": ["NP8GFhtT", "nJD3YCdi", "BD7HiynZ"]}, {"partyID": "op7kap7O", "userIDs": ["YrtvZ96M", "caQPAS5x", "5GNUy3d9"]}, {"partyID": "4WiMAGfY", "userIDs": ["CNgsIoyY", "OBlS3zgK", "oVZpWi0k"]}]}, {"UserIDs": ["7rmRqQAm", "NpoxSWEE", "TqY2eaW6"], "parties": [{"partyID": "FXcDhQLM", "userIDs": ["tHyBFi9s", "LyqegpNx", "Fmlrjm6q"]}, {"partyID": "bIcQ2ZSr", "userIDs": ["GDYVnS3f", "gfOcQIkm", "fnI3e57j"]}, {"partyID": "XGNrqWcw", "userIDs": ["lol5YgiV", "9oUN7abh", "aEBS1kgV"]}]}], "textChat": true, "ticketIDs": ["MwMc4Obw", "UNwQNPfZ", "qe9YABhN"], "type": "euUGfZXK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"6D8OjytH": {}, "HAPSeRf3": {}, "pIyhtt9T": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '8Pzolc7M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'HwyeBDrb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"ZDB3gDii": {}, "63mntKCJ": {}, "wT274Mn0": {}}, "backfillTicketID": "OGw7LHFw", "clientVersion": "Gzfa3Z2C", "deployment": "bQUZpDYE", "inactiveTimeout": 22, "inviteTimeout": 31, "joinability": "VwiSrVu2", "matchPool": "lsIYRqus", "maxPlayers": 28, "minPlayers": 62, "requestedRegions": ["nenx8itp", "LZ7IPEtP", "sdjzwSWM"], "teams": [{"UserIDs": ["GJLnHyED", "rqnEHGzj", "42dFnJvn"], "parties": [{"partyID": "8aYx4R6j", "userIDs": ["WUjQsPL9", "4vqdhATX", "Lhqe6BFj"]}, {"partyID": "51YUqckj", "userIDs": ["isVfXGu2", "LmJAm0qj", "JfHOkMIx"]}, {"partyID": "jJp0qEsh", "userIDs": ["RpjDPkkY", "fD5BAw3J", "Wesl9SQ3"]}]}, {"UserIDs": ["lKZrhRwc", "Ary224Bl", "ejpWNl2x"], "parties": [{"partyID": "x15baU6l", "userIDs": ["1b2JvceQ", "PNqQuX9J", "tY2rTTgV"]}, {"partyID": "08UYwD2K", "userIDs": ["8pHYCq5i", "IcCjPuLL", "UTLxaZcQ"]}, {"partyID": "v9cMAujn", "userIDs": ["lXCpjvXa", "ucAx8yv7", "sbZkYWbI"]}]}, {"UserIDs": ["rAGfuLiR", "lP9hxBS2", "em0ZXMmJ"], "parties": [{"partyID": "WcDJ7XGr", "userIDs": ["rVwwbF6U", "HGgTzEvA", "rSkyBKyX"]}, {"partyID": "T5yvpkCA", "userIDs": ["W5aRPDaH", "8y0rxwct", "Ocuh6MAO"]}, {"partyID": "hJsflQz7", "userIDs": ["inwLnokS", "4GzQZnB1", "BydaVLsQ"]}]}], "ticketIDs": ["N6LVcSC7", "k0PODn5Q", "aInKtMxv"], "type": "AJV58vVV", "version": 51}' \
    'j0Lk8MUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'YtqfaaeN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Tp5Qvg5g": {}, "TP2hfP8B": {}, "RDlRcHmw": {}}, "backfillTicketID": "y1rIU2kh", "clientVersion": "IytglaHQ", "deployment": "CU6aJGUT", "inactiveTimeout": 25, "inviteTimeout": 95, "joinability": "eflsYFAy", "matchPool": "NzcKQOTy", "maxPlayers": 12, "minPlayers": 82, "requestedRegions": ["cT661vH9", "xuo8HSTI", "w3fvnYhZ"], "teams": [{"UserIDs": ["EUPKDN9D", "6TKLW1tE", "868mZanK"], "parties": [{"partyID": "n8wXr8cI", "userIDs": ["kSDUlDLp", "vxN60ydC", "hwodycft"]}, {"partyID": "k4HY3VA9", "userIDs": ["MEzbWxwN", "vC5gwWR0", "rWu0W5YJ"]}, {"partyID": "IP7TQ8Hj", "userIDs": ["3v4Vr2sC", "HShB2bq6", "fQ1UhsQW"]}]}, {"UserIDs": ["3A1jzlFK", "fDbzEFKH", "PbnWdOS0"], "parties": [{"partyID": "PjXCm4RE", "userIDs": ["8pbGd6W0", "l6pJfVLT", "QUbgjRQY"]}, {"partyID": "GwYHJBTw", "userIDs": ["wyUxI8Up", "VB9QHUD6", "vH3wTjSR"]}, {"partyID": "fu717z4W", "userIDs": ["qjK0wT1K", "8yjKZqfi", "1YvyuxJK"]}]}, {"UserIDs": ["EUE0FKh8", "UG1YeBSN", "QKyZmYHe"], "parties": [{"partyID": "aplEGFoR", "userIDs": ["CAdS6BZ3", "7HZeQHDp", "zXrsiOO2"]}, {"partyID": "84Pq8gKx", "userIDs": ["tPrsT2QD", "cxAwpX5H", "EQPtfGfo"]}, {"partyID": "3N9n9t40", "userIDs": ["IBT0DomD", "T0dDh2Wh", "CM1zlpky"]}]}], "ticketIDs": ["P4LSgSuv", "yLzxbIfS", "Eq2UTQhF"], "type": "Ec5gbMjM", "version": 69}' \
    'XkBHfT06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "BHSKbMLT"}' \
    'wU0MfiD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'KoyCjEzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'rtzgDXz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'zKJpLw2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "BKH30VPv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'LLuKhywQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"ZJVUdjKm": {}, "9x15ptgu": {}, "GnykNwU0": {}}, "inactiveTimeout": 74, "inviteTimeout": 80, "joinability": "bHPWkDyk", "maxPlayers": 67, "minPlayers": 21, "type": "BMj55C2t", "version": 5}' \
    'e4vcGbJu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"ytTuHTfR": {}, "bJeaHhhy": {}, "6bLUPKxo": {}}, "inactiveTimeout": 82, "inviteTimeout": 21, "joinability": "wmlr68fP", "maxPlayers": 51, "minPlayers": 85, "type": "kleO8D5h", "version": 36}' \
    'VfW3aZaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'ig0nzo9Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'RQv9XKwi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "p6BMkFAz"}' \
    'bqEhK1Oi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "GtyQXU0f"}' \
    'aj4RT6Zp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '7qdcEeri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'LiZFS4LD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'KvM0j0Zw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'DxpEMWsd' \
    'agUx63b5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"B6M4c1gr": {}, "4dqgi8s9": {}, "fO9cy7JY": {}}, "configurationName": "EVIcsUc4", "inactiveTimeout": 12, "inviteTimeout": 34, "joinability": "c8i2jiFG", "maxPlayers": 6, "members": [{"ID": "WQtV2XVz", "PlatformID": "yKuSkNM9", "PlatformUserID": "XckbyoRj"}, {"ID": "0C92DF2A", "PlatformID": "kslMJjp4", "PlatformUserID": "BdCjyCRk"}, {"ID": "K2LfiQ1Q", "PlatformID": "pMTS8bGJ", "PlatformUserID": "Sn8nm0N5"}], "minPlayers": 69, "textChat": false, "type": "hXEHDeH9"}' \
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
    '{"crossplayEnabled": false, "data": {"LfsYvpOR": {}, "C1KTnI6V": {}, "MbvvaMgC": {}}, "platforms": [{"name": "P5xdW8P8", "userID": "00n4AICg"}, {"name": "McxD3wUW", "userID": "oyVP8LbY"}, {"name": "4lGrUl1F", "userID": "B5eOuYsO"}]}' \
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
