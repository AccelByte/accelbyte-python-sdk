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
achievement-admin-create-new-achievement '{"achievementCode": "EBfwrTRg", "defaultLanguage": "hC6HQ8XO", "description": {"OOBg6MpO": "D2O8oIsW", "fU3Lnxvp": "KYSHqqtR", "YXRnnhmj": "jxEl8X4n"}, "goalValue": 0.47396322539746694, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "zTJW5cNU", "url": "8MtYbc0E"}, {"slug": "xtOodb3b", "url": "x6g8dbzm"}, {"slug": "ARLJQgfl", "url": "f5AkjSHS"}], "name": {"cSV17IFS": "y0mGHeyv", "KEY7spbJ": "aqPynkbX", "0UyQdbre": "uUmz1OBi"}, "statCode": "iusCiHk7", "tags": ["L26vVv40", "SnCPxCtw", "QzyzgxP0"], "unlockedIcons": [{"slug": "KnbnMVwU", "url": "pCHlqpNu"}, {"slug": "d1YqlwzQ", "url": "vCsAyQvf"}, {"slug": "6PGMovIA", "url": "9UX3wT5h"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'QatfwpQX' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "boMKJ1kF", "description": {"4IHPqoj1": "DEMRo5OM", "VCmN7ppR": "x8WiduYw", "BmAtNT6g": "Mn5GnTqV"}, "goalValue": 0.32891979416020156, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "qACL6WGG", "url": "41QUVU3P"}, {"slug": "5mdZY4fM", "url": "Yl4ZjTqg"}, {"slug": "zGtz3j5K", "url": "aZNYE1fG"}], "name": {"O21wPMJy": "8WekuzUm", "Y3F2R6NC": "sO6GchET", "ojkGEfj3": "74jQLo32"}, "statCode": "coYHhGFE", "tags": ["ilwu6eU2", "3FloeXBW", "gUoOsIIL"], "unlockedIcons": [{"slug": "YxwAdGh7", "url": "RkOWd63S"}, {"slug": "PHr5lhMl", "url": "RBUIXQMg"}, {"slug": "UXN8AZh9", "url": "YkdJEs0I"}]}' '5oFW2ruD' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'IOOp3cuV' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 48}' 'LZogXSZb' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'QBxanrsI' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'JEOvXg5V' 'UpLXy48t' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'XNHblzwF' 'q0BaxpNQ' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'HpQU0KeI' --login_with_auth "Bearer foo"
achievement-public-list-achievements '6vCEZiiP' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'RAUwkEmR' 'oXcrOJ21' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements '2fKcLxot' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement '1cWxSSTv' 'jtd4tkc4' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "EUr93TbA", "defaultLanguage": "KUXvIirL", "description": {"qFBJhjQs": "y3UKkIba", "DEzCdgpK": "hUWus3Lb", "gHPmgAvc": "KtjmRH3b"}, "goalValue": 0.2802309138257565, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "MGuamK0P", "url": "vTv3xihR"}, {"slug": "bQyzjm5x", "url": "ONRmANZw"}, {"slug": "B3VNHAHf", "url": "vCqEpPKL"}], "name": {"ke7R3VOZ": "VVhtoxA0", "8TbLps1N": "ni2LU55R", "FSBTOHwN": "AjNIDkUS"}, "statCode": "malkrfAc", "tags": ["ACQWkJxk", "BuUUSxBk", "7gf8iHvN"], "unlockedIcons": [{"slug": "h3bqJezL", "url": "QdAsmqcZ"}, {"slug": "Ih56AVST", "url": "fRU8n5t3"}, {"slug": "HuARF2C3", "url": "WuVheUT8"}]}' \
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
    'FGLMcSUP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "j0riUfvn", "description": {"MInE4UEg": "kTUkDUpm", "XFcpaeVw": "7Q4cdDxT", "8YJQftN2": "qLJaAOzZ"}, "goalValue": 0.1917670187918893, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "0FaB26Fw", "url": "3tNgrxpb"}, {"slug": "3zLCwwj6", "url": "zIY1TJNu"}, {"slug": "DSNtS1c8", "url": "IwcTWQRd"}], "name": {"PRFS5Jln": "qnKpAV9J", "C6nVRtoo": "pu1jOOcy", "WvexrhgH": "RnDb2lkB"}, "statCode": "aGWmF54y", "tags": ["RTYZFwwS", "5xFPOtsH", "JTwJnsIM"], "unlockedIcons": [{"slug": "i4HPXAsy", "url": "BmtwdWFy"}, {"slug": "blEm8JaW", "url": "mn3c6uei"}, {"slug": "8TNjTJWi", "url": "NXxIqzSO"}]}' \
    'MzbMdSpa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'VNZTEu45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 93}' \
    'v2zF6X7f' \
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
    'WpVigeZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'jobpj6f5' \
    't6fMvSCl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'wziCK1lw' \
    '3JKzF87a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    'w6N7hkDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'vbx92aC6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'VeOBHLrU' \
    'fwEaCWL2' \
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
    'I3r8TeUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    '9V1VMH50' \
    'KtBhDSAR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
