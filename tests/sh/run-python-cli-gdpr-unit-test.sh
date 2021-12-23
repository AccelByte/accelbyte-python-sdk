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

OPERATIONS_COUNT=20

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

#- 1 AdminGetListDeletionDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-deletion-data-request' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListDeletionDataRequest'
delete_file $TEMP_FILE

#- 2 GetAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-get-admin-email-configuration' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 3 UpdateAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-update-admin-email-configuration' \
    '["FtBxyZcD"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 4 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["XBpGlsQu"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SaveAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 5 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["Ju8vMf0I"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAdminEmailConfiguration'
delete_file $TEMP_FILE

#- 6 AdminGetListPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-personal-data-request' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetListPersonalDataRequest'
delete_file $TEMP_FILE

#- 7 AdminGetUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-get-user-account-deletion-request' \
    'sJkTrd8I' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 8 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'DcV2zXnT' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSubmitUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 9 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'KjXY1bPq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCancelUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 10 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'amiBxx9C' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserPersonalDataRequests'
delete_file $TEMP_FILE

#- 11 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    's18EY84e' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRequestDataRetrieval'
delete_file $TEMP_FILE

#- 12 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'kItqRzHU' \
    '1oh570KQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCancelUserPersonalDataRequest'
delete_file $TEMP_FILE

#- 13 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'BVaewc72' \
    'krSha68n' \
    '3Ynozp1C' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGeneratePersonalDataURL'
delete_file $TEMP_FILE

#- 14 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    '2KmIQTuB' \
    'dNEUsxFb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSubmitUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 15 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    '8CJ17M7D' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserAccountDeletionRequest'
delete_file $TEMP_FILE

#- 16 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'JZaMSxEC' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserAccountDeletionStatus'
delete_file $TEMP_FILE

#- 17 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'bZbygyoa' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserPersonalDataRequests'
delete_file $TEMP_FILE

#- 18 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'rORoeNHS' \
    'b8Rh3kgs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicRequestDataRetrieval'
delete_file $TEMP_FILE

#- 19 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    '9qqJbnQs' \
    'oBgiVpP8' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCancelUserPersonalDataRequest'
delete_file $TEMP_FILE

#- 20 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'Cm3yvASU' \
    'oxdxxFqm' \
    'AGTJ8IEd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGeneratePersonalDataURL'
delete_file $TEMP_FILE
