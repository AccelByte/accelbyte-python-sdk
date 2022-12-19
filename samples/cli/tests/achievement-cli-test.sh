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
achievement-admin-create-new-achievement '{"achievementCode": "6QSfQVQj", "defaultLanguage": "qTUxRyhI", "description": {"BIF650eU": "hJO3zwB4", "tU9xAyem": "SehIoCxQ", "398qU89Q": "CLLfR5WY"}, "goalValue": 0.5535231465758552, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "tvPPcqIA", "url": "OY4XqmVN"}, {"slug": "TYRdfvR8", "url": "ZKSoovMP"}, {"slug": "gToTxIRY", "url": "U8RSnhYt"}], "name": {"MD8udrPs": "kcSMiEli", "kZvlQaLB": "iTYA3kfX", "z8gxPLVA": "oo9IihTh"}, "statCode": "Sd6szCVo", "tags": ["g6E31Uig", "Xv5ryCMK", "MOIJxoSK"], "unlockedIcons": [{"slug": "1M27wH3O", "url": "ftV32NvB"}, {"slug": "28zaidfG", "url": "wZfAahka"}, {"slug": "wSzQF4a4", "url": "JNG8yEyN"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement '0BN16529' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "eCiOJBNH", "description": {"9EvBt7fP": "ySR0aycv", "ZgJeGSPl": "5oysHnH4", "k53cUB0e": "7NytGsrm"}, "goalValue": 0.24073585268237818, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "tPcbLTU3", "url": "0Xj9mVEC"}, {"slug": "vbyLXfiZ", "url": "0429V7gQ"}, {"slug": "gbUlEs2Q", "url": "hrSOWixP"}], "name": {"Ohgn7jvJ": "4cUvFKmE", "NlRdneIz": "BzJRuHgb", "e0b4eHEM": "l6RO72ne"}, "statCode": "yKWl7iGc", "tags": ["uxoRe9ir", "NaakE60l", "CeiG3hVr"], "unlockedIcons": [{"slug": "VfQOyKoF", "url": "bEJUwOtL"}, {"slug": "ZYpD39Om", "url": "zCWlieFQ"}, {"slug": "nIW4VnAa", "url": "0n9uQUkG"}]}' 'MCznTMCJ' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'cbvWsJ54' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 65}' 'c9LLiBWR' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'fgC1ijGd' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement 'r5VGZWtX' 'T4LFIB8J' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'kfdj6ldx' 'mzpene37' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'dK7J45vf' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'hUaqXU4i' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'dNdyNmk7' 'iACOj6ff' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'Ww3cyWgL' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'NLvv1gLb' 'pIoHGody' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "VLqoIb5c", "defaultLanguage": "4LaTdV0L", "description": {"cdKsOSQw": "jcYEQZBy", "e7i3iUvI": "87T2XBmk", "RZqOQniU": "cshtk3YO"}, "goalValue": 0.6537487893320247, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "TjDgWQ6X", "url": "hCZcOuBD"}, {"slug": "kl6sCc6y", "url": "heuG19XR"}, {"slug": "YK9qFI2H", "url": "Rh2KcS6J"}], "name": {"dNIyM4wZ": "6HcHnzCR", "gQDQFefd": "cUsNOpBb", "W97bSb5v": "tucmJCWk"}, "statCode": "2B8z0xVq", "tags": ["5ra3QPl3", "hmX3D5y1", "v9dEznbx"], "unlockedIcons": [{"slug": "GYS5mPAb", "url": "Lr1rRISM"}, {"slug": "qBhLoYWY", "url": "G2Ht4Z4n"}, {"slug": "QZ9NX8eg", "url": "OlIjDxwe"}]}' \
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
    'cmUxnaLH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "E9QXRoKA", "description": {"Sqao3VCV": "ppkLpVFQ", "bTyQLU2G": "MVzyumsg", "bypKxaoC": "dCDWHCaL"}, "goalValue": 0.4503291010857302, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "dvCjq9ae", "url": "P5fmEyPJ"}, {"slug": "HnRcolgE", "url": "hqNNbGJl"}, {"slug": "BKQ4gSuj", "url": "YmYKWmJ9"}], "name": {"k328LcpU": "jOy451VA", "s27ENqZF": "FuGbEnLd", "xw8Zh9To": "Ie8gn4I5"}, "statCode": "fuAC20Bf", "tags": ["6FRhSpIT", "xb3K8epC", "TWIdrX1C"], "unlockedIcons": [{"slug": "jarRYwex", "url": "5xo7My6p"}, {"slug": "qWD1yE6i", "url": "zmH1XQc7"}, {"slug": "GD7OHgt5", "url": "WgUpv6rj"}]}' \
    'KubHN4nE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    '8GhCrKKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 71}' \
    'mQvCmL1Z' \
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
    'uzIuMnH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    '1Ut4FVUk' \
    'LsIp8nDs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    'aQYBigvk' \
    'xJnq2hn2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    '4gXjrKDS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    'wBfhVtMT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'trMIJWyh' \
    'GyfXiPSD' \
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
    's0HfYHR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    'IE9ocnSw' \
    'h8f2cjc7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
