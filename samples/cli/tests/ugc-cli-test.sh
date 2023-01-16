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
ugc-admin-create-channel '{"name": "9zIiCEIe"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "xvSjyGif"}' 'SUWTNmlf' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'npvST4dq' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "4EaD7AOH", "customAttributes": {"CRm62ZkF": {}, "suqBgXJF": {}, "VODaaRrA": {}}, "fileExtension": "tlWXkAGY", "name": "wrpVhqB5", "preview": "x5pHfPOh", "previewMetadata": {"previewContentType": "rqa7fQHY", "previewFileExtension": "znLpL81U"}, "subType": "elr7Xze7", "tags": ["RI6Z4JAH", "sIrpKDCu", "FfDM0xEd"], "type": "APL6Y6gt"}' '1RNwL54Z' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "d0zz7GFZ", "customAttributes": {"iq23jbTx": {}, "kg2n79yg": {}, "cqpolFQu": {}}, "fileExtension": "qLIAvtRw", "name": "jMoI16Ly", "preview": "PlEowOHn", "previewMetadata": {"previewContentType": "M1HP9ygD", "previewFileExtension": "u2tBFNqG"}, "subType": "lXtwiLhJ", "tags": ["lwIBRHnX", "cFBKcGEc", "HcDrR3dV"], "type": "9kVPFIUK"}' 'qNQwtNRU' 'gE3MWfWl' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'hD0B7GX9' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'QByqFt2I' 'Dw8Yo8ff' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["ueGQJZc9", "utMp5mmj", "0WXC9zAa"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'W1xgoDJN' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'ARliFtTZ' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'ZlGjCY07' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "NIBCQKpu", "screenshotId": "Z4GqqEc3"}, {"description": "CMrhDvuj", "screenshotId": "GNhPtnxg"}, {"description": "JxFEKGt1", "screenshotId": "lJslyxsS"}]}' 'zjk5ReK7' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "48BbWixG", "description": "tSjtIrc5", "fileExtension": "jpeg"}, {"contentType": "S3kGk41M", "description": "Th2IYfGe", "fileExtension": "jpeg"}, {"contentType": "Fht2rH8C", "description": "SZnIMHdK", "fileExtension": "bmp"}]}' 'LDTD1Geu' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'Gc1BlGzC' 'Jkgty8l1' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["UokvZ071", "7hkoJgGN", "RDESvzgs"], "name": "5pc2bKJ1"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'A3XAflOD' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["Hyc27ftQ", "wPIYDmcb", "YIZPPfFf"], "name": "1o2DCR6l"}' 'RwbZPjPy' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'mxASLSfT' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents '9BgGuaha' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "Mf485vyU"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "WV6vhtGo"}' 'X3V6Llzf' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'nTaZAfkF' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["F4EFrjK7", "zcsNB1HP", "lwtWPh8N"], "type": "QeJ2wVV9"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["pXCSnSWh", "onr6Ate0", "b8p3TVcx"], "type": "CVGkB1GU"}' 'B8TcKLew' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'p99BvqPv' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'nynL5NRW' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'jXrh4Bpy' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "KIHkcHRa"}' 'Xvj5tZ7P' 'L40q4Cyx' --login_with_auth "Bearer foo"
ugc-admin-delete-channel '3gBYQ2LG' 'PYoQ6KUO' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "zLDv4qdW", "customAttributes": {"BWJqOCIB": {}, "QMuVYBbM": {}, "Sskgr4uy": {}}, "fileExtension": "ZyklDKTm", "name": "7Z6e1bsw", "preview": "MChZk4Yn", "previewMetadata": {"previewContentType": "591tedKR", "previewFileExtension": "Xh4xBsxh"}, "subType": "Q9pAqP3I", "tags": ["JwuvJfzu", "eG5fKaBa", "jGgK5Cwj"], "type": "0HSUVHUT"}' 'LkBQxh9J' 'zJv3fb0K' 'QDoqoGJv' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'e7NlI1Jx' 'M700Wn0B' 'xyogzwCo' --login_with_auth "Bearer foo"
ugc-admin-get-content 'WKrSR2TV' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'thf6MNf3' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'FqHXA8UJ' 'N4s5B123' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'Fh5BZdpQ' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'd7ju6ILh' --login_with_auth "Bearer foo"
ugc-admin-get-group '28pT6SIg' 'mrNkvesm' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["oT50gzEo", "kumKLGd1", "joEorvEB"], "name": "qn2RGusX"}' 'W7rFIxX3' 'SbhkQrIR' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'OCJKChFc' 'usdkZxfF' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'AkunOaO6' 'b8NnUKAg' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'CODpYWyj' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content '4ziUmFI0' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["Jgd1zs3D", "pd7s41H2", "KFO3xoUQ"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'X3JKc0l6' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'aZxDkLZY' --login_with_auth "Bearer foo"
ugc-add-download-count 'kmg1ZuP1' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'GiYhBN93' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'ERiNkkuQ' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator '4IQ5ZIRF' --login_with_auth "Bearer foo"
ugc-get-channels 'VPJcY2mW' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "aQ5VSd1q"}' '2LnLjA3B' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel '8zoQCRCj' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "xIw5ojsh"}' 'EtBMjDt5' 'VHBC1PEY' --login_with_auth "Bearer foo"
ugc-delete-channel 'eT9g8JeH' '0ne1KwFE' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "KwjoQ9gn", "customAttributes": {"EwMktzeI": {}, "pH4GrMF9": {}, "7GIu3gjK": {}}, "fileExtension": "WwrAROJH", "name": "1lZli2nV", "preview": "UdqN9SHO", "previewMetadata": {"previewContentType": "clOfj5op", "previewFileExtension": "AUT4GEic"}, "subType": "DfnKsRDG", "tags": ["RhK0nKCR", "S2l6ZTPe", "POwRmhQi"], "type": "9fHhtf24"}' '2sqSAqwK' 'bR9oduYE' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "7nM6WQed", "customAttributes": {"TIxo7SxL": {}, "ITWHlgxI": {}, "6234vryx": {}}, "fileExtension": "F2LD9dAh", "name": "hMBKpEQs", "preview": "Cl8QMBsi", "previewMetadata": {"previewContentType": "CsLn4zHC", "previewFileExtension": "lF10ybq2"}, "subType": "m99aRXXT", "tags": ["L3vV2BEw", "a1bbU7Pp", "kIfPxtq0"], "type": "HpcxhTYZ"}' 'jpRBT0LQ' 'NOXfS4Og' 'ZdAM3H7Q' --login_with_auth "Bearer foo"
ugc-delete-content 'JiCMGY9Z' '78YSjBtF' 'ivw9KPBD' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'AZtjDDFa' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'T4ispdvi' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "ZL78hRZp", "screenshotId": "oi3bB3fq"}, {"description": "UmllQh5g", "screenshotId": "y9AKuaBz"}, {"description": "mxZApZc8", "screenshotId": "9GCiPdNh"}]}' 'LNPd5L9N' 'oRrpbU5s' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "XwB0FnKE", "description": "IMzN0EG2", "fileExtension": "bmp"}, {"contentType": "oKd7kd6V", "description": "NmYqRrft", "fileExtension": "jpeg"}, {"contentType": "zYEYAmGc", "description": "i193rAIB", "fileExtension": "jpeg"}]}' 'gK13eVEj' 'EMpel5Ox' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'zAMwIWJf' 'MwPBwd6l' 'eQEmsiSu' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'oBo1iKuT' --login_with_auth "Bearer foo"
ugc-get-public-followers 'I6NpOg35' --login_with_auth "Bearer foo"
ugc-get-public-following '6Iib4DmA' --login_with_auth "Bearer foo"
ugc-get-groups 'o5wVVV5A' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["WHAPxmR7", "Tkyq1Uq8", "gEFDO5e6"], "name": "n4fWlJGP"}' 'pVdTFQMy' --login_with_auth "Bearer foo"
ugc-delete-all-user-group 'AqaTLDtO' --login_with_auth "Bearer foo"
ugc-get-group 'bI1CGTyK' 'HcHbHOL1' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["1Cc9lWDp", "xwZOK8Pk", "GL3Lz9yW"], "name": "BgAytcQr"}' 'WdzitiAe' 'd8GG4GCd' --login_with_auth "Bearer foo"
ugc-delete-group 'TF8FPwtv' 'SzoVMxQM' --login_with_auth "Bearer foo"
ugc-get-group-content 'iK4axXrl' 'R71BQU1k' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'FDzFRBYE' --login_with_auth "Bearer foo"
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
    '{"name": "OF6P0Atk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "w3G1bzpe"}' \
    'QluC30jy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    '0ZZSqUDt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "PlSCIqOK", "customAttributes": {"b4QYzG1V": {}, "29vJLQmD": {}, "35r4EK0p": {}}, "fileExtension": "LRMydJ8z", "name": "9Rr6PI2r", "preview": "5EmZC4j6", "previewMetadata": {"previewContentType": "zLIJaI75", "previewFileExtension": "2xeNgsOg"}, "subType": "FSQqQEv4", "tags": ["nPdeiSzn", "iJNAdoW6", "alOtNA6K"], "type": "aJ6oQAPm"}' \
    'lHeTR8LA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "1eAolrWT", "customAttributes": {"k22vJi5d": {}, "NUdHRKt8": {}, "hpgIEq7g": {}}, "fileExtension": "UxE7LDBU", "name": "DUY0aYf3", "preview": "4ttdvJS1", "previewMetadata": {"previewContentType": "Ke4JXdMh", "previewFileExtension": "dyOU31Qz"}, "subType": "9nISD7Ur", "tags": ["vo7N1Tys", "AVQU9hBX", "rtTwt4g2"], "type": "Srx8syyJ"}' \
    'X8bESGFN' \
    'oj3fJKhw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'OZ7fJ9vr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    'A8mP79P2' \
    '1up0o5DJ' \
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
    '{"contentIds": ["MDBgz87X", "JaDCebyN", "u0DGXIwV"]}' \
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
    'g37xwKLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'yuE7dpLZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'dHgYwTwj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "Ny3n7ou7", "screenshotId": "v547ZQQT"}, {"description": "e28vOj3N", "screenshotId": "tsZ1H66L"}, {"description": "rhXjhJpM", "screenshotId": "ty6jrIwi"}]}' \
    'iv5YcpyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "7waaUS65", "description": "jRi2wcI9", "fileExtension": "jpeg"}, {"contentType": "uVm2Xdpd", "description": "stuppq6Z", "fileExtension": "jpeg"}, {"contentType": "k90pqEkB", "description": "yM8GyBjX", "fileExtension": "jpeg"}]}' \
    'fSIOMn0g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'Py9zhfxV' \
    'J0IQ5sg1' \
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
    '{"contents": ["YGvBffih", "HPDDBIjQ", "57sWYUei"], "name": "PZ4NsRZb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'vTg6CRoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["h5hpoX5O", "o9tLI7ps", "HoU8l71i"], "name": "9DOhaB2T"}' \
    'H0y5XybP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'wRmgvblS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'kBWkvWqp' \
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
    '{"tag": "ZMBB8wFJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "at7r2wr6"}' \
    'wTBtZrQo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'IlJ8aH2g' \
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
    '{"subtype": ["lOzsCnEe", "n4pPGHBF", "idLTYOmM"], "type": "PE10vOIf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["iL4PGP8d", "lwMcKGie", "wBbASwyq"], "type": "G2tqzXMA"}' \
    'A6nH65XT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    '1LheGMLT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    '5ZWs6xsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'iqXLdTPc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "vN8172dR"}' \
    'JbphHLDp' \
    '54xIiIhi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    '2s8MKX3I' \
    '6v68stn4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "IRKYB3Km", "customAttributes": {"lxJbYyCV": {}, "voyT30ON": {}, "AJlac1Qx": {}}, "fileExtension": "0E6BWtqA", "name": "e3o6Xnw4", "preview": "X5loWcQE", "previewMetadata": {"previewContentType": "djk72grk", "previewFileExtension": "M1xlscuE"}, "subType": "fLg6pE07", "tags": ["K0KcORtG", "B4NztSMt", "7D2rujHW"], "type": "VEpykdKK"}' \
    'TDvixNLH' \
    'HIBOZ36Z' \
    '5kzuNGVq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '5cgu653n' \
    'CIZcWlOw' \
    'gJeAWg5X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    '24ZxOBvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'XQuxAPYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'WgjKa4ld' \
    'GlriSviF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'RmRpDZOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    '5Vox8DtW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'dfGAxVpc' \
    '9vUA2fmk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["dLaYzJyT", "WCIPKgKS", "KegMduif"], "name": "sH80AyvR"}' \
    'jspxuvih' \
    'U2aZPgBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'aLFK76CQ' \
    'zmb7TRcQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'O9GmoGVH' \
    'EsjzelvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'TjRHBSOr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'gwXPFaVA' \
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
    '{"contentIds": ["HQGfSfjo", "1gN09s9a", "ujOVA8ht"]}' \
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
    'mDIch7xR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    '95cMf6Ii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'JxwROP1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    'vgHht03D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'fH1ly6Vd' \
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
    'VSPPnUQz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'CJkFRjDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "zuZ4wefq"}' \
    'qdkxbC6b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'xzdEjMjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "frXq7lXf"}' \
    'D3RqZtkw' \
    '0HEWoavd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'NSMsghUE' \
    'BrqgCuSX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "Oh1lT1HW", "customAttributes": {"tUIGjwI9": {}, "BIDS8lDi": {}, "DiLWQa2T": {}}, "fileExtension": "yZyRjVtr", "name": "YTPJV12r", "preview": "ibvsHGey", "previewMetadata": {"previewContentType": "4OPUQM16", "previewFileExtension": "Gfg6LUPW"}, "subType": "eXIwv8lF", "tags": ["Um7LVF9n", "nMjLvAfs", "SGT9neIC"], "type": "RggkH5Ld"}' \
    'ayuvPNcb' \
    'ZTt4Kgc2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "qgvZypvy", "customAttributes": {"MiCjYTU9": {}, "Ks3upLsa": {}, "96gZC4TK": {}}, "fileExtension": "JQIbCiVB", "name": "aSBoMcbZ", "preview": "gk8OIXqW", "previewMetadata": {"previewContentType": "dFFG0Ne1", "previewFileExtension": "C1OEaZgk"}, "subType": "hCIWPhLb", "tags": ["WbO8hx1o", "FsXaUZ0E", "nUPDZCSZ"], "type": "zG7V4lwZ"}' \
    'w7AO6fJ9' \
    'zLcZB2fm' \
    'syQHEIe1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'SCJUOdU5' \
    'CwszwOug' \
    'zv2u5NUe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'P5kODloM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'NAPBYtcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "Rup1zYdY", "screenshotId": "9ZZJUBFR"}, {"description": "7soLvzDA", "screenshotId": "3CkMePQW"}, {"description": "Xxw65ihr", "screenshotId": "qjFW0nNl"}]}' \
    'EgqsKWia' \
    '19Xxn7yn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "4V39DrKn", "description": "27Wt6Hd4", "fileExtension": "png"}, {"contentType": "5ejiVw7q", "description": "gCEGmGVp", "fileExtension": "png"}, {"contentType": "4iPFWqnY", "description": "OXm64ZeN", "fileExtension": "bmp"}]}' \
    'ml7W0kd0' \
    'FFnKK5kF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'BmsHchGL' \
    'gorqVubP' \
    '3y7VGos3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    '3M5bz0aY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    '7LezYB0g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'vor3UJlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'R2AZ2ZcC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["qCU4WR3S", "4YNNek34", "q0neVjwd"], "name": "wuvclnwe"}' \
    'KbjMr8Lg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    '6v1CnWtN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    '2L8cExBv' \
    'wjST5hbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["qlaC0CHd", "Aq3kk8Ha", "Lqx2ftBR"], "name": "SPnKf54L"}' \
    'hCQWtz8W' \
    'bRqGXljf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'ibuU3hRQ' \
    'JlzOjW7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'qLQdvuEZ' \
    'gSeugLGm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'zQCPZpN1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
