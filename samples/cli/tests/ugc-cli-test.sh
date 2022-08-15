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
ugc-admin-get-user-content-by-share-code 'kP8npLEK' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'MfjiX7jp' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'kVZk3IaQ' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "YEmqGodO", "screenshotId": "EGt9gPOj"}]}' '0c6i0Jkv' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "Ias73ucY", "description": "nFAJ3DK5", "fileExtension": "png"}]}' '4Eogg0Y3' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '9UoYlpv5' 'bVAgtsDh' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["UTDUscbQ"], "name": "DjbTQuPM"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'z2PTRlky' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["U89ZPOw6"], "name": "zPFJ42cw"}' 'mzBBSMNc' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'oAAOjKNj' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'fcYHm093' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "aYgBU1sq"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "jyK0XH45"}' 'PaRSOFQB' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'tu23REZ8' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["hRVX7LGO"], "type": "vDdYiQS9"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["i7mV1C91"], "type": "pjG9gpxL"}' '6ycTQdvl' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'n2LAuSQW' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'EXL6LFE1' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'YHo9m126' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "ZWc8hHtW"}' 'vbNYqgUq' 'slArFPiH' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'UIvaCv8k' 'U9dBBpds' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "JLhsVyEx", "fileExtension": "rkxoot0B", "name": "7WOfercZ", "preview": "dpMci37D", "previewMetadata": {"previewContentType": "s7YSfExa", "previewFileExtension": "I3uzLteM"}, "subType": "bFAlt4hr", "tags": ["7HmOYiBA"], "type": "5ltAOXml"}' 'G6eh1dTd' 'oTFpBIcu' 'C1dQY93O' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'JnJ6Te9v' 'D8ldz7Hu' '8AD79kdW' --login_with_auth "Bearer foo"
ugc-admin-get-content 'unvizU0q' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents '1pHyhhER' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'GgdrysMi' 'zBGSRdP2' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'l7DNSZ8A' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'q0XiPLQX' --login_with_auth "Bearer foo"
ugc-admin-get-group 'Se07ZddO' 'GTMlJjBw' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["j9HJHQKs"], "name": "eEdSXRDS"}' 'vguauw1x' 'T7eMwSl9' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'MLH0NnTJ' '2ulNzBvw' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'JaQa547J' 'llvA8RWS' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'pabUt7xk' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content '6QxyWhfq' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["oWfJw2o8"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'oWUqvPCZ' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id '2HzT7NXm' --login_with_auth "Bearer foo"
ugc-add-download-count 'WDlXsuNI' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'QJR5lsNO' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'lvkfwaSb' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'nsuLCgTo' --login_with_auth "Bearer foo"
ugc-get-channels 'xuVTekJg' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "vg6h5HIp"}' 'H0DviplE' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'k4vj3LDp' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "4yqDt8QU"}' 'ZDpxlHas' 'inGcjrkm' --login_with_auth "Bearer foo"
ugc-delete-channel 'RMttgjDS' 'aIVBmft3' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "Udg7p9PG", "fileExtension": "mY2H5kX4", "name": "MsisSX28", "preview": "nARxWRpv", "previewMetadata": {"previewContentType": "5ou5xtvd", "previewFileExtension": "28OUfCt8"}, "subType": "UJC5flNy", "tags": ["j6HsTtX8"], "type": "P3llnaaS"}' '9lqyygPc' 'fkJIxfQZ' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "za8kNVbD", "fileExtension": "xVMq7HJk", "name": "0F89xAc3", "preview": "YVfaENtr", "previewMetadata": {"previewContentType": "l0pTKZTX", "previewFileExtension": "qzHuBMYQ"}, "subType": "SA2jz1ZO", "tags": ["pdOjSyMd"], "type": "dB41JuMf"}' '7RUyBHRj' '8IiRimRl' 'lHT6Dc40' --login_with_auth "Bearer foo"
ugc-delete-content 'vFFA6gpU' '7EW3x1dC' 'pm55gOeq' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'QIqcJVKm' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'BM1J1Ibu' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "TrrkbmuT", "screenshotId": "1whOqmEn"}]}' 'DXIWrBPl' 'Say46mv7' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "1BAZAOjt", "description": "FJ2vmTj7", "fileExtension": "jpeg"}]}' 'T7TZHWDd' 'CkIsZoAr' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'WwPHcyFA' 'dAtYciLI' 'gRwFRr0g' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'B9tz3vp9' --login_with_auth "Bearer foo"
ugc-get-public-followers '9XVlV8rK' --login_with_auth "Bearer foo"
ugc-get-public-following '3tE6n0sm' --login_with_auth "Bearer foo"
ugc-get-groups 'ip1tw3L7' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["cUd9pqtv"], "name": "6JfPZwcC"}' 'VOXcVa80' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'TmCwtD2l' --login_with_auth "Bearer foo"
ugc-get-group 'AH01o6Nd' 'cBIgzrDy' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["WpFBYGmm"], "name": "BawMyoKy"}' 'NpdAasm8' 'xwUfzOlQ' --login_with_auth "Bearer foo"
ugc-delete-group 'iZY4NbOQ' 'XJ7uOTzN' --login_with_auth "Bearer foo"
ugc-get-group-content 'Mvuq2tNl' '4CX4IjiK' --login_with_auth "Bearer foo"
ugc-delete-all-user-states '4DEUJRVK' --login_with_auth "Bearer foo"
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
echo "1..91"

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
    '{"name": "3l9Eb0R1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "XRb0RH8v"}' \
    'S1smeOln' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'grdTXCza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "PBtkZMio", "fileExtension": "4wcyhloV", "name": "S3rYp8Qt", "preview": "cEmCEVc7", "previewMetadata": {"previewContentType": "5UfeypWj", "previewFileExtension": "DNhzCL5s"}, "subType": "WS2qwO76", "tags": ["3iEklkzL"], "type": "m88LpLuY"}' \
    'RO3C55yH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "pwK2Jaqe", "fileExtension": "nDGn7a2N", "name": "UplWiLjq", "preview": "06n6a0rW", "previewMetadata": {"previewContentType": "8EfkpaXt", "previewFileExtension": "wYZJaQ4W"}, "subType": "bwNmsFYe", "tags": ["tjEurH8e"], "type": "loJzNKtR"}' \
    'UaTz1ETd' \
    'smwzjkkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    '9oiQl05g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '7cO3ZMb6' \
    'Ojlo6DMN' \
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

#- 14 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'pP2qMrTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    '1UpjfU6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'Jhy1jOVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "kUlS7952", "screenshotId": "7EZ25Ia8"}]}' \
    'uCeZFlLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "EVpDAEbA", "description": "82jy74lq", "fileExtension": "jfif"}]}' \
    'DE5xRwh5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'b45ebpcM' \
    '7ScSs3UO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteContentScreenshot' test.out

#- 20 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'SingleAdminGetAllGroups' test.out

#- 21 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["pAwIp9rR"], "name": "tn1PcCxd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'bumeYgOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["EBWRQiW3"], "name": "KFfU8icH"}' \
    '4081gRB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'GyLfLg4R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'YuEbgUDE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminGetGroupContents' test.out

#- 26 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminGetTag' test.out

#- 27 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "cJyIvsPw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "Or0BmV5i"}' \
    'FvfwFjTS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'mIEqoLyL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminDeleteTag' test.out

#- 30 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetType' test.out

#- 31 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["eUGmomGX"], "type": "9sXTZ0v8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["pqLfc5Sw"], "type": "GnReUULD"}' \
    'X4QUIbb5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'nh68ZnyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'tRvW9hNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'SFTtFrOm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "jkFrFVA8"}' \
    't0xF34Xp' \
    't6ZlTTic' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    '0kr2a0nI' \
    '2oo7UHCJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "K5sp0aCv", "fileExtension": "Iq3aHVYI", "name": "lewLRuHY", "preview": "83bGj0HT", "previewMetadata": {"previewContentType": "eeWXlIcR", "previewFileExtension": "idqctDpy"}, "subType": "gY0ax476", "tags": ["ED4MMO9T"], "type": "w2JH0qhW"}' \
    'IwHWTgzJ' \
    'FRYw6t1I' \
    'KZLO6V4O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'de46QmCi' \
    'dgdpP7RT' \
    'C587lmUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'BziPZBnp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'Ofkllxfq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'rSjw5Hog' \
    '0blM1d5M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'StYGczLI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'NlEC0OEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'E3yzIsUP' \
    '0NjluOrG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["ZTzsLW7F"], "name": "jfs9nIkc"}' \
    'Z38fUEan' \
    'jKHbXfk1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'zxdzxg0U' \
    'XcRyHi3u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    '8BzVWu1t' \
    'OmhUtCgc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'pvGrEbcZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'UDExH1ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SearchChannelSpecificContent' test.out

#- 52 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicSearchContent' test.out

#- 53 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["yOGXIHzM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGetContentBulk' test.out

#- 54 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetFollowedContent' test.out

#- 55 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetLikedContent' test.out

#- 56 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    'RjMCtOJs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'Eijlrbpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'yEcQxVgJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'MZqcWfMl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    '6dqrpD4t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicDownloadContentPreview' test.out

#- 61 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetTag' test.out

#- 62 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetType' test.out

#- 63 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicSearchCreator' test.out

#- 64 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetFollowedUsers' test.out

#- 65 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    'nc3ZRB3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'kdtPfAJE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "omwenJvQ"}' \
    '8grtQSv6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'EcALcMIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "ms5bT51M"}' \
    '4yko8S0E' \
    'nGLvGvfu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'SyCTyjj4' \
    'mCaiuMGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "OF5GJJoo", "fileExtension": "SXUl3YU3", "name": "5QHGpBAB", "preview": "nOlxDznI", "previewMetadata": {"previewContentType": "CQVyqBg3", "previewFileExtension": "4WTtDkn0"}, "subType": "rtn6t0Yx", "tags": ["4z12EaQ1"], "type": "rUQYCNTi"}' \
    'DX4jE3M2' \
    'IsTHu8Qw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "NyOlXfIW", "fileExtension": "d0mcq5T4", "name": "SUc7cWfC", "preview": "KK6Dij1g", "previewMetadata": {"previewContentType": "FcenEMyS", "previewFileExtension": "PfhxBenD"}, "subType": "iTiAqFYm", "tags": ["FKjaELmm"], "type": "ll6oexId"}' \
    '1OKGUN2U' \
    'znd7uVa7' \
    't14yvSYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'V52bHifC' \
    'If4tsuu6' \
    'Pkam6tFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'YFt4ZxA2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'PzZFRkBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "lg6hn5qu", "screenshotId": "sKyZAuV6"}]}' \
    'uUvqM0lV' \
    '6UZMlEbx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "HNgJRiQE", "description": "xaunjdAq", "fileExtension": "jfif"}]}' \
    'HUz44tx4' \
    'O6hamPwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'oi071ezD' \
    'K56JFIGe' \
    '1IMUCLcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'saD5FyBs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'Fe9OYEJV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'sYffmhyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    '6J25PrM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["S3cB8m17"], "name": "hEeLLgoa"}' \
    'Yth6zcf8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'eA45OMvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'bWejo9Lf' \
    'GeegJMaB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["GR6D1ZoZ"], "name": "EZQkJ8DS"}' \
    'qFnhdKvj' \
    'FCFbSFlE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'WoMPdgK5' \
    'zn62mhnF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'SpCTlDNB' \
    'Ocygvv2L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'AgfBGVza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
