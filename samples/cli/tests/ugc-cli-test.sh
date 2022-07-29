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
ugc-single-admin-get-channel --login_with_auth "Bearer foo"
ugc-admin-create-channel '{"name": "FtBxyZcD"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "XBpGlsQu"}' 'Ju8vMf0I' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'sJkTrd8I' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "DcV2zXnT", "fileExtension": "KjXY1bPq", "name": "amiBxx9C", "preview": "s18EY84e", "previewMetadata": {"previewContentType": "kItqRzHU", "previewFileExtension": "1oh570KQ"}, "subType": "BVaewc72", "tags": ["krSha68n"], "type": "3Ynozp1C"}' '2KmIQTuB' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "dNEUsxFb", "fileExtension": "8CJ17M7D", "name": "JZaMSxEC", "preview": "bZbygyoa", "previewMetadata": {"previewContentType": "rORoeNHS", "previewFileExtension": "b8Rh3kgs"}, "subType": "9qqJbnQs", "tags": ["oBgiVpP8"], "type": "Cm3yvASU"}' 'oxdxxFqm' 'AGTJ8IEd' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'agEtp4w2' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content '9KOu9c19' 'R6XDqWHk' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'kP8npLEK' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'MfjiX7jp' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "kVZk3IaQ", "screenshotId": "YEmqGodO"}]}' 'EGt9gPOj' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "0c6i0Jkv", "description": "Ias73ucY", "fileExtension": "jfif"}]}' 'FAJ3DK5T' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '4Eogg0Y3' '9UoYlpv5' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["bVAgtsDh"], "name": "UTDUscbQ"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'DjbTQuPM' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["z2PTRlky"], "name": "U89ZPOw6"}' 'zPFJ42cw' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'mzBBSMNc' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'oAAOjKNj' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "fcYHm093"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "aYgBU1sq"}' 'jyK0XH45' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'PaRSOFQB' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["tu23REZ8"], "type": "hRVX7LGO"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["vDdYiQS9"], "type": "i7mV1C91"}' 'pjG9gpxL' --login_with_auth "Bearer foo"
ugc-admin-delete-type '6ycTQdvl' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'n2LAuSQW' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'EXL6LFE1' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "YHo9m126"}' 'ZWc8hHtW' 'vbNYqgUq' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'slArFPiH' 'UIvaCv8k' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "U9dBBpds", "fileExtension": "JLhsVyEx", "name": "rkxoot0B", "preview": "7WOfercZ", "previewMetadata": {"previewContentType": "dpMci37D", "previewFileExtension": "s7YSfExa"}, "subType": "I3uzLteM", "tags": ["bFAlt4hr"], "type": "7HmOYiBA"}' '5ltAOXml' 'G6eh1dTd' 'oTFpBIcu' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'C1dQY93O' 'JnJ6Te9v' 'D8ldz7Hu' --login_with_auth "Bearer foo"
ugc-admin-get-content '8AD79kdW' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'unvizU0q' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'HyhhERoG' 'gdrysMiz' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'BGSRdP2l' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group '7DNSZ8Aq' --login_with_auth "Bearer foo"
ugc-admin-get-group '0XiPLQXS' 'e07ZddOG' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["TMlJjBwj"], "name": "9HJHQKse"}' 'EdSXRDSv' 'guauw1xT' --login_with_auth "Bearer foo"
ugc-admin-delete-group '7eMwSl9M' 'LH0NnTJ2' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'ulNzBvwJ' 'aQa547Jl' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'lvA8RWSp' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'abUt7xk6' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["QxyWhfqo"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-download-content-by-share-code 'WfJw2o8o' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'WUqvPCZ2' --login_with_auth "Bearer foo"
ugc-add-download-count 'HzT7NXmW' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'lXsuNIdQ' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'JR5lsNOl' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'vkfwaSbn' --login_with_auth "Bearer foo"
ugc-get-channels 'suLCgTox' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "uVTekJgv"}' 'g6h5HIpH' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel '0DviplEk' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "4vj3LDp4"}' 'yqDt8QUZ' 'DpxlHasi' --login_with_auth "Bearer foo"
ugc-delete-channel 'nGcjrkmR' 'MttgjDSa' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "IVBmft3U", "fileExtension": "dg7p9PGm", "name": "Y2H5kX4M", "preview": "sisSX28n", "previewMetadata": {"previewContentType": "ARxWRpv5", "previewFileExtension": "ou5xtvd2"}, "subType": "8OUfCt8U", "tags": ["JC5flNyj"], "type": "6HsTtX8P"}' '3llnaaS9' 'lqyygPcf' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "kJIxfQZz", "fileExtension": "a8kNVbDx", "name": "VMq7HJk0", "preview": "F89xAc3Y", "previewMetadata": {"previewContentType": "VfaENtrl", "previewFileExtension": "0pTKZTXq"}, "subType": "zHuBMYQS", "tags": ["A2jz1ZOp"], "type": "dOjSyMdd"}' 'B41JuMf7' 'RUyBHRj8' 'IiRimRll' --login_with_auth "Bearer foo"
ugc-delete-content 'HT6Dc40v' 'FFA6gpU7' 'EW3x1dCp' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'm55gOeqQ' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'IqcJVKmB' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "M1J1IbuT", "screenshotId": "rrkbmuT1"}]}' 'whOqmEnD' 'XIWrBPlS' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "ay46mv71", "description": "BAZAOjtF", "fileExtension": "pjp"}]}' '2vmTj7tT' '7TZHWDdC' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'kIsZoArW' 'wPHcyFAd' 'AtYciLIg' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'FRr0gwB9' --login_with_auth "Bearer foo"
ugc-get-public-followers 'tz3vp99X' --login_with_auth "Bearer foo"
ugc-get-public-following 'VlV8rK3t' --login_with_auth "Bearer foo"
ugc-get-groups 'E6n0smip' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["1tw3L7cU"], "name": "d9pqtv6J"}' 'fPZwcCVO' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'XcVa80Tm' --login_with_auth "Bearer foo"
ugc-get-group 'CwtD2lAH' '01o6NdcB' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["IgzrDyWp"], "name": "FBYGmmBa"}' 'wMyoKyNp' 'dAasm8xw' --login_with_auth "Bearer foo"
ugc-delete-group 'UfzOlQiZ' 'Y4NbOQXJ' --login_with_auth "Bearer foo"
ugc-get-group-content '7uOTzNMv' 'uq2tNl4C' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'X4IjiK4D' --login_with_auth "Bearer foo"
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
echo "1..90"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 SingleAdminGetChannel
$PYTHON -m $MODULE 'ugc-single-admin-get-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'SingleAdminGetChannel' test.out

#- 3 AdminCreateChannel
$PYTHON -m $MODULE 'ugc-admin-create-channel' \
    '{"name": "EUJRVK3l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "9Eb0R1XR"}' \
    'b0RH8vS1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'smeOlngr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "dTXCzaPB", "fileExtension": "tkZMio4w", "name": "cyhloVS3", "preview": "rYp8QtcE", "previewMetadata": {"previewContentType": "mCEVc75U", "previewFileExtension": "feypWjDN"}, "subType": "hzCL5sWS", "tags": ["2qwO763i"], "type": "EklkzLm8"}' \
    '8LpLuYRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "3C55yHpw", "fileExtension": "K2JaqenD", "name": "Gn7a2NUp", "preview": "lWiLjq06", "previewMetadata": {"previewContentType": "n6a0rW8E", "previewFileExtension": "fkpaXtwY"}, "subType": "ZJaQ4Wbw", "tags": ["NmsFYetj"], "type": "EurH8elo"}' \
    'JzNKtRUa' \
    'Tz1ETdsm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'wzjkkn9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'iQl05g7c' \
    'O3ZMb6Oj' \
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
    'lo6DMNpP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetSpecificContent' test.out

#- 15 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    '2qMrTQ1U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDownloadContentPreview' test.out

#- 16 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "pjfU6wJh", "screenshotId": "y1jOVkkU"}]}' \
    'lS79527E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateScreenshots' test.out

#- 17 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "Z25Ia8uC", "description": "eZFlLtEV", "fileExtension": "jfif"}]}' \
    'DAEbA82j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUploadContentScreenshot' test.out

#- 18 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'y74lq0pD' \
    'E5xRwh5b' \
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
    '{"contents": ["45ebpcM7"], "name": "ScSs3UOp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCreateGroup' test.out

#- 21 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'AwIp9rRt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetGroup' test.out

#- 22 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["n1PcCxdb"], "name": "umeYgOdE"}' \
    'BWRQiW3K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminUpdateGroup' test.out

#- 23 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'FfU8icH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminDeleteGroup' test.out

#- 24 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    '081gRB1G' \
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
    '{"tag": "yLfLg4RY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminCreateTag' test.out

#- 27 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "uEbgUDEc"}' \
    'JyIvsPwO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateTag' test.out

#- 28 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'r0BmV5iF' \
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
    '{"subtype": ["vfwFjTSm"], "type": "IEqoLyLe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminCreateType' test.out

#- 31 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["UGmomGX9"], "type": "sXTZ0v8p"}' \
    'qLfc5SwG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateType' test.out

#- 32 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'nReUULDX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminDeleteType' test.out

#- 33 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    '4QUIbb5n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetChannel' test.out

#- 34 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'h68ZnyUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteAllUserChannels' test.out

#- 35 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "RvW9hNBS"}' \
    'FTtFrOmj' \
    'kFrFVA8t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminUpdateChannel' test.out

#- 36 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    '0xF34Xpt' \
    '6ZlTTic0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteChannel' test.out

#- 37 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "kr2a0nI2", "fileExtension": "oo7UHCJK", "name": "5sp0aCvI", "preview": "q3aHVYIl", "previewMetadata": {"previewContentType": "ewLRuHY8", "previewFileExtension": "3bGj0HTe"}, "subType": "eWXlIcRi", "tags": ["dqctDpyg"], "type": "Y0ax476E"}' \
    'D4MMO9Tw' \
    '2JH0qhWI' \
    'wHWTgzJF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateContentS3' test.out

#- 38 AdminUpdateContentDirect
eval_tap 0 38 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 39 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'RYw6t1IK' \
    'ZLO6V4Od' \
    'e46QmCid' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteContent' test.out

#- 40 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'gdpP7RTC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetContent' test.out

#- 41 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    '587lmUmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteAllUserContents' test.out

#- 42 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'iPZBnpOf' \
    'kllxfq0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminHideUserContent' test.out

#- 43 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'srSjw5Ho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetAllGroups' test.out

#- 44 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'g0blM1d5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteAllUserGroup' test.out

#- 45 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'MStYGczL' \
    'INlEC0OE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetGroup' test.out

#- 46 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["sE3yzIsU"], "name": "P0NjluOr"}' \
    'GZTzsLW7' \
    'Fjfs9nIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminUpdateGroup' test.out

#- 47 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'cZ38fUEa' \
    'njKHbXfk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminDeleteGroup' test.out

#- 48 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    '1zxdzxg0' \
    'UXcRyHi3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetGroupContents' test.out

#- 49 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'u8BzVWu1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteAllUserStates' test.out

#- 50 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'tOmhUtCg' \
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
    '{"contentIds": ["cpvGrEbc"]}' \
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
    'ZUDExH1t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DownloadContentByShareCode' test.out

#- 56 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'ayOGXIHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByContentID' test.out

#- 57 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'MRjMCtOJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AddDownloadCount' test.out

#- 58 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'Eijlrbpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateContentLikeStatus' test.out

#- 59 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'yEcQxVgJ' \
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

#- 62 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicSearchCreator' test.out

#- 63 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetFollowedUsers' test.out

#- 64 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'IjMZqcWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCreator' test.out

#- 65 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'Ml6dqrpD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetChannels' test.out

#- 66 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "4tnc3ZRB"}' \
    '3IkdtPfA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'CreateChannel' test.out

#- 67 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'JEomwenJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteAllUserChannel' test.out

#- 68 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "vQ8grtQS"}' \
    'v6EcALcM' \
    'IPms5bT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'UpdateChannel' test.out

#- 69 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    '1M4yko8S' \
    '0EnGLvGv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteChannel' test.out

#- 70 CreateContentDirect
eval_tap 0 70 'CreateContentDirect # SKIP deprecated' test.out

#- 71 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "fuSyCTyj", "fileExtension": "j4mCaiuM", "name": "GKOF5GJJ", "preview": "ooSXUl3Y", "previewMetadata": {"previewContentType": "U35QHGpB", "previewFileExtension": "ABnOlxDz"}, "subType": "nICQVyqB", "tags": ["g34WTtDk"], "type": "n0rtn6t0"}' \
    'Yx4z12Ea' \
    'Q1rUQYCN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'CreateContentS3' test.out

#- 72 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "TiDX4jE3", "fileExtension": "M2IsTHu8", "name": "QwNyOlXf", "preview": "IWd0mcq5", "previewMetadata": {"previewContentType": "T4SUc7cW", "previewFileExtension": "fCKK6Dij"}, "subType": "1gFcenEM", "tags": ["ySPfhxBe"], "type": "nDiTiAqF"}' \
    'YmFKjaEL' \
    'mmll6oex' \
    'Id1OKGUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateContentS3' test.out

#- 73 UpdateContentDirect
eval_tap 0 73 'UpdateContentDirect # SKIP deprecated' test.out

#- 74 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    '2Uznd7uV' \
    'a7t14yvS' \
    'YSV52bHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteContent' test.out

#- 75 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'fCIf4tsu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicGetUserContent' test.out

#- 76 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'u6Pkam6t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteAllUserContents' test.out

#- 77 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "FSYFt4Zx", "screenshotId": "A2PzZFRk"}]}' \
    'BNlg6hn5' \
    'qusKyZAu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'UpdateScreenshots' test.out

#- 78 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "V6uUvqM0", "description": "lV6UZMlE", "fileExtension": "bmp"}]}' \
    'xHNgJRiQ' \
    'ExaunjdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UploadContentScreenshot' test.out

#- 79 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'qnHUz44t' \
    'x4O6hamP' \
    'wNoi071e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteContentScreenshot' test.out

#- 80 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'DK56JFIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UpdateUserFollowStatus' test.out

#- 81 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'e1IMUCLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'GetPublicFollowers' test.out

#- 82 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'N0DsaD5F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowing' test.out

#- 83 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'yBsFe9OY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetGroups' test.out

#- 84 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["EJVsYffm"], "name": "hyx6J25P"}' \
    'rM4S3cB8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'CreateGroup' test.out

#- 85 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'm17hEeLL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteAllUserGroup' test.out

#- 86 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'goaYth6z' \
    'cf8eA45O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetGroup' test.out

#- 87 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["MvObWejo"], "name": "9LfGeegJ"}' \
    'MaBGR6D1' \
    'ZoZEZQkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'UpdateGroup' test.out

#- 88 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    '8DSqFnhd' \
    'KvjFCFbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'DeleteGroup' test.out

#- 89 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'FlEWoMPd' \
    'gK5zn62m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'GetGroupContent' test.out

#- 90 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'hnFSpCTl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
