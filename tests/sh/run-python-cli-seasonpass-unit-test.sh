#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=39

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 QuerySeasons
$PYTHON -m $MODULE 'seasonpass-query-seasons' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySeasons'
delete_file $TEMP_FILE

#- 2 CreateSeason
$PYTHON -m $MODULE 'seasonpass-create-season' \
    --body '{"autoClaim": true, "defaultLanguage": "tBxyZcDX", "defaultRequiredExp": 55, "draftStoreId": "pGlsQuJu", "end": "1981-11-03T00:00:00Z", "excessStrategy": {"currency": "f0IsJkTr", "method": "NONE", "percentPerExp": 68}, "images": [{"as": "DcV2zXnT", "caption": "KjXY1bPq", "height": 1, "imageUrl": "miBxx9Cs", "smallImageUrl": "18EY84ek", "width": 69}], "localizations": {"tqRzHU1o": {"description": "h570KQBV", "title": "aewc72kr"}}, "name": "Sha68n3Y", "start": "1977-04-27T00:00:00Z", "tierItemId": "zp1C2KmI"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateSeason'
delete_file $TEMP_FILE

#- 3 GetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-get-current-season' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentSeason'
delete_file $TEMP_FILE

#- 4 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'QTuBdNEU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSeason'
delete_file $TEMP_FILE

#- 5 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'sxFb8CJ1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSeason'
delete_file $TEMP_FILE

#- 6 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    '7M7DJZaM' \
    --body '{"autoClaim": true, "defaultLanguage": "ECbZbygy", "defaultRequiredExp": 29, "draftStoreId": "arORoeNH", "end": "1993-01-05T00:00:00Z", "excessStrategy": {"currency": "8Rh3kgs9", "method": "CURRENCY", "percentPerExp": 33}, "images": [{"as": "JbnQsoBg", "caption": "iVpP8Cm3", "height": 49, "imageUrl": "vASUoxdx", "smallImageUrl": "xFqmAGTJ", "width": 68}], "localizations": {"EdagEtp4": {"description": "w29KOu9c", "title": "19R6XDqW"}}, "name": "HkkP8npL", "start": "1986-10-17T00:00:00Z", "tierItemId": "MfjiX7jp"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSeason'
delete_file $TEMP_FILE

#- 7 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'kVZk3IaQ' \
    --body '{"end": "1996-08-25T00:00:00Z", "name": "mqGodOEG", "start": "1980-02-22T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CloneSeason'
delete_file $TEMP_FILE

#- 8 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'POj0c6i0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPasses'
delete_file $TEMP_FILE

#- 9 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    'JkvIas73' \
    --body '{"autoEnroll": true, "code": "cYnFAJ3D", "displayOrder": 72, "images": [{"as": "5T4Eogg0", "caption": "Y39UoYlp", "height": 43, "imageUrl": "5bVAgtsD", "smallImageUrl": "hUTDUscb", "width": 85}], "localizations": {"DjbTQuPM": {"description": "z2PTRlky", "title": "U89ZPOw6"}}, "passItemId": "zPFJ42cw"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePass'
delete_file $TEMP_FILE

#- 10 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'mzBBSMNc' \
    'oAAOjKNj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetPass'
delete_file $TEMP_FILE

#- 11 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'fcYHm093' \
    'aYgBU1sq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePass'
delete_file $TEMP_FILE

#- 12 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'jyK0XH45' \
    'PaRSOFQB' \
    --body '{"autoEnroll": true, "displayOrder": 41, "images": [{"as": "23REZ8hR", "caption": "VX7LGOvD", "height": 6, "imageUrl": "YiQS9i7m", "smallImageUrl": "V1C91pjG", "width": 13}], "localizations": {"pxL6ycTQ": {"description": "dvln2LAu", "title": "SQWEXL6L"}}, "passItemId": "FE1YHo9m"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePass'
delete_file $TEMP_FILE

#- 13 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    '126ZWc8h' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublishSeason'
delete_file $TEMP_FILE

#- 14 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'HtWvbNYq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetireSeason'
delete_file $TEMP_FILE

#- 15 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'gUqslArF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards'
delete_file $TEMP_FILE

#- 16 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'PiHUIvaC' \
    --body '{"code": "v8kU9dBB", "currency": {"currencyCode": "pdsJLhsV", "namespace": "yExrkxoo"}, "image": {"as": "t0B7WOfe", "caption": "rcZdpMci", "height": 58, "imageUrl": "s7YSfExa", "smallImageUrl": "I3uzLteM", "width": 3}, "itemId": "FAlt4hr7", "quantity": 67, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateReward'
delete_file $TEMP_FILE

#- 17 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'OYiBA5lt' \
    'AOXmlG6e' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 18 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'h1dTdoTF' \
    'pBIcuC1d' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 19 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'QY93OJnJ' \
    '6Te9vD8l' \
    --body '{"currency": {"currencyCode": "dz7Hu8AD", "namespace": "79kdWunv"}, "image": {"as": "izU0q1pH", "caption": "yhhERoGg", "height": 7, "imageUrl": "rysMizBG", "smallImageUrl": "SRdP2l7D", "width": 79}, "itemId": "SZ8Aq0Xi", "nullFields": ["PLQXSe07"], "quantity": 7, "type": "ITEM"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 20 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'OGTMlJjB' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'QueryTiers'
delete_file $TEMP_FILE

#- 21 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'wj9HJHQK' \
    --body '{"index": 36, "quantity": 8, "tier": {"requiredExp": 60, "rewards": {"dSXRDSvg": ["uauw1xT7"]}}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateTier'
delete_file $TEMP_FILE

#- 22 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'eMwSl9ML' \
    'H0NnTJ2u' \
    --body '{"requiredExp": 22, "rewards": {"NzBvwJaQ": ["a547Jllv"]}}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateTier'
delete_file $TEMP_FILE

#- 23 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'A8RWSpab' \
    'Ut7xk6Qx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTier'
delete_file $TEMP_FILE

#- 24 ReorderTier
$PYTHON -m $MODULE 'seasonpass-reorder-tier' \
    'yWhfqoWf' \
    'Jw2o8oWU' \
    --body '{"newIndex": 32}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ReorderTier'
delete_file $TEMP_FILE

#- 25 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'vPCZ2HzT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UnpublishSeason'
delete_file $TEMP_FILE

#- 26 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    '7NXmWDlX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserParticipatedSeasons'
delete_file $TEMP_FILE

#- 27 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'suNIdQJR' \
    --body '{"exp": 23}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserExp'
delete_file $TEMP_FILE

#- 28 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'sNOlvkfw' \
    --body '{"passCode": "aSbnsuLC", "passItemId": "gToxuVTe"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserPass'
delete_file $TEMP_FILE

#- 29 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'kJgvg6h5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyPassByPassCodes'
delete_file $TEMP_FILE

#- 30 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'HIpH0Dvi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentUserSeasonProgression'
delete_file $TEMP_FILE

#- 31 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'plEk4vj3' \
    --body '{"passItemId": "LDp4yqDt", "tierItemCount": 85, "tierItemId": "UZDpxlHa"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckSeasonPurchasable'
delete_file $TEMP_FILE

#- 32 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'sinGcjrk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserSeason'
delete_file $TEMP_FILE

#- 33 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'mRMttgjD' \
    --body '{"count": 88}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserTier'
delete_file $TEMP_FILE

#- 34 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'aIVBmft3' \
    'Udg7p9PG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSeason'
delete_file $TEMP_FILE

#- 35 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCurrentSeason'
delete_file $TEMP_FILE

#- 36 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'mY2H5kX4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCurrentUserSeason'
delete_file $TEMP_FILE

#- 37 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'MsisSX28' \
    --body '{"passCode": "nARxWRpv", "rewardCode": "5ou5xtvd", "tierIndex": 80}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicClaimUserReward'
delete_file $TEMP_FILE

#- 38 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'UfCt8UJC' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkClaimUserRewards'
delete_file $TEMP_FILE

#- 39 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    '5flNyj6H' \
    'sTtX8P3l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSeason'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT