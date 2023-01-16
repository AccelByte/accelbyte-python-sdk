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
session-admin-create-configuration-template-v1 '{"clientVersion": "oqjIZ8um", "deployment": "7IlX5Bg9", "inactiveTimeout": 88, "inviteTimeout": 27, "joinability": "95BsYrUc", "maxPlayers": 17, "minPlayers": 80, "name": "0EHULoRJ", "requestedRegions": ["8mwBYO6M", "cg62x9uu", "3cS2eTgs"], "textChat": true, "type": "Ga988loF"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'ikHJchxe' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "ipUkYEn1", "deployment": "PygCq4Hb", "inactiveTimeout": 36, "inviteTimeout": 35, "joinability": "58oBWQ0b", "maxPlayers": 35, "minPlayers": 1, "name": "cU3mupcf", "requestedRegions": ["bGkQofSA", "sUhus6QX", "pB82A2Kp"], "textChat": false, "type": "RFcARXNg"}' 'kcXf62dB' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'TGQBP6OU' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'zvopxAxz' 'TofRzXFM' '8OqxjgX8' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"Z5VQ0YpI": {}, "n60nL7qC": {}, "daA8kNXV": {}}, "backfillTicketID": "VVc9CJcN", "clientVersion": "wycrhR4T", "configurationName": "0a4TSeE6", "deployment": "5B99AdKr", "inactiveTimeout": 25, "inviteTimeout": 29, "joinability": "71adekuW", "matchPool": "h6wC1n7K", "maxPlayers": 61, "minPlayers": 52, "requestedRegions": ["kiRg5JPS", "JTTn7dxJ", "zQpp7eKS"], "serverName": "sCYe83OB", "teams": [{"UserIDs": ["68UcU6Ic", "TE2Nj8WZ", "VQpzo5Jm"], "parties": [{"partyID": "e3EBDocj", "userIDs": ["PzAcyreL", "885EImm1", "OzfQm3Fv"]}, {"partyID": "JYnc8spV", "userIDs": ["ei8EwkTA", "IWL09AsW", "e7vWiVh6"]}, {"partyID": "SWnopU55", "userIDs": ["WseB9r3b", "MuyKLQhz", "oOnVy8ol"]}]}, {"UserIDs": ["IBtKoGhm", "DzoBk1gT", "nUVKwEeB"], "parties": [{"partyID": "dmOuBfdT", "userIDs": ["koHnFm5h", "kceyI7cW", "jhB1AQq4"]}, {"partyID": "4w5DroqO", "userIDs": ["ILPOtVAQ", "7XT07NOu", "yBfUNxfK"]}, {"partyID": "9fGeT5mT", "userIDs": ["NkwSx9Gn", "YcaJeamL", "vINK5xtf"]}]}, {"UserIDs": ["QtxQDedQ", "EgxIa6Np", "uGUt5d2i"], "parties": [{"partyID": "uPh3PEQO", "userIDs": ["s5VziLk8", "L6VJBjE2", "lqjlXW9b"]}, {"partyID": "XCp8w7Hp", "userIDs": ["jfdLkMYQ", "oQDz00VT", "h5vUh6Z2"]}, {"partyID": "BGDH39AV", "userIDs": ["BIOziuFy", "vP8qH3rD", "7JT0OtbP"]}]}], "textChat": false, "ticketIDs": ["eCpI92QI", "7dQgycMs", "g8jsYrPK"], "type": "BvNmjTLi"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"VaOsTJ3h": {}, "YpAQmHIW": {}, "d59dZktx": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'AKmGB7pt' --login_with_auth "Bearer foo"
session-get-game-session 'CYvNxcIY' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"goOao0Av": {}, "PbN9ZPxi": {}, "xhixWVDf": {}}, "backfillTicketID": "1QPJbes8", "clientVersion": "0EzOVlwJ", "deployment": "TBzh11qT", "inactiveTimeout": 84, "inviteTimeout": 44, "joinability": "9WglVrkj", "matchPool": "DZ9gWJnS", "maxPlayers": 36, "minPlayers": 0, "requestedRegions": ["T2qsnhLN", "ZJl5JY5b", "2PFSHBh8"], "teams": [{"UserIDs": ["gyVAbiVI", "1ssSqyVn", "UPKl03Cp"], "parties": [{"partyID": "TmIV1FzO", "userIDs": ["o0KgtnD9", "59kL8BPH", "FXi0nGGW"]}, {"partyID": "3zAdXapw", "userIDs": ["GExAybAP", "y6AM0XT1", "3TpK8jKs"]}, {"partyID": "gNJ4lsdF", "userIDs": ["hca5MjWu", "DigUqiJu", "7pwFFc0x"]}]}, {"UserIDs": ["5XDsLW9E", "0rpp9oRY", "Q2FgeQGF"], "parties": [{"partyID": "s29rFoWV", "userIDs": ["UV45Hs1A", "6sFdSHuX", "Cn7mE06u"]}, {"partyID": "Bq9F40vf", "userIDs": ["u1rChtxU", "vHO819C4", "wHNhgwIs"]}, {"partyID": "sEGL7CYl", "userIDs": ["XYyKZI44", "tgW67BRO", "AAD9y7KW"]}]}, {"UserIDs": ["pfSh449l", "ILbiEZjx", "4b0SGJOk"], "parties": [{"partyID": "LfYPLJGI", "userIDs": ["sFPjwN0K", "gdoC1i16", "urL1rw6G"]}, {"partyID": "qYg8Rk78", "userIDs": ["xfVjCyew", "uSgawZ35", "2hU1HFIS"]}, {"partyID": "gADruOrn", "userIDs": ["EFLN3W1l", "eh8xilMI", "U3hje1V8"]}]}], "ticketIDs": ["WskfgYkt", "KMoN7L26", "FNAaroYr"], "type": "H1ZrhKsW", "version": 37}' '2t0zp0Ue' --login_with_auth "Bearer foo"
session-delete-game-session 'mqOGxEru' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"ovsyT4aU": {}, "gD2gw2l7": {}, "8qiaESSe": {}}, "backfillTicketID": "IxrQQfux", "clientVersion": "FQjAsP7t", "deployment": "uNOsSNZ2", "inactiveTimeout": 9, "inviteTimeout": 49, "joinability": "bwEvNjoe", "matchPool": "e8tH1t0w", "maxPlayers": 48, "minPlayers": 87, "requestedRegions": ["6WtKJNG8", "pBRMCB2u", "N7g2ERjE"], "teams": [{"UserIDs": ["YUgI2Z3i", "HUC5pTN3", "oWMvSuvs"], "parties": [{"partyID": "oNJnhu8f", "userIDs": ["JQBntodH", "RvP1wAnU", "q1EpTcux"]}, {"partyID": "dC21LPy3", "userIDs": ["b67h5dGg", "pFn0YAyC", "UqJ4dcwy"]}, {"partyID": "k9Odnk90", "userIDs": ["YIU2IZZg", "65WHqZKL", "3cZkdonK"]}]}, {"UserIDs": ["Q1mWdbFB", "jQ77AEoV", "OJPa2SKZ"], "parties": [{"partyID": "jjErBNKW", "userIDs": ["aVNY7Tkt", "Fi37lQl7", "7LgaUlhR"]}, {"partyID": "nCLTm0uC", "userIDs": ["qfI42yv6", "SRY7XMUU", "6c0y0Ole"]}, {"partyID": "flxcQfSz", "userIDs": ["gXyiI4pH", "HrFsT1e1", "QVfkCB0t"]}]}, {"UserIDs": ["apkYDiAk", "0Ku7dDD9", "33n4dorh"], "parties": [{"partyID": "SeKUPcLj", "userIDs": ["Hj4qnoN1", "BTfq47aF", "79whIfDK"]}, {"partyID": "xFH9dEQj", "userIDs": ["sWCa8aQL", "KgMIRuPs", "h8X2qntS"]}, {"partyID": "jJk4lvfX", "userIDs": ["zYGyP9OB", "SsVivCaq", "wruddwUZ"]}]}], "ticketIDs": ["7gqmUqQ1", "KrXKXtJK", "o7INfogT"], "type": "8971Jakp", "version": 16}' 'uSzZDtOz' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "WcLwuN6d"}' 'iZ6Yb5h4' --login_with_auth "Bearer foo"
session-join-game-session 'ux6UGCVP' --login_with_auth "Bearer foo"
session-leave-game-session 'YLzSUXYN' --login_with_auth "Bearer foo"
session-public-game-session-reject 'C6WS568V' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "1hONLl4P"}' --login_with_auth "Bearer foo"
session-public-get-party 'owpirBoa' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"wL95SvQz": {}, "HJPBiNkT": {}, "rogC8ac4": {}}, "inactiveTimeout": 24, "inviteTimeout": 7, "joinability": "97VCt0kR", "maxPlayers": 20, "minPlayers": 30, "type": "3Qakh76v", "version": 2}' 'JF9y60xH' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"QO3BoMKu": {}, "9lJ7BnlO": {}, "gkMFav7X": {}}, "inactiveTimeout": 64, "inviteTimeout": 100, "joinability": "56rOV8wT", "maxPlayers": 74, "minPlayers": 41, "type": "vHpAqyld", "version": 52}' 'uD3IJ1kP' --login_with_auth "Bearer foo"
session-public-generate-party-code 'OGilC7KX' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'dADcuE4g' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "oQInI8XY"}' 'sM2r0acZ' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "joYUHb1q"}' '5m7zoJ9E' --login_with_auth "Bearer foo"
session-public-party-join '59iv0Czw' --login_with_auth "Bearer foo"
session-public-party-leave 'OT2Aahbl' --login_with_auth "Bearer foo"
session-public-party-reject 'wcukQm6d' --login_with_auth "Bearer foo"
session-public-party-kick 'oER4BqA2' 'aZFz8bGI' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"ipzbpFfd": {}, "dDbk9cuH": {}, "bYDkHP3G": {}}, "configurationName": "EbMF9DtZ", "inactiveTimeout": 13, "inviteTimeout": 79, "joinability": "UdSs6op2", "maxPlayers": 52, "members": [{"ID": "GUkUlefu", "PlatformID": "CsbnExdb", "PlatformUserID": "x00jNCAJ"}, {"ID": "oSgl4pDI", "PlatformID": "xI7Rk8A6", "PlatformUserID": "oCYn8W6S"}, {"ID": "WI4lLHfd", "PlatformID": "Lzl5OeDD", "PlatformUserID": "UkK964Qp"}], "minPlayers": 7, "textChat": true, "type": "wr4DNGZp"}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "s0oxtgjG", "deployment": "ILOe53ot", "inactiveTimeout": 69, "inviteTimeout": 96, "joinability": "1dzztK4Y", "maxPlayers": 43, "minPlayers": 51, "name": "FZh1q7Bu", "requestedRegions": ["PrGZ7pA1", "mPmQpRN8", "dg5x0imB"], "textChat": true, "type": "6nVuwmqR"}' \
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
    'TdWAaSez' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "F3WEu4I9", "deployment": "tlfUAAGJ", "inactiveTimeout": 7, "inviteTimeout": 22, "joinability": "sf2Q1t0u", "maxPlayers": 8, "minPlayers": 81, "name": "EWoxPuDh", "requestedRegions": ["IJLjyGOY", "yVwV2ne6", "qyqT6Pvq"], "textChat": true, "type": "4dFD9GEI"}' \
    'Cy736cLa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '61aQyH3g' \
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
    'uRQrs6XE' \
    'Skmow0qP' \
    'JlWBgoqD' \
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
    '{"attributes": {"4IiV4U6p": {}, "6WBPFhpg": {}, "u7D5PDi7": {}}, "backfillTicketID": "ydXbRFqt", "clientVersion": "vl4CvShU", "configurationName": "uAVptop5", "deployment": "dGR7AQyW", "inactiveTimeout": 43, "inviteTimeout": 29, "joinability": "7Wu8Ha6U", "matchPool": "zPqYtQkl", "maxPlayers": 62, "minPlayers": 75, "requestedRegions": ["MpmhKWPy", "vfPHGyJL", "BYyz9zlT"], "serverName": "J2wWXij1", "teams": [{"UserIDs": ["BSwEgjpR", "AJaZGcJa", "n86bbqRU"], "parties": [{"partyID": "9gL9VMcE", "userIDs": ["aNkxPBkd", "MiU15K5W", "XIfLsooA"]}, {"partyID": "0xKRSbRJ", "userIDs": ["plYKlhtY", "6Y20PV6f", "Cj1Kzl3Y"]}, {"partyID": "DuND1cbQ", "userIDs": ["aL7LZq1y", "rlnGnL90", "d6caKFls"]}]}, {"UserIDs": ["ncaabIiA", "BHz8kHgl", "YCCusyMP"], "parties": [{"partyID": "Ps2RakVi", "userIDs": ["5Fo0qPWP", "J8nVpEbg", "jS8y5sR7"]}, {"partyID": "u1NlC5Ug", "userIDs": ["pRtju93c", "Ley70juC", "1seS3LDU"]}, {"partyID": "PpjHnGKB", "userIDs": ["D0FOtccc", "b2A3R0it", "b9MjKVhH"]}]}, {"UserIDs": ["m2r7mmFo", "RpfUURHY", "Ro3HJanN"], "parties": [{"partyID": "yUfxprCd", "userIDs": ["yhl4iL0K", "b2m90x9P", "jk5scde7"]}, {"partyID": "EB4BEI8H", "userIDs": ["54IRpDch", "j5fReIxn", "1gMGulBF"]}, {"partyID": "TmZQ3oFp", "userIDs": ["u52Y4CM5", "TC9RNJaa", "N87ilSQP"]}]}], "textChat": true, "ticketIDs": ["5fvwmgei", "u9VgM7PF", "LKJfPHV0"], "type": "dfhXcFCV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"Twtg5lEw": {}, "YnovQ8Yk": {}, "RqVYSTGw": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'Ac0TpYgo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'GdsF5dWo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"kQPUpIca": {}, "HweWrqCa": {}, "9TpTzssh": {}}, "backfillTicketID": "oXmDJZiG", "clientVersion": "fCY3XYzR", "deployment": "nFr5vq3x", "inactiveTimeout": 56, "inviteTimeout": 6, "joinability": "czEJezF7", "matchPool": "OYJLOBBH", "maxPlayers": 58, "minPlayers": 45, "requestedRegions": ["HCQd1LIV", "yUHbln7l", "b7rPPyVs"], "teams": [{"UserIDs": ["G33wWl7k", "eaxjyGdH", "rl0nNIGj"], "parties": [{"partyID": "Ch7xOg6n", "userIDs": ["VdxrbX5o", "D0VXDAbj", "HJ2XmFDV"]}, {"partyID": "wAnuMzFW", "userIDs": ["UI7iufWW", "KssYpV9p", "x4YSXPO3"]}, {"partyID": "qgYiEsT2", "userIDs": ["zlmVUuK9", "xzxBzYDc", "8YtikFkz"]}]}, {"UserIDs": ["IwC09yAR", "8VRkTgxR", "wyRnjhRP"], "parties": [{"partyID": "Gsx8AnFQ", "userIDs": ["aSdmV6VV", "i6yhwrmT", "DwiSs5jN"]}, {"partyID": "Ml9Q0J0p", "userIDs": ["KL0bLNdA", "O07tzk3R", "KRgn9F44"]}, {"partyID": "caWlr8Uj", "userIDs": ["ELsFdXlG", "C9bUkDsw", "jT77iAVa"]}]}, {"UserIDs": ["GygQNZ6L", "5DPO8gu9", "Ehmf1DUJ"], "parties": [{"partyID": "nTGs9kiL", "userIDs": ["rECQPyP7", "ePc7Hinb", "5QpLCIZT"]}, {"partyID": "Hbms07r3", "userIDs": ["djjmHzal", "QTj6GkOj", "D7J0IwCp"]}, {"partyID": "l7TOW3XA", "userIDs": ["XjoXM4Tv", "WB7h4ldP", "3RHDqH6k"]}]}], "ticketIDs": ["fkEmT7W1", "lvPVSoT8", "7iTEjK5G"], "type": "XpkbPhHR", "version": 91}' \
    'f4oCmtmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'S2hJ5ZsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"kxzgxmqO": {}, "F9Dh6rQ6": {}, "XX4G2Wk1": {}}, "backfillTicketID": "AoFCj3S4", "clientVersion": "UuEbGxWR", "deployment": "65vbbq2V", "inactiveTimeout": 49, "inviteTimeout": 34, "joinability": "aC3K5YIK", "matchPool": "TOISwdWh", "maxPlayers": 9, "minPlayers": 88, "requestedRegions": ["lZOTne8v", "rpxaIncJ", "kywCjLWy"], "teams": [{"UserIDs": ["CQwghiRI", "BUsJc9QI", "L3oumceP"], "parties": [{"partyID": "5quoG9ya", "userIDs": ["szq2Xn0u", "MVWzRqec", "Bpvk5ESV"]}, {"partyID": "O209Ipbj", "userIDs": ["yitY5TSG", "7nufuJKL", "FJiy79O8"]}, {"partyID": "wHXv17v7", "userIDs": ["MOja6RSF", "w31PIFm7", "3ZJWIgH2"]}]}, {"UserIDs": ["6Gf5LNXQ", "tA6KWxq1", "2LJggcCq"], "parties": [{"partyID": "h8n3N1Ek", "userIDs": ["R26ZrUlN", "vIMoDrrc", "eQ3sJM6K"]}, {"partyID": "RPYn4SnF", "userIDs": ["Go4nHog5", "aoTqU92k", "PzQ5DuS7"]}, {"partyID": "0Xd8N5N0", "userIDs": ["Gov9rwQL", "Jt7fJxbh", "Q0OwVnOs"]}]}, {"UserIDs": ["QAY63LIo", "4qMMjxIm", "PmFy8iMc"], "parties": [{"partyID": "S3Rqmsuw", "userIDs": ["OEDgPs5M", "hlqlczLt", "rBceSeHm"]}, {"partyID": "E65R58Mb", "userIDs": ["oTYWcNdl", "7oA4zRNK", "W5Gr09hw"]}, {"partyID": "JIQlEEEp", "userIDs": ["t09pwLEk", "IB7ZEW89", "rBhPNB8J"]}]}], "ticketIDs": ["S4al15Oh", "em0rPY2J", "xk1E48FN"], "type": "uOpEL3uV", "version": 30}' \
    'yUckcaK1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "Hh2CIDXb"}' \
    'etqviUu0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '31jvumTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'pTHXlQ0w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'FpZ74Jss' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "3At6GzmU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'AhVLR0UH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"ECBar83N": {}, "ZSjK1xVG": {}, "bmqaMs8z": {}}, "inactiveTimeout": 28, "inviteTimeout": 50, "joinability": "UlNR00LP", "maxPlayers": 42, "minPlayers": 82, "type": "RIAmY4wD", "version": 87}' \
    'NHNmmDiV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"wraoENGy": {}, "V10moCXX": {}, "MEQi3QF2": {}}, "inactiveTimeout": 77, "inviteTimeout": 13, "joinability": "T18ju0xT", "maxPlayers": 16, "minPlayers": 84, "type": "WLA0wqGI", "version": 5}' \
    'OHWCJheN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '14oqmhY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '1Ik5umb9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "ObwZhRDf"}' \
    '8OVLEquT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "Xc5tQYVQ"}' \
    '8MI6Ct6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'jRbHhisx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'kn5abhw8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'q3gIxaYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'PqRTOU5s' \
    'C0cHUPf0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"AydGFm2P": {}, "INf0TnfU": {}, "macHmroR": {}}, "configurationName": "9b7Y4gyu", "inactiveTimeout": 54, "inviteTimeout": 74, "joinability": "9xwsHeuf", "maxPlayers": 68, "members": [{"ID": "PzAUB5LA", "PlatformID": "DTpZPRtg", "PlatformUserID": "xoqMbYfM"}, {"ID": "JDSzv00o", "PlatformID": "D0QOk80d", "PlatformUserID": "arB39jgn"}, {"ID": "lIRf07uS", "PlatformID": "dAKtLX6T", "PlatformUserID": "VO6WmVXP"}], "minPlayers": 32, "textChat": true, "type": "PTtttcFz"}' \
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
