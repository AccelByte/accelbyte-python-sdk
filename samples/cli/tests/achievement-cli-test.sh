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
achievement-admin-create-new-achievement '{"achievementCode": "w5i6Vlew", "defaultLanguage": "RbSLYF8S", "description": {"cFlYCsDH": "8AbeaXF9", "CcUASZv4": "cYpYHd0J", "Kgw60AQo": "VTRF0chB"}, "goalValue": 0.3082375762523051, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "ZjGJNi9T", "url": "8XtKhTR9"}, {"slug": "ReWqRzHw", "url": "OuWACPEl"}, {"slug": "I9BlubVj", "url": "XkDtPHpE"}], "name": {"EruRaysb": "wXUdmST4", "IKRrGNva": "9AwdNAB3", "knE1iiZo": "XNOHLn18"}, "statCode": "2QWytwtd", "tags": ["BvwOSOLU", "YKMdTh2e", "xQaNFWeS"], "unlockedIcons": [{"slug": "8ActP9Yy", "url": "YoDsaFg0"}, {"slug": "Od4eZH8P", "url": "clrvNL7y"}, {"slug": "l8F6HUIT", "url": "Gj0IQWX8"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'SeQUrIzZ' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "PYsjn0PI", "description": {"Iu4P4UNd": "aNrpma0m", "izd3adTp": "gixf07DV", "g7aZk5Hu": "yaPz8TZT"}, "goalValue": 0.13363933919698623, "hidden": true, "incremental": true, "lockedIcons": [{"slug": "G4Ho5Iz1", "url": "QcPNmWcF"}, {"slug": "FZaLHh5y", "url": "oEVTRWT4"}, {"slug": "i6gYW6sb", "url": "pKTJ4xod"}], "name": {"NDSxN0a8": "eCEf2Mc5", "5XSolnas": "oEKp8ojp", "6D3l7Rpe": "7tZdi5Py"}, "statCode": "1lq9xkyl", "tags": ["s2rqdyZb", "rAnNJIL5", "7m1smhve"], "unlockedIcons": [{"slug": "S7FE0AXV", "url": "ttRASIHm"}, {"slug": "Qt1g1d5a", "url": "Gn3rAAzd"}, {"slug": "RO9zKoUO", "url": "VNm3fBxt"}]}' 'Zx24HK9V' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'cSESz1ro' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 80}' 'TVwYmFPS' --login_with_auth "Bearer foo"
achievement-admin-list-tags --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'eZs0ddAd' --login_with_auth "Bearer foo"
achievement-admin-reset-achievement '32IozxIr' 'mqSNaAXC' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement '9mqWywsF' 'u1Le7AHc' --login_with_auth "Bearer foo"
achievement-admin-anonymize-user-achievement 'LC6A46QW' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'njHMNQ8r' --login_with_auth "Bearer foo"
achievement-public-get-achievement 'Fy7G0xs3' 'PyY2gHHt' --login_with_auth "Bearer foo"
achievement-public-list-tags --login_with_auth "Bearer foo"
achievement-public-list-user-achievements 'xQWbtJDg' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'by3kTvDF' 'WVvhXrUO' --login_with_auth "Bearer foo"
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
    '{"achievementCode": "llnMaarQ", "defaultLanguage": "JU6nK6RF", "description": {"63jGCEF6": "S4j25j6S", "dCx8aW1F": "302PPKsz", "0DRsdGkZ": "s4hxlxiz"}, "goalValue": 0.9151927935401222, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "Ri06HPM8", "url": "0DmXA0if"}, {"slug": "pYamm9Oe", "url": "acZbEf4I"}, {"slug": "aoaQAHE2", "url": "dMPVoXsn"}], "name": {"SBDmssM4": "CZMMR5Ez", "IxV7zZcM": "e99TqxxS", "56o2LBPR": "OwyI1gFc"}, "statCode": "0umWW7HU", "tags": ["lnqhAjPT", "B9oDBqqj", "nOYxHYC5"], "unlockedIcons": [{"slug": "cO6EhS3T", "url": "5SsaKpaZ"}, {"slug": "2rDqzgNZ", "url": "XGJLMhxR"}, {"slug": "MForcWA3", "url": "FYSiwmZm"}]}' \
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
    'Qcayi1dC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAchievement' test.out

#- 7 AdminUpdateAchievement
$PYTHON -m $MODULE 'achievement-admin-update-achievement' \
    '{"defaultLanguage": "Zcf7a3N0", "description": {"gWW4UWzq": "R0HRZo9n", "EaBjl04E": "6Ogv92uU", "kl2snqo3": "FLGh35uh"}, "goalValue": 0.01745573413442525, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "MpI0zGNL", "url": "9DJ3bcBD"}, {"slug": "owIV0XbB", "url": "B2Aja8QE"}, {"slug": "Im7szElc", "url": "HtqfG0p8"}], "name": {"qwvbz5Lp": "fqrjFdS4", "7A3rbE1V": "Lt4LmugS", "eYbZ5P2f": "IaTVt5NM"}, "statCode": "s6f2KCUU", "tags": ["Frg21VYa", "9oRiG5Hx", "hDnEnCTE"], "unlockedIcons": [{"slug": "S59oWQA4", "url": "JoDGCxNU"}, {"slug": "yKbjftmf", "url": "4xZ80jj3"}, {"slug": "DmVSiwYE", "url": "glaMdL3z"}]}' \
    '0iNNARcf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateAchievement' test.out

#- 8 AdminDeleteAchievement
$PYTHON -m $MODULE 'achievement-admin-delete-achievement' \
    'Fd3H3VzH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteAchievement' test.out

#- 9 AdminUpdateAchievementListOrder
$PYTHON -m $MODULE 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 16}' \
    '5CX1o5gP' \
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
    'LKplc0j5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminListUserAchievements' test.out

#- 12 AdminResetAchievement
$PYTHON -m $MODULE 'achievement-admin-reset-achievement' \
    '1zs8Ijz7' \
    'PCBTwf5S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminResetAchievement' test.out

#- 13 AdminUnlockAchievement
$PYTHON -m $MODULE 'achievement-admin-unlock-achievement' \
    '3SL4va2V' \
    'tHB7HtP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUnlockAchievement' test.out

#- 14 AdminAnonymizeUserAchievement
$PYTHON -m $MODULE 'achievement-admin-anonymize-user-achievement' \
    '5rlqpnYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminAnonymizeUserAchievement' test.out

#- 15 PublicListAchievements
$PYTHON -m $MODULE 'achievement-public-list-achievements' \
    '1FTT5Gnp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicListAchievements' test.out

#- 16 PublicGetAchievement
$PYTHON -m $MODULE 'achievement-public-get-achievement' \
    'ut2QCUBp' \
    '4E8pVN1d' \
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
    'w7TDgU1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicListUserAchievements' test.out

#- 19 PublicUnlockAchievement
$PYTHON -m $MODULE 'achievement-public-unlock-achievement' \
    '22E1uMoo' \
    'uT3eelsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUnlockAchievement' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
