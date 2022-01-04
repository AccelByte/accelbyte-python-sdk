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

#- 1 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'FtBxyZcD' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAcceptedAgreements'
delete_file $TEMP_FILE

#- 2 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'XBpGlsQu' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllUsersByPolicyVersion'
delete_file $TEMP_FILE

#- 3 RetrieveAllLegalPolicies
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllLegalPolicies'
delete_file $TEMP_FILE

#- 4 CreatePolicy
$PYTHON -m $MODULE 'legal-create-policy' \
    --body '{"affectedClientIds": ["Ju8vMf0I"], "affectedCountries": ["sJkTrd8I"], "basePolicyName": "DcV2zXnT", "description": "KjXY1bPq", "namespace": "amiBxx9C", "tags": ["s18EY84e"], "typeId": "kItqRzHU"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePolicy'
delete_file $TEMP_FILE

#- 5 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    '1oh570KQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSinglePolicy'
delete_file $TEMP_FILE

#- 6 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'BVaewc72' \
    --body '{"affectedClientIds": ["krSha68n"], "affectedCountries": ["3Ynozp1C"], "basePolicyName": "2KmIQTuB", "description": "dNEUsxFb", "namespace": "8CJ17M7D", "tags": ["JZaMSxEC"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PartialUpdatePolicy'
delete_file $TEMP_FILE

#- 7 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'bZbygyoa' \
    'rORoeNHS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrievePolicyCountry'
delete_file $TEMP_FILE

#- 8 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'b8Rh3kgs' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLocalizedPolicyVersions'
delete_file $TEMP_FILE

#- 9 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    '9qqJbnQs' \
    --body '{"contentType": "oBgiVpP8", "description": "Cm3yvASU", "localeCode": "oxdxxFqm"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 10 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'AGTJ8IEd' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSingleLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 11 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'agEtp4w2' \
    --body '{"attachmentChecksum": "9KOu9c19", "attachmentLocation": "R6XDqWHk", "attachmentVersionIdentifier": "kP8npLEK", "contentType": "MfjiX7jp", "description": "kVZk3IaQ"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 12 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'YEmqGodO' \
    --body '{"contentMD5": "EGt9gPOj", "contentType": "0c6i0Jkv"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RequestPresignedURL'
delete_file $TEMP_FILE

#- 13 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'Ias73ucY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SetDefaultPolicy'
delete_file $TEMP_FILE

#- 14 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'nFAJ3DK5' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrievePolicies'
delete_file $TEMP_FILE

#- 15 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'T4Eogg0Y' \
    --body '{"description": "39UoYlpv", "displayVersion": "5bVAgtsD", "isCommitted": false}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePolicyVersion'
delete_file $TEMP_FILE

#- 16 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'UTDUscbQ' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublishPolicyVersion'
delete_file $TEMP_FILE

#- 17 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'DjbTQuPM' \
    --body '{"description": "z2PTRlky", "isDefaultOpted": true, "isMandatory": true, "policyName": "PFJ42cwm", "readableId": "zBBSMNco", "shouldNotifyOnUpdate": true}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePolicy'
delete_file $TEMP_FILE

#- 18 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'AOjKNjfc' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SetDefaultPolicy1'
delete_file $TEMP_FILE

#- 19 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'YHm093aY' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSinglePolicyVersion'
delete_file $TEMP_FILE

#- 20 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'gBU1sqjy' \
    --body '{"description": "K0XH45Pa", "displayVersion": "RSOFQBtu", "isCommitted": true}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePolicyVersion'
delete_file $TEMP_FILE

#- 21 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '15' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllPolicyTypes'
delete_file $TEMP_FILE

#- 22 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserInfoStatus'
delete_file $TEMP_FILE

#- 23 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'SyncUserInfo'
delete_file $TEMP_FILE

#- 24 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'InvalidateUserInfoCache'
delete_file $TEMP_FILE

#- 25 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'RVX7LGOv' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeUserAgreement'
delete_file $TEMP_FILE

#- 26 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "dYiQS9i7", "policyId": "mV1C91pj", "policyVersionId": "G9gpxL6y"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ChangePreferenceConsent'
delete_file $TEMP_FILE

#- 27 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'cTQdvln2' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 28 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAgreementsPublic'
delete_file $TEMP_FILE

#- 29 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "uSQWEXL6", "policyId": "LFE1YHo9", "policyVersionId": "m126ZWc8"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 30 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'hHtWvbNY' \
    'qgUqslAr' \
    'FPiHUIva' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "v8kU9dBB", "policyId": "pdsJLhsV", "policyVersionId": "yExrkxoo"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IndirectBulkAcceptVersionedPolicyV2'
delete_file $TEMP_FILE

#- 31 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    't0B7WOfe' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "cZdpMci3", "policyId": "7Ds7YSfE", "policyVersionId": "xaI3uzLt"}]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'IndirectBulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 32 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveEligibilitiesPublic'
delete_file $TEMP_FILE

#- 33 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'eMbFAlt4' \
    'hr7HmOYi' \
    'BA5ltAOX' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveEligibilitiesPublicIndirect'
delete_file $TEMP_FILE

#- 34 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'mlG6eh1d' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSingleLocalizedPolicyVersion1'
delete_file $TEMP_FILE

#- 35 RetrievePolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-policy-versions' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrievePolicyVersions'
delete_file $TEMP_FILE

#- 36 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'TdoTFpBI' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLatestPolicies'
delete_file $TEMP_FILE

#- 37 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLatestPoliciesPublic'
delete_file $TEMP_FILE

#- 38 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'cuC1dQY9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLatestPoliciesByNamespaceAndCountryPublic'
delete_file $TEMP_FILE

#- 39 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CheckReadiness'
delete_file $TEMP_FILE

delete_file 'tmp.dat'