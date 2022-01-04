#!/bin/bash

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=38

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 GetPass
$PYTHON -m $MODULE 'seasonpass-get-pass' \
    'FtBxyZcD' \
    'XBpGlsQu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPass'
delete_file $TEMP_FILE

#- 2 DeletePass
$PYTHON -m $MODULE 'seasonpass-delete-pass' \
    'Ju8vMf0I' \
    'sJkTrd8I' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeletePass'
delete_file $TEMP_FILE

#- 3 UpdatePass
$PYTHON -m $MODULE 'seasonpass-update-pass' \
    'DcV2zXnT' \
    'KjXY1bPq' \
    --body '{"displayOrder": 1, "autoEnroll": false, "passItemId": "iBxx9Cs1", "localizations": {"8EY84ekI": {"title": "tqRzHU1o", "description": "h570KQBV"}}, "images": [{"as": "aewc72kr", "caption": "Sha68n3Y", "height": 26, "width": 29, "imageUrl": "zp1C2KmI", "smallImageUrl": "QTuBdNEU"}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePass'
delete_file $TEMP_FILE

#- 4 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'sxFb8CJ1' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPasses'
delete_file $TEMP_FILE

#- 5 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    '7M7DJZaM' \
    --body '{"code": "SxECbZby", "displayOrder": 13, "autoEnroll": true, "passItemId": "oarORoeN", "localizations": {"HSb8Rh3k": {"title": "gs9qqJbn", "description": "QsoBgiVp"}}, "images": [{"as": "P8Cm3yvA", "caption": "SUoxdxxF", "height": 32, "width": 24, "imageUrl": "AGTJ8IEd", "smallImageUrl": "agEtp4w2"}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePass'
delete_file $TEMP_FILE

#- 6 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    '9KOu9c19' \
    'R6XDqWHk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 7 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'kP8npLEK' \
    'MfjiX7jp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 8 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    'kVZk3IaQ' \
    'YEmqGodO' \
    --body '{"type": "CURRENCY", "itemId": "Gt9gPOj0", "currency": {"namespace": "c6i0JkvI", "currencyCode": "as73ucYn"}, "quantity": 63, "image": {"as": "AJ3DK5T4", "caption": "Eogg0Y39", "height": 93, "width": 29, "imageUrl": "Ylpv5bVA", "smallImageUrl": "gtsDhUTD"}, "nullFields": ["UscbQDjb"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 9 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'TQuPMz2P' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards'
delete_file $TEMP_FILE

#- 10 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    'TRlkyU89' \
    --body '{"code": "ZPOw6zPF", "type": "ITEM", "itemId": "wmzBBSMN", "currency": {"namespace": "coAAOjKN", "currencyCode": "jfcYHm09"}, "quantity": 0, "image": {"as": "YgBU1sqj", "caption": "yK0XH45P", "height": 0, "width": 87, "imageUrl": "SOFQBtu2", "smallImageUrl": "3REZ8hRV"}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateReward'
delete_file $TEMP_FILE

#- 11 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'X7LGOvDd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UnpublishSeason'
delete_file $TEMP_FILE

#- 12 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'YiQS9i7m' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSeason'
delete_file $TEMP_FILE

#- 13 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'V1C91pjG' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSeason'
delete_file $TEMP_FILE

#- 14 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    '9gpxL6yc' \
    --body '{"name": "TQdvln2L", "start": "1984-06-12T00:00:00Z", "end": "1993-12-03T00:00:00Z", "defaultLanguage": "WEXL6LFE", "defaultRequiredExp": 67, "draftStoreId": "o9m126ZW", "tierItemId": "c8hHtWvb", "autoClaim": true, "excessStrategy": {"method": "NONE", "currency": "UqslArFP", "percentPerExp": 17}, "localizations": {"HUIvaCv8": {"title": "kU9dBBpd", "description": "sJLhsVyE"}}, "images": [{"as": "xrkxoot0", "caption": "B7WOferc", "height": 7, "width": 31, "imageUrl": "Mci37Ds7", "smallImageUrl": "YSfExaI3"}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSeason'
delete_file $TEMP_FILE

#- 15 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    'uzLteMbF' \
    --body '{"name": "Alt4hr7H", "start": "1977-11-23T00:00:00Z", "end": "1996-02-29T00:00:00Z"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CloneSeason'
delete_file $TEMP_FILE

#- 16 QuerySeasons
$PYTHON -m $MODULE 'seasonpass-query-seasons' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QuerySeasons'
delete_file $TEMP_FILE

#- 17 CreateSeason
$PYTHON -m $MODULE 'seasonpass-create-season' \
    --body '{"name": "BA5ltAOX", "start": "1977-03-30T00:00:00Z", "end": "1987-02-03T00:00:00Z", "defaultLanguage": "h1dTdoTF", "defaultRequiredExp": 31, "draftStoreId": "BIcuC1dQ", "tierItemId": "Y93OJnJ6", "autoClaim": false, "excessStrategy": {"method": "CURRENCY", "currency": "D8ldz7Hu", "percentPerExp": 53}, "localizations": {"D79kdWun": {"title": "vizU0q1p", "description": "HyhhERoG"}}, "images": [{"as": "gdrysMiz", "caption": "BGSRdP2l", "height": 59, "width": 79, "imageUrl": "SZ8Aq0Xi", "smallImageUrl": "PLQXSe07"}]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateSeason'
delete_file $TEMP_FILE

#- 18 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'ZddOGTMl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetireSeason'
delete_file $TEMP_FILE

#- 19 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'JjBwj9HJ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublishSeason'
delete_file $TEMP_FILE

#- 20 GetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-get-current-season' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentSeason'
delete_file $TEMP_FILE

#- 21 UpdateTier
$PYTHON -m $MODULE 'seasonpass-update-tier' \
    'HQKseEdS' \
    'XRDSvgua' \
    --body '{"requiredExp": 40, "rewards": {"w1xT7eMw": ["Sl9MLH0N"]}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateTier'
delete_file $TEMP_FILE

#- 22 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'nTJ2ulNz' \
    'BvwJaQa5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTier'
delete_file $TEMP_FILE

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    '47JllvA8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryTiers'
delete_file $TEMP_FILE

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'RWSpabUt' \
    --body '{"index": 47, "quantity": 21, "tier": {"requiredExp": 85, "rewards": {"xyWhfqoW": ["fJw2o8oW"]}}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateTier'
delete_file $TEMP_FILE

#- 25 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'UqvPCZ2H' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyPassByPassCodes'
delete_file $TEMP_FILE

#- 26 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'zT7NXmWD' \
    --body '{"count": 23}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserTier'
delete_file $TEMP_FILE

#- 27 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'XsuNIdQJ' \
    'R5lsNOlv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSeason'
delete_file $TEMP_FILE

#- 28 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    'kfwaSbns' \
    --body '{"passItemId": "uLCgToxu", "tierItemId": "VTekJgvg", "tierItemCount": 15}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckSeasonPurchasable'
delete_file $TEMP_FILE

#- 29 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    '5HIpH0Dv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentUserSeasonProgression'
delete_file $TEMP_FILE

#- 30 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'iplEk4vj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserSeason'
delete_file $TEMP_FILE

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    '3LDp4yqD' \
    --body '{"passItemId": "t8QUZDpx", "passCode": "lHasinGc"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserPass'
delete_file $TEMP_FILE

#- 32 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    'jrkmRMtt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserParticipatedSeasons'
delete_file $TEMP_FILE

#- 33 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    'gjDSaIVB' \
    --body '{"exp": 25}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserExp'
delete_file $TEMP_FILE

#- 34 PublicGetCurrentSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-season' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCurrentSeason'
delete_file $TEMP_FILE

#- 35 PublicClaimUserReward
$PYTHON -m $MODULE 'seasonpass-public-claim-user-reward' \
    'ft3Udg7p' \
    --body '{"passCode": "9PGmY2H5", "tierIndex": 20, "rewardCode": "X4MsisSX"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicClaimUserReward'
delete_file $TEMP_FILE

#- 36 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    '28nARxWR' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCurrentUserSeason'
delete_file $TEMP_FILE

#- 37 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'pv5ou5xt' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkClaimUserRewards'
delete_file $TEMP_FILE

#- 38 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'vd28OUfC' \
    't8UJC5fl' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSeason'
delete_file $TEMP_FILE
