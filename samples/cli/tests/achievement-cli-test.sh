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
achievement-admin-create-new-achievement '{"achievementCode": "6YxJfzj8", "defaultLanguage": "gKd2e7Xa", "description": {"Bc4xNsoN": "kz8IrgKo", "4iRd0ug9": "3pWTD9aW", "b8KJy4pv": "PF82LPs5"}, "goalValue": 0.7424791362048669, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "nF6mHykw", "url": "PGGCCpn2"}, {"slug": "VsmPlt33", "url": "ooWU8XFF"}, {"slug": "bTQzZfp3", "url": "4TKEs3jT"}], "name": {"nOxhzSLB": "jzf1P8r5", "PvJPmpdv": "p0QeLfFZ", "YWLcKNq4": "7wy8vk13"}, "statCode": "hhU74bB8", "tags": ["tp1So8V1", "TIgu3Hrj", "lHkoanUI"], "unlockedIcons": [{"slug": "VFoyPRht", "url": "hFIRJJjC"}, {"slug": "9uoOxlUt", "url": "BzYam61c"}, {"slug": "vOo6ikSw", "url": "3BjiulqN"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'nTwGsCJ9' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "NwVmtK9J", "description": {"rPXsMTca": "t5PivbuI", "4CuN9JbK": "det10F8f", "JQpPEgMO": "uvuRuO8s"}, "goalValue": 0.5742209425753909, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "8ZQAl3xD", "url": "rhR707ZH"}, {"slug": "C2iHSATx", "url": "1dswV02s"}, {"slug": "fkHS3ESH", "url": "2pTqQTQ3"}], "name": {"wxTIdf8R": "98dPfG0x", "wbP07K5J": "EyiPVSwG", "QQbQYyJx": "KKa7ysNK"}, "statCode": "CHs7LCc6", "tags": ["mrjG8ojK", "JYcPeH7u", "DtIV3TFP"], "unlockedIcons": [{"slug": "x9s8UA4i", "url": "XgOFnS0B"}, {"slug": "Y5FHXjIx", "url": "uLqy9KxV"}, {"slug": "zQ3k5bXD", "url": "gisXqTe3"}]}' 'DTUWUVrq' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'fi3afRc8' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 69}' 'gqdHIUPU' --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'MpfTDS4h' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'AKEvVRFv' 'TEeKr4hG' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'uw3OuwW1' 'LsSGVamC' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'DjgDojZA' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'TLa0U9Lz' 'rw4VEyWr' --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'hE9HFXMP' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'XrRenLuF' 'Hxoriq2T' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "wSHWbM6P", "defaultLanguage": "d1Aibndc", "description": {"3DgoTi49": "jUEz9i6H", "vGr2Jyom": "c8QWhYyc", "g8QY5wf6": "oog74VRo"}, "goalValue": 0.04292567548261117, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Lpwo8sUg", "url": "4qncOtMa"}, {"slug": "7YlT1Vr7", "url": "qmFf7PEU"}, {"slug": "jKCd88jY", "url": "GOJFZxTJ"}], "name": {"GE1MWBPN": "Y5FI8vB0", "T78cxk09": "M8A7Cv40", "oYcL1vXM": "H8EteP6y"}, "statCode": "v6PFNavi", "tags": ["HqPtojaR", "01BD71Kp", "pVoWzOYd"], "unlockedIcons": [{"slug": "DIkPrVhw", "url": "eeLMiGbJ"}, {"slug": "0RCcLy3h", "url": "eapLtdEL"}, {"slug": "Vw37aiN6", "url": "1yw7QxGn"}]}' \
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
    'kD4HLgR1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "aehTxGLy", "description": {"MVCiBsqt": "2gyDfNfw", "M8ofyS82": "EK91lGvx", "7aXFksjh": "c06jpoSA"}, "goalValue": 0.15032081955516285, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "YQVDjelY", "url": "8MyKNnm1"}, {"slug": "uJBwD6x7", "url": "21oAM3Is"}, {"slug": "Jh12DBKi", "url": "CyLImci8"}], "name": {"3Ng5rGQS": "Q88ATsJj", "FTlumfMl": "3qfq7LIU", "GI09QRNq": "A1R81NX6"}, "statCode": "fKgJMpOx", "tags": ["JJZVnSwB", "fjU06z7k", "eG4ZboTF"], "unlockedIcons": [{"slug": "prpjL3ta", "url": "zKkzfDVw"}, {"slug": "H9d5S3UL", "url": "Cvu5bcyi"}, {"slug": "lJHaotjI", "url": "mwLy5PMq"}]}' \
    '3cPD9meO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'Ii3l94ZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 10}' \
    'g2VjuOiW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    '7xdIgvVT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'u9PjLavU' \
    'awGHIeU8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    's9SF5qUW' \
    'vgm8Fjr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'kEVgfKXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    '2ghWnUUB' \
    'O9IKSMgp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    '71g4J8bj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'DVayopw2' \
    'qdDwGvpj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
