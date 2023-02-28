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
achievement-admin-create-new-achievement '{"achievementCode": "zQgOf5Uk", "defaultLanguage": "MHaIunoK", "description": {"AlfewKB2": "FVDlUwv7", "dwmWbMAd": "nJWrDa3k", "YyTAyZtu": "UZAPOS00"}, "global": true, "goalValue": 0.44137847847724343, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "rwWtqZAM", "url": "Fjjek06V"}, {"slug": "o7G3RAos", "url": "ogjiD2wT"}, {"slug": "iopwmVGi", "url": "9G6vGEpN"}], "name": {"jNSn51LY": "XkjUvp8C", "v7J7cdoz": "seQQ6TnF", "iyUIgby6": "9MtDekBo"}, "statCode": "ASrE0hjd", "tags": ["W2JXCZdS", "B6suI90z", "PEqCFZ4L"], "unlockedIcons": [{"slug": "H7F6W51u", "url": "xA76FKnl"}, {"slug": "ki0ZOQzV", "url": "Lh4jlG3j"}, {"slug": "5vnuwN9m", "url": "e8Q8Z8SC"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'HVMhSeOH' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "lpTWiDtG", "description": {"aOyxeMwT": "PabjuMn7", "Z2l2OlnJ": "bzRpqjbg", "I3AQVqsd": "AqRdZc49"}, "global": true, "goalValue": 0.6816877812021434, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "ZmtEIGZ8", "url": "MkPGNSjj"}, {"slug": "o34yvlW4", "url": "RLwSfVax"}, {"slug": "cBb265eN", "url": "XiB9vgxw"}], "name": {"5i0w1P2m": "D5bgKEJq", "72IJrbXo": "XbagsAnU", "0G3OKoIu": "e0um1NRI"}, "statCode": "GutzpRyZ", "tags": ["ssJb4w5D", "A5YYA6Fz", "CsKzx8XK"], "unlockedIcons": [{"slug": "0h4poHKK", "url": "1d4YMrjb"}, {"slug": "xf8pHyLO", "url": "9CHi5Gtk"}, {"slug": "A4rnPXvw", "url": "l18jJZB6"}]}' 'W9F9CnnK' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'VDU7J5k9' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 70}' 'xjZDtAvv' --login_with_auth "Bearer foo"
achievement-admin-list-global-achievements --login_with_auth "Bearer foo"
achievement-admin-list-global-achievement-contributors 'hs5TkRc1' --login_with_auth "Bearer foo"
achievement-reset-global-achievement 'MXWa8yUC' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'o6fWGZxQ' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'VO16uwMa' 'iOvqBFcC' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'HhS5yBPy' 'EpDbQT7C' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'WQGumrZ3' --login_with_auth "Bearer foo"
achievement-admin-list-user-contributions 'ltB71uxR' --login_with_auth "Bearer foo"
achievement-public-list-achievements '68gQHWm1' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'RfaaKIlQ' 'UCn0bBkZ' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-list-global-achievement-contributors '34v9Wnc3' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'tykQwVlN' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'iZal4DkN' 'OpneVv0y' --login_with_auth "Bearer foo"
achievement-list-user-contributions '03NVVy2O' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward 'uGdBCEJI' 'C2zVwfTR' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "BYdcWbR9", "defaultLanguage": "p93TMhED", "description": {"EGRHWG3o": "XUJRuXBN", "qmNfHZj0": "hW0HKchO", "fCXFH5UP": "EBcFWtDT"}, "global": false, "goalValue": 0.5651334164688853, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "x6xvVw3I", "url": "JKHDGtKa"}, {"slug": "slTzAx5v", "url": "iOYZH5EF"}, {"slug": "5rkuQEy3", "url": "SF1XEbTh"}], "name": {"AjeqkpcX": "NzM8zH7E", "BtYnEuei": "mf01FghA", "gQVs3afl": "7M9fmzYY"}, "statCode": "Fxsxi60C", "tags": ["uty6jUlR", "QDy5mn6O", "3cvpgdxZ"], "unlockedIcons": [{"slug": "j4fVIV88", "url": "rlvd3Hsq"}, {"slug": "RAGno31U", "url": "xvRBTlP2"}, {"slug": "C2ViX9cQ", "url": "1IHPEnlz"}]}' \
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
    'PZpXfVp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "GQnYlw71", "description": {"0b7kWOBt": "bajUPWbA", "kTtKru1A": "MFiHJ1C4", "4npG3GTv": "lcou6jIu"}, "global": true, "goalValue": 0.8737583971595926, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Hvmf9Dgg", "url": "iYI9FAzp"}, {"slug": "iuYLwbKc", "url": "E0kCgdqf"}, {"slug": "HxC9r2QK", "url": "ngiHs6BN"}], "name": {"MEshcnvE": "AurNDfOn", "VsBRN4Gb": "JcOPeJLc", "0GfpuXwP": "225c6knH"}, "statCode": "DxYGpuJq", "tags": ["izTEaSUm", "mvL7ogqn", "mixNpNgo"], "unlockedIcons": [{"slug": "xwbgSnQu", "url": "YjSuHzHo"}, {"slug": "r1GEZqQe", "url": "z1Ap86cQ"}, {"slug": "sYQf7aPe", "url": "TEA12zgl"}]}' \
    '3pXWbvgK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'FhijQx5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 93}' \
    'OgyV8AY4' \
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
    'fzMCKFx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
$PYTHON -m $MODULE 'achievement-reset-global-achievement' \
    'unQaZSLT' \
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
    'my4aAOIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'z3QIarBz' \
    'QXnNG5Vf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'a3TSGW02' \
    'bXoihFm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    'vDTVzeWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
$PYTHON -m $MODULE 'achievement-admin-list-user-contributions' \
    '0fIpN7PD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    '7kxzP1ON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'S0zXpoov' \
    'oncw4C4r' \
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
    'rwVgTia5' \
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
    'PsiTuUsx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'gUBTj8tp' \
    'f827hQaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
$PYTHON -m $MODULE 'achievement-list-user-contributions' \
    'VJymRmXl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    'FJXfWsA7' \
    'es5rphjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
