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
achievement-admin-bulk-unlock-achievement '{"achievementCodes": ["vrTefglSs6g4iY9u", "02aCNYIWekp18lOC", "3mNqF7Bl0LcghVHf"]}' 'PEspxwhRON0bc1eM' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'bEIjowLqc3ecjXJb' 'ZDKKoxLE1Y3Dymtj' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement '3giPg4x4yiPX6ues' '1Hhhkg1yLVbLFzHE' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'P8cM4NTwr0KHaAsm' --login_with_auth "Bearer foo"
achievement-admin-list-user-contributions 'Tej52WKi6tArAURt' --login_with_auth "Bearer foo"
achievement-public-list-achievements '9plCSVq8PdH6hJPU' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'Ac0RVwXgAgntLMCu' 'aXBWQi6BqPg4xr0l' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-list-global-achievement-contributors 'CancUZGCHsZYoLfR' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements '1KtOv7Zy0b65uvuK' --login_with_auth "Bearer foo"
achievement-public-bulk-unlock-achievement '{"achievementCodes": ["Nuy0ytZQ7M6Nzy1a", "dnSKOLFKx1dX4LuW", "Ju3pDMUAeeZ97SBR"]}' 'OPYuG6XqP6oo7G73' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'zdxTgOfnwIdlNa29' 'fDLh741IslKHzGlL' --login_with_auth "Bearer foo"
achievement-list-user-contributions 'KWUtDQs61OQAoxyy' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward 'QpRWCiiPDGQhNPEw' 'iJCf2XJVrlzqQls1' --login_with_auth "Bearer foo"
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
echo "1..30"

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
    '{"achievementCode": "ozhLVA3kE8jKvgat", "customAttributes": {"OEBM70TdlNBJYOmp": {}, "u1VCarzBsV6xnZ5J": {}, "rzzjrcaug6CWVG8S": {}}, "defaultLanguage": "WP3glU6muswVJnNn", "description": {"N7kAa7j0riFc5HTH": "QIoVsGo7dwV9DBqF", "KHQkETJyTlUrwDTn": "oujQD4IEiH9Z5qXn", "3aoRtlqOECohViHA": "5CzgFSy8X1A3PrIf"}, "global": false, "goalValue": 0.556033441762885, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "5AAeMe4L3mDWORBV", "url": "XTIIJM9XsYIIZxiX"}, {"slug": "NMR9BgaWcFX3SUBh", "url": "yoTsMWPAxUMkawaG"}, {"slug": "pAyrIwMif3BOdkoc", "url": "VTd4BxqGWV6mTJ0s"}], "name": {"Qs6XNbjvqhnUVLWu": "8olKdxL6ozRmDD0j", "JvlfV5OemPYdYT7D": "ROCjtuzFMbAG9YI8", "9hmguB8FOTjMLo4b": "9rIzqYkEpstyVTBc"}, "statCode": "rM8rG0rH0zcswwVe", "tags": ["MK6MbGIVIu8vvwLc", "7KY3uVoJXTIMtpgk", "ieDyF97lGdMiHKxb"], "unlockedIcons": [{"slug": "WCYzo8yO2KTK9tmm", "url": "OnYnOpas6ghP1y4Z"}, {"slug": "i7s7QBlk44Z44B1G", "url": "ZgKg4uKxaCgcGLuC"}, {"slug": "3brWdTYCfHkIySok", "url": "5DiXZtLW87rGysry"}]}' \
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
    'od3dNQrmsApRA6HX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"customAttributes": {"3RwrKt2ecozL0TOg": {}, "54vCE48L5oLF6M4l": {}, "Na4JUMSHNgqRqCV7": {}}, "defaultLanguage": "usamANkZlOX9Sfo9", "description": {"5HgXqKhTPkwfLM9u": "SybRzWek2gZvRrvr", "0n9d9lvccKMLhrTr": "cBE2ItBS3KtKZWe8", "aoFzAyBME74HUtip": "UWYhWV1qx8CzPML5"}, "global": true, "goalValue": 0.09215803930951261, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "XUr9Sk4lq2faBcAX", "url": "XKlhvyH8paOJtxqM"}, {"slug": "PpcVfRwNj547fH0X", "url": "rKEDpEY8VnocGAjc"}, {"slug": "i0V3tBf2jnHGKXph", "url": "n50c9tNLDljhZ2jx"}], "name": {"LRX3z46OCaGBeMfP": "lNos4yBRjrERHEon", "AZR8GmEu0q1p6QCy": "Y6vSkVFWdsbYuVEG", "VxYheR3j5mNZ6vwv": "7K8Asvt1j1Rx59he"}, "statCode": "sNWy2NvZ85DDKDAF", "tags": ["8KDsBZOuYQJ03BAH", "Z7c53q7akMpcmnnx", "6RVBrop9v7aZK3h6"], "unlockedIcons": [{"slug": "5hbN15zfQSfQrtfF", "url": "3TQN0OcNDLr36vzo"}, {"slug": "hZyjMQAg5mPYhrLT", "url": "yU8OhgfY9JQYGF4b"}, {"slug": "YXEcENx9xZlAchob", "url": "44lONDDwMvgI0Hly"}]}' \
    'PR7wZNiVsF6xG2mX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'EQdbzIVy8alncV7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 100}' \
    'GG4vZFTYnPkmSu4P' \
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
    'Wam1jxR7SETWjteo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
$PYTHON -m $MODULE 'achievement-reset-global-achievement' \
    'c8fgvZDDhoO05oKq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
$PYTHON -m $MODULE 'achievement-bulk-create-psn-event' \
    '{"data": [{"events": [{"dateTime": "ymxLD1Lcvw6T6mZE", "eventData": {"eventName": "iwxxElpMYSWIeVzm", "properties": {"7z9noowmlTIKVowi": {}, "0RY2VN4ZONJREdUQ": {}, "3z9F1BxNNgnke4ak": {}}}, "eventId": "ncw7wu9TmXfJWBPr", "version": "x9Ns8eLzYEvwSWTa"}, {"dateTime": "LQjctvrK2jhsYpKP", "eventData": {"eventName": "lXn77AtYoFzLAATP", "properties": {"Y8P8P3cfoivvQxev": {}, "ecWw7Rry0KK5rgAG": {}, "O0dW8rX2MVUGKSZ4": {}}}, "eventId": "GcLkt4pK32sJxlZc", "version": "CTpTdRtCHvuk6B6X"}, {"dateTime": "TmSLyn50sigBVZxi", "eventData": {"eventName": "KdV57GvRyd9UuL02", "properties": {"Le8HSCslsDd4M1F5": {}, "qRIblS7Nz81GRazP": {}, "AANjfBoldFOyqA2c": {}}}, "eventId": "lJ5gEOaCgM6Yn6Ru", "version": "gbNEIpGBFUjOn5mM"}], "thirdPartyUserId": "7k8nbLzvtCIW5ynM", "userId": "KquUicAeIVXtoWAX"}, {"events": [{"dateTime": "hMlW4tLqX7OICf5o", "eventData": {"eventName": "D1e6oI9FmYel0kOw", "properties": {"72o8Zkgk0jS6rDWU": {}, "wfhKvrf2AaH4yCWr": {}, "HSppnIZkNnTn3rzH": {}}}, "eventId": "5NvAtcvNedgS1fUf", "version": "KmihDbmu8ePWlQMV"}, {"dateTime": "DXEHeiGTnwyEw6hI", "eventData": {"eventName": "WDZrpP7rz3ISW510", "properties": {"kHr4isTKWjmv67nu": {}, "HCXWfwnwGioVwVzm": {}, "mBVVFfpqx1AeLtzc": {}}}, "eventId": "PJ3jtDYBo4FUTH7C", "version": "GfKSyxgRR1DiCqSM"}, {"dateTime": "zpqIFGLkDs7ACC1R", "eventData": {"eventName": "gBfoNrHlFi2qJLgm", "properties": {"BLE35YhyiDV90SeI": {}, "5yppBHoytVznCgNy": {}, "x9fbT63ShEh8PbGi": {}}}, "eventId": "kLjgjcj34uulU6FY", "version": "BZsWFbr3RSP0W9nB"}], "thirdPartyUserId": "hvhf8Q0DtJMcYQdN", "userId": "66bswAgt65X4N1LQ"}, {"events": [{"dateTime": "ZmB61JMdtwCVUrYQ", "eventData": {"eventName": "ue84dwmbwFEnAZaW", "properties": {"sQJtRYoagRJK5PX9": {}, "UcOvhPyE11TRT2SK": {}, "seoe8VLie0LBa36K": {}}}, "eventId": "Nzjf005CXNGehQ2a", "version": "TjTDfKFDXC7eGL5Y"}, {"dateTime": "hJDWh9YWqc0qgV6d", "eventData": {"eventName": "9yOfIMLds2DbPcao", "properties": {"MdtRLTmSvTkQQgB7": {}, "exYvmHMxr5hPCJJz": {}, "tJBg0tTJg46IewOX": {}}}, "eventId": "E2AkCh3QIZsUf8lG", "version": "FXcmwTERHclOdxIw"}, {"dateTime": "qejxe18rNdb8Otq6", "eventData": {"eventName": "j1mqUav7k05HAQlt", "properties": {"nSojV4jT65yclX2F": {}, "tAz0vJjFIYWOaNds": {}, "immkW2miH3xRHAKy": {}}}, "eventId": "4QxZkaXZ7vmiEd0J", "version": "PxVyQpshaDwNqTbb"}], "thirdPartyUserId": "FMXAMfVXe0GZeMgs", "userId": "RsmH1EQrYmkPKTPO"}]}' \
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
    'lhTtSiZNCxuogFte' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBulkUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-bulk-unlock-achievement' \
    '{"achievementCodes": ["THJe4BhSSQkQD6Wm", "Ot6D7ufFVTOhvQpf", "bBke8aEdd36xj6wy"]}' \
    'SoltDxsbzxrlaKEf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminBulkUnlockAchievement' test.out

#- 17 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'koYjY2o6ouRW9UtN' \
    'quwC3WgumrIz4NhG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminResetAchievement' test.out

#- 18 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'ztZpr4U4fwQIiLXg' \
    'mRasvjO4lj8m3XEw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUnlockAchievement' test.out

#- 19 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    'P2b4gd3xOeii8Jnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminAnonymizeUserAchievement' test.out

#- 20 AdminListUserContributions
$PYTHON -m $MODULE 'achievement-admin-list-user-contributions' \
    'ssep2xD2NY0kABeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminListUserContributions' test.out

#- 21 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    's9yxahld1pO0Gyf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicListAchievements' test.out

#- 22 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'PO3COyMvczgEpzZ3' \
    'FbtxfhcRC7IVYa6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetAchievement' test.out

#- 23 PublicListGlobalAchievements
$PYTHON -m $MODULE 'achievement-public-list-global-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicListGlobalAchievements' test.out

#- 24 ListGlobalAchievementContributors
$PYTHON -m $MODULE 'achievement-list-global-achievement-contributors' \
    'Z5uFRYNn3SHiWxF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'ListGlobalAchievementContributors' test.out

#- 25 PublicListTags
$PYTHON -m $MODULE 'achievement-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicListTags' test.out

#- 26 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'YbuU5ar5qTLWUCy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicListUserAchievements' test.out

#- 27 PublicBulkUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-bulk-unlock-achievement' \
    '{"achievementCodes": ["Afgc050XIZRW491e", "94mQjVOOBnIWhunE", "lqZUodp3IhtCSHy1"]}' \
    'ei1fIrPvfHnRN06E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicBulkUnlockAchievement' test.out

#- 28 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'jRwEQlNapJRfk4f9' \
    'Zcw1pEHAyNFxcVTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicUnlockAchievement' test.out

#- 29 ListUserContributions
$PYTHON -m $MODULE 'achievement-list-user-contributions' \
    'uAQTGh5BxjWOozGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ListUserContributions' test.out

#- 30 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    'DtsUuYo5p8ED5QZA' \
    'ufwNa8lzfjv9oYMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
