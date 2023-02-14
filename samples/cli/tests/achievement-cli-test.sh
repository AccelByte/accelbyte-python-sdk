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
achievement-admin-create-new-achievement '{"achievementCode": "0UbjxZxE", "defaultLanguage": "1ouHoBlx", "description": {"jf3ZG7Xn": "QgImAqyT", "gTKhfyuA": "JzrlBSdV", "Vdg8LtS3": "Dsq4Tttx"}, "global": true, "goalValue": 0.6196892882384756, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "EV2ewdpL", "url": "fl6Uwup9"}, {"slug": "qoLrr3qx", "url": "SgV20U4z"}, {"slug": "EBtxDiUX", "url": "U0tZEPug"}], "name": {"k3YsYG2c": "e8J4EvIs", "QuEuV1wM": "JfmOjDsV", "nXoAjWgY": "WEJGApaY"}, "statCode": "VG40rteL", "tags": ["LBxCwdu9", "FScvUNUd", "3Nl7yevK"], "unlockedIcons": [{"slug": "cILstubd", "url": "JIDeF9Yx"}, {"slug": "WpAEpUAN", "url": "L6e8v0jV"}, {"slug": "tBLJTfaX", "url": "VBdNBRAj"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'Mfu8GYAq' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "lFiYrbPh", "description": {"0hAtBZ4q": "yeUk1Gbu", "PPNC5VB3": "waTLUv0b", "FZyIT6ah": "R9Bz0st7"}, "goalValue": 0.7987039761125767, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "1rAHKT1E", "url": "2YrqV5xC"}, {"slug": "YAauM60N", "url": "IF4oR4U0"}, {"slug": "uYfNDOhi", "url": "ANiIfAoy"}], "name": {"kCHhrJpT": "tKzPR6Gk", "pznh4I2q": "SFXztgw3", "bbNE8lTe": "D2e99YCV"}, "statCode": "No9LHIFL", "tags": ["9hCbDnQe", "8j9mEgmQ", "RCa6RLwU"], "unlockedIcons": [{"slug": "98BMEKiC", "url": "B6RdV779"}, {"slug": "NGvjdeOD", "url": "e3pUuwoi"}, {"slug": "RXK3jcQ5", "url": "GXbEHqey"}]}' 'ov9ASxIo' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement '1h9aDzp1' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 97}' 'hoiKDCa0' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'dBiTo3J9' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement '51SX279N' '41QxW2VB' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'fjA0Q9Z0' 'C2IQqwVX' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement '7oJELYig' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'C7jzdwXG' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'P30MeEhB' 'J7fdcFXe' --login_with_auth "Bearer foo"
achievement-public-list-global-achievements --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'YkV2k8Fb' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement '2Faq2HsB' 'hglA9H5o' --login_with_auth "Bearer foo"
achievement-claim-global-achievement-reward 'SvTgbhTc' '60Z3vbf2' --login_with_auth "Bearer foo"
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
echo "1..21"

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
    '{"achievementCode": "79SRrWO8", "defaultLanguage": "Fgrbv7kR", "description": {"70hNmF37": "HnYA6LHf", "7bF5LJGp": "FQLqsSfu", "XIY3G6lH": "phXhyPWf"}, "global": true, "goalValue": 0.4268702071015479, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "zy12xx4R", "url": "XPbASUbV"}, {"slug": "87jkHLAi", "url": "LkuSj0dd"}, {"slug": "Sc2dHEJs", "url": "3Y67NEm8"}], "name": {"sT4qJKQD": "ZbQ1XE8Q", "JeQGol4T": "VlUtyerR", "xoESJdqB": "OIzfu4CT"}, "statCode": "DD41bURR", "tags": ["Lq3jbuTO", "xClnog9u", "I8wfYDGh"], "unlockedIcons": [{"slug": "6FZwKaoe", "url": "WHyLDM5N"}, {"slug": "iJs2xarj", "url": "BncLpnM4"}, {"slug": "ZH2MUYto", "url": "AS6zqiEX"}]}' \
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
    'kBGMlopL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "5sm6ccDh", "description": {"Fk9gHlZI": "nfVt9v8N", "U8Cq4Wva": "AOW6FoXw", "cUXiO1P1": "vy9nEA9d"}, "goalValue": 0.3004175586862542, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "pbzf6TOo", "url": "VAF7Y3ZG"}, {"slug": "Sf1PjbhH", "url": "LtdBIfGH"}, {"slug": "2WRjpXrM", "url": "wi7EzrO1"}], "name": {"ULhKpZpp": "LRgumJHI", "5RKa8dAP": "I2tH3VfF", "GQ38Xzgm": "EMGMPE8M"}, "statCode": "gtSpCcSB", "tags": ["NMURx5Kh", "x0WI2VMi", "qaG4uW2E"], "unlockedIcons": [{"slug": "pjiOKTFA", "url": "Dq4IO0Vg"}, {"slug": "nmpQH6IZ", "url": "NEoWYbaW"}, {"slug": "iRyjCwrb", "url": "onUR1We9"}]}' \
    'nKwEINdn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'rz6fcglm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 93}' \
    'jqVaUItQ' \
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
    'kPc12vNb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'DindSR1j' \
    'ftTy3d1J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'F8nGc4zR' \
    'EHPohVgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    '03T1wOgj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'nJgfaQnM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'EFj2fOib' \
    'OUHaqgm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicGetAchievement' test.out

#- 17 PublicListGlobalAchievements
$PYTHON -m $MODULE 'achievement-public-list-global-achievements' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicListGlobalAchievements' test.out

#- 18 PublicListTags
$PYTHON -m $MODULE 'achievement-public-list-tags' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicListTags' test.out

#- 19 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'bCL47PCL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicListUserAchievements' test.out

#- 20 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    '0vaMVV0m' \
    'okhuI27I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicUnlockAchievement' test.out

#- 21 ClaimGlobalAchievementReward
$PYTHON -m $MODULE 'achievement-claim-global-achievement-reward' \
    'QPUtkFMp' \
    'NiSaxKFL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ClaimGlobalAchievementReward' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
