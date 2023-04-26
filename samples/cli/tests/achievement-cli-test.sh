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
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'eIP6rOvDz9KOsb39' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement '2k6YmJFfRByjlBiu' 'FM3FIoVk8T3GpAnk' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'CmBUqg2SCnqntX9y' '1aZSWMiVi10sG6vx' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'kfUcmqRRbceJ5i0E' --login_with_auth "Bearer foo"
achievement-admin-list-user-contributions 'eDxOgBnhhqElIaDm' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'l48wdNFLTm5T50x9' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'WT0GfH2rtOa4EXsX' 'zOXQAk4mqrxzTtuL' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-list-global-achievement-contributors 'l4XlbGL8QOxtjzm8' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'y2wNhmwoYZyI4EFZ' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'KBcYrCEAE7WIsfmx' '40NLRc6m8heKnWhz' --login_with_auth "Bearer foo"
achievement-list-user-contributions 'fe2NubeoKFeIaFQC' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward 'YoDPICpnduEEQlUL' 'dJz4mnRBkMNxvvKg' --login_with_auth "Bearer foo"
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
echo "1..27"

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
    '{"achievementCode": "AT8mJrYq6hRkloqx", "customAttributes": {"M3gpwxcfMy9XzjjI": {}, "5YbsKoADkzJEN2VH": {}, "zih3bit0VWn3CO39": {}}, "defaultLanguage": "PXDNxtXgeO3FgkXh", "description": {"jDzaQY3snn2ZkP7c": "FdP43e5dC9XIBudf", "ZgrbHDIDm4hMzF4T": "xodenSrUTvfqU0bf", "oMm5cTtFWbotQyXJ": "RcQWsmqPNs92epxk"}, "global": false, "goalValue": 0.3245079068096456, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "YTZBRujIUE1Tq5jy", "url": "AZvkRCMNFIurjh2i"}, {"slug": "mdb4rbkXj0ZwsVC0", "url": "gL97ZVJSPqJiwv1q"}, {"slug": "lYB1RSKs6gQxC3Gb", "url": "7S0o4zGYY7KQI1Ae"}], "name": {"FgPqaOkvo1aolB4l": "kKB4EYOkQ1jMD3cy", "m8xIfkOVW2grREOL": "x0KOww3HICQLfl7M", "UBG7qtPu64yAtURK": "LRkb738HGS6rDgMd"}, "statCode": "IIlhS1fSiM9331m7", "tags": ["Ta1PsKc50Kv6ecnE", "evcAx2K2zkRenmPZ", "nGBt4P7WnbdSJtjX"], "unlockedIcons": [{"slug": "7ZshZyZl5x4bRXBH", "url": "UTrDzZSKscfOcYu3"}, {"slug": "dpCROYqUiGKXVFCm", "url": "po6sPwVOEDSJsEK5"}, {"slug": "QpNhlI2iS5EpGhhv", "url": "XYck0upMzUYnb76t"}]}' \
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
    'FkEORV3bu1bNCtX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"customAttributes": {"W40V6Do5sYadCCFr": {}, "HHC3DpZxkrQDXuNF": {}, "viMarv8mnfHK8CCm": {}}, "defaultLanguage": "E2lPnsbD3SGEdlwu", "description": {"UccE536ugBp3HBve": "pnDCjgyJlXe36mgW", "jLfFmteue9nzJ6fH": "24T805tVg8JqU0jZ", "pjvsugAOS7u8RiWy": "erCSa8SRgwsAj1ik"}, "global": true, "goalValue": 0.15876054653848493, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "RsB1fPqqRRulpqpy", "url": "mDkQhtrHWwRVnwVB"}, {"slug": "OqOHi8pWGd1juYhi", "url": "qjRJOqB5F93zFQbJ"}, {"slug": "ndUDpdONneAczbBd", "url": "Hb2slt71B1SmZp2J"}], "name": {"Zp50CnPb71ORYcmQ": "bTU5JX8ccLjMXJRk", "0eaKQDOJvrTefglS": "s6g4iY9u02aCNYIW", "ekp18lOC3mNqF7Bl": "0LcghVHfPEspxwhR"}, "statCode": "ON0bc1eMbEIjowLq", "tags": ["c3ecjXJbZDKKoxLE", "1Y3Dymtj3giPg4x4", "yiPX6ues1Hhhkg1y"], "unlockedIcons": [{"slug": "LVbLFzHEP8cM4NTw", "url": "r0KHaAsmTej52WKi"}, {"slug": "6tArAURt9plCSVq8", "url": "PdH6hJPUAc0RVwXg"}, {"slug": "AgntLMCuaXBWQi6B", "url": "qPg4xr0lCancUZGC"}]}' \
    'HsZYoLfR1KtOv7Zy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    '0b65uvuKNuy0ytZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 79}' \
    '9qSZ7PC6f6QkmZXE' \
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
    'lW9YfRSse6AAz3S4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
$PYTHON -m $MODULE 'achievement-reset-global-achievement' \
    'czz0QKFlAVmVLu4A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ResetGlobalAchievement' test.out

#- 13 AdminListTags
$PYTHON -m $MODULE 'achievement-admin-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminListTags' test.out

#- 14 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    'Oec0z8eBeeoip68J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    '1nsv4W2OJhtafxMS' \
    'JlHeb34sZKHcl5LL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'LOexL4fZvWtND2tc' \
    'BFpX8lNtFEJ7tnkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    '6Mca5afj12K2IzrB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
$PYTHON -m $MODULE 'achievement-admin-list-user-contributions' \
    'vvWm4udE0OXudXgN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'ne8kJATwlc6esUp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'Sw1I98jeZQ7hfxnh' \
    'Ld3Knaknoed9DHhL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetAchievement' test.out

#- 21 PublicListGlobalAchievements
$PYTHON -m $MODULE 'achievement-public-list-global-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicListGlobalAchievements' test.out

#- 22 ListGlobalAchievementContributors
$PYTHON -m $MODULE 'achievement-list-global-achievement-contributors' \
    'OqQGhCUr6iTrjyEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ListGlobalAchievementContributors' test.out

#- 23 PublicListTags
$PYTHON -m $MODULE 'achievement-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicListTags' test.out

#- 24 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'arAdNJOIG36I6tRb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'RcrEveMdAdiPKDUV' \
    'SC00PYeDcagginxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
$PYTHON -m $MODULE 'achievement-list-user-contributions' \
    'FIna3yddcbsPheTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    '26IUJNvYuGRUvpZa' \
    'HCuESOiIZsMfB4ZH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
