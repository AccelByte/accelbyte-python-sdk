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
achievement-admin-create-new-achievement '{"achievementCode": "XLYf2zQ1", "defaultLanguage": "aKLgDcn0", "description": {"gOPSooN1": "wHtAzPml", "PYnl8kPA": "O9nDdw8I", "yqhF2B5E": "YVW3mlLW"}, "goalValue": 0.5176468067642757, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "sdsjpMK0", "url": "GlvfdapF"}, {"slug": "8gKa9m1B", "url": "v8cwU2Yf"}, {"slug": "lVnFLiQY", "url": "p198lWOR"}], "name": {"KRFMnOJq": "0w8TZsm4", "gUsHP5U8": "DwRCqKnq", "yhXREas3": "MFxZM8YX"}, "statCode": "hiku5ly3", "tags": ["qtfXkYkX", "tO7arG6G", "jj2YantJ"], "unlockedIcons": [{"slug": "tJZsxlcA", "url": "8HdA9Bye"}, {"slug": "nz9Ku1fN", "url": "nj3TEpqg"}, {"slug": "l58lJ2dS", "url": "6gMkcV4l"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'ZWOa6awN' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "lcsaCrnR", "description": {"IgArJDd3": "rR3AopZo", "zNcewq6M": "wa8cKDY3", "K4MZcYEx": "2zlBgojk"}, "goalValue": 0.38958393576101025, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "GvnjCC0L", "url": "rIvRJSuu"}, {"slug": "XXPAPKbI", "url": "YZciYNTD"}, {"slug": "l56CFYPO", "url": "iRmaOGhU"}], "name": {"FCKP0bAP": "5zLkpFMO", "Jsr12nrR": "Q10FS0fO", "xwasrJ35": "rvTdOP3J"}, "statCode": "w5Pm9xpI", "tags": ["9j7ifwuG", "GHgehwld", "JRkdq9lJ"], "unlockedIcons": [{"slug": "BK0vY2DY", "url": "jnU7Yjbn"}, {"slug": "VbFWuUS2", "url": "jUiVGxAd"}, {"slug": "qIsgZcZi", "url": "hgVmkLoa"}]}' 'zsYFgKvs' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'XrTpAkFA' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 97}' 'EUHf8HOF' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'wIgUraBT' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'hpvrzmjr' 'Cujbmebt' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement '4P4TLRSM' 'MtDKuU5g' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'Kum57pXl' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'Lco0fAdf' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'PPY6FjTh' 'eTeVbst8' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'MXfyPMCj' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'VRBuBQYv' '1W7QKpiC' --login_with_auth "Bearer foo"
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
echo "1..19"

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
    '{"achievementCode": "AsvVoKvy", "defaultLanguage": "fqUtDa3k", "description": {"7AcYIuUF": "2MucWjAp", "FwR8o2ZP": "4WA1tdvW", "CWauKe9F": "kXZnIAff"}, "goalValue": 0.4613473091536474, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "ZPXQubYW", "url": "fK17EJYk"}, {"slug": "j5WS9i6V", "url": "35Feg0uP"}, {"slug": "z1Dlwf3V", "url": "tC1y8zJy"}], "name": {"TmO8j288": "Fjt0eBRI", "T2xbzMXc": "hVOoPFJ5", "59KTEmSk": "hJ39bvTH"}, "statCode": "VKA71Faa", "tags": ["cro5qTJK", "wwC96dq8", "t34M4pfc"], "unlockedIcons": [{"slug": "GlBicVXQ", "url": "2Skahhul"}, {"slug": "6DVKJLLQ", "url": "ax9O5iq8"}, {"slug": "8bG2ZATR", "url": "ZmTKCLS6"}]}' \
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
    'QeA1bRmF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "VfnXsfkX", "description": {"XxReyk62": "Zbu092y5", "xSVGAsB3": "fYtSVoSx", "9MOZHFE0": "JfJwR7s7"}, "goalValue": 0.20721052519978922, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "j3PriN5Y", "url": "xGSTOECy"}, {"slug": "1mYX4Iy9", "url": "avkyWdmL"}, {"slug": "P1fq9AbW", "url": "nm5bZV0c"}], "name": {"WB2uqobO": "0UoqZ0Ia", "Ok3jtu5F": "UEUGQLtw", "pLFcDMkL": "RwAU8GbO"}, "statCode": "zC48b4Ob", "tags": ["ZC16otuK", "UyqHn4Mx", "K1SIKRtx"], "unlockedIcons": [{"slug": "8jwhB2uL", "url": "jVL3wFCZ"}, {"slug": "GczVM0lZ", "url": "5V3mofxn"}, {"slug": "Gz7ZK740", "url": "BUlfuYkN"}]}' \
    'oht6mr2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    '85jwiR2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 36}' \
    'Sgu47wMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListTags
$PYTHON -m $MODULE 'achievement-admin-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListTags' test.out

#- 11 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    'YHTvtpfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'gBheLl2w' \
    'EPGdayg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'hazWAb0K' \
    'OO10bdPH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    '14FfAUxC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'sSkVaE9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'tMjmFl3Z' \
    'lLBximoN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListTags
$PYTHON -m $MODULE 'achievement-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicListTags' test.out

#- 18 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'VW8FBXk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'JCn1uPTl' \
    'PlBUc3WK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
