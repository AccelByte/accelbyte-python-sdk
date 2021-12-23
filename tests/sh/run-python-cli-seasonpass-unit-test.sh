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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePass'
delete_file $TEMP_FILE

#- 4 QueryPasses
$PYTHON -m $MODULE 'seasonpass-query-passes' \
    'amiBxx9C' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryPasses'
delete_file $TEMP_FILE

#- 5 CreatePass
$PYTHON -m $MODULE 'seasonpass-create-pass' \
    's18EY84e' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePass'
delete_file $TEMP_FILE

#- 6 GetReward
$PYTHON -m $MODULE 'seasonpass-get-reward' \
    'kItqRzHU' \
    '1oh570KQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetReward'
delete_file $TEMP_FILE

#- 7 DeleteReward
$PYTHON -m $MODULE 'seasonpass-delete-reward' \
    'BVaewc72' \
    'krSha68n' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteReward'
delete_file $TEMP_FILE

#- 8 UpdateReward
$PYTHON -m $MODULE 'seasonpass-update-reward' \
    '3Ynozp1C' \
    '2KmIQTuB' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateReward'
delete_file $TEMP_FILE

#- 9 QueryRewards
$PYTHON -m $MODULE 'seasonpass-query-rewards' \
    'dNEUsxFb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryRewards'
delete_file $TEMP_FILE

#- 10 CreateReward
$PYTHON -m $MODULE 'seasonpass-create-reward' \
    '8CJ17M7D' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateReward'
delete_file $TEMP_FILE

#- 11 UnpublishSeason
$PYTHON -m $MODULE 'seasonpass-unpublish-season' \
    'JZaMSxEC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UnpublishSeason'
delete_file $TEMP_FILE

#- 12 GetSeason
$PYTHON -m $MODULE 'seasonpass-get-season' \
    'bZbygyoa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetSeason'
delete_file $TEMP_FILE

#- 13 DeleteSeason
$PYTHON -m $MODULE 'seasonpass-delete-season' \
    'rORoeNHS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteSeason'
delete_file $TEMP_FILE

#- 14 UpdateSeason
$PYTHON -m $MODULE 'seasonpass-update-season' \
    'b8Rh3kgs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSeason'
delete_file $TEMP_FILE

#- 15 CloneSeason
$PYTHON -m $MODULE 'seasonpass-clone-season' \
    '9qqJbnQs' \
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
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateSeason'
delete_file $TEMP_FILE

#- 18 RetireSeason
$PYTHON -m $MODULE 'seasonpass-retire-season' \
    'oBgiVpP8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetireSeason'
delete_file $TEMP_FILE

#- 19 PublishSeason
$PYTHON -m $MODULE 'seasonpass-publish-season' \
    'Cm3yvASU' \
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
    'oxdxxFqm' \
    'AGTJ8IEd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateTier'
delete_file $TEMP_FILE

#- 22 DeleteTier
$PYTHON -m $MODULE 'seasonpass-delete-tier' \
    'agEtp4w2' \
    '9KOu9c19' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteTier'
delete_file $TEMP_FILE

#- 23 QueryTiers
$PYTHON -m $MODULE 'seasonpass-query-tiers' \
    'R6XDqWHk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'QueryTiers'
delete_file $TEMP_FILE

#- 24 CreateTier
$PYTHON -m $MODULE 'seasonpass-create-tier' \
    'kP8npLEK' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateTier'
delete_file $TEMP_FILE

#- 25 ExistsAnyPassByPassCodes
$PYTHON -m $MODULE 'seasonpass-exists-any-pass-by-pass-codes' \
    'MfjiX7jp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ExistsAnyPassByPassCodes'
delete_file $TEMP_FILE

#- 26 GrantUserTier
$PYTHON -m $MODULE 'seasonpass-grant-user-tier' \
    'kVZk3IaQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserTier'
delete_file $TEMP_FILE

#- 27 GetUserSeason
$PYTHON -m $MODULE 'seasonpass-get-user-season' \
    'YEmqGodO' \
    'EGt9gPOj' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserSeason'
delete_file $TEMP_FILE

#- 28 CheckSeasonPurchasable
$PYTHON -m $MODULE 'seasonpass-check-season-purchasable' \
    '0c6i0Jkv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckSeasonPurchasable'
delete_file $TEMP_FILE

#- 29 GetCurrentUserSeasonProgression
$PYTHON -m $MODULE 'seasonpass-get-current-user-season-progression' \
    'Ias73ucY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCurrentUserSeasonProgression'
delete_file $TEMP_FILE

#- 30 ResetUserSeason
$PYTHON -m $MODULE 'seasonpass-reset-user-season' \
    'nFAJ3DK5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ResetUserSeason'
delete_file $TEMP_FILE

#- 31 GrantUserPass
$PYTHON -m $MODULE 'seasonpass-grant-user-pass' \
    'T4Eogg0Y' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GrantUserPass'
delete_file $TEMP_FILE

#- 32 GetUserParticipatedSeasons
$PYTHON -m $MODULE 'seasonpass-get-user-participated-seasons' \
    '39UoYlpv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserParticipatedSeasons'
delete_file $TEMP_FILE

#- 33 GrantUserExp
$PYTHON -m $MODULE 'seasonpass-grant-user-exp' \
    '5bVAgtsD' \
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
    'hUTDUscb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicClaimUserReward'
delete_file $TEMP_FILE

#- 36 PublicGetCurrentUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-current-user-season' \
    'QDjbTQuP' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCurrentUserSeason'
delete_file $TEMP_FILE

#- 37 PublicBulkClaimUserRewards
$PYTHON -m $MODULE 'seasonpass-public-bulk-claim-user-rewards' \
    'Mz2PTRlk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicBulkClaimUserRewards'
delete_file $TEMP_FILE

#- 38 PublicGetUserSeason
$PYTHON -m $MODULE 'seasonpass-public-get-user-season' \
    'yU89ZPOw' \
    '6zPFJ42c' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserSeason'
delete_file $TEMP_FILE
