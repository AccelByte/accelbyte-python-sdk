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
ugc-admin-create-channel '{"name": "EAxcVpFr"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "ttufHIRd"}' 'H9UzVRiX' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'bqlAw7r6' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "W2ktQG0h", "customAttributes": {"5JAav5kR": {}, "a62WopBJ": {}, "HPtcDs8b": {}}, "fileExtension": "BZLCXLx8", "name": "bbgorQeF", "preview": "bQ1g7qbP", "previewMetadata": {"previewContentType": "ngUNB1vR", "previewFileExtension": "odwpzS6D"}, "subType": "aDpv8N7Z", "tags": ["QVqGj6oD", "LjWjkY1a", "XlFcDtgO"], "type": "jchIua5t"}' 'WEIC32og' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "W7olvbTg", "customAttributes": {"rhRTcPiS": {}, "uL0Sly6X": {}, "M4OI18mA": {}}, "fileExtension": "QLnzjMf8", "name": "GZ2WBZqx", "payload": "YG3aREAu", "preview": "2D6QVKNC", "previewMetadata": {"previewContentType": "WP75TB0i", "previewFileExtension": "7pKxR8dl"}, "subType": "0zRVW4EZ", "tags": ["G9m0XcgG", "VbMqSszE", "8GHavj7A"], "type": "orKsxwko", "updateContentFile": true}' 'Z5MecdKi' '5r6QEa1y' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'sLEzth6m' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'XhzkzWkF' 'eZSoEAcB' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["dW19m4eu", "6d5tA5jU", "miTqpyhP"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'FdxLzFQN' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content '05MYzYiK' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'We5dNRlj' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "v7IPrDQQ", "screenshotId": "Rgat0Sev"}, {"description": "kLGMS0ly", "screenshotId": "uI9a2I9u"}, {"description": "6Vpbsx5w", "screenshotId": "8hqUI06U"}]}' 'pOXGSLmC' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "VuHOPlLl", "description": "kvR8sKgn", "fileExtension": "jpeg"}, {"contentType": "TeIv53HG", "description": "CiljvjKo", "fileExtension": "jpg"}, {"contentType": "qtPYokah", "description": "FjkQsfCa", "fileExtension": "png"}]}' 'Af8TgoNm' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '03VLisV6' 'zwPuo3td' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["6TC6I3lM", "jGSWN2la", "RlxfcjHf"], "name": "YakUCTqG"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'kE7wcWfD' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["slpJSqGA", "XQ0yYoNR", "Kd3IL5TA"], "name": "Q6iiPlSC"}' '2uE4o5Vw' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'do3fePqI' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'JA8IHtrk' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "mu0hpDDW"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "VAla2l5B"}' 'YNtIuS5S' --login_with_auth "Bearer foo"
ugc-admin-delete-tag '5XUdjsoq' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["wGyzzWi9", "gwQYv7t1", "o7TTr1Dm"], "type": "rhZv15T7"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["quIOvBMc", "aYmvCkGZ", "5dAgqxpB"], "type": "FmaLoxoz"}' 'r6wfNPX2' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'bOItRMvq' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'tlB2jJCS' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'QT279ZZP' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "YGu0rdlg"}' 'dWyOtXi3' 'choQrpOs' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'DBU5Sepj' 'ChB3V0v5' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "2Dlym6pu", "customAttributes": {"Q23xoJ8a": {}, "eCnaLpUK": {}, "p44YUDja": {}}, "fileExtension": "sWIPUvmE", "name": "ejtGeoyI", "payload": "Pa8ZRrvj", "preview": "j7il35MX", "previewMetadata": {"previewContentType": "bN9oCMNq", "previewFileExtension": "q98SjTvh"}, "subType": "ZNkSQ70D", "tags": ["0H6BXksU", "C9b6i5lZ", "C9xv32e8"], "type": "c5csSovo", "updateContentFile": true}' 'Qm8bwbmX' 'gdAPh1ET' 'hG96gAFK' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'K2WDgCcx' 'vONZm3Ee' 'ERmDnyeF' --login_with_auth "Bearer foo"
ugc-admin-get-content 'oF7VSZ6p' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'f3vneSD2' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'bn4Xxtu7' 'LQRENjEE' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'ztx1WsYS' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'iZqan0nS' --login_with_auth "Bearer foo"
ugc-admin-get-group 'BJroav91' 'GXlvPG6b' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["FYReVHQi", "pcCx9Zw5", "D2L7vIYh"], "name": "GGSyEW4Z"}' 'JJ42d3PB' 'ddN8S48l' --login_with_auth "Bearer foo"
ugc-admin-delete-group '9lyNApfl' 'xqMrj3oZ' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'k03QXcKM' 'DYDDxHSZ' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'jtqXyJ58' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'f7Gc26Sa' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["iGVkydwY", "WQG26yUZ", "NmTBcvrb"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'YCwZtxFH' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'yPLtI8il' --login_with_auth "Bearer foo"
ugc-add-download-count 'byDPUIj8' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'cekdqCt8' --login_with_auth "Bearer foo"
ugc-public-download-content-preview '1P1ktfIo' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'vmv9gsR5' --login_with_auth "Bearer foo"
ugc-get-channels 'cJcHm3SZ' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "LxoRDFuu"}' 'uySj29a9' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'LJE8HoRS' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "1X2PFAAM"}' 'wzHPxB1U' 'skYs4Yw2' --login_with_auth "Bearer foo"
ugc-delete-channel '0DOqOBSC' '2DKHRuPM' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "MWH8Yb33", "customAttributes": {"T5UBJCjf": {}, "cnLRfxeC": {}, "Sz9WEi8K": {}}, "fileExtension": "lloeH0JT", "name": "1yduat2v", "preview": "QR3biBfs", "previewMetadata": {"previewContentType": "u4jmsRE2", "previewFileExtension": "w1yEkLgh"}, "subType": "3tIYt4Sq", "tags": ["YUTLDx9g", "IiDandpG", "T2t24aOM"], "type": "h5eC3IHe"}' 'HSKLCa3x' 'reNDUWeh' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "wH3q31A8", "customAttributes": {"06DJgas4": {}, "b6z3LNUj": {}, "7fdgLA84": {}}, "fileExtension": "Z8YYk6QE", "name": "gJjBbEDo", "payload": "Nf3n0hEo", "preview": "RCAcf80z", "previewMetadata": {"previewContentType": "fFyabWAg", "previewFileExtension": "IUXiI07A"}, "subType": "68eaqC2J", "tags": ["9jyEW6GL", "bc0NaKDU", "L3sa13lk"], "type": "1dQBHO86", "updateContentFile": false}' 'Wn3CO39P' 'XDNxtXge' 'O3FgkXhj' --login_with_auth "Bearer foo"
ugc-delete-content 'DzaQY3sn' 'n2ZkP7cF' 'dP43e5dC' --login_with_auth "Bearer foo"
ugc-public-get-user-content '9XIBudfZ' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'grbHDIDm' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "4hMzF4Tx", "screenshotId": "odenSrUT"}, {"description": "vfqU0bfo", "screenshotId": "Mm5cTtFW"}, {"description": "botQyXJR", "screenshotId": "cQWsmqPN"}]}' 's92epxk0' 'i8VxsZNe' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "reSvf969", "description": "9mCEHThU", "fileExtension": "pjp"}, {"contentType": "CMNFIurj", "description": "h2imdb4r", "fileExtension": "bmp"}, {"contentType": "OkAYfJB8", "description": "AT9t4Tv2", "fileExtension": "pjp"}]}' '7Y2QD3oD' '5fLCr3OO' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'lXVv8ZGF' '7uYnGzpi' 'pNDigNJm' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'eFgPqaOk' --login_with_auth "Bearer foo"
ugc-get-public-followers 'vo1aolB4' --login_with_auth "Bearer foo"
ugc-get-public-following 'lkKB4EYO' --login_with_auth "Bearer foo"
ugc-get-groups 'kQ1jMD3c' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["ym8xIfkO", "VW2grREO", "Lx0KOww3"], "name": "HICQLfl7"}' 'MUBG7qtP' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'u64yAtUR' --login_with_auth "Bearer foo"
ugc-get-group 'KLRkb738' 'HGS6rDgM' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["dIIlhS1f", "SiM9331m", "7Ta1PsKc"], "name": "50Kv6ecn"}' 'EevcAx2K' '2zkRenmP' --login_with_auth "Bearer foo"
ugc-delete-group 'ZnGBt4P7' 'WnbdSJtj' --login_with_auth "Bearer foo"
ugc-get-group-content 'X7ZshZyZ' 'l5x4bRXB' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'HUTrDzZS' --login_with_auth "Bearer foo"
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
echo "1..92"

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
    '{"name": "KscfOcYu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "3dpCROYq"}' \
    'UiGKXVFC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'mpo6sPwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "OEDSJsEK", "customAttributes": {"5QpNhlI2": {}, "iS5EpGhh": {}, "vXYck0up": {}}, "fileExtension": "MzUYnb76", "name": "tFkEORV3", "preview": "bu1bNCtX", "previewMetadata": {"previewContentType": "7W40V6Do", "previewFileExtension": "5sYadCCF"}, "subType": "rHHC3DpZ", "tags": ["xkrQDXuN", "FviMarv8", "mnfHK8CC"], "type": "mE2lPnsb"}' \
    'D3SGEdlw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "uUccE536", "customAttributes": {"ugBp3HBv": {}, "epnDCjgy": {}, "JlXe36mg": {}}, "fileExtension": "WjLfFmte", "name": "ue9nzJ6f", "payload": "H24T805t", "preview": "Vg8JqU0j", "previewMetadata": {"previewContentType": "ZpjvsugA", "previewFileExtension": "OS7u8RiW"}, "subType": "yerCSa8S", "tags": ["RgwsAj1i", "k1jglaDX", "TvKCWwNT"], "type": "Ahd2wrS0", "updateContentFile": true}' \
    'htrHWwRV' \
    'nwVBOqOH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'i8pWGd1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'uYhiqjRJ' \
    'OqB5F93z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'SingleAdminDeleteContent' test.out

#- 12 SingleAdminGetContent
$PYTHON -m $MODULE 'ugc-single-admin-get-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'SingleAdminGetContent' test.out

#- 13 AdminGetContentBulk
$PYTHON -m $MODULE 'ugc-admin-get-content-bulk' \
    '{"contentIds": ["FQbJndUD", "pdONneAc", "zbBdHb2s"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetContentBulk' test.out

#- 14 AdminSearchContent
$PYTHON -m $MODULE 'ugc-admin-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminSearchContent' test.out

#- 15 AdminGetUserContentByShareCode
$PYTHON -m $MODULE 'ugc-admin-get-user-content-by-share-code' \
    'lt71B1Sm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'Zp2JZp50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'CnPb71OR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "YcmQbTU5", "screenshotId": "JX8ccLjM"}, {"description": "XJRk0eaK", "screenshotId": "QDOJvrTe"}, {"description": "fglSs6g4", "screenshotId": "iY9u02aC"}]}' \
    'NYIWekp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "8lOC3mNq", "description": "F7Bl0Lcg", "fileExtension": "bmp"}, {"contentType": "EIIlGcHB", "description": "3CfR3ncD", "fileExtension": "jfif"}, {"contentType": "1eMbEIjo", "description": "wLqc3ecj", "fileExtension": "pjp"}]}' \
    'JbZDKKox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'LE1Y3Dym' \
    'tj3giPg4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteContentScreenshot' test.out

#- 21 SingleAdminGetAllGroups
$PYTHON -m $MODULE 'ugc-single-admin-get-all-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'SingleAdminGetAllGroups' test.out

#- 22 AdminCreateGroup
$PYTHON -m $MODULE 'ugc-admin-create-group' \
    '{"contents": ["x4yiPX6u", "es1Hhhkg", "1yLVbLFz"], "name": "HEP8cM4N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'Twr0KHaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["smTej52W", "Ki6tArAU", "Rt9plCSV"], "name": "q8PdH6hJ"}' \
    'PUAc0RVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'XgAgntLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'CuaXBWQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'SingleAdminGetGroupContents' test.out

#- 27 AdminGetTag
$PYTHON -m $MODULE 'ugc-admin-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetTag' test.out

#- 28 AdminCreateTag
$PYTHON -m $MODULE 'ugc-admin-create-tag' \
    '{"tag": "6BqPg4xr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "0lCancUZ"}' \
    'GCHsZYoL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'fR1KtOv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminDeleteTag' test.out

#- 31 AdminGetType
$PYTHON -m $MODULE 'ugc-admin-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetType' test.out

#- 32 AdminCreateType
$PYTHON -m $MODULE 'ugc-admin-create-type' \
    '{"subtype": ["Zy0b65uv", "uKNuy0yt", "ZQ7M6Nzy"], "type": "1adnSKOL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["FKx1dX4L", "uWJu3pDM", "UAeeZ97S"], "type": "BROPYuG6"}' \
    'XqP6oo7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    '73zdxTgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'fnwIdlNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '29fDLh74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "1IslKHzG"}' \
    'lLKWUtDQ' \
    's61OQAox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'yyQpRWCi' \
    'iPDGQhNP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "EwiJCf2X", "customAttributes": {"JVrlzqQl": {}, "s1ozhLVA": {}, "3kE8jKvg": {}}, "fileExtension": "atOEBM70", "name": "TdlNBJYO", "payload": "mpu1VCar", "preview": "zBsV6xnZ", "previewMetadata": {"previewContentType": "5Jrzzjrc", "previewFileExtension": "aug6CWVG"}, "subType": "8SWP3glU", "tags": ["6muswVJn", "NnN7kAa7", "j0riFc5H"], "type": "THQIoVsG", "updateContentFile": false}' \
    'tRbRcrEv' \
    'eMdAdiPK' \
    'DUVSC00P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'YeDcaggi' \
    'nxnFIna3' \
    'yddcbsPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'eTH26IUJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'NvYuGRUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    '8X1A3PrI' \
    'fapq5AAe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'Me4L3mDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'ORBVXTII' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'JM9XsYII' \
    'ZxiXNMR9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["BgaWcFX3", "SUBhyoTs", "MWPAxUMk"], "name": "awaGpAyr"}' \
    'IwMif3BO' \
    'dkocVTd4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'BxqGWV6m' \
    'TJ0sQs6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'NbjvqhnU' \
    'VLWu8olK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'dxL6ozRm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'DD0jJvlf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'SearchChannelSpecificContent' test.out

#- 53 PublicSearchContent
$PYTHON -m $MODULE 'ugc-public-search-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicSearchContent' test.out

#- 54 PublicGetContentBulk
$PYTHON -m $MODULE 'ugc-public-get-content-bulk' \
    '{"contentIds": ["V5OemPYd", "YT7DROCj", "tuzFMbAG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGetContentBulk' test.out

#- 55 GetFollowedContent
$PYTHON -m $MODULE 'ugc-get-followed-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetFollowedContent' test.out

#- 56 GetLikedContent
$PYTHON -m $MODULE 'ugc-get-liked-content' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetLikedContent' test.out

#- 57 PublicDownloadContentByShareCode
$PYTHON -m $MODULE 'ugc-public-download-content-by-share-code' \
    '9YI89hmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'uB8FOTjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'Lo4b9rIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    '4DdrKF7S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'UQPLG59e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicDownloadContentPreview' test.out

#- 62 GetTag
$PYTHON -m $MODULE 'ugc-get-tag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetTag' test.out

#- 63 GetType
$PYTHON -m $MODULE 'ugc-get-type' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetType' test.out

#- 64 PublicSearchCreator
$PYTHON -m $MODULE 'ugc-public-search-creator' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicSearchCreator' test.out

#- 65 GetFollowedUsers
$PYTHON -m $MODULE 'ugc-get-followed-users' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetFollowedUsers' test.out

#- 66 PublicGetCreator
$PYTHON -m $MODULE 'ugc-public-get-creator' \
    '0k5ZtX6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'K7PpUlcI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "W32iK7MG"}' \
    't1ixY5rA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    '1WoVeJIe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "PF8ZrQzP"}' \
    '4zvtdxdb' \
    'ZUpd6FJt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'HJ1pyVwy' \
    'KQLY6FEO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "65Rb3z7C", "customAttributes": {"YLM8IlsH": {}, "qffnrfsG": {}, "lfPaZKBw": {}}, "fileExtension": "a3Ddb60u", "name": "fPpzwj1Q", "preview": "GIFmlVf4", "previewMetadata": {"previewContentType": "jvapseE9", "previewFileExtension": "LN9bvhOr"}, "subType": "HflIOd6X", "tags": ["3viLvtEk", "4mTIpUA9", "gxo8SV38"], "type": "nEhoXmM2"}' \
    'W7l6jHMA' \
    '2rG3nako' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "pAywelu0", "customAttributes": {"1nryEJ0N": {}, "qoTow0qi": {}, "OiC4j0ik": {}}, "fileExtension": "tm0ZPLkL", "name": "Osp0LZ5n", "payload": "jN86Hl8k", "preview": "UXzt6bSc", "previewMetadata": {"previewContentType": "6bWvgpVy", "previewFileExtension": "W9dD1kOm"}, "subType": "vrAejcq2", "tags": ["LgkQuaS7", "RBx3vim0", "2jBOxrZD"], "type": "yvpcLYOW", "updateContentFile": true}' \
    'ML52faXU' \
    'r9Sk4lq2' \
    'faBcAXXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'lhvyH8pa' \
    'OJtxqMPp' \
    'cVfRwNj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '47fH0XrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'EDpEY8Vn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "ocGAjci0", "screenshotId": "V3tBf2jn"}, {"description": "HGKXphn5", "screenshotId": "0c9tNLDl"}, {"description": "jhZ2jxLR", "screenshotId": "X3z46OCa"}]}' \
    'GBeMfPlN' \
    'os4yBRjr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "ERHEonAZ", "description": "R8GmEu0q", "fileExtension": "jfif"}, {"contentType": "p6QCyY6v", "description": "SkVFWdsb", "fileExtension": "pjp"}, {"contentType": "uVEGVxYh", "description": "eR3j5mNZ", "fileExtension": "jpeg"}]}' \
    '87pna08g' \
    'xefTYKhu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'xaEc7M4P' \
    '7UckSC6e' \
    'PeN8i4Gr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'uYQJ03BA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'HZ7c53q7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'akMpcmnn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'x6RVBrop' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["9v7aZK3h", "65hbN15z", "fQSfQrtf"], "name": "F3TQN0Oc"}' \
    'NDLr36vz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'ohZyjMQA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'g5mPYhrL' \
    'TyU8Ohgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["Y9JQYGF4", "bYXEcENx", "9xZlAcho"], "name": "b44lONDD"}' \
    'wMvgI0Hl' \
    'yPR7wZNi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'VsF6xG2m' \
    'XEQdbzIV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'y8alncV7' \
    'vWgSHdfo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    '07UctPEr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
