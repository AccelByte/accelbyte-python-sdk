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

OPERATIONS_COUNT=42

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

#- 1 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'FtBxyZcD' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "pGlsQuJu", "policyId": "8vMf0IsJ", "policyVersionId": "kTrd8IDc"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ChangePreferenceConsent'
delete_file $TEMP_FILE

#- 2 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'V2zXnTKj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAcceptedAgreements'
delete_file $TEMP_FILE

#- 3 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'XY1bPqam' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllUsersByPolicyVersion'
delete_file $TEMP_FILE

#- 4 RetrieveAllLegalPolicies
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllLegalPolicies'
delete_file $TEMP_FILE

#- 5 CreatePolicy
$PYTHON -m $MODULE 'legal-create-policy' \
    --body '{"affectedClientIds": ["iBxx9Cs1"], "affectedCountries": ["8EY84ekI"], "basePolicyName": "tqRzHU1o", "description": "h570KQBV", "namespace": "aewc72kr", "tags": ["Sha68n3Y"], "typeId": "nozp1C2K"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePolicy'
delete_file $TEMP_FILE

#- 6 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'mIQTuBdN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSinglePolicy'
delete_file $TEMP_FILE

#- 7 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'EUsxFb8C' \
    --body '{"affectedClientIds": ["J17M7DJZ"], "affectedCountries": ["aMSxECbZ"], "basePolicyName": "bygyoarO", "description": "RoeNHSb8", "namespace": "Rh3kgs9q", "tags": ["qJbnQsoB"]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PartialUpdatePolicy'
delete_file $TEMP_FILE

#- 8 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'giVpP8Cm' \
    '3yvASUox' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrievePolicyCountry'
delete_file $TEMP_FILE

#- 9 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'dxxFqmAG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLocalizedPolicyVersions'
delete_file $TEMP_FILE

#- 10 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'TJ8IEdag' \
    --body '{"contentType": "Etp4w29K", "description": "Ou9c19R6", "localeCode": "XDqWHkkP"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 11 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    '8npLEKMf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSingleLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 12 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'jiX7jpkV' \
    --body '{"attachmentChecksum": "Zk3IaQYE", "attachmentLocation": "mqGodOEG", "attachmentVersionIdentifier": "t9gPOj0c", "contentType": "6i0JkvIa", "description": "s73ucYnF"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateLocalizedPolicyVersion'
delete_file $TEMP_FILE

#- 13 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'AJ3DK5T4' \
    --body '{"contentMD5": "Eogg0Y39", "contentType": "UoYlpv5b"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RequestPresignedURL'
delete_file $TEMP_FILE

#- 14 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'VAgtsDhU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SetDefaultPolicy'
delete_file $TEMP_FILE

#- 15 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'TDUscbQD' \
    'jbTQuPMz' \
    '2PTRlkyU' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "6zPFJ42c", "policyId": "wmzBBSMN", "policyVersionId": "coAAOjKN"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'IndirectBulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 16 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'jfcYHm09' \
    '3aYgBU1s' \
    'qjyK0XH4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminRetrieveEligibilities'
delete_file $TEMP_FILE

#- 17 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    '5PaRSOFQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrievePolicies'
delete_file $TEMP_FILE

#- 18 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'Btu23REZ' \
    --body '{"description": "8hRVX7LG", "displayVersion": "OvDdYiQS", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePolicyVersion'
delete_file $TEMP_FILE

#- 19 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    '7mV1C91p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublishPolicyVersion'
delete_file $TEMP_FILE

#- 20 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'jG9gpxL6' \
    --body '{"description": "ycTQdvln", "isDefaultOpted": true, "isMandatory": true, "policyName": "SQWEXL6L", "readableId": "FE1YHo9m", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePolicy'
delete_file $TEMP_FILE

#- 21 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '8hHtWvbN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SetDefaultPolicy1'
delete_file $TEMP_FILE

#- 22 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'YqgUqslA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSinglePolicyVersion'
delete_file $TEMP_FILE

#- 23 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'rFPiHUIv' \
    --body '{"description": "aCv8kU9d", "displayVersion": "BBpdsJLh", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreatePolicyVersion'
delete_file $TEMP_FILE

#- 24 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '95' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAllPolicyTypes'
delete_file $TEMP_FILE

#- 25 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserInfoStatus'
delete_file $TEMP_FILE

#- 26 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SyncUserInfo'
delete_file $TEMP_FILE

#- 27 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'InvalidateUserInfoCache'
delete_file $TEMP_FILE

#- 28 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'yExrkxoo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeUserAgreement'
delete_file $TEMP_FILE

#- 29 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "0B7WOfer", "policyId": "cZdpMci3", "policyVersionId": "7Ds7YSfE"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ChangePreferenceConsent1'
delete_file $TEMP_FILE

#- 30 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'xaI3uzLt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 31 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveAgreementsPublic'
delete_file $TEMP_FILE

#- 32 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": false, "localizedPolicyVersionId": "MbFAlt4h", "policyId": "r7HmOYiB", "policyVersionId": "A5ltAOXm"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'BulkAcceptVersionedPolicy'
delete_file $TEMP_FILE

#- 33 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'lG6eh1dT' \
    'doTFpBIc' \
    'uC1dQY93' \
    --body '[{"isAccepted": false, "localizedPolicyVersionId": "J6Te9vD8", "policyId": "ldz7Hu8A", "policyVersionId": "D79kdWun"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'IndirectBulkAcceptVersionedPolicyV2'
delete_file $TEMP_FILE

#- 34 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'vizU0q1p' \
    --body '[{"isAccepted": true, "localizedPolicyVersionId": "hhERoGgd", "policyId": "rysMizBG", "policyVersionId": "SRdP2l7D"}]' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'IndirectBulkAcceptVersionedPolicy1'
delete_file $TEMP_FILE

#- 35 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveEligibilitiesPublic'
delete_file $TEMP_FILE

#- 36 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'NSZ8Aq0X' \
    'iPLQXSe0' \
    '7ZddOGTM' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveEligibilitiesPublicIndirect'
delete_file $TEMP_FILE

#- 37 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'lJjBwj9H' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveSingleLocalizedPolicyVersion1'
delete_file $TEMP_FILE

#- 38 RetrievePolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-policy-versions' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrievePolicyVersions'
delete_file $TEMP_FILE

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'JHQKseEd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLatestPolicies'
delete_file $TEMP_FILE

#- 40 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLatestPoliciesPublic'
delete_file $TEMP_FILE

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'SXRDSvgu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RetrieveLatestPoliciesByNamespaceAndCountryPublic'
delete_file $TEMP_FILE

#- 42 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CheckReadiness'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT