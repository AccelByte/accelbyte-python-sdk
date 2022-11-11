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
achievement-admin-create-new-achievement '{"achievementCode": "Y8GxBVbq", "defaultLanguage": "IaxUXC5E", "description": {"LxwIc8QC": "yZhxACqG", "n4PdzCKh": "4F74152K", "LcBRU6Na": "JEBiyf26"}, "goalValue": 0.1227817267230693, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "h4AxaAaB", "url": "NI4OUBm8"}, {"slug": "i8LAqCPt", "url": "Tbnz4x3x"}, {"slug": "u8u6D73E", "url": "I9rgeT7B"}], "name": {"CJp13Dsy": "iflvI2qq", "MLuXVw9I": "WLLx6qIp", "m6PJ9AlG": "ut0Obb8z"}, "statCode": "XOvXqI1m", "tags": ["IF2Opyuq", "hHPrsBOJ", "HzBaSWou"], "unlockedIcons": [{"slug": "LqugRjLQ", "url": "hln9Jnse"}, {"slug": "Dvyf737u", "url": "9LnnjhO7"}, {"slug": "HzLNiW7Z", "url": "XoYBgqMd"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement '8fVbvphg' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "1kJHHagP", "description": {"EVvqdvNZ": "7sEZUDRa", "TCiG8h7l": "1sbAPdmX", "yyMUJPqg": "PaXUGzxa"}, "goalValue": 0.10647049401887276, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "xe0bWI7p", "url": "MUqqVGep"}, {"slug": "r9Ibob5E", "url": "I7aV3Chg"}, {"slug": "c1Nixxr9", "url": "N1LsY3Ju"}], "name": {"uWPcUWVk": "X77Yxoox", "Qp6XCEL9": "4iIv99MZ", "HmxknUMq": "XxSnOAAn"}, "statCode": "P39zQB4b", "tags": ["5GB7kXaD", "EzuqhRGf", "ZfHtf6um"], "unlockedIcons": [{"slug": "6JVxyI2d", "url": "1CDz506e"}, {"slug": "NKGe17FV", "url": "lKMxPoij"}, {"slug": "ZDeITtDx", "url": "RpOImWaL"}]}' '6zOhPVag' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'i8dExXSg' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 37}' 'HPhHxkN7' --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'aZopsK3T' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'MplONqpN' 'd47PgVgo' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement '4nti2EQQ' '1S8S9k5f' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'kCCYI52R' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'cuvTQaJH' '7JQ6XxsG' --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'zZV3MJAK' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'QiMupAm0' '8QQ2BqZs' --login_with_auth "Bearer foo"
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
echo "1..16"

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
    '{"achievementCode": "fTnv2F8N", "defaultLanguage": "h0yeYN8r", "description": {"hdGlcxDG": "8DciPbNU", "Dvdelc1I": "eqP4BaVa", "g4Uuwt82": "kUQlbYCH"}, "goalValue": 0.785600746668716, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "H1yfvd1x", "url": "z7snRd75"}, {"slug": "bgdhoteN", "url": "nIV7ShhP"}, {"slug": "vjDJ44Lo", "url": "91D39knM"}], "name": {"9aT6WcOR": "YGBohOzj", "8nu7GKKv": "Ylb21siw", "VXMGbFFo": "VdTX8gyL"}, "statCode": "IQCsouz0", "tags": ["j4DGbkwK", "gZTkltI8", "LLJbrNCk"], "unlockedIcons": [{"slug": "I1gPAOTi", "url": "mi6TckzR"}, {"slug": "ZvbolXUi", "url": "qq6xiKRI"}, {"slug": "L9wqgwlH", "url": "PomorgWG"}]}' \
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
    'j2xg2sFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "siIETjry", "description": {"94mdYlN5": "MWEiD2dH", "IcqgevUq": "TQNLrdvZ", "NOb8vixJ": "LbNKRKyq"}, "goalValue": 0.7122927330781824, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "jH1n4rxh", "url": "8BNQsGBC"}, {"slug": "PAhwWNTj", "url": "kyyIaym0"}, {"slug": "K8KQ6DYJ", "url": "1HQBtrl5"}], "name": {"8GTuRd0l": "qUzpj7yl", "u6BOYAuV": "WuHAKyvK", "DZelXqoM": "D0QBwQz6"}, "statCode": "4COkSaEx", "tags": ["3al9hPFb", "HR8jUiGq", "xYhz0zrn"], "unlockedIcons": [{"slug": "RDRik8hG", "url": "HCMgUSbU"}, {"slug": "WKzbCGs1", "url": "asongcgN"}, {"slug": "U9rbBCAH", "url": "ZEqzFhH4"}]}' \
    'DmDylc5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'yPMSeyfO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 36}' \
    'g0JCMKPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    '1gj2n9Se' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'VYYWNjjY' \
    'kueDoicd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'z2v68wDt' \
    'a0Daz4Fy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'o5EUDOn7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'GiWm4wL9' \
    'NOG7SWDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'mH3FnRhZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'BMWakh7F' \
    'ibq3KQ17' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
