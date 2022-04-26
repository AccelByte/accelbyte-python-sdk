#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..89"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 SingleAdminGetChannel
$PYTHON -m $MODULE 'ugc-single-admin-get-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
$PYTHON -m $MODULE 'ugc-admin-create-channel' \
    '{"name": "FtBxyZcD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "XBpGlsQu"}' \
    'Ju8vMf0I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'sJkTrd8I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "DcV2zXnT", "fileExtension": "KjXY1bPq", "name": "amiBxx9C", "preview": "s18EY84e", "subType": "kItqRzHU", "tags": ["1oh570KQ"], "type": "BVaewc72"}' \
    'krSha68n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "3Ynozp1C", "fileExtension": "2KmIQTuB", "name": "dNEUsxFb", "preview": "8CJ17M7D", "subType": "JZaMSxEC", "tags": ["bZbygyoa"], "type": "rORoeNHS"}' \
    'b8Rh3kgs' \
    '9qqJbnQs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'oBgiVpP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'Cm3yvASU' \
    'oxdxxFqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
$PYTHON -m $MODULE 'ugc-single-admin-get-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminSearchContent
$PYTHON -m $MODULE 'ugc-admin-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminSearchContent' test.out

#- 14 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'AGTJ8IEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetSpecificContent' test.out

#- 15 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'agEtp4w2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDownloadContentPreview' test.out

#- 16 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "9KOu9c19", "screenshotId": "R6XDqWHk"}]}' \
    'kP8npLEK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateScreenshots' test.out

#- 17 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "MfjiX7jp", "description": "kVZk3IaQ", "fileExtension": "jfif"}]}' \
    'mqGodOEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUploadContentScreenshot' test.out

#- 18 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    't9gPOj0c' \
    '6i0JkvIa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteContentScreenshot' test.out

#- 19 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'SingleAdminGetAllGroups' test.out

#- 20 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["s73ucYnF"], "name": "AJ3DK5T4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateGroup' test.out

#- 21 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'Eogg0Y39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetGroup' test.out

#- 22 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["UoYlpv5b"], "name": "VAgtsDhU"}' \
    'TDUscbQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminUpdateGroup' test.out

#- 23 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'jbTQuPMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminDeleteGroup' test.out

#- 24 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '2PTRlkyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminGetGroupContents' test.out

#- 25 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetTag' test.out

#- 26 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "89ZPOw6z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminCreateTag' test.out

#- 27 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "PFJ42cwm"}' \
    'zBBSMNco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateTag' test.out

#- 28 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'AAOjKNjf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminDeleteTag' test.out

#- 29 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetType' test.out

#- 30 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["cYHm093a"], "type": "YgBU1sqj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminCreateType' test.out

#- 31 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["yK0XH45P"], "type": "aRSOFQBt"}' \
    'u23REZ8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateType' test.out

#- 32 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'RVX7LGOv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminDeleteType' test.out

#- 33 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'DdYiQS9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetChannel' test.out

#- 34 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '7mV1C91p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAllUserChannels' test.out

#- 35 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "jG9gpxL6"}' \
    'ycTQdvln' \
    '2LAuSQWE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdateChannel' test.out

#- 36 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'XL6LFE1Y' \
    'Ho9m126Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteChannel' test.out

#- 37 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "Wc8hHtWv", "fileExtension": "bNYqgUqs", "name": "lArFPiHU", "preview": "IvaCv8kU", "subType": "9dBBpdsJ", "tags": ["LhsVyExr"], "type": "kxoot0B7"}' \
    'WOfercZd' \
    'pMci37Ds' \
    '7YSfExaI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateContentS3' test.out

#- 38 AdminUpdateContentDirect
eval_tap 0 38 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 39 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '3uzLteMb' \
    'FAlt4hr7' \
    'HmOYiBA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteContent' test.out

#- 40 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'ltAOXmlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetContent' test.out

#- 41 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    '6eh1dTdo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAllUserContents' test.out

#- 42 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'pBIcuC1d' \
    'QY93OJnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminHideUserContent' test.out

#- 43 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    '6Te9vD8l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetAllGroups' test.out

#- 44 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'dz7Hu8AD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserGroup' test.out

#- 45 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    '79kdWunv' \
    'izU0q1pH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetGroup' test.out

#- 46 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["yhhERoGg"], "name": "drysMizB"}' \
    'GSRdP2l7' \
    'DNSZ8Aq0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateGroup' test.out

#- 47 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'XiPLQXSe' \
    '07ZddOGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteGroup' test.out

#- 48 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'MlJjBwj9' \
    'HJHQKseE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroupContents' test.out

#- 49 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'dSXRDSvg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserStates' test.out

#- 50 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'uauw1xT7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SearchChannelSpecificContent' test.out

#- 51 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSearchContent' test.out

#- 52 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["eMwSl9ML"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGetContentBulk' test.out

#- 53 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetFollowedContent' test.out

#- 54 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetLikedContent' test.out

#- 55 DownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-download-content-by-share-code' \
    'H0NnTJ2u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DownloadContentByShareCode' test.out

#- 56 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'lNzBvwJa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByContentID' test.out

#- 57 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'Qa547Jll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AddDownloadCount' test.out

#- 58 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'A8RWSpab' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateContentLikeStatus' test.out

#- 59 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'Ut7xk6Qx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicDownloadContentPreview' test.out

#- 60 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetTag' test.out

#- 61 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetType' test.out

#- 62 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetFollowedUsers' test.out

#- 63 GetCreator
$PYTHON -m $MODULE 'ugc-get-creator' \
    'yWhfqoWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetCreator' test.out

#- 64 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'Jw2o8oWU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetChannels' test.out

#- 65 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "qvPCZ2Hz"}' \
    'T7NXmWDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'CreateChannel' test.out

#- 66 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'XsuNIdQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeleteAllUserChannel' test.out

#- 67 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "R5lsNOlv"}' \
    'kfwaSbns' \
    'uLCgToxu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'UpdateChannel' test.out

#- 68 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'VTekJgvg' \
    '6h5HIpH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteChannel' test.out

#- 69 CreateContentDirect
eval_tap 0 69 'CreateContentDirect # SKIP deprecated' test.out

#- 70 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "DviplEk4", "fileExtension": "vj3LDp4y", "name": "qDt8QUZD", "preview": "pxlHasin", "subType": "GcjrkmRM", "tags": ["ttgjDSaI"], "type": "VBmft3Ud"}' \
    'g7p9PGmY' \
    '2H5kX4Ms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'CreateContentS3' test.out

#- 71 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "isSX28nA", "fileExtension": "RxWRpv5o", "name": "u5xtvd28", "preview": "OUfCt8UJ", "subType": "C5flNyj6", "tags": ["HsTtX8P3"], "type": "llnaaS9l"}' \
    'qyygPcfk' \
    'JIxfQZza' \
    '8kNVbDxV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'UpdateContentS3' test.out

#- 72 UpdateContentDirect
eval_tap 0 72 'UpdateContentDirect # SKIP deprecated' test.out

#- 73 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'Mq7HJk0F' \
    '89xAc3YV' \
    'faENtrl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteContent' test.out

#- 74 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'pTKZTXqz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetUserContent' test.out

#- 75 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'HuBMYQSA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteAllUserContents' test.out

#- 76 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "2jz1ZOpd", "screenshotId": "OjSyMddB"}]}' \
    '41JuMf7R' \
    'UyBHRj8I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'UpdateScreenshots' test.out

#- 77 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "iRimRllH", "description": "T6Dc40vF", "fileExtension": "jfif"}]}' \
    'A6gpU7EW' \
    '3x1dCpm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UploadContentScreenshot' test.out

#- 78 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    '5gOeqQIq' \
    'cJVKmBM1' \
    'J1IbuTrr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteContentScreenshot' test.out

#- 79 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'bmuT1whO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateUserFollowStatus' test.out

#- 80 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'qmEnDXIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetPublicFollowers' test.out

#- 81 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'rBPlSay4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetPublicFollowing' test.out

#- 82 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    '6mv71BAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetGroups' test.out

#- 83 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["AOjtFJ2v"], "name": "mTj7tT7T"}' \
    'ZHWDdCkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'CreateGroup' test.out

#- 84 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'sZoArWwP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteAllUserGroup' test.out

#- 85 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'HcyFAdAt' \
    'YciLIgRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroup' test.out

#- 86 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["FRr0gwB9"], "name": "tz3vp99X"}' \
    'VlV8rK3t' \
    'E6n0smip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateGroup' test.out

#- 87 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    '1tw3L7cU' \
    'd9pqtv6J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteGroup' test.out

#- 88 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'fPZwcCVO' \
    'XcVa80Tm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroupContent' test.out

#- 89 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'CwtD2lAH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteAllUserStates' test.out


rm -f "tmp.dat"

exit $EXIT_CODE