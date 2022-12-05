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
achievement-admin-create-new-achievement '{"achievementCode": "p62KhrY9", "defaultLanguage": "XfjRcWwo", "description": {"P8iz7cZL": "q0l9SIcB", "sYuSaxoo": "6mwacedY", "SkmGscqv": "CMOjCwkk"}, "goalValue": 0.1844850513059959, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "VRcKFCYN", "url": "No8gts3w"}, {"slug": "pSvTdYDX", "url": "zTPUacKB"}, {"slug": "ZzsV2hdU", "url": "PwJEPItc"}], "name": {"Uu2QL170": "55VwbRSw", "deK2TSGg": "cBnzEfhR", "dawiaAmQ": "Am5dpvNZ"}, "statCode": "8vkFquxq", "tags": ["1tNwOS6S", "AwJC3eO7", "Api2lWAm"], "unlockedIcons": [{"slug": "iz9bM4I4", "url": "8qX0mlxp"}, {"slug": "sE4bLJV1", "url": "A7AU25v4"}, {"slug": "NPDimFlH", "url": "UurMH5Vf"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'LqrFiA1i' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "LtYJfXV9", "description": {"BLxIZBKr": "YYZ1VSp0", "bpJV1qgZ": "kKsS3N0x", "JtSErjCE": "bzi4rsOy"}, "goalValue": 0.32242501043828686, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "ONrq9eAr", "url": "EvaEmh0Z"}, {"slug": "i0W7NMhu", "url": "EqByZ4DI"}, {"slug": "qe7YddG1", "url": "KN4blkNC"}], "name": {"l4LqBaAR": "KIa62eB9", "wm8opEJG": "DjVR5IK9", "MUgbyY6x": "9pkivMlh"}, "statCode": "VyPqwnjz", "tags": ["GkzkL910", "OJomI7Pw", "U6dP3QmF"], "unlockedIcons": [{"slug": "zUXK9bM5", "url": "cFTJYp37"}, {"slug": "eEBoMUeo", "url": "qISIcRCU"}, {"slug": "fvADEiBc", "url": "2Gf30ml0"}]}' 'JWgUH77c' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'A30k8tHV' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 75}' 'rhFTaaHg' --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements '7zL3lNLH' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement '8HpdbuH6' 'jsBhGROK' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'LOejEN9V' 'bVWyRKvY' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'trQ6NCHG' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'UHslxIXR' '7GmFBc3R' --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'jDb1a8IL' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'lX6DSIbx' 'SJxVVuHf' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "CKUGeEmR", "defaultLanguage": "sYtqvdkn", "description": {"owXYz19x": "XQH1WsQs", "IB61l5vi": "CII5bmR3", "olAjcv5O": "TGUYJqGZ"}, "goalValue": 0.9259413627384431, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "zD9u7PsI", "url": "nFgppsUj"}, {"slug": "Who06MKI", "url": "Q78pIKv3"}, {"slug": "ZGyd4FqL", "url": "phokJfSP"}], "name": {"nSr0Yl2l": "9NKYtyps", "1Acf3pE6": "Ch5UQRgd", "flKpu0O6": "2rIu5tJy"}, "statCode": "b2YfV0xk", "tags": ["FG0V82No", "iTWstAQG", "kVRbe6fr"], "unlockedIcons": [{"slug": "LWE5A0PT", "url": "2vTlCjdw"}, {"slug": "IXeVgzz8", "url": "yJLdUi9B"}, {"slug": "Qc1OpE61", "url": "88t2jfSM"}]}' \
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
    'OwEKiTAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "9WS2nC9m", "description": {"OaLMxMte": "jq1ZevY7", "gTODDPxS": "aYOgf6ol", "4ceuzneo": "qMEsGS7H"}, "goalValue": 0.45069903223417684, "hidden": false, "incremental": false, "lockedIcons": [{"slug": "gUTWHEvY", "url": "bmLXOBtq"}, {"slug": "KDfuCqnl", "url": "0vd0x4Ir"}, {"slug": "WSE6acrx", "url": "cS6C4gsZ"}], "name": {"mu1Hoc11": "mMij9Dhz", "5ksqbdix": "EeDxSrRy", "8Vz9H5d3": "QnPvn0op"}, "statCode": "LMvOjUF3", "tags": ["sSULqINn", "zdtj9SAU", "3OXHLKUb"], "unlockedIcons": [{"slug": "juFF1J0p", "url": "tLxg8VpC"}, {"slug": "JbV6yGkc", "url": "71Fmtt00"}, {"slug": "JQFrw5Rz", "url": "MmirNszf"}]}' \
    'b1GZFlg7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'QHeZhFLn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 56}' \
    'w0ubKQMs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateAchievementListOrder' test.out

#- 10 AdminListUserAchievements
$PYTHON -m $MODULE 'achievement-admin-list-user-achievements' \
    '4in0gJ6V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminListUserAchievements' test.out

#- 11 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    'F6JEEWZj' \
    'kFCc4p3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminResetAchievement' test.out

#- 12 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'B1Sy3x6R' \
    'A1Z0T27a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUnlockAchievement' test.out

#- 13 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'Jj34EBUM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicListAchievements' test.out

#- 14 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    '6WAIzovY' \
    'HZeoLpsT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicGetAchievement' test.out

#- 15 PublicListUserAchievements
$PYTHON -m $MODULE 'achievement-public-list-user-achievements' \
    'n8gIxZBx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListUserAchievements' test.out

#- 16 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    '99A1g4Ie' \
    'HVGCMHlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
