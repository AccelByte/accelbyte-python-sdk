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
achievement-admin-batch-query-user-achievements '{"codes": ["vrTefglSs6g4iY9u", "02aCNYIWekp18lOC", "3mNqF7Bl0LcghVHf"], "status": 86}' 'GcHB3CfR3ncDlwi3' --login_with_auth "Bearer foo"
achievement-admin-bulk-unlock-achievement '{"achievementCodes": ["v3MFFJ1KesKoELCp", "obBEG8X645xpdXpa", "i0rYaT5hOPjaf3H0"]}' 'tYighU0VUfcYHJbB' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'fAKSiPW3VgsZXiR1' 'DJ7HVWqMkNSawQUW' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'DFJvJBWic7UkBeIX' 'uqDuAXI66bQ71w0d' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'eoV9Lx5RDA1l2Xcr' --login_with_auth "Bearer foo"
achievement-admin-list-user-contributions 'ciYNEzvSZIPkhSgO' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'Rcz5S5BvmgBLxh4i' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'jFnE3Tam69qSZ7PC' '6f6QkmZXElW9YfRS' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-list-global-achievement-contributors 'se6AAz3S4czz0QKF' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'lAVmVLu4AOec0z8e' --login_with_auth "Bearer foo"
achievement-public-bulk-unlock-achievement '{"achievementCodes": ["Beeoip68J1nsv4W2", "OJhtafxMSJlHeb34", "sZKHcl5LLLOexL4f"]}' 'ZvWtND2tcBFpX8lN' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'tFEJ7tnkY6Mca5af' 'j12K2IzrBvvWm4ud' --login_with_auth "Bearer foo"
achievement-list-user-contributions 'E0OXudXgNne8kJAT' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward 'wlc6esUp6Sw1I98j' 'eZQ7hfxnhLd3Knak' --login_with_auth "Bearer foo"
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
echo "1..31"

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
    '{"achievementCode": "noed9DHhLOqQGhCU", "customAttributes": {"r6iTrjyEgarAdNJO": {}, "IG36I6tRbRcrEveM": {}, "dAdiPKDUVSC00PYe": {}}, "defaultLanguage": "DcagginxnFIna3yd", "description": {"dcbsPheTH26IUJNv": "YuGRUvpZaHCuESOi", "IZsMfB4ZH3mtgWgU": "4pCAKxeE70CaunQN", "xot371W9G4AvQkqs": "Gnmyo5JJTUVmb8GE"}, "global": false, "goalValue": 0.505711164543244, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "AyrIwMif3BOdkocV", "url": "Td4BxqGWV6mTJ0sQ"}, {"slug": "s6XNbjvqhnUVLWu8", "url": "olKdxL6ozRmDD0jJ"}, {"slug": "vlfV5OemPYdYT7DR", "url": "OCjtuzFMbAG9YI89"}], "name": {"hmguB8FOTjMLo4b9": "rIzqYkEpstyVTBcr", "M8rG0rH0zcswwVeM": "K6MbGIVIu8vvwLc7", "KY3uVoJXTIMtpgki": "eDyF97lGdMiHKxbW"}, "statCode": "CYzo8yO2KTK9tmmO", "tags": ["nYnOpas6ghP1y4Zi", "7s7QBlk44Z44B1GZ", "gKg4uKxaCgcGLuC3"], "unlockedIcons": [{"slug": "brWdTYCfHkIySok5", "url": "DiXZtLW87rGysryo"}, {"slug": "d3dNQrmsApRA6HX3", "url": "RwrKt2ecozL0TOg5"}, {"slug": "4vCE48L5oLF6M4lN", "url": "a4JUMSHNgqRqCV7u"}]}' \
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
    'samANkZlOX9Sfo95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"customAttributes": {"HgXqKhTPkwfLM9uS": {}, "ybRzWek2gZvRrvr0": {}, "n9d9lvccKMLhrTrc": {}}, "defaultLanguage": "BE2ItBS3KtKZWe8a", "description": {"oFzAyBME74HUtipU": "WYhWV1qx8CzPML52", "faXUr9Sk4lq2faBc": "AXXKlhvyH8paOJtx", "qMPpcVfRwNj547fH": "0XrKEDpEY8VnocGA"}, "global": false, "goalValue": 0.9193346876368718, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Zhl0bQxFJ3sWCqQp", "url": "Q2FbKPFMycMSQ4qf"}, {"slug": "AacR0LgB5BUXvjcu", "url": "2s6w3VifnKqmTSoG"}, {"slug": "H1XEfY6QAYn6WQ5U", "url": "BEU1QAOHfZiGhxOd"}], "name": {"cuDXSxSc3aZPV87p": "na08gxefTYKhuxaE", "c7M4P7UckSC6ePeN": "8i4GrFES9z7xueHp", "ATHccee9GXhKcjmS": "EwdrkEnnqKzFsLfY"}, "statCode": "alUlfwEQKjU7eHGe", "tags": ["bSVu0LQ40kepEaC4", "dfiOMZfEhHr39pys", "FO3Zvc1BZG99Lyvf"], "unlockedIcons": [{"slug": "vHEsJKQQewVLMUoA", "url": "naRcYp7FUjfIGaff"}, {"slug": "oflEIByYqeKN0meG", "url": "elYF5wWaDhukU4kh"}, {"slug": "GG4vZFTYnPkmSu4P", "url": "Wam1jxR7SETWjteo"}]}' \
    'c8fgvZDDhoO05oKq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'ymxLD1Lcvw6T6mZE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 18}' \
    'lJFRZ3ZprZ60zMjh' \
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
    'THeh94TSenE5hCFk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
$PYTHON -m $MODULE 'achievement-reset-global-achievement' \
    'If5weqZ18MH57l2Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 BulkCreatePSNEvent
$PYTHON -m $MODULE 'achievement-bulk-create-psn-event' \
    '{"data": [{"events": [{"dateTime": "srh90ETtYmGukz3M", "eventData": {"eventName": "nlrjcHp6B8Vj7rXF", "properties": {"gDnDkdZ9bpjb1tdA": {}, "3QhjCMW64f4XhIjS": {}, "oTB2NMKtezapPr2Q": {}}}, "eventId": "EPx3zTxBGtEJIYpp", "version": "uUSsKoHw2hyd12uS"}, {"dateTime": "E7BEv3aevq6iohU1", "eventData": {"eventName": "cg4W1IS3Uv1BpWoJ", "properties": {"Baqdg2FHcunsS1ln": {}, "aO2m9vqjhbeK2qN8": {}, "g6x2PyYDo5R3hLiD": {}}}, "eventId": "5sf5y1JsxJNGmyt0", "version": "SQDUDoWBZVGLlkUe"}, {"dateTime": "tzCAWc9x1aMjgGim", "eventData": {"eventName": "51T107XIZRZ7tZdI", "properties": {"s0xf4czdt7zqmSKx": {}, "OEQlVcx6GqsBq8vd": {}, "hWVnuYLgpZehK0G2": {}}}, "eventId": "nmyuViB9kRTcSQdT", "version": "nNYGeAfYFG3wSkHK"}], "thirdPartyUserId": "ufBdS3ZOokZB4cXn", "userId": "AXyuGz6LlxHv8Swy"}, {"events": [{"dateTime": "agYvDJ3w3UNgIGj2", "eventData": {"eventName": "jZtEYT8sIPSE1XXP", "properties": {"zySa0sZoFS6xCOWM": {}, "pyh9pMsQgb64ELbz": {}, "DMwyo4nIRysQdbuf": {}}}, "eventId": "XjYnSoIFeouC2m38", "version": "kXrDZWlGVE9sJ4Np"}, {"dateTime": "UtKp6M9I6nEwnZhs", "eventData": {"eventName": "jwJeGwaPSDMZz95O", "properties": {"YKiqaZD63xe5rruJ": {}, "VfLGea0ZtlzUcuHA": {}, "Xz0UV31MfuGaXsAu": {}}}, "eventId": "GsZaSHevO0TQNEI3", "version": "kfabxJWWSI1ECUo1"}, {"dateTime": "NPpeFhUztXDgB7n4", "eventData": {"eventName": "C97uAPP8PATLpUpx", "properties": {"eJlsBJT6Hh3OMjAj": {}, "q2mK8lbSEEelxnb5": {}, "QxWG2HFnZlA6HKWW": {}}}, "eventId": "4fI1IQcoBQELcNlZ", "version": "kqTZrKgXNwvm4e5G"}], "thirdPartyUserId": "X6H742OixhtAoKiV", "userId": "m6URT95XhnUcvWB2"}, {"events": [{"dateTime": "8MpusuhhDJ5slzgi", "eventData": {"eventName": "WZEtyd56LfxnbY97", "properties": {"jjYgXchCbkXX26uE": {}, "dCfQaMAQuTKfC0I2": {}, "kNjCMDtDMrentgn3": {}}}, "eventId": "DhqciwIeShF9RKb9", "version": "vvxuJlhXbWhbwPwT"}, {"dateTime": "oC6knjVwVnzaqSfJ", "eventData": {"eventName": "iQFC2gXoda0kg16y", "properties": {"USpSOAjHJWwfCjYw": {}, "WkLob9gKLqs2nEZh": {}, "pByfHZinxNfgPAwk": {}}}, "eventId": "MBsznlBUqnLT4AbG", "version": "ptKaWNvPbpg7yrRv"}, {"dateTime": "XfZ6rvgvEY3Hht1S", "eventData": {"eventName": "wqTsKKKo37NHDOQe", "properties": {"91Ps3ztUIV0dS6hI": {}, "H9c4VfkyrwpuXxba": {}, "ERbfgPmi0eHkt1mr": {}}}, "eventId": "9EOIFg0dnWIYN2NV", "version": "L70Iw157g00jr9b8"}], "thirdPartyUserId": "MuYmmeKTmBNvGYxE", "userId": "Qdf3ewoGGoY7xmFN"}]}' \
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
    'AmjDDCvs78mcMdiS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminListUserAchievements' test.out

#- 16 AdminBatchQueryUserAchievements
$PYTHON -m $MODULE 'achievement-admin-batch-query-user-achievements' \
    '{"codes": ["76YApGJ9ufwLYkqI", "gLuZS6hsQryiEtOA", "bpeUNf26UqkCfgCU"], "status": 90}' \
    'Bn2xaOBdPF0JmX8q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminBatchQueryUserAchievements' test.out

#- 17 AdminBulkUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-bulk-unlock-achievement' \
    '{"achievementCodes": ["wU1cTuHHPB5S3DvP", "RCzBrVUxmDOj3cvR", "FaTC11W0TGTCm4fZ"]}' \
    'Wuk6pQxDQpKqxLGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminBulkUnlockAchievement' test.out

#- 18 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'Mvr9TsvcMQ7dBsaI' \
    'ecRxIsZvD6rmzVr5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminResetAchievement' test.out

#- 19 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'XT1Nxw0v1dMQ9Rrb' \
    'k6C2cVWf6ttvbU1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUnlockAchievement' test.out

#- 20 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    'O6ApCD2VXidT7w0O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminAnonymizeUserAchievement' test.out

#- 21 AdminListUserContributions
$PYTHON -m $MODULE 'achievement-admin-list-user-contributions' \
    'c15N8WXBPp17PAew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminListUserContributions' test.out

#- 22 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'qSm5x3B4t7WQnp8j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicListAchievements' test.out

#- 23 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'XZedgt5cyNe27HLt' \
    'wtVOaxgP6Jbct8pu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicGetAchievement' test.out

#- 24 PublicListGlobalAchievements
$PYTHON -m $MODULE 'achievement-public-list-global-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicListGlobalAchievements' test.out

#- 25 ListGlobalAchievementContributors
$PYTHON -m $MODULE 'achievement-list-global-achievement-contributors' \
    'MybYGxD9IPmmsLmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'ListGlobalAchievementContributors' test.out

#- 26 PublicListTags
$PYTHON -m $MODULE 'achievement-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicListTags' test.out

#- 27 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    '3kaPj0O4zd8Tb7cU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicListUserAchievements' test.out

#- 28 PublicBulkUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-bulk-unlock-achievement' \
    '{"achievementCodes": ["NGPTBxiFFCrn7djj", "s69FTFVGUVhvKhJC", "meisql14mUHVbMPi"]}' \
    'mNhcZsU3VAdMDcb4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicBulkUnlockAchievement' test.out

#- 29 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'qlkiFAamqvZI2Kwj' \
    'qPBiWXade41s3rH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicUnlockAchievement' test.out

#- 30 ListUserContributions
$PYTHON -m $MODULE 'achievement-list-user-contributions' \
    '4mB2yPlRpWjmHZAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ListUserContributions' test.out

#- 31 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    'vKTH8MuqIg0Czkgu' \
    'wuJCW7EEFB67AODb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
