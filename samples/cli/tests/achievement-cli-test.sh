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
achievement-admin-create-new-achievement '{"achievementCode": "EAxcVpFr", "defaultLanguage": "ttufHIRd", "description": {"H9UzVRiX": "bqlAw7r6", "W2ktQG0h": "5JAav5kR", "a62WopBJ": "HPtcDs8b"}, "global": true, "goalValue": 0.553193038971406, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Lx8bbgor", "url": "QeFbQ1g7"}, {"slug": "qbPngUNB", "url": "1vRodwpz"}, {"slug": "S6DaDpv8", "url": "N7ZQVqGj"}], "name": {"6oDLjWjk": "Y1aXlFcD", "tgOjchIu": "a5tWEIC3", "2ogW7olv": "bTgrhRTc"}, "statCode": "PiSuL0Sl", "tags": ["y6XM4OI1", "8mAQLnzj", "Mf8GZ2WB"], "unlockedIcons": [{"slug": "ZqxYG3aR", "url": "EAu2D6QV"}, {"slug": "KNCWP75T", "url": "B0i7pKxR"}, {"slug": "8dl0zRVW", "url": "4EZG9m0X"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'cgGVbMqS' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "szE8GHav", "description": {"j7AorKsx": "wkosAVer", "Xpc1C8Xf": "wHuKeb9l", "3rGN9A3s": "Nm84hddS"}, "global": false, "goalValue": 0.4314305524829014, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "BdW19m4e", "url": "u6d5tA5j"}, {"slug": "UmiTqpyh", "url": "PFdxLzFQ"}, {"slug": "N05MYzYi", "url": "KWe5dNRl"}], "name": {"jv7IPrDQ": "QRgat0Se", "vkLGMS0l": "yuI9a2I9", "u6Vpbsx5": "w8hqUI06"}, "statCode": "UpOXGSLm", "tags": ["CVuHOPlL", "lkvR8sKg", "nuRkgghG"], "unlockedIcons": [{"slug": "oYupD391", "url": "C2qtPYok"}, {"slug": "ahFjkQsf", "url": "CaTmt1d6"}, {"slug": "7FXGk2s9", "url": "Q0mPVo3t"}]}' 'wu0MesTC' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'f9x4rt69' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 23}' 'laRlxfcj' --login_with_auth "Bearer foo"
achievement-admin-list-global-achievements --login_with_auth "Bearer foo"
achievement-admin-list-global-achievement-contributors 'HfYakUCT' --login_with_auth "Bearer foo"
achievement-reset-global-achievement 'qGkE7wcW' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'fDslpJSq' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'GAXQ0yYo' 'NRKd3IL5' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'TAQ6iiPl' 'SC2uE4o5' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'Vwdo3feP' --login_with_auth "Bearer foo"
achievement-admin-list-user-contributions 'qIJA8IHt' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'rkmu0hpD' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'DWVAla2l' '5BYNtIuS' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-list-global-achievement-contributors '5S5XUdjs' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'oqwGyzzW' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'i9gwQYv7' 't1o7TTr1' --login_with_auth "Bearer foo"
achievement-list-user-contributions 'DmrhZv15' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward 'T7quIOvB' 'McaYmvCk' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "GZ5dAgqx", "defaultLanguage": "pBFmaLox", "description": {"ozr6wfNP": "X2bOItRM", "vqtlB2jJ": "CSQT279Z", "ZPYGu0rd": "lgdWyOtX"}, "global": false, "goalValue": 0.21966765738258476, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "xkT1X68c", "url": "mDc3fxU8"}, {"slug": "MyKrQpM4", "url": "hkkK6KKX"}, {"slug": "NB3Gv0Iq", "url": "mF51Tkhj"}], "name": {"Ynaq6foW": "vXa3bMrX", "sDr6kILs": "SSyDdmyk", "moPYgc2L": "4jk4Lo0L"}, "statCode": "SP0pf4Ix", "tags": ["jUkl535X", "3ateEKDp", "ADz1x3po"], "unlockedIcons": [{"slug": "D3Qgb3bo", "url": "LQQ1MzH7"}, {"slug": "Qm8bwbmX", "url": "gdAPh1ET"}, {"slug": "hG96gAFK", "url": "K2WDgCcx"}]}' \
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
    'vONZm3Ee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "ERmDnyeF", "description": {"oF7VSZ6p": "f3vneSD2", "Tb3g7mSQ": "UhAEtrmj", "qU6YE3p4": "lSck0ZHn"}, "global": true, "goalValue": 0.54840393791272, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "YBHqaTHe", "url": "KtW18iGe"}, {"slug": "Ulc9d9so", "url": "gWa24CKN"}, {"slug": "S0GqVvUf", "url": "HQvsHXNU"}], "name": {"Ne4mhgo5": "QB65lSAi", "YnNjkfZr": "QvGgbLdL", "sFzHkBMr": "1yrOMlNF"}, "statCode": "SrUEirnj", "tags": ["X9fDmIbe", "ZxzfTcyi", "uATus9hs"], "unlockedIcons": [{"slug": "fpFDcSDG", "url": "8aMVGLiB"}, {"slug": "NrDjqoxc", "url": "wgGLXpUL"}, {"slug": "4pp2ncYA", "url": "HdNzDmeI"}]}' \
    'P6rOvDz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'KOsb392k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 89}' \
    'YmJFfRBy' \
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
    'jlBiuFM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListGlobalAchievementContributors' test.out

#- 12 ResetGlobalAchievement
$PYTHON -m $MODULE 'achievement-reset-global-achievement' \
    'FIoVk8T3' \
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
    'GpAnkCmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListUserAchievements' test.out

#- 15 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'Uqg2SCnq' \
    'ntX9y1aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminResetAchievement' test.out

#- 16 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'SWMiVi10' \
    'sG6vxkfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUnlockAchievement' test.out

#- 17 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    'cmqRRbce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminAnonymizeUserAchievement' test.out

#- 18 AdminListUserContributions
$PYTHON -m $MODULE 'achievement-admin-list-user-contributions' \
    'J5i0EeDx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListUserContributions' test.out

#- 19 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'OgBnhhqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicListAchievements' test.out

#- 20 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'lIaDml48' \
    'wdNFLTm5' \
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
    'T50x9WT0' \
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
    'GfH2rtOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicListUserAchievements' test.out

#- 25 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    '4EXsXzOX' \
    'QAk4mqrx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUnlockAchievement' test.out

#- 26 ListUserContributions
$PYTHON -m $MODULE 'achievement-list-user-contributions' \
    'zTtuLl4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ListUserContributions' test.out

#- 27 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    'lbGL8QOx' \
    'tjzm8y2w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
