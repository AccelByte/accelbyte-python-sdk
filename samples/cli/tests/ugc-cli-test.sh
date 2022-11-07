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
ugc-admin-create-channel '{"name": "Rgrk0jPo"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "vFQ0Qofm"}' 'aaKJRMi4' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'ujX68AnO' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "yzww65WM", "fileExtension": "6ILPWFVq", "name": "QCGLB9wb", "preview": "cUmtgw99", "previewMetadata": {"previewContentType": "L84J4D3W", "previewFileExtension": "53XGX3AV"}, "subType": "hVgTAfwP", "tags": ["kZBi0vbr", "TJzllpKp", "81qtiY3K"], "type": "WpvEZHHU"}' '7BdQCIUx' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "olrywH6C", "fileExtension": "AnFB0Gka", "name": "V9qpGsqG", "preview": "YGutqqIq", "previewMetadata": {"previewContentType": "liwpFjVg", "previewFileExtension": "trTh38fQ"}, "subType": "XQlzsrey", "tags": ["j1qVuW8l", "JJjZRKh6", "tXr1MXtT"], "type": "eHzpJK9f"}' 'NdUxfCRQ' 'WoX3dIfn' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'rDLTmKOA' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'pgfci98J' 'H8thzFSe' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'gQ4IAGFU' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'v6lX4ET6' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'bHk5yR1v' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "eYOd7eG2", "screenshotId": "FZ9tIUnh"}, {"description": "DNnim8oQ", "screenshotId": "F6XohO9m"}, {"description": "gKtWQgs3", "screenshotId": "MOGOZcH3"}]}' 'CUrPmgBp' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "MI9Ax8Kf", "description": "Ndy9QltW", "fileExtension": "pjp"}, {"contentType": "ez6hv7aJ", "description": "Vp4p6jmk", "fileExtension": "png"}, {"contentType": "EsXTtZA7", "description": "bY9w6cTl", "fileExtension": "pjp"}]}' '29ePgdgw' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot 'cQvTG2Il' '0pNVbdo7' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["QITib4Sy", "kXoPePOM", "h1GxZ9yA"], "name": "sLKYT2ao"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'nKtsQxWA' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["KYP800lh", "HORVDGWQ", "Nn1Hrst9"], "name": "3hQ39hEp"}' 'yJzzyU2I' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'ijLL8hgq' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'nvFiamME' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "ftTIy4B3"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "AfAgFyC4"}' 'H8Wh3aPs' --login_with_auth "Bearer foo"
ugc-admin-delete-tag 'T3vNTsdX' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["tsseAcDz", "qhBCAMnI", "qUiOoVA3"], "type": "ekHt92z7"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["pCkCyWLk", "AMFfLwb0", "xbrJxHGG"], "type": "Qyz5DFSE"}' 'FOuFI4Hu' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'mc1Wc40M' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'tuQ91NCC' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'IAreVoBD' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "VPgo3cs2"}' 'YGCvL6rV' 'sKWNsfhj' --login_with_auth "Bearer foo"
ugc-admin-delete-channel 'IGCQ4EJ9' 'kNSrq5zH' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "RgkUg0Fn", "fileExtension": "R8CKzqxu", "name": "gh0slZp4", "preview": "7feMAxn0", "previewMetadata": {"previewContentType": "KQFCfcqV", "previewFileExtension": "61duNWBi"}, "subType": "8weoT9UW", "tags": ["vxNrPWQF", "0jkRxg65", "spdb5EIR"], "type": "y7OIF4X0"}' 'H4BbKmUP' '8pZJL3mJ' '2LF9tUhW' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'jjIjSuCx' 'f1nREn3n' 'KUcxsJgf' --login_with_auth "Bearer foo"
ugc-admin-get-content 'sK94r69a' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'QXpB8i36' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'PMNOtlKk' 'Wk5wuTga' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups '4Ye5BCD8' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'PThQTl3R' --login_with_auth "Bearer foo"
ugc-admin-get-group 'Rx7MdQUp' 'OY5TSJc8' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["X0JvxtLz", "GXqLHbH0", "am2hkXRK"], "name": "AoSZcBKp"}' '1e3Rdy42' 'EIP2hhs4' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'bOPPiR5B' '9P7X2cvf' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'AuC2XyRi' 'JDcQrrvD' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states 'IapjLPju' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content 'x0AcbFl3' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["IDa9B0Oo", "K7YfRjhD", "DK4O1GPC"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'oElM55Xw' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'g5awCPIx' --login_with_auth "Bearer foo"
ugc-add-download-count '5Zg7WEUW' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": true}' 'NryOHd0u' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'gVIkJOar' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator 'TUj32nAn' --login_with_auth "Bearer foo"
ugc-get-channels '2WcNZLZy' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "r3JbDSGu"}' 'LOuQwQEg' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'FGIEmTa0' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "mTkKfwyA"}' 'JcOgMySi' 'qJxWRW8G' --login_with_auth "Bearer foo"
ugc-delete-channel 'HKURNhzC' 'Kpen5xK1' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "yNYmJJT6", "fileExtension": "WZWhfncp", "name": "rdWFqgLw", "preview": "zgLB5hQa", "previewMetadata": {"previewContentType": "knLssQgV", "previewFileExtension": "RQilx5Cp"}, "subType": "dID6keg2", "tags": ["9Hofw6e4", "TaVVUhu6", "ADX6m3x6"], "type": "sgctHWWz"}' 'GlbFi7qa' 'NDWV2uHB' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "X3wfh7YA", "fileExtension": "KgMR5ZoO", "name": "YHWRij1U", "preview": "wAMo1RTN", "previewMetadata": {"previewContentType": "QS3DCAYQ", "previewFileExtension": "t9Eux0pk"}, "subType": "JL7euLWN", "tags": ["vCEPyiQ8", "2vtGC3cT", "jhL9mYNb"], "type": "hBnzWKpY"}' 'HlLxLpU9' 'AVRmnaB0' '0002YrXJ' --login_with_auth "Bearer foo"
ugc-delete-content 'MgPfcFTs' 'VYa2Xnzy' 'fSi1iKSL' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'dnhgNUpC' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents 'TY0nBeX9' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "pB0Sefmo", "screenshotId": "rTyz9E56"}, {"description": "M5XYFrlW", "screenshotId": "B99S2yAa"}, {"description": "gWdrMXZQ", "screenshotId": "Jw8weOPb"}]}' '1AbUkkgA' 'RDNWeS1L' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "jnA5lNzY", "description": "U0bfoO3B", "fileExtension": "pjp"}, {"contentType": "3BuZ9l1F", "description": "yPeB5BMy", "fileExtension": "bmp"}, {"contentType": "LWri52hx", "description": "R2p9xyVD", "fileExtension": "bmp"}]}' 'xdFM7FJx' 'm2eMCO0w' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'IFX8yIw9' 'O8j0Wg2n' 'LK6DV85G' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'wHn8sOo8' --login_with_auth "Bearer foo"
ugc-get-public-followers 'rFGqxX62' --login_with_auth "Bearer foo"
ugc-get-public-following 'Vqsf9Kif' --login_with_auth "Bearer foo"
ugc-get-groups 'NG84r2Ys' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["VBPx5weL", "LzCVamLj", "fcYo7riR"], "name": "Tenqv7wu"}' 'D8yODO3b' --login_with_auth "Bearer foo"
ugc-delete-all-user-group '2oCJjHV7' --login_with_auth "Bearer foo"
ugc-get-group '6bzh70sO' 'Hsib3xK6' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["7SMki3bI", "elKsF49r", "3GECLJYv"], "name": "knonC2iZ"}' 'kZ329H9G' 'rvGS7rq2' --login_with_auth "Bearer foo"
ugc-delete-group 'YcdKPS9f' 'QFXI33uL' --login_with_auth "Bearer foo"
ugc-get-group-content 'xNmn708u' 'vX3X9CiY' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'n9sVhCaj' --login_with_auth "Bearer foo"
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
    '{"name": "AHSDAxxD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "9IGkIrn3"}' \
    'i3gt74of' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'FCSEsytR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "ieS2zLqe", "fileExtension": "NgsBGc6V", "name": "OVoMqDZa", "preview": "RH8D3v7z", "previewMetadata": {"previewContentType": "bg417BEr", "previewFileExtension": "SwGldYiD"}, "subType": "ixdc58XY", "tags": ["Snzxxl2t", "aKpEpSk0", "LxoSrSbZ"], "type": "DmsHr3Q7"}' \
    'd8zeDiPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "yr49dOpz", "fileExtension": "4WnF1aPM", "name": "K6LlE5JJ", "preview": "RFapADRA", "previewMetadata": {"previewContentType": "yLd7s7LG", "previewFileExtension": "r01k0AkI"}, "subType": "qCva492H", "tags": ["cG34iZ7A", "JzI9mEwL", "dXcqXO0W"], "type": "EBsrt1ln"}' \
    '8VM41KHL' \
    'X8MDGayC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    '4ns6gVQl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '79A0WQy7' \
    'QOYj7U0H' \
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
    'Ep13MhXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserContentByShareCode' test.out

#- 15 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    'iEQ9exn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetSpecificContent' test.out

#- 16 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'N2P1f8Sm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDownloadContentPreview' test.out

#- 17 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "4UJG9qdu", "screenshotId": "ckEeSfxV"}, {"description": "ibGntSKp", "screenshotId": "RMA39MdP"}, {"description": "nSVz5uhA", "screenshotId": "bayFG7WL"}]}' \
    '4Qk4O6eU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateScreenshots' test.out

#- 18 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "tqoETH6V", "description": "ayagmstj", "fileExtension": "jpg"}, {"contentType": "Wbt9sKGa", "description": "Pr4n8WOj", "fileExtension": "png"}, {"contentType": "mobXiK8s", "description": "fUe0lRjt", "fileExtension": "bmp"}]}' \
    'fESLxTLB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUploadContentScreenshot' test.out

#- 19 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    '4ZHGQrG9' \
    'EEbAh0r6' \
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
    '{"contents": ["ccSBsWB6", "K0TGf6nJ", "FwSm0Yku"], "name": "XPF4vyBQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateGroup' test.out

#- 22 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'FCCfyHjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SingleAdminGetGroup' test.out

#- 23 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["HmmHQH6E", "Y3ls6qj6", "xJLVMeWP"], "name": "sgry6vf8"}' \
    'D7XIAIPK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminUpdateGroup' test.out

#- 24 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'OqI4utkT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminDeleteGroup' test.out

#- 25 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'rBvXLJWr' \
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
    '{"tag": "xGNKC7mG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminCreateTag' test.out

#- 28 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "LpmyYd1M"}' \
    'Ag5XEirr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminUpdateTag' test.out

#- 29 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'pR4NAs0w' \
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
    '{"subtype": ["YOhLonU2", "p6ZbWvaP", "jl4Ug4Jm"], "type": "3P9MszZQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminCreateType' test.out

#- 32 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["gRGYM9MS", "KxFHL3dE", "hjd3ZRd1"], "type": "w71q6Pp5"}' \
    'uhAgkwjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminUpdateType' test.out

#- 33 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'gWflPOv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteType' test.out

#- 34 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'myNopzXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetChannel' test.out

#- 35 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'Qbwrx4gP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteAllUserChannels' test.out

#- 36 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "7uv9teIk"}' \
    '3JKFGxbu' \
    'eRUXh4Fh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminUpdateChannel' test.out

#- 37 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'CDuhUmoi' \
    '9izBlvkb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminDeleteChannel' test.out

#- 38 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "xlL93Rum", "fileExtension": "WynwcDHJ", "name": "FvSIZ09K", "preview": "vP7FiLEW", "previewMetadata": {"previewContentType": "THRFie7y", "previewFileExtension": "UVsSNfJm"}, "subType": "nFm8OOVG", "tags": ["EqxCTdB0", "qGNRk0DU", "ihP9MbLj"], "type": "JuYzg1Jf"}' \
    '5ELMxiQF' \
    '531gIGkd' \
    'sc2Yn1qg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminUpdateContentS3' test.out

#- 39 AdminUpdateContentDirect
eval_tap 0 39 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 40 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '5DZec8A2' \
    'VfJ3y5co' \
    'cEbGOWbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminDeleteContent' test.out

#- 41 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'OmaimvqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetContent' test.out

#- 42 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    '9uheT39u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminDeleteAllUserContents' test.out

#- 43 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'jNPFmI9h' \
    'Rfi3K9vF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminHideUserContent' test.out

#- 44 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'KYB3a65O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminGetAllGroups' test.out

#- 45 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'dwfr7Nbu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteAllUserGroup' test.out

#- 46 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'CUi0dSG1' \
    'VvkdMf3G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminGetGroup' test.out

#- 47 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["fylW2SNl", "8dWo2SNw", "uxQeO3T0"], "name": "GV4jrlKV"}' \
    'zyJXOw5M' \
    'aZSqJW2h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminUpdateGroup' test.out

#- 48 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'Y5Ec0S9g' \
    'ErAnysOP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminDeleteGroup' test.out

#- 49 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    'jKo4GVyw' \
    '8W1TEuZC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminGetGroupContents' test.out

#- 50 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'jDZHknTA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminDeleteAllUserStates' test.out

#- 51 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'KY2IjEpE' \
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
    '{"contentIds": ["V0xCZ6oX", "DECQqWpN", "SLmJ22rY"]}' \
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
    '4OkSiQ2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDownloadContentByShareCode' test.out

#- 57 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'gl73lZVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByContentID' test.out

#- 58 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'kjjLBgYy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'AddDownloadCount' test.out

#- 59 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": false}' \
    '1wW7oghz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateContentLikeStatus' test.out

#- 60 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'zIooy3iT' \
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
    'EZcQFROy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCreator' test.out

#- 66 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'IY6YFKVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetChannels' test.out

#- 67 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "wvdLUIBB"}' \
    'e3RyBLx5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateChannel' test.out

#- 68 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'ndkqfqKU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteAllUserChannel' test.out

#- 69 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "8BymsxP9"}' \
    '6Mcpagg5' \
    'ahqOll3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'UpdateChannel' test.out

#- 70 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'vMflj1N0' \
    'jMhO5bTT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'DeleteChannel' test.out

#- 71 CreateContentDirect
eval_tap 0 71 'CreateContentDirect # SKIP deprecated' test.out

#- 72 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "F2pCqAYr", "fileExtension": "OpUTDfl2", "name": "f7cqVDK1", "preview": "JZOeDuq3", "previewMetadata": {"previewContentType": "YJJiliGR", "previewFileExtension": "oy7dh61v"}, "subType": "AeChXBoh", "tags": ["zTCaSYMu", "N6YEf63g", "z6fRtcMW"], "type": "OGszB8to"}' \
    'RXZj8Rax' \
    'v8xyX4Av' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'CreateContentS3' test.out

#- 73 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "RcNF3l9Q", "fileExtension": "iaNJcjvz", "name": "mg2C1nXn", "preview": "TGZoaIKo", "previewMetadata": {"previewContentType": "oS6Wtgcx", "previewFileExtension": "IvJVqBul"}, "subType": "p2QWnaqf", "tags": ["p2BWhCgW", "RsREu2UH", "o63Mqj8i"], "type": "HuJ6QdRY"}' \
    'PkCkZXif' \
    'PYv3bm9J' \
    'JEraBWko' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'UpdateContentS3' test.out

#- 74 UpdateContentDirect
eval_tap 0 74 'UpdateContentDirect # SKIP deprecated' test.out

#- 75 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    'lS58zNWS' \
    'NZMtQr5w' \
    'KFocvE7F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteContent' test.out

#- 76 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    'WfLdkvip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetUserContent' test.out

#- 77 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    '3WSKpkrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'DeleteAllUserContents' test.out

#- 78 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "UPzfw6nt", "screenshotId": "rj3zV5AO"}, {"description": "mf3I46zV", "screenshotId": "UKAyvshS"}, {"description": "qbLatHcW", "screenshotId": "shpsLa7c"}]}' \
    'Ka8acp8y' \
    'Z6eZSPAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateScreenshots' test.out

#- 79 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "4TNWjjdl", "description": "V64EFEWN", "fileExtension": "png"}, {"contentType": "OVivZhEM", "description": "gWdwG1gi", "fileExtension": "jfif"}, {"contentType": "wHZa1Z10", "description": "5CGhwGHF", "fileExtension": "pjp"}]}' \
    'kKaubfLl' \
    'NPgOwHw0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UploadContentScreenshot' test.out

#- 80 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    '6o5n790g' \
    'ZTsDQnBs' \
    'DcMEBohY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'DeleteContentScreenshot' test.out

#- 81 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": false}' \
    'c5FII0rY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'UpdateUserFollowStatus' test.out

#- 82 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'PMtn40bB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'GetPublicFollowers' test.out

#- 83 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'uGs4jSfW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowing' test.out

#- 84 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    'mEo9oNAw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetGroups' test.out

#- 85 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["A7GhWhOR", "ldwub1oD", "Yygzo1St"], "name": "9n4sSr5Q"}' \
    'rFWiss33' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'CreateGroup' test.out

#- 86 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'yjnY5Miu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'DeleteAllUserGroup' test.out

#- 87 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'PXkDXk5v' \
    'DOURvpur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetGroup' test.out

#- 88 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["DTVm962O", "6nyrRrzY", "5fITGv7x"], "name": "nVj8ycQU"}' \
    'HCK3X022' \
    'vpAzeLB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateGroup' test.out

#- 89 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    '05FwhwZj' \
    'HPbvrP8H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'DeleteGroup' test.out

#- 90 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'pxCXevWt' \
    'yknKZnZw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'GetGroupContent' test.out

#- 91 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'wtRbUI6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
