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
ugc-admin-create-channel '{"name": "OiDzFkcY"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "0YsTOKWO"}' 'xzEBSQI0' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'Fyh6ARH7' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "g4RcsnBC", "fileExtension": "8vtv1l8c", "name": "lTbDivYC", "preview": "O98xvkSx", "previewMetadata": {"previewContentType": "6KKSsN5H", "previewFileExtension": "nzVgYRzy"}, "subType": "19YfgKXc", "tags": ["i6yprc3E", "aROWhHmq", "GBQ3IMnA"], "type": "WnKCVMhx"}' 'VbNGq4lt' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "dveZ0VV1", "fileExtension": "H06s3eyL", "name": "qhN5rsDY", "preview": "A23sOyn0", "previewMetadata": {"previewContentType": "f9RirZF4", "previewFileExtension": "6lT6q56R"}, "subType": "Ym0IKEmZ", "tags": ["Gz6Rtl3M", "idmn6FJq", "5XbPapy1"], "type": "8Fj4gNKz"}' 'oOimwi1K' 'V10OEWfC' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'Arwzrjy8' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'JaB9Bm7d' 'rZjGWP5X' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'Xrdj3UZu' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'vmWmIgso' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'rFIglfou' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "YWCtJfrY", "screenshotId": "6CbsxRDa"}, {"description": "0utbnH31", "screenshotId": "hEAWGDen"}, {"description": "uO8UjAVX", "screenshotId": "lEWifjnr"}]}' 'FcQWBO58' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "oStOfcqK", "description": "hNEJ3FzM", "fileExtension": "jpeg"}, {"contentType": "YBG2TCMX", "description": "Vn4mPSUm", "fileExtension": "pjp"}, {"contentType": "oX6M1Gby", "description": "cqlosc6C", "fileExtension": "jfif"}]}' 'Fs9RJVil' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '74JWDRUR' 'g0Zpq0hb' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["gF4ZkCuu", "nbLJHF5D", "nkpJcG3K"], "name": "DL3JPqfn"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'd1GkctyE' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["SYmjV0fn", "LtCPOuYk", "hX8VzwpU"], "name": "DcfBD3bm"}' 'x8BGn3mr' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'UaHBsmDT' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'Z01LxXRi' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "iMw7t4bL"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "gwZ9qad4"}' 'K1kmMjAc' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'gMDqIaxd' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["BjETsUcA", "0pXzW1pd", "ie2vnbV1"], "type": "tsnbYfMP"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["n7ounBjJ", "s5N6gLa9", "40DGsI4Y"], "type": "f6JiXAUo"}' 'jXmHdrjk' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'iEUZKs5K' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'ECQMyHll' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'wkugPZZu' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "0nlJsVKy"}' 'BemrVY4a' 'sEul2nGQ' --login_with_auth "Bearer foo"
ugc-admin-delete-channel '5L2DwqLr' '5HPML4VM' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "L7haSp0j", "fileExtension": "vswCQWDX", "name": "Zy66L1Bu", "preview": "Nhb71OV3", "previewMetadata": {"previewContentType": "ZC3cK6r5", "previewFileExtension": "2wYMkkQu"}, "subType": "QOJ8Fly1", "tags": ["k8S7UiBg", "gnWTYRNc", "nkWkmnsE"], "type": "Tfj06eCA"}' 'ul0jAcIv' 'ml5BIQfm' 'PUrSUt1L' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'KdXrtSjR' 'SJkRzdIs' 'g4S5UasV' --login_with_auth "Bearer foo"
ugc-admin-get-content 'hZaJYUzE' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'QUVQqxEK' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": false}' 'yDS20BO2' '77z72lst' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'RuTO92dr' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'xKm8gUAC' --login_with_auth "Bearer foo"
ugc-admin-get-group 'b7yU0ocr' 'eSCx9pL2' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["IYpEGsvZ", "gR6FdKfJ", "w8TFDF0M"], "name": "2hl2VZ6j"}' 'ZfZjfldk' 'Ner7Wmlm' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'p8hw6djM' '27RxWo0X' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'TsBrTRV1' 'lGS85DX7' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'z0BuMSG5' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'McdKy0RM' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["BwWQ2Jeh", "CnCVo16c", "8YFfDfvg"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'Ax6xe7HP' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'mnZ8ZC4U' --login_with_auth "Bearer foo"
ugc-add-download-count 'AjUWqzjG' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'SxAPd3L1' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'gRDnku94' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'pRuRWfzm' --login_with_auth "Bearer foo"
ugc-get-channels 'zNFVo4q9' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "dpd0eDlE"}' 'Ar9koWdT' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'YDtkfCB4' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "2ixn7VyR"}' '9ANcnfGb' 'HBbT8Snk' --login_with_auth "Bearer foo"
ugc-delete-channel 'PJ3APYXe' 'L5NKFv3M' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "nSsAYxVL", "fileExtension": "AucjFh8t", "name": "9SAbgxly", "preview": "uUwjGhdl", "previewMetadata": {"previewContentType": "t7c1xqei", "previewFileExtension": "VWlqk4DT"}, "subType": "nqwD0gL0", "tags": ["gXF9kOTp", "vyMDMf55", "I0fjufHv"], "type": "Fw6SkdNs"}' 'UKcREYfX' 'pwGfQXvv' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "Rl0v3d3R", "fileExtension": "LdvboVwT", "name": "eGTM9G7E", "preview": "Oz7BQqWC", "previewMetadata": {"previewContentType": "NBSpfLUi", "previewFileExtension": "U5jMC7tN"}, "subType": "Cajgratl", "tags": ["To4nixmW", "We7kWUwP", "8hw13Pjt"], "type": "7snSyzTx"}' 'xpd1xdK1' 'sYzr8ngm' 'xrUE6TYS' --login_with_auth "Bearer foo"
ugc-delete-content 'I4J28TwB' '0ObhsXYH' 'fWDRpqPd' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'FcPbQXTG' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'h6nQb4bn' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "YwLiOipB", "screenshotId": "qivQbHQG"}, {"description": "FDDJNPPO", "screenshotId": "L6wQ6F6t"}, {"description": "BltZ1wHs", "screenshotId": "znfVNOOa"}]}' '7JqchYC6' '4dj6TSZQ' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "GqAmxbuj", "description": "tsmdB1Rp", "fileExtension": "jfif"}, {"contentType": "0DeCem5d", "description": "0KBQRknH", "fileExtension": "bmp"}, {"contentType": "vY9G4sG3", "description": "FYQtGAS0", "fileExtension": "png"}]}' 'ujObyHog' 'Ckxuot2D' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'yFLV0iJh' 'AipJcNY3' 'apzajQ3J' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": true}' 'wbflCXdG' --login_with_auth "Bearer foo"
ugc-get-public-followers 'wxccy6Um' --login_with_auth "Bearer foo"
ugc-get-public-following '4L0KtuJs' --login_with_auth "Bearer foo"
ugc-get-groups 'lNVuRKmS' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["N40j0q4a", "RMBHs4b9", "ZpNJhPTE"], "name": "P40qD3lA"}' 'sDHLcvDr' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'qtZLza1Q' --login_with_auth "Bearer foo"
ugc-get-group 'dNm7jPMJ' 'AM3iqFGo' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["VYpQrcwn", "Wy89EyAj", "q0ck2RkF"], "name": "0M6zIl5x"}' 'wjHDezCB' 'zLyyQ2ce' --login_with_auth "Bearer foo"
ugc-delete-group 'hd5gXuBk' 'JblMU6aO' --login_with_auth "Bearer foo"
ugc-get-group-content 'NJQwswth' 'AVRMcwyr' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'UMrcYN1v' --login_with_auth "Bearer foo"
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
    '{"name": "kHT7bWMk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "NYdv2Xng"}' \
    'z8quipMj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    '7aJ1tJJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "WMgEgLmG", "fileExtension": "D5axaUEe", "name": "j5xigeSL", "preview": "7qHlNJsP", "previewMetadata": {"previewContentType": "7INIqwxb", "previewFileExtension": "3zXMxSso"}, "subType": "zhDz8wY1", "tags": ["zTI2AH7T", "exdoG2G4", "us6WJumH"], "type": "9AwbcPCe"}' \
    'PjG5WTNV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "Z1ipYn6M", "fileExtension": "IT1Q83no", "name": "mz8y1NCU", "preview": "dFO4bvay", "previewMetadata": {"previewContentType": "SdJYklrL", "previewFileExtension": "g7JUl4yn"}, "subType": "ifw7iMIi", "tags": ["mMOt6Xva", "9LK8pGPi", "4wGeGKUL"], "type": "K7D6uhLm"}' \
    'lpMxItVG' \
    'PGr18rBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    '5qUt6Yok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '5abZ4Zs4' \
    'g2ohLlez' \
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
    'BLkjLHbf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'SHb146rJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    '07yaTMIL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "xGmSqi8F", "screenshotId": "u4AlQQgS"}, {"description": "V1CXbJrh", "screenshotId": "t3ydSvFz"}, {"description": "dPRrBRy5", "screenshotId": "EGcSqIiP"}]}' \
    'fs1iksSc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "hCnTUP9f", "description": "eLKFZTjp", "fileExtension": "jfif"}, {"contentType": "1TqQ3TYT", "description": "o2O3fYAc", "fileExtension": "jpg"}, {"contentType": "sr8iOfml", "description": "rONDtAqY", "fileExtension": "pjp"}]}' \
    'lWWtEXeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    '3VcD0rRC' \
    '14p5O0pH' \
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
    '{"contents": ["fOmWXOKc", "rJrUgYmK", "oXMvqMtQ"], "name": "4FIMu26d"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'gwaAmPPT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["VMiSiNuF", "Lca6QzRS", "PAZeCFkm"], "name": "R0jDYa2U"}' \
    'uFzdYXWk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'UZn4BGIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'hc1sjfRA' \
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
    '{"tag": "zggcFohx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "SCPUp5WO"}' \
    'Wqk6UDS4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'f3N9FJze' \
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
    '{"subtype": ["hOQOjc2c", "d6OvDRs0", "j2GfoaW2"], "type": "1ogEDQt7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["4KYPB62b", "xY1fp3NV", "MQmpJg36"], "type": "Cw1jIvNp"}' \
    '1S7zon6L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'SxSPTKvl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'p1jmrOGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    '4iDoXKJC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "nIELZi51"}' \
    'ZYpTSAE4' \
    'p8RH0vhB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'mGurL3Z7' \
    'AObJWDUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "YHiVYiv0", "fileExtension": "IztfjCQX", "name": "p91JkSJm", "preview": "phbWsZ6x", "previewMetadata": {"previewContentType": "Zg2ogYfi", "previewFileExtension": "TcMsSk3O"}, "subType": "zkdfmoCw", "tags": ["iRKkMLij", "W5soNH0n", "cpfsWsdS"], "type": "p8ghYiwo"}' \
    'MZLhWT6M' \
    'TWVGgT5W' \
    'Bpvv1IfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    'PhwGMia2' \
    'TyeQ71G8' \
    'ZjEseRc5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'ER0MYXSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'cJHHkbMm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'ETuTsQEx' \
    'Vvi66RbM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'Nz416ChY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'SXdQGTBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'PWLG8URG' \
    '1nwMZoVP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["kogo5gr7", "cB1uTtsx", "EfrNwKpu"], "name": "EviJ3QGe"}' \
    'MQkrJ5DD' \
    'k1au2HFp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'SVcY7dZK' \
    '96BLX5VM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'uCeCCZry' \
    'VK0RUrEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'pD7sipOs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'vTCY1DVc' \
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
    '{"contentIds": ["KMKh5y7a", "HA3Ou7gW", "Q2w5n25k"]}' \
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
    '1I595SeM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    '2zE1cmya' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'kInI5Ayo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'FJW5s9cE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'NO0k5QUG' \
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
    'BzPMweFN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'JGKsGtat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "m9zkbHfp"}' \
    'N6Qcm2a2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'oJu5dLCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "uUEq6Rza"}' \
    'IUOkO3yE' \
    'ZC7LoIqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'sEH6zT23' \
    'n5dN19w5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "RG9TZzcB", "fileExtension": "V6UOa4PA", "name": "4JQkdQMK", "preview": "Z2dlzRiR", "previewMetadata": {"previewContentType": "iiZKCOSl", "previewFileExtension": "v5mOb4wS"}, "subType": "RaQTT1SN", "tags": ["UpjF4FyS", "GqX6YDRd", "II57tGFK"], "type": "cwdog8e2"}' \
    'MXZ3o7pX' \
    'u4tIjIBx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "eN2AF6u6", "fileExtension": "RK0Ho5fE", "name": "VCJSVGLS", "preview": "Jw9qQUEK", "previewMetadata": {"previewContentType": "VinLaAxH", "previewFileExtension": "qfzHRly0"}, "subType": "KmwYOXFt", "tags": ["LSn9b6ni", "N4Xhy7xo", "jaIaHBR3"], "type": "uYKcKM3v"}' \
    '3oB8il4b' \
    '14edNjiO' \
    '2NlLs6j1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'LR5LpUml' \
    'rPTh7fX3' \
    '4zhWHGUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '67txeCRx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'Tw4HSjlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "DALBU8mh", "screenshotId": "qcJV4tgn"}, {"description": "9kVOjU3W", "screenshotId": "1tXh8W5l"}, {"description": "WlByHnhX", "screenshotId": "9s4iBnur"}]}' \
    '4tSBafv3' \
    'k9Ja1pcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "fJuz5slr", "description": "Xh5Y2JvF", "fileExtension": "pjp"}, {"contentType": "9V9weJMP", "description": "eyjdA9lu", "fileExtension": "pjp"}, {"contentType": "vBFltvLf", "description": "tg0wFMy9", "fileExtension": "jpg"}]}' \
    'TT9iGkhA' \
    'JkMKAH85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'yV1bLZa0' \
    '3Es2nDWx' \
    'O3WfgdF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'rwgXKOPu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'PhSb0Olg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'H7lRILIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'XEjmsSkm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["yskDYtzz", "oZXbJLNk", "EqIpuzrG"], "name": "xt5Zm0Af"}' \
    'j5yZDqNf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'SmG4guTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'MKKMnrua' \
    'Z86KRoXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["Rptpd1ow", "E6nBWR29", "diJ8y1M9"], "name": "8EJCVo1Z"}' \
    'suUvLLQD' \
    'tsln6JFW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'DhTega7k' \
    'HFofctHo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'OFlYyPIi' \
    'K17GBxa1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    '1OuXuzQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
