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
achievement-admin-list-achievements --login_with_auth "Bearer foo"
achievement-admin-create-new-achievement '{"achievementCode": "EAxcVpFrttufHIRd", "customAttributes": {"H9UzVRiXbqlAw7r6": {}, "W2ktQG0h5JAav5kR": {}, "a62WopBJHPtcDs8b": {}}, "defaultLanguage": "BZLCXLx8bbgorQeF", "description": {"bQ1g7qbPngUNB1vR": "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a": "XlFcDtgOjchIua5t", "WEIC32ogW7olvbTg": "rhRTcPiSuL0Sly6X"}, "global": true, "goalValue": 0.9162517666163068, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "8mAQLnzjMf8GZ2WB", "url": "ZqxYG3aREAu2D6QV"}, {"slug": "KNCWP75TB0i7pKxR", "url": "8dl0zRVW4EZG9m0X"}, {"slug": "cgGVbMqSszE8GHav", "url": "j7AorKsxwkosAVer"}], "name": {"Xpc1C8XfwHuKeb9l": "3rGN9A3sNm84hddS", "pHt0P7MIIR7CkyF6": "C7duuyZ0GhDogqrh", "BRd8lDR6qVNPRZYd": "FLIAjGGJddVCvu9v"}, "statCode": "x5KQ7KYnIuMBvaO3", "tags": ["5llzQRaT5kPxUfof", "vnnSuB0y5WUlrMdI", "4sNveabntBSxTeIv"], "unlockedIcons": [{"slug": "53HGCiljvjKoyD6S", "url": "CwGrncqmLtjQHAf8"}, {"slug": "TgoNm03VLisV6zwP", "url": "uo3td6TC6I3lMjGS"}, {"slug": "WN2laRlxfcjHfYak", "url": "UCTqGkE7wcWfDslp"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'JSqGAXQ0yYoNRKd3' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"customAttributes": {"IL5TAQ6iiPlSC2uE": {}, "4o5Vwdo3fePqIJA8": {}, "IHtrkmu0hpDDWVAl": {}}, "defaultLanguage": "a2l5BYNtIuS5S5XU", "description": {"djsoqwGyzzWi9gwQ": "Yv7t1o7TTr1DmrhZ", "v15T7quIOvBMcaYm": "vCkGZ5dAgqxpBFma", "Loxozr6wfNPX2bOI": "tRMvqtlB2jJCSQT2"}, "global": true, "goalValue": 0.9875727819366963, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "Q9lNmqRBaAkLnvxk", "url": "T1X68cmDc3fxU8My"}, {"slug": "KrQpM4hkkK6KKXNB", "url": "3Gv0IqmF51TkhjYn"}, {"slug": "aq6foWvXa3bMrXsD", "url": "r6kILsSSyDdmykmo"}], "name": {"PYgc2L4jk4Lo0LSP": "0pf4IxjUkl535X3a", "teEKDpADz1x3poD3": "Qgb3boLQQ1MzH7Qm", "8bwbmXgdAPh1EThG": "96gAFKK2WDgCcxvO"}, "statCode": "NZm3EeERmDnyeFoF", "tags": ["7VSZ6pf3vneSD2Tb", "3g7mSQUhAEtrmjqU", "6YE3p4lSck0ZHn5G"], "unlockedIcons": [{"slug": "I39YBHqaTHeKtW18", "url": "iGeUlc9d9sogWa24"}, {"slug": "CKNS0GqVvUfHQvsH", "url": "XNUNe4mhgo5QB65l"}, {"slug": "SAiYnNjkfZrQvGgb", "url": "LdLsFzHkBMr1yrOM"}]}' 'lNFSrUEirnjX9fDm' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'IbeZxzfTcyiuATus' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 25}' 'hsfpFDcSDG8aMVGL' --login_with_auth "Bearer foo"
achievement-admin-list-global-achievements --login_with_auth "Bearer foo"
achievement-admin-list-global-achievement-contributors 'iBNrDjqoxcwgGLXp' --login_with_auth "Bearer foo"
achievement-reset-global-achievement 'UL4pp2ncYAHdNzDm' --login_with_auth "Bearer foo"
achievement-bulk-create-psn-event '{"data": [{"events": [{"dateTime": "eIP6rOvDz9KOsb39", "eventData": {"eventName": "2k6YmJFfRByjlBiu", "properties": {"FM3FIoVk8T3GpAnk": {}, "CmBUqg2SCnqntX9y": {}, "1aZSWMiVi10sG6vx": {}}}, "eventId": "kfUcmqRRbceJ5i0E", "version": "eDxOgBnhhqElIaDm"}, {"dateTime": "l48wdNFLTm5T50x9", "eventData": {"eventName": "WT0GfH2rtOa4EXsX", "properties": {"zOXQAk4mqrxzTtuL": {}, "l4XlbGL8QOxtjzm8": {}, "y2wNhmwoYZyI4EFZ": {}}}, "eventId": "KBcYrCEAE7WIsfmx", "version": "40NLRc6m8heKnWhz"}, {"dateTime": "fe2NubeoKFeIaFQC", "eventData": {"eventName": "YoDPICpnduEEQlUL", "properties": {"dJz4mnRBkMNxvvKg": {}, "AT8mJrYq6hRkloqx": {}, "M3gpwxcfMy9XzjjI": {}}}, "eventId": "5YbsKoADkzJEN2VH", "version": "zih3bit0VWn3CO39"}], "thirdPartyUserId": "PXDNxtXgeO3FgkXh", "userId": "jDzaQY3snn2ZkP7c"}, {"events": [{"dateTime": "FdP43e5dC9XIBudf", "eventData": {"eventName": "ZgrbHDIDm4hMzF4T", "properties": {"xodenSrUTvfqU0bf": {}, "oMm5cTtFWbotQyXJ": {}, "RcQWsmqPNs92epxk": {}}}, "eventId": "0i8VxsZNereSvf96", "version": "99mCEHThUJkETAsS"}, {"dateTime": "p7gh4TeUTkOkAYfJ", "eventData": {"eventName": "B8AT9t4Tv207Y2QD", "properties": {"3oD5fLCr3OOlXVv8": {}, "ZGF7uYnGzpipNDig": {}, "NJma1MbqqZtfNWql": {}}}, "eventId": "4nmwAft4gqkNNlWk", "version": "D9eOziYRFOn0jJLH"}, {"dateTime": "C9LxhvNXTwGBCtoh", "eventData": {"eventName": "Ltl9Zuhytm5UDrT6", "properties": {"QXCs5SPBbRPZTF6o": {}, "QAXVG7tnsZg5QgXj": {}, "vyGJPN4eXbJE5Vs2": {}}}, "eventId": "GcyomQoIXimBJehy", "version": "xlNsjUgxBkF6wFPo"}], "thirdPartyUserId": "JeQediogEhhM2rIi", "userId": "zGdKvOPdq5xrgxSm"}, {"events": [{"dateTime": "y1DN9LFkYW5DQyj4", "eventData": {"eventName": "bj5Ro2ogaKt2ujQS", "properties": {"a3Zdb65UXmy0Zp6i": {}, "IaTIKUkmkk9QM0NB": {}, "MA9ORxpzwLR2AK6e": {}}}, "eventId": "XUGPJsw1fiP80G9P", "version": "clxcft2ulIJzPyrV"}, {"dateTime": "EiOG4UcqsuGKHhMR", "eventData": {"eventName": "WLVd3DlhLuIpomM8", "properties": {"sm1MiaI1mX2tJoAR": {}, "tdbBe7udsMrok0Wv": {}, "GYYnx4V709xbnGez": {}}}, "eventId": "KsDwG2omOR2nvYI9", "version": "TVqJdvzcWbfUpaXp"}, {"dateTime": "5JMl5LL4bTxBmZjd", "eventData": {"eventName": "rrIxsB0NRsB1fPqq", "properties": {"RRulpqpymDkQhtrH": {}, "WwRVnwVBOqOHi8pW": {}, "Gd1juYhiqjRJOqB5": {}}}, "eventId": "F93zFQbJndUDpdON", "version": "neAczbBdHb2slt71"}], "thirdPartyUserId": "B1SmZp2JZp50CnPb", "userId": "71ORYcmQbTU5JX8c"}]}' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'cLjMXJRk0eaKQDOJ' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'vrTefglSs6g4iY9u' '02aCNYIWekp18lOC' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement '3mNqF7Bl0LcghVHf' 'PEspxwhRON0bc1eM' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'bEIjowLqc3ecjXJb' --login_with_auth "Bearer foo"
achievement-admin-list-user-contributions 'ZDKKoxLE1Y3Dymtj' --login_with_auth "Bearer foo"
achievement-public-list-achievements '3giPg4x4yiPX6ues' --login_with_auth "Bearer foo"
achievement-public-get-achievement '1Hhhkg1yLVbLFzHE' 'P8cM4NTwr0KHaAsm' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-list-global-achievement-contributors 'Tej52WKi6tArAURt' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements '9plCSVq8PdH6hJPU' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'Ac0RVwXgAgntLMCu' 'aXBWQi6BqPg4xr0l' --login_with_auth "Bearer foo"
achievement-list-user-contributions 'CancUZGCHsZYoLfR' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward '1KtOv7Zy0b65uvuK' 'Nuy0ytZQ7M6Nzy1a' --login_with_auth "Bearer foo"
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
echo "1..28"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminListAchievements
$PYTHON -m $MODULE 'achievement-admin-list-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminListAchievements' test.out

#- 3 AdminCreateNewAchievement
$PYTHON -m $MODULE 'achievement-admin-create-new-achievement' \
    '{"achievementCode": "dnSKOLFKx1dX4LuW", "customAttributes": {"Ju3pDMUAeeZ97SBR": {}, "OPYuG6XqP6oo7G73": {}, "zdxTgOfnwIdlNa29": {}}, "defaultLanguage": "fDLh741IslKHzGlL", "description": {"KWUtDQs61OQAoxyy": "QpRWCiiPDGQhNPEw", "iJCf2XJVrlzqQls1": "ozhLVA3kE8jKvgat", "OEBM70TdlNBJYOmp": "u1VCarzBsV6xnZ5J"}, "global": true, "goalValue": 0.07667599926849034, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "7hfxnhLd3Knaknoe", "url": "d9DHhLOqQGhCUr6i"}, {"slug": "TrjyEgarAdNJOIG3", "url": "6I6tRbRcrEveMdAd"}, {"slug": "iPKDUVSC00PYeDca", "url": "gginxnFIna3yddcb"}], "name": {"sPheTH26IUJNvYuG": "RUvpZaHCuESOiIZs", "MfB4ZH3mtgWgU4pC": "AKxeE70CaunQNxot", "371W9G4AvQkqsGnm": "yo5JJTUVmb8GEXFT"}, "statCode": "lEMEsFzYqwgK1Np5", "tags": ["nodqpLm7FhJBNXzA", "FdO0Khqf6kiTdSGv", "2LFjAKY7CbgsWqFW"], "unlockedIcons": [{"slug": "ZX7kPBom8F9GLLTG", "url": "8phc3n4iLoIllKlp"}, {"slug": "O2pqiXJF3WGRaoQo", "url": "mSJC4DdrKF7SUQPL"}, {"slug": "G59e0k5ZtX6wK7Pp", "url": "UlcIW32iK7MGt1ix"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateNewAchievement' test.out

#- 4 ExportAchievements
$PYTHON -m $MODULE 'achievement-export-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'ExportAchievements' test.out

#- 5 ImportAchievements
$PYTHON -m $MODULE 'achievement-import-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'ImportAchievements' test.out

#- 6 AdminGetAchievement
$PYTHON -m $MODULE 'achievement-admin-get-achievement' \
    'Y5rA1WoVeJIePF8Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"customAttributes": {"rQzP4zvtdxdbZUpd": {}, "6FJtHJ1pyVwyKQLY": {}, "6FEO65Rb3z7CYLM8": {}}, "defaultLanguage": "IlsHqffnrfsGlfPa", "description": {"ZKBwa3Ddb60ufPpz": "wj1QGIFmlVf4jvap", "seE9LN9bvhOrHflI": "Od6X3viLvtEk4mTI", "pUA9gxo8SV38nEho": "XmM2W7l6jHMA2rG3"}, "global": false, "goalValue": 0.005769163490085161, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "UMSHNgqRqCV7usam", "url": "ANkZlOX9Sfo95HgX"}, {"slug": "qKhTPkwfLM9uSybR", "url": "zWek2gZvRrvr0n9d"}, {"slug": "9lvccKMLhrTrcBE2", "url": "ItBS3KtKZWe8aoFz"}], "name": {"AyBME74HUtipUWYh": "WV1qx8CzPML52faX", "Ur9Sk4lq2faBcAXX": "KlhvyH8paOJtxqMP", "pcVfRwNj547fH0Xr": "KEDpEY8VnocGAjci"}, "statCode": "0V3tBf2jnHGKXphn", "tags": ["50c9tNLDljhZ2jxL", "RX3z46OCaGBeMfPl", "Nos4yBRjrERHEonA"], "unlockedIcons": [{"slug": "ZR8GmEu0q1p6QCyY", "url": "6vSkVFWdsbYuVEGV"}, {"slug": "xYheR3j5mNZ6vwv7", "url": "K8Asvt1j1Rx59hes"}, {"slug": "NWy2NvZ85DDKDAF8", "url": "KDsBZOuYQJ03BAHZ"}]}' \
    '7c53q7akMpcmnnx6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'RVBrop9v7aZK3h65' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 15}' \
    'lUlfwEQKjU7eHGeb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListGlobalAchievements
$PYTHON -m $MODULE 'achievement-admin-list-global-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListGlobalAchievements' test.out

#- 11 AdminListGlobalAchievementContributors
$PYTHON -m $MODULE 'achievement-admin-list-global-achievement-contributors' \
    'SVu0LQ40kepEaC4d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
$PYTHON -m $MODULE 'achievement-reset-global-achievement' \
    'fiOMZfEhHr39pysF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
$PYTHON -m $MODULE 'achievement-bulk-create-psn-event' \
    '{"data": [{"events": [{"dateTime": "O3Zvc1BZG99Lyvfv", "eventData": {"eventName": "HEsJKQQewVLMUoAn", "properties": {"aRcYp7FUjfIGaffo": {}, "flEIByYqeKN0meGe": {}, "lYF5wWaDhukU4khG": {}}}, "eventId": "G4vZFTYnPkmSu4PW", "version": "am1jxR7SETWjteoc"}, {"dateTime": "8fgvZDDhoO05oKqy", "eventData": {"eventName": "mxLD1Lcvw6T6mZEi", "properties": {"wxxElpMYSWIeVzm7": {}, "z9noowmlTIKVowi0": {}, "RY2VN4ZONJREdUQ3": {}}}, "eventId": "z9F1BxNNgnke4akn", "version": "cw7wu9TmXfJWBPrx"}, {"dateTime": "9Ns8eLzYEvwSWTaL", "eventData": {"eventName": "QjctvrK2jhsYpKPl", "properties": {"Xn77AtYoFzLAATPY": {}, "8P8P3cfoivvQxeve": {}, "cWw7Rry0KK5rgAGO": {}}}, "eventId": "0dW8rX2MVUGKSZ4G", "version": "cLkt4pK32sJxlZcC"}], "thirdPartyUserId": "TpTdRtCHvuk6B6XT", "userId": "mSLyn50sigBVZxiK"}, {"events": [{"dateTime": "dV57GvRyd9UuL02L", "eventData": {"eventName": "e8HSCslsDd4M1F5q", "properties": {"RIblS7Nz81GRazPA": {}, "ANjfBoldFOyqA2cl": {}, "J5gEOaCgM6Yn6Rug": {}}}, "eventId": "bNEIpGBFUjOn5mM7", "version": "k8nbLzvtCIW5ynMK"}, {"dateTime": "quUicAeIVXtoWAXh", "eventData": {"eventName": "MlW4tLqX7OICf5oD", "properties": {"1e6oI9FmYel0kOw7": {}, "2o8Zkgk0jS6rDWUw": {}, "fhKvrf2AaH4yCWrH": {}}}, "eventId": "SppnIZkNnTn3rzH5", "version": "NvAtcvNedgS1fUfK"}, {"dateTime": "mihDbmu8ePWlQMVD", "eventData": {"eventName": "XEHeiGTnwyEw6hIW", "properties": {"DZrpP7rz3ISW510k": {}, "Hr4isTKWjmv67nuH": {}, "CXWfwnwGioVwVzmm": {}}}, "eventId": "BVVFfpqx1AeLtzcP", "version": "J3jtDYBo4FUTH7CG"}], "thirdPartyUserId": "fKSyxgRR1DiCqSMz", "userId": "pqIFGLkDs7ACC1Rg"}, {"events": [{"dateTime": "BfoNrHlFi2qJLgmB", "eventData": {"eventName": "LE35YhyiDV90SeI5", "properties": {"yppBHoytVznCgNyx": {}, "9fbT63ShEh8PbGik": {}, "Ljgjcj34uulU6FYB": {}}}, "eventId": "ZsWFbr3RSP0W9nBh", "version": "vhf8Q0DtJMcYQdN6"}, {"dateTime": "6bswAgt65X4N1LQZ", "eventData": {"eventName": "mB61JMdtwCVUrYQu", "properties": {"e84dwmbwFEnAZaWs": {}, "QJtRYoagRJK5PX9U": {}, "cOvhPyE11TRT2SKs": {}}}, "eventId": "eoe8VLie0LBa36KN", "version": "zjf005CXNGehQ2aT"}, {"dateTime": "jTDfKFDXC7eGL5Yh", "eventData": {"eventName": "JDWh9YWqc0qgV6d9", "properties": {"yOfIMLds2DbPcaoM": {}, "dtRLTmSvTkQQgB7e": {}, "xYvmHMxr5hPCJJzt": {}}}, "eventId": "JBg0tTJg46IewOXE", "version": "2AkCh3QIZsUf8lGF"}], "thirdPartyUserId": "XcmwTERHclOdxIwq", "userId": "ejxe18rNdb8Otq6j"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'BulkCreatePSNEvent' test.out

#- 14 AdminListTags
$PYTHON -m $MODULE 'achievement-admin-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListTags' test.out

#- 15 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    '1mqUav7k05HAQltn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'SojV4jT65yclX2Ft' \
    'Az0vJjFIYWOaNdsi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminResetAchievement' test.out

#- 17 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'mmkW2miH3xRHAKy4' \
    'QxZkaXZ7vmiEd0JP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUnlockAchievement' test.out

#- 18 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    'xVyQpshaDwNqTbbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminAnonymizeUserAchievement' test.out

#- 19 AdminListUserContributions
$PYTHON -m $MODULE 'achievement-admin-list-user-contributions' \
    'MXAMfVXe0GZeMgsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminListUserContributions' test.out

#- 20 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'smH1EQrYmkPKTPOl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicListAchievements' test.out

#- 21 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'hTtSiZNCxuogFteT' \
    'HJe4BhSSQkQD6WmO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGetAchievement' test.out

#- 22 PublicListGlobalAchievements
$PYTHON -m $MODULE 'achievement-public-list-global-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicListGlobalAchievements' test.out

#- 23 ListGlobalAchievementContributors
$PYTHON -m $MODULE 'achievement-list-global-achievement-contributors' \
    't6D7ufFVTOhvQpfb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'ListGlobalAchievementContributors' test.out

#- 24 PublicListTags
$PYTHON -m $MODULE 'achievement-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicListTags' test.out

#- 25 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'Bke8aEdd36xj6wyS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicListUserAchievements' test.out

#- 26 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'oltDxsbzxrlaKEfk' \
    'oYjY2o6ouRW9UtNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicUnlockAchievement' test.out

#- 27 ListUserContributions
$PYTHON -m $MODULE 'achievement-list-user-contributions' \
    'uwC3WgumrIz4NhGz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ListUserContributions' test.out

#- 28 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    'tZpr4U4fwQIiLXgm' \
    'RasvjO4lj8m3XEwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
