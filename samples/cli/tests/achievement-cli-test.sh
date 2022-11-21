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
achievement-admin-create-new-achievement '{"achievementCode": "7CORCdG0", "defaultLanguage": "hE4kWtkj", "description": {"BbQJYRdN": "HKnkIYVK", "m581HGTy": "e6LJ1hpw", "TgEzvEdw": "ye2GILI5"}, "goalValue": 0.0837383615252193, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "JaUe3LKy", "url": "aVYXqYS1"}, {"slug": "bUA6q208", "url": "4JzyRbay"}, {"slug": "G84Evqln", "url": "fhyvHsL5"}], "name": {"9AejzGE5": "iT8rtqHV", "Vq3yFXYX": "g2WcYi5E", "2vSYSHQj": "xOCqnmcG"}, "statCode": "JrOsfF6m", "tags": ["Revz5uyE", "SbLbkaEL", "Lgo27y4N"], "unlockedIcons": [{"slug": "s7QBB4yb", "url": "KzKCrnAD"}, {"slug": "WrbWylpN", "url": "TSi8LnXw"}, {"slug": "rYGBSjEW", "url": "yko8AzEH"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement '763ebw2S' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "aybeDSvy", "description": {"1EdyfJG5": "CYT21Y9y", "da7uRXGu": "OXRmjusQ", "GkUHHSfi": "SEWWrLc4"}, "goalValue": 0.7983060375112986, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "RT9k9aoX", "url": "VicSccdY"}, {"slug": "iTh9NbOk", "url": "3dwLou07"}, {"slug": "6JfZqpbn", "url": "OGG93PCB"}], "name": {"wQ1LqlOM": "VyEADwNc", "xXDgx4uz": "DmXuDh66", "8KwK9C0q": "WDGNLbFo"}, "statCode": "F6HrKY63", "tags": ["gBQDFL09", "qCE3Vin0", "XDhMBO75"], "unlockedIcons": [{"slug": "NeTquOcg", "url": "eWMUvAlg"}, {"slug": "kmiP20KS", "url": "fCQUZZgQ"}, {"slug": "LyhBxOan", "url": "VDfGfqOq"}]}' 's6UKPG6C' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'BNnu300c' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 28}' 'bO6YAAjF' --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'T61siOUH' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement '5fqA3CJt' 'm9JruSmB' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'SmmQzinQ' 'pB25vbkT' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'cqBNByWu' --login_with_auth "Bearer foo"
achievement-public-get-achievement '8AUnwq2A' 'LmRgJnk3' --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'yrK2B6Rr' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'WQGakQiq' 'HgOivjiK' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "yCuV5YI3", "defaultLanguage": "iM56S8p5", "description": {"ADO7skAA": "qHGxGdF1", "HVF6eGB4": "0tBtpGRM", "Wr6EAZ33": "pqM2zcxe"}, "goalValue": 0.7822737061384185, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "PsJVdR5c", "url": "G5eguUIM"}, {"slug": "mfmfVmVm", "url": "v6iULbTA"}, {"slug": "Qi1FZToH", "url": "h8MWwgSW"}], "name": {"sGfY0MWm": "5Of76Gu3", "99Ytl2TU": "oeTnTTup", "Wxz2i0DD": "7ldi6Olr"}, "statCode": "703CdT99", "tags": ["wn4QiY6m", "m7AomAww", "0LYox3lN"], "unlockedIcons": [{"slug": "D5snjgN9", "url": "aoPvFfkR"}, {"slug": "AS70I8ip", "url": "pbGT8tan"}, {"slug": "x9EAOBXE", "url": "e1ZjR7Ft"}]}' \
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
    'IDCDai96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "UEkFNufX", "description": {"NXEffLPj": "EixpE556", "1iphLAPg": "dqlPFRb0", "RzOii6YV": "C2QvlOlB"}, "goalValue": 0.5379697039475447, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "pa0fAYKL", "url": "AaFlnFPS"}, {"slug": "Nu93aqdi", "url": "GFyfLxZI"}, {"slug": "BTCU5DSw", "url": "1EUht2az"}], "name": {"mQ88kv0E": "38fKncpc", "qBcOuDa9": "kx8HER0i", "MftaRxj1": "7wLvqPSh"}, "statCode": "GkmUoX7Q", "tags": ["pTZP4ilK", "WqQXeOth", "Bii2faWc"], "unlockedIcons": [{"slug": "xgTSTCv4", "url": "iE7ZBDU5"}, {"slug": "toJyzyfg", "url": "fAlvQUqY"}, {"slug": "Nt5r2mxT", "url": "OKtgMs6g"}]}' \
    'LxmFVZ6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'rOMSG6mF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 39}' \
    'clqKIsYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    'OTTwa80u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'dqz49ZIV' \
    'gVScvzDc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'qNywA1AN' \
    'NYFYpi1K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'G1gs2Ox6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'PF49VzTB' \
    'E4lOWemR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'USA0eeuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'ak7Unw8U' \
    'uswwdia9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
