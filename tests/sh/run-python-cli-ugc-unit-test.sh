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

OPERATIONS_COUNT=84

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

#- 1 SingleAdminGetChannel
$PYTHON -m $MODULE 'ugc-single-admin-get-channel' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminGetChannel'
delete_file $TEMP_FILE

#- 2 AdminCreateChannel
$PYTHON -m $MODULE 'ugc-admin-create-channel' \
    '{"name": "FtBxyZcD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateChannel'
delete_file $TEMP_FILE

#- 3 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "XBpGlsQu"}' \
    'Ju8vMf0I' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminUpdateChannel'
delete_file $TEMP_FILE

#- 4 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'sJkTrd8I' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminDeleteChannel'
delete_file $TEMP_FILE

#- 5 AdminUploadContentDirect
update_status 0 'AdminUploadContentDirect (skipped deprecated)'

#- 6 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "DcV2zXnT", "fileExtension": "KjXY1bPq", "name": "amiBxx9C", "preview": "s18EY84e", "subType": "kItqRzHU", "tags": ["1oh570KQ"], "type": "BVaewc72"}' \
    'krSha68n' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUploadContentS3'
delete_file $TEMP_FILE

#- 7 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "3Ynozp1C", "fileExtension": "2KmIQTuB", "name": "dNEUsxFb", "preview": "8CJ17M7D", "subType": "JZaMSxEC", "tags": ["bZbygyoa"], "type": "rORoeNHS"}' \
    'b8Rh3kgs' \
    '9qqJbnQs' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminUpdateContentS3'
delete_file $TEMP_FILE

#- 8 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'oBgiVpP8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSearchChannelSpecificContent'
delete_file $TEMP_FILE

#- 9 SingleAdminUpdateContentDirect
update_status 0 'SingleAdminUpdateContentDirect (skipped deprecated)'

#- 10 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'Cm3yvASU' \
    'oxdxxFqm' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminDeleteContent'
delete_file $TEMP_FILE

#- 11 SingleAdminGetContent
$PYTHON -m $MODULE 'ugc-single-admin-get-content' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminGetContent'
delete_file $TEMP_FILE

#- 12 AdminSearchContent
$PYTHON -m $MODULE 'ugc-admin-search-content' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminSearchContent'
delete_file $TEMP_FILE

#- 13 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'AGTJ8IEd' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetSpecificContent'
delete_file $TEMP_FILE

#- 14 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'agEtp4w2' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDownloadContentPreview'
delete_file $TEMP_FILE

#- 15 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "9KOu9c19", "screenshotId": "R6XDqWHk"}]}' \
    'kP8npLEK' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateScreenshots'
delete_file $TEMP_FILE

#- 16 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "MfjiX7jp", "description": "kVZk3IaQ", "fileExtension": "jfif"}]}' \
    'mqGodOEG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUploadContentScreenshot'
delete_file $TEMP_FILE

#- 17 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    't9gPOj0c' \
    '6i0JkvIa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteContentScreenshot'
delete_file $TEMP_FILE

#- 18 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminGetAllGroups'
delete_file $TEMP_FILE

#- 19 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["s73ucYnF"], "name": "AJ3DK5T4"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateGroup'
delete_file $TEMP_FILE

#- 20 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'Eogg0Y39' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminGetGroup'
delete_file $TEMP_FILE

#- 21 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["UoYlpv5b"], "name": "VAgtsDhU"}' \
    'TDUscbQD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminUpdateGroup'
delete_file $TEMP_FILE

#- 22 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'jbTQuPMz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminDeleteGroup'
delete_file $TEMP_FILE

#- 23 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '2PTRlkyU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SingleAdminGetGroupContents'
delete_file $TEMP_FILE

#- 24 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetTag'
delete_file $TEMP_FILE

#- 25 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "89ZPOw6z"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateTag'
delete_file $TEMP_FILE

#- 26 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "PFJ42cwm"}' \
    'zBBSMNco' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateTag'
delete_file $TEMP_FILE

#- 27 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'AAOjKNjf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteTag'
delete_file $TEMP_FILE

#- 28 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetType'
delete_file $TEMP_FILE

#- 29 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["cYHm093a"], "type": "YgBU1sqj"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminCreateType'
delete_file $TEMP_FILE

#- 30 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["yK0XH45P"], "type": "aRSOFQBt"}' \
    'u23REZ8h' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateType'
delete_file $TEMP_FILE

#- 31 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'RVX7LGOv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteType'
delete_file $TEMP_FILE

#- 32 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'DdYiQS9i' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetChannel'
delete_file $TEMP_FILE

#- 33 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '7mV1C91p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteAllUserChannels'
delete_file $TEMP_FILE

#- 34 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "jG9gpxL6"}' \
    'ycTQdvln' \
    '2LAuSQWE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateChannel'
delete_file $TEMP_FILE

#- 35 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'XL6LFE1Y' \
    'Ho9m126Z' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteChannel'
delete_file $TEMP_FILE

#- 36 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "Wc8hHtWv", "fileExtension": "bNYqgUqs", "name": "lArFPiHU", "preview": "IvaCv8kU", "subType": "9dBBpdsJ", "tags": ["LhsVyExr"], "type": "kxoot0B7"}' \
    'WOfercZd' \
    'pMci37Ds' \
    '7YSfExaI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateContentS3'
delete_file $TEMP_FILE

#- 37 AdminUpdateContentDirect
update_status 0 'AdminUpdateContentDirect (skipped deprecated)'

#- 38 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '3uzLteMb' \
    'FAlt4hr7' \
    'HmOYiBA5' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteContent'
delete_file $TEMP_FILE

#- 39 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'ltAOXmlG' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetContent'
delete_file $TEMP_FILE

#- 40 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    '6eh1dTdo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteAllUserContents'
delete_file $TEMP_FILE

#- 41 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'pBIcuC1d' \
    'QY93OJnJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminHideUserContent'
delete_file $TEMP_FILE

#- 42 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    '6Te9vD8l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetAllGroups'
delete_file $TEMP_FILE

#- 43 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'dz7Hu8AD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteAllUserGroup'
delete_file $TEMP_FILE

#- 44 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    '79kdWunv' \
    'izU0q1pH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetGroup'
delete_file $TEMP_FILE

#- 45 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["yhhERoGg"], "name": "drysMizB"}' \
    'GSRdP2l7' \
    'DNSZ8Aq0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminUpdateGroup'
delete_file $TEMP_FILE

#- 46 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'XiPLQXSe' \
    '07ZddOGT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteGroup'
delete_file $TEMP_FILE

#- 47 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'MlJjBwj9' \
    'HJHQKseE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminGetGroupContents'
delete_file $TEMP_FILE

#- 48 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'dSXRDSvg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AdminDeleteAllUserStates'
delete_file $TEMP_FILE

#- 49 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'uauw1xT7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'SearchChannelSpecificContent'
delete_file $TEMP_FILE

#- 50 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicSearchContent'
delete_file $TEMP_FILE

#- 51 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetFollowedContent'
delete_file $TEMP_FILE

#- 52 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetLikedContent'
delete_file $TEMP_FILE

#- 53 DownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-download-content-by-share-code' \
    'eMwSl9ML' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DownloadContentByShareCode'
delete_file $TEMP_FILE

#- 54 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'H0NnTJ2u' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadContentByContentID'
delete_file $TEMP_FILE

#- 55 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'lNzBvwJa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AddDownloadCount'
delete_file $TEMP_FILE

#- 56 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    '547JllvA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateContentLikeStatus'
delete_file $TEMP_FILE

#- 57 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '8RWSpabU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicDownloadContentPreview'
delete_file $TEMP_FILE

#- 58 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetTag'
delete_file $TEMP_FILE

#- 59 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetType'
delete_file $TEMP_FILE

#- 60 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetFollowedUsers'
delete_file $TEMP_FILE

#- 61 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    't7xk6Qxy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetChannels'
delete_file $TEMP_FILE

#- 62 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "WhfqoWfJ"}' \
    'w2o8oWUq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateChannel'
delete_file $TEMP_FILE

#- 63 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'vPCZ2HzT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAllUserChannel'
delete_file $TEMP_FILE

#- 64 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "7NXmWDlX"}' \
    'suNIdQJR' \
    '5lsNOlvk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateChannel'
delete_file $TEMP_FILE

#- 65 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'fwaSbnsu' \
    'LCgToxuV' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteChannel'
delete_file $TEMP_FILE

#- 66 CreateContentDirect
update_status 0 'CreateContentDirect (skipped deprecated)'

#- 67 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "TekJgvg6", "fileExtension": "h5HIpH0D", "name": "viplEk4v", "preview": "j3LDp4yq", "subType": "Dt8QUZDp", "tags": ["xlHasinG"], "type": "cjrkmRMt"}' \
    'tgjDSaIV' \
    'Bmft3Udg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateContentS3'
delete_file $TEMP_FILE

#- 68 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "7p9PGmY2", "fileExtension": "H5kX4Msi", "name": "sSX28nAR", "preview": "xWRpv5ou", "subType": "5xtvd28O", "tags": ["UfCt8UJC"], "type": "5flNyj6H"}' \
    'sTtX8P3l' \
    'lnaaS9lq' \
    'yygPcfkJ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateContentS3'
delete_file $TEMP_FILE

#- 69 UpdateContentDirect
update_status 0 'UpdateContentDirect (skipped deprecated)'

#- 70 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'IxfQZza8' \
    'kNVbDxVM' \
    'q7HJk0F8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteContent'
delete_file $TEMP_FILE

#- 71 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '9xAc3YVf' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'PublicGetUserContent'
delete_file $TEMP_FILE

#- 72 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'aENtrl0p' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAllUserContents'
delete_file $TEMP_FILE

#- 73 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "TKZTXqzH", "screenshotId": "uBMYQSA2"}]}' \
    'jz1ZOpdO' \
    'jSyMddB4' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateScreenshots'
delete_file $TEMP_FILE

#- 74 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "1JuMf7RU", "description": "yBHRj8Ii", "fileExtension": "png"}]}' \
    'imRllHT6' \
    'Dc40vFFA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UploadContentScreenshot'
delete_file $TEMP_FILE

#- 75 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    '6gpU7EW3' \
    'x1dCpm55' \
    'gOeqQIqc' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteContentScreenshot'
delete_file $TEMP_FILE

#- 76 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'BM1J1Ibu' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateUserFollowStatus'
delete_file $TEMP_FILE

#- 77 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'TrrkbmuT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroups'
delete_file $TEMP_FILE

#- 78 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["1whOqmEn"], "name": "DXIWrBPl"}' \
    'Say46mv7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateGroup'
delete_file $TEMP_FILE

#- 79 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    '1BAZAOjt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAllUserGroup'
delete_file $TEMP_FILE

#- 80 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'FJ2vmTj7' \
    'tT7TZHWD' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroup'
delete_file $TEMP_FILE

#- 81 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["dCkIsZoA"], "name": "rWwPHcyF"}' \
    'AdAtYciL' \
    'IgRwFRr0' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroup'
delete_file $TEMP_FILE

#- 82 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'gwB9tz3v' \
    'p99XVlV8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroup'
delete_file $TEMP_FILE

#- 83 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'rK3tE6n0' \
    'smip1tw3' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupContent'
delete_file $TEMP_FILE

#- 84 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'L7cUd9pq' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteAllUserStates'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT