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

OPERATIONS_COUNT=57

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

#- 1 GetNamespaces
$PYTHON -m $MODULE 'basic-get-namespaces' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetNamespaces'
delete_file $TEMP_FILE

#- 2 CreateNamespace
$PYTHON -m $MODULE 'basic-create-namespace' \
    --body '{"displayName": "FtBxyZcD", "namespace": "XBpGlsQu"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateNamespace'
delete_file $TEMP_FILE

#- 3 GetNamespace
$PYTHON -m $MODULE 'basic-get-namespace' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetNamespace'
delete_file $TEMP_FILE

#- 4 DeleteNamespace
$PYTHON -m $MODULE 'basic-delete-namespace' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteNamespace'
delete_file $TEMP_FILE

#- 5 GetActions
$PYTHON -m $MODULE 'basic-get-actions' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetActions'
delete_file $TEMP_FILE

#- 6 BanUsers
$PYTHON -m $MODULE 'basic-ban-users' \
    --body '{"actionId": 71, "comment": "u8vMf0Is", "userIds": ["JkTrd8ID"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'BanUsers'
delete_file $TEMP_FILE

#- 7 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["cV2zXnTK"]' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetBannedUsers'
delete_file $TEMP_FILE

#- 8 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "jXY1bPqa", "description": "miBxx9Cs", "gameSessionId": "18EY84ek", "subcategory": "ItqRzHU1", "userId": "oh570KQB"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ReportUser'
delete_file $TEMP_FILE

#- 9 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'Vaewc72k' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserStatus'
delete_file $TEMP_FILE

#- 10 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "rSha68n3", "userIds": ["Ynozp1C2"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UnBanUsers'
delete_file $TEMP_FILE

#- 11 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "KmIQTuBd"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateNamespace'
delete_file $TEMP_FILE

#- 12 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetConfig'
delete_file $TEMP_FILE

#- 13 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteConfig'
delete_file $TEMP_FILE

#- 14 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    --body '{"apiKey": "NEUsxFb8"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateConfig'
delete_file $TEMP_FILE

#- 15 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'CJ17M7DJ' \
    'ZaMSxECb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GeneratedUploadUrl'
delete_file $TEMP_FILE

#- 16 GetCountries
$PYTHON -m $MODULE 'basic-get-countries' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCountries'
delete_file $TEMP_FILE

#- 17 GetCountryGroups
$PYTHON -m $MODULE 'basic-get-country-groups' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCountryGroups'
delete_file $TEMP_FILE

#- 18 AddCountryGroup
$PYTHON -m $MODULE 'basic-add-country-group' \
    --body '{"countries": [{"code": "Zbygyoar", "name": "ORoeNHSb"}], "countryGroupCode": "8Rh3kgs9", "countryGroupName": "qqJbnQso"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AddCountryGroup'
delete_file $TEMP_FILE

#- 19 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'BgiVpP8C' \
    --body '{"countries": [{"code": "m3yvASUo", "name": "xdxxFqmA"}], "countryGroupName": "GTJ8IEda"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCountryGroup'
delete_file $TEMP_FILE

#- 20 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'gEtp4w29' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteCountryGroup'
delete_file $TEMP_FILE

#- 21 GetLanguages
$PYTHON -m $MODULE 'basic-get-languages' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetLanguages'
delete_file $TEMP_FILE

#- 22 GetTimeZones
$PYTHON -m $MODULE 'basic-get-time-zones' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetTimeZones'
delete_file $TEMP_FILE

#- 23 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["KOu9c19R"]}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetUserProfilePublicInfoByIds'
delete_file $TEMP_FILE

#- 24 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetNamespacePublisher'
delete_file $TEMP_FILE

#- 25 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "INACTIVE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'ChangeNamespaceStatus'
delete_file $TEMP_FILE

#- 26 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'qWHkkP8n' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'AnonymizeUserProfile'
delete_file $TEMP_FILE

#- 27 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'pLEKMfji' \
    'X7jpkVZk' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GeneratedUserUploadContentUrl'
delete_file $TEMP_FILE

#- 28 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    '3IaQYEmq' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserProfileInfo'
delete_file $TEMP_FILE

#- 29 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'GodOEGt9' \
    --body '{"avatarLargeUrl": "gPOj0c6i", "avatarSmallUrl": "0JkvIas7", "avatarUrl": "3ucYnFAJ", "customAttributes": {"3DK5T4Eo": {}}, "dateOfBirth": "1974-02-20", "firstName": "0Y39UoYl", "language": "pv5bVAgt", "lastName": "sDhUTDUs", "status": "ACTIVE", "timeZone": "bQDjbTQu", "zipCode": "PMz2PTRl"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserProfile'
delete_file $TEMP_FILE

#- 30 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'kyU89ZPO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteUserProfile'
delete_file $TEMP_FILE

#- 31 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'w6zPFJ42' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetCustomAttributesInfo'
delete_file $TEMP_FILE

#- 32 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'cwmzBBSM' \
    --body '{"NcoAAOjK": {}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 33 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'NjfcYHm0' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetPrivateCustomAttributesInfo'
delete_file $TEMP_FILE

#- 34 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    '93aYgBU1' \
    --body '{"sqjyK0XH": {}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePrivateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 35 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    '45PaRSOF' \
    --body '{"status": "INACTIVE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserProfileStatus'
delete_file $TEMP_FILE

#- 36 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetTime'
delete_file $TEMP_FILE

#- 37 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetNamespaces'
delete_file $TEMP_FILE

#- 38 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'tu23REZ8' \
    'hRVX7LGO' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGeneratedUploadUrl'
delete_file $TEMP_FILE

#- 39 PublicGetCountries
$PYTHON -m $MODULE 'basic-public-get-countries' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCountries'
delete_file $TEMP_FILE

#- 40 PublicGetLanguages
$PYTHON -m $MODULE 'basic-public-get-languages' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetLanguages'
delete_file $TEMP_FILE

#- 41 PublicGetTimeZones
$PYTHON -m $MODULE 'basic-public-get-time-zones' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetTimeZones'
delete_file $TEMP_FILE

#- 42 PublicGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info-by-ids' \
    'vDdYiQS9' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserProfilePublicInfoByIds'
delete_file $TEMP_FILE

#- 43 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetNamespacePublisher'
delete_file $TEMP_FILE

#- 44 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetMyProfileInfo'
delete_file $TEMP_FILE

#- 45 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "i7mV1C91", "avatarSmallUrl": "pjG9gpxL", "avatarUrl": "6ycTQdvl", "customAttributes": {"n2LAuSQW": {}}, "dateOfBirth": "1986-10-24", "firstName": "6LFE1YHo", "language": "9m126ZWc", "lastName": "8hHtWvbN", "privateCustomAttributes": {"YqgUqslA": {}}, "timeZone": "rFPiHUIv", "zipCode": "aCv8kU9d"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMyProfile'
delete_file $TEMP_FILE

#- 46 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "BBpdsJLh", "avatarSmallUrl": "sVyExrkx", "avatarUrl": "oot0B7WO", "customAttributes": {"fercZdpM": {}}, "dateOfBirth": "1972-03-11", "firstName": "37Ds7YSf", "language": "ExaI3uzL", "lastName": "teMbFAlt", "privateCustomAttributes": {"4hr7HmOY": {}}, "timeZone": "iBA5ltAO"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'CreateMyProfile'
delete_file $TEMP_FILE

#- 47 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'GetMyZipCode'
delete_file $TEMP_FILE

#- 48 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "XmlG6eh1"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMyZipCode'
delete_file $TEMP_FILE

#- 49 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'dTdoTFpB' \
    --body '{"category": "IcuC1dQY", "description": "93OJnJ6T", "gameSessionId": "e9vD8ldz", "subcategory": "7Hu8AD79", "userId": "kdWunviz"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicReportUser'
delete_file $TEMP_FILE

#- 50 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'U0q1pHyh' \
    'hERoGgdr' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGeneratedUserUploadContentUrl'
delete_file $TEMP_FILE

#- 51 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'ysMizBGS' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserProfileInfo'
delete_file $TEMP_FILE

#- 52 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'RdP2l7DN' \
    --body '{"avatarLargeUrl": "SZ8Aq0Xi", "avatarSmallUrl": "PLQXSe07", "avatarUrl": "ZddOGTMl", "customAttributes": {"JjBwj9HJ": {}}, "dateOfBirth": "1987-12-05", "firstName": "KseEdSXR", "language": "DSvguauw", "lastName": "1xT7eMwS", "timeZone": "l9MLH0Nn", "zipCode": "TJ2ulNzB"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserProfile'
delete_file $TEMP_FILE

#- 53 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'vwJaQa54' \
    --body '{"avatarLargeUrl": "7JllvA8R", "avatarSmallUrl": "WSpabUt7", "avatarUrl": "xk6QxyWh", "customAttributes": {"fqoWfJw2": {}}, "dateOfBirth": "1978-04-24", "firstName": "WUqvPCZ2", "language": "HzT7NXmW", "lastName": "DlXsuNId", "timeZone": "QJR5lsNO"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicCreateUserProfile'
delete_file $TEMP_FILE

#- 54 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'lvkfwaSb' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetCustomAttributesInfo'
delete_file $TEMP_FILE

#- 55 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'nsuLCgTo' \
    --body '{"xuVTekJg": {}}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateCustomAttributesPartially'
delete_file $TEMP_FILE

#- 56 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'vg6h5HIp' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserProfilePublicInfo'
delete_file $TEMP_FILE

#- 57 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'H0DviplE' \
    --body '{"status": "ACTIVE"}' \
    --login_as client \
    >$TEMP_FILE 2>&1
update_status $? 'PublicUpdateUserProfileStatus'
delete_file $TEMP_FILE

delete_file 'tmp.dat'