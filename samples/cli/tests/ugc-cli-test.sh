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
ugc-admin-create-channel '{"name": "f9HWDvUD"}' --login_with_auth "Bearer foo"
ugc-single-admin-update-channel '{"name": "pou1wRrT"}' 'tMCpHYtp' --login_with_auth "Bearer foo"
ugc-single-admin-delete-channel 'c4ELYyCd' --login_with_auth "Bearer foo"
ugc-admin-upload-content-s3 '{"contentType": "AlopD7s2", "customAttributes": {"aQF4K2cN": {}, "jE0buSlT": {}, "PCk1FIiL": {}}, "fileExtension": "wBQJrLLc", "name": "t2euh5Fs", "preview": "Pqz8nPIk", "previewMetadata": {"previewContentType": "12a0VSqt", "previewFileExtension": "HZhBUBY2"}, "subType": "DhEVlAtF", "tags": ["RvfCQfCj", "PVDSsdJ5", "agCGKhqX"], "type": "4N9htdqN"}' '2rQ0Flxf' --login_with_auth "Bearer foo"
ugc-single-admin-update-content-s3 '{"contentType": "mVkhEXmt", "customAttributes": {"UWFhPSR0": {}, "kyy5S7Dq": {}, "P5MnQGpN": {}}, "fileExtension": "OhHz74en", "name": "wQHCrh6o", "payload": "SzFcpHrp", "preview": "3nl5s2qA", "previewMetadata": {"previewContentType": "Stva0ncU", "previewFileExtension": "S4n5ilpm"}, "subType": "pskJF6uo", "tags": ["zkKEce9Q", "FesuD8Cz", "rpnkFdY5"], "type": "xwkK4MuD", "updateContentFile": true}' 'vih1jvsT' 'KVq5M5GO' --login_with_auth "Bearer foo"
ugc-admin-search-channel-specific-content 'EaAiFPle' --login_with_auth "Bearer foo"
ugc-single-admin-delete-content 'NpUzT5x2' '3fahKXFX' --login_with_auth "Bearer foo"
ugc-single-admin-get-content --login_with_auth "Bearer foo"
ugc-admin-get-content-bulk '{"contentIds": ["pBincWGu", "Hw8CdE7C", "b1G10rQ9"]}' --login_with_auth "Bearer foo"
ugc-admin-search-content --login_with_auth "Bearer foo"
ugc-admin-get-user-content-by-share-code 'x0cL36H6' --login_with_auth "Bearer foo"
ugc-admin-get-specific-content 'WPnw03yn' --login_with_auth "Bearer foo"
ugc-admin-download-content-preview 'ryqjNWcI' --login_with_auth "Bearer foo"
ugc-admin-update-screenshots '{"screenshots": [{"description": "xInbL2Tr", "screenshotId": "9zUOiHbL"}, {"description": "E1gdIu1Q", "screenshotId": "ikvLQIHP"}, {"description": "higbKttl", "screenshotId": "HQIgWGMV"}]}' 'mkzqBJks' --login_with_auth "Bearer foo"
ugc-admin-upload-content-screenshot '{"screenshots": [{"contentType": "pa7z3Frr", "description": "27qiLTLI", "fileExtension": "png"}, {"contentType": "zb1PeFnd", "description": "DIquA3hd", "fileExtension": "jfif"}, {"contentType": "snYiA7G7", "description": "7jaOEDX3", "fileExtension": "jpg"}]}' 'nXmeGM5R' --login_with_auth "Bearer foo"
ugc-admin-delete-content-screenshot '5auUhyJ0' 'pYzF5Ovx' --login_with_auth "Bearer foo"
ugc-single-admin-get-all-groups --login_with_auth "Bearer foo"
ugc-admin-create-group '{"contents": ["4m2dOmZe", "WFmacTyZ", "kZ1PAKWz"], "name": "lpe9DHLQ"}' --login_with_auth "Bearer foo"
ugc-single-admin-get-group 'h4N1rd3G' --login_with_auth "Bearer foo"
ugc-single-admin-update-group '{"contents": ["vMHzBZ4f", "ob6XmCqs", "CpjhHfkb"], "name": "lpHyidl0"}' 'Vx1G3Eqx' --login_with_auth "Bearer foo"
ugc-single-admin-delete-group 'WXbAvXWd' --login_with_auth "Bearer foo"
ugc-single-admin-get-group-contents 'ODrsy32s' --login_with_auth "Bearer foo"
ugc-admin-get-tag --login_with_auth "Bearer foo"
ugc-admin-create-tag '{"tag": "ebntyQ1g"}' --login_with_auth "Bearer foo"
ugc-admin-update-tag '{"tag": "AU5ZwC5d"}' 'M7ygd4fo' --login_with_auth "Bearer foo"
ugc-admin-delete-tag '9bKIgqtl' --login_with_auth "Bearer foo"
ugc-admin-get-type --login_with_auth "Bearer foo"
ugc-admin-create-type '{"subtype": ["tDfAhyW3", "hCq9o3y7", "12eZwlQ8"], "type": "qMCTVEhs"}' --login_with_auth "Bearer foo"
ugc-admin-update-type '{"subtype": ["Gr2GKhQR", "f7gOPiOp", "Q0Pz2y9j"], "type": "4fMMQ8BZ"}' '0lSsgOZI' --login_with_auth "Bearer foo"
ugc-admin-delete-type 'Qwx5AfF4' --login_with_auth "Bearer foo"
ugc-admin-get-channel 'RiIiTon0' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-channels 'S8AgolHy' --login_with_auth "Bearer foo"
ugc-admin-update-channel '{"name": "BtqAbbSW"}' 'EESVckdP' '3wIyrBUD' --login_with_auth "Bearer foo"
ugc-admin-delete-channel '0vcnSrFw' 'JqRZaMly' --login_with_auth "Bearer foo"
ugc-admin-update-content-s3 '{"contentType": "TjC6g6XP", "customAttributes": {"D7GlxyOv": {}, "HgIarivy": {}, "WDA0s1yt": {}}, "fileExtension": "BQivvZGX", "name": "zjomuHRC", "payload": "14XDy1dh", "preview": "Ww4rEs6v", "previewMetadata": {"previewContentType": "oiUrEan5", "previewFileExtension": "Oh2dFlHE"}, "subType": "cBRr1Z6P", "tags": ["TEHLYvcG", "lkvrhDeo", "ZtnBIphp"], "type": "71ZD327r", "updateContentFile": true}' '1yUtoMBc' 'RRVShtCQ' 'FAAUAqgl' --login_with_auth "Bearer foo"
ugc-admin-delete-content 'xMrYnlFI' '4Fvlm7ly' 'RQ64Tcm2' --login_with_auth "Bearer foo"
ugc-admin-get-content 'ELEzafh2' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-contents 'PHPc8jf3' --login_with_auth "Bearer foo"
ugc-admin-hide-user-content '{"isHidden": true}' 'S9UBuJO6' 'i6N29PRS' --login_with_auth "Bearer foo"
ugc-admin-get-all-groups 'G1xmNJrG' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-group 'KYuAkr9m' --login_with_auth "Bearer foo"
ugc-admin-get-group 'v7JNOvek' 'wofN5ovG' --login_with_auth "Bearer foo"
ugc-admin-update-group '{"contents": ["4sbeanEP", "MJwQjO5Y", "RPGEn6Qn"], "name": "OR6AsTRz"}' '3Iy1e4M2' 'g8O1Ckxn' --login_with_auth "Bearer foo"
ugc-admin-delete-group 'dh24yROl' 'PIb4oXsl' --login_with_auth "Bearer foo"
ugc-admin-get-group-contents 'AnlgNI2p' 'xE1Zs66r' --login_with_auth "Bearer foo"
ugc-admin-delete-all-user-states '4gF8cVc8' --login_with_auth "Bearer foo"
ugc-search-channel-specific-content '5Biw4J2p' --login_with_auth "Bearer foo"
ugc-public-search-content --login_with_auth "Bearer foo"
ugc-public-get-content-bulk '{"contentIds": ["CpZUkuTx", "T3GFP4P7", "G9DBjWIc"]}' --login_with_auth "Bearer foo"
ugc-get-followed-content --login_with_auth "Bearer foo"
ugc-get-liked-content --login_with_auth "Bearer foo"
ugc-public-download-content-by-share-code 'HR35S8Ef' --login_with_auth "Bearer foo"
ugc-public-download-content-by-content-id 'nyjbEDhA' --login_with_auth "Bearer foo"
ugc-add-download-count 'LZRTnKOw' --login_with_auth "Bearer foo"
ugc-update-content-like-status '{"likeStatus": false}' 'Ow5Zr9OQ' --login_with_auth "Bearer foo"
ugc-public-download-content-preview 'DFubgmga' --login_with_auth "Bearer foo"
ugc-get-tag --login_with_auth "Bearer foo"
ugc-get-type --login_with_auth "Bearer foo"
ugc-public-search-creator --login_with_auth "Bearer foo"
ugc-get-followed-users --login_with_auth "Bearer foo"
ugc-public-get-creator '5UG37au4' --login_with_auth "Bearer foo"
ugc-get-channels 'fBOWs5Gf' --login_with_auth "Bearer foo"
ugc-create-channel '{"name": "uhyFIxHi"}' 'WsJeJaDz' --login_with_auth "Bearer foo"
ugc-delete-all-user-channel 'L9wY3ene' --login_with_auth "Bearer foo"
ugc-update-channel '{"name": "7WNtTVTk"}' 'FyRHIdw8' '33ojbO7K' --login_with_auth "Bearer foo"
ugc-delete-channel '6Ety5Kvd' 'XZFqvBOj' --login_with_auth "Bearer foo"
ugc-create-content-s3 '{"contentType": "cItkfMBE", "customAttributes": {"szd3VpOq": {}, "w08Ww1Sq": {}, "xz6JLdqk": {}}, "fileExtension": "ofgCyhG8", "name": "ulb3Ccvl", "preview": "6b1BdlEC", "previewMetadata": {"previewContentType": "BrveR568", "previewFileExtension": "siinsfQl"}, "subType": "0Oqu3T6W", "tags": ["5Cf5qaY5", "Uu5eDojA", "2zCsUqxX"], "type": "WutZUt8v"}' 'jy0Ya0in' '6yshqhbw' --login_with_auth "Bearer foo"
ugc-update-content-s3 '{"contentType": "wz3kYq8n", "customAttributes": {"orNCVugr": {}, "AaWFeqXt": {}, "UHuKnKf4": {}}, "fileExtension": "PXGwD3hJ", "name": "L9DSwrfa", "payload": "mc49h11r", "preview": "vEm6VtMM", "previewMetadata": {"previewContentType": "ipXEgLqW", "previewFileExtension": "yprLn7Zk"}, "subType": "FC0psKXu", "tags": ["zC14UqzH", "9NRN2y0z", "06yRaGwc"], "type": "6jaUVidZ", "updateContentFile": true}' 'Lf0NUN52' 'JIloitT0' 'XowfaOJw' --login_with_auth "Bearer foo"
ugc-delete-content '6Ycr5g1C' 'e9scwiwZ' 'vNAfW5vv' --login_with_auth "Bearer foo"
ugc-public-get-user-content 'nLHOcE3k' --login_with_auth "Bearer foo"
ugc-delete-all-user-contents '1j1wQF3d' --login_with_auth "Bearer foo"
ugc-update-screenshots '{"screenshots": [{"description": "I5DqSO7E", "screenshotId": "5WyiImja"}, {"description": "z78Tvg4D", "screenshotId": "CqPsfarl"}, {"description": "k2gil1ZY", "screenshotId": "UddMRSqz"}]}' 'Ygj6Fszj' '6hmv1F02' --login_with_auth "Bearer foo"
ugc-upload-content-screenshot '{"screenshots": [{"contentType": "3nIrjf6C", "description": "aFhUAg76", "fileExtension": "bmp"}, {"contentType": "GR5dpW6Y", "description": "qlTpTGNx", "fileExtension": "jpeg"}, {"contentType": "hG3NDZyt", "description": "kA6mHaiU", "fileExtension": "jfif"}]}' 'gfjaaw6w' 'vUukEitb' --login_with_auth "Bearer foo"
ugc-delete-content-screenshot 'piYqbjaq' 'q8jBmqM1' 'Ss0Hzowk' --login_with_auth "Bearer foo"
ugc-update-user-follow-status '{"followStatus": false}' 'vTYezolK' --login_with_auth "Bearer foo"
ugc-get-public-followers 'V1HHaCq0' --login_with_auth "Bearer foo"
ugc-get-public-following 'WCxbo8g6' --login_with_auth "Bearer foo"
ugc-get-groups 'djSPE2Ou' --login_with_auth "Bearer foo"
ugc-create-group '{"contents": ["nZvAtgoe", "lrrN5KqP", "GVazhpAp"], "name": "5Xj1jVTk"}' 'lp66QOkR' --login_with_auth "Bearer foo"
ugc-delete-all-user-group '1ryPGod6' --login_with_auth "Bearer foo"
ugc-get-group 'TvGLL93l' 'ljCw1Gzb' --login_with_auth "Bearer foo"
ugc-update-group '{"contents": ["EET2Fhq5", "8bJTwbl2", "UujYX8gJ"], "name": "YVvCQCKW"}' '6MgI6Z71' 'IrBzQb8z' --login_with_auth "Bearer foo"
ugc-delete-group 'O9aUggx9' 'u6bfm7sH' --login_with_auth "Bearer foo"
ugc-get-group-content 'IxhgH1ww' '2WySz5Jy' --login_with_auth "Bearer foo"
ugc-delete-all-user-states 'MZj6rCXq' --login_with_auth "Bearer foo"
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
    '{"name": "YWjYLL2l"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChannel' test.out

#- 4 SingleAdminUpdateChannel
$PYTHON -m $MODULE 'ugc-single-admin-update-channel' \
    '{"name": "ComTcJG6"}' \
    'fhh0zgRA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'SingleAdminUpdateChannel' test.out

#- 5 SingleAdminDeleteChannel
$PYTHON -m $MODULE 'ugc-single-admin-delete-channel' \
    'qozGC2Xf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SingleAdminDeleteChannel' test.out

#- 6 AdminUploadContentDirect
eval_tap 0 6 'AdminUploadContentDirect # SKIP deprecated' test.out

#- 7 AdminUploadContentS3
$PYTHON -m $MODULE 'ugc-admin-upload-content-s3' \
    '{"contentType": "dYbN5Yem", "customAttributes": {"kanYk6CY": {}, "uOZGoTre": {}, "dFSIab9I": {}}, "fileExtension": "DUTNevEP", "name": "Djta8kcK", "preview": "ozEESQMw", "previewMetadata": {"previewContentType": "DbxPIzb3", "previewFileExtension": "GiBotyy4"}, "subType": "TxKRPljH", "tags": ["whMpmhnN", "M2DCmV9I", "YTCe6SXk"], "type": "VBonF0wy"}' \
    'ra4P85Lk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUploadContentS3' test.out

#- 8 SingleAdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-single-admin-update-content-s3' \
    '{"contentType": "pEEhwus0", "customAttributes": {"Mm0I4JPG": {}, "J1a4vZwp": {}, "Wzzowo3n": {}}, "fileExtension": "ThTx15Zs", "name": "8ARp4Hql", "payload": "qoA037Vi", "preview": "14ztuzax", "previewMetadata": {"previewContentType": "NcfJoFNf", "previewFileExtension": "pkW4Jjol"}, "subType": "blBikdt5", "tags": ["18wac1XD", "TRgtEYNK", "6EQXDJDK"], "type": "VWNwGGiq", "updateContentFile": true}' \
    'ysTyGkg6' \
    'rhqcwOHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'SingleAdminUpdateContentS3' test.out

#- 9 AdminSearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-admin-search-channel-specific-content' \
    'y5z69o00' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSearchChannelSpecificContent' test.out

#- 10 SingleAdminUpdateContentDirect
eval_tap 0 10 'SingleAdminUpdateContentDirect # SKIP deprecated' test.out

#- 11 SingleAdminDeleteContent
$PYTHON -m $MODULE 'ugc-single-admin-delete-content' \
    '37lNjY61' \
    'JxJEEa4U' \
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
    '{"contentIds": ["6fQc9UlK", "QuS3xUjE", "ICTA0ro0"]}' \
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
    'Bu1v9Imy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserContentByShareCode' test.out

#- 16 AdminGetSpecificContent
$PYTHON -m $MODULE 'ugc-admin-get-specific-content' \
    '9Wb1H9of' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetSpecificContent' test.out

#- 17 AdminDownloadContentPreview
$PYTHON -m $MODULE 'ugc-admin-download-content-preview' \
    'MykBbxtz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDownloadContentPreview' test.out

#- 18 AdminUpdateScreenshots
$PYTHON -m $MODULE 'ugc-admin-update-screenshots' \
    '{"screenshots": [{"description": "qcvElQyR", "screenshotId": "8BKEJ16J"}, {"description": "8bzBWose", "screenshotId": "J7LA24mB"}, {"description": "wwcFz1ZX", "screenshotId": "fvrfHgfy"}]}' \
    'fjaQ6ghX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateScreenshots' test.out

#- 19 AdminUploadContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "X5zhJi83", "description": "2eCqKBfQ", "fileExtension": "jpeg"}, {"contentType": "gC0Es9Kw", "description": "HQT1Yf5h", "fileExtension": "pjp"}, {"contentType": "TH0W6G8b", "description": "6be7A33p", "fileExtension": "jpeg"}]}' \
    'UJN0fXIi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUploadContentScreenshot' test.out

#- 20 AdminDeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-admin-delete-content-screenshot' \
    'RDGdUDCT' \
    'Z0AsD4Y1' \
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
    '{"contents": ["RCWd2s1N", "EiNXqyne", "vtnt4fCk"], "name": "YiflUk0E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateGroup' test.out

#- 23 SingleAdminGetGroup
$PYTHON -m $MODULE 'ugc-single-admin-get-group' \
    'YvkpLL9q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'SingleAdminGetGroup' test.out

#- 24 SingleAdminUpdateGroup
$PYTHON -m $MODULE 'ugc-single-admin-update-group' \
    '{"contents": ["tqzMAkd8", "vmhCTAyZ", "4I843NGb"], "name": "55ke3goh"}' \
    '77BVDdmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'SingleAdminUpdateGroup' test.out

#- 25 SingleAdminDeleteGroup
$PYTHON -m $MODULE 'ugc-single-admin-delete-group' \
    'VMgJZOyR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'SingleAdminDeleteGroup' test.out

#- 26 SingleAdminGetGroupContents
$PYTHON -m $MODULE 'ugc-single-admin-get-group-contents' \
    'aGfJJnow' \
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
    '{"tag": "sHP6JYXY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminCreateTag' test.out

#- 29 AdminUpdateTag
$PYTHON -m $MODULE 'ugc-admin-update-tag' \
    '{"tag": "4hEagxdG"}' \
    'FwQrZvHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateTag' test.out

#- 30 AdminDeleteTag
$PYTHON -m $MODULE 'ugc-admin-delete-tag' \
    'f0Uzwat0' \
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
    '{"subtype": ["SahudoUN", "HWNYlXoO", "nxd9lqC2"], "type": "MEMLhrHd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminCreateType' test.out

#- 33 AdminUpdateType
$PYTHON -m $MODULE 'ugc-admin-update-type' \
    '{"subtype": ["lGcFxHtj", "iQx3pnzx", "6anKmvyd"], "type": "WpgKAWph"}' \
    'N4E2OokD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdateType' test.out

#- 34 AdminDeleteType
$PYTHON -m $MODULE 'ugc-admin-delete-type' \
    'sDKpH1EQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteType' test.out

#- 35 AdminGetChannel
$PYTHON -m $MODULE 'ugc-admin-get-channel' \
    'sMCT2c2z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetChannel' test.out

#- 36 AdminDeleteAllUserChannels
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-channels' \
    'CkAQeTh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteAllUserChannels' test.out

#- 37 AdminUpdateChannel
$PYTHON -m $MODULE 'ugc-admin-update-channel' \
    '{"name": "9Lv0fjpd"}' \
    'RlLUjLFI' \
    'nMQTQ8hd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdateChannel' test.out

#- 38 AdminDeleteChannel
$PYTHON -m $MODULE 'ugc-admin-delete-channel' \
    'AdA8HMZw' \
    'KrY1lRm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteChannel' test.out

#- 39 AdminUpdateContentS3
$PYTHON -m $MODULE 'ugc-admin-update-content-s3' \
    '{"contentType": "85lfl92u", "customAttributes": {"qvDppJP3": {}, "4AyY7kJV": {}, "cMSGeGWb": {}}, "fileExtension": "klQ1tpPg", "name": "Eylvn9X1", "payload": "BzIULdDt", "preview": "8NffGWe7", "previewMetadata": {"previewContentType": "tI1RWkTm", "previewFileExtension": "USBw3Ooj"}, "subType": "d0IcmCil", "tags": ["XmbjtWcE", "gT0X5cSl", "fyevXb3b"], "type": "y2dkRujE", "updateContentFile": true}' \
    'KgM7Y28e' \
    'ghN1r1f1' \
    'djUTV41x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminUpdateContentS3' test.out

#- 40 AdminUpdateContentDirect
eval_tap 0 40 'AdminUpdateContentDirect # SKIP deprecated' test.out

#- 41 AdminDeleteContent
$PYTHON -m $MODULE 'ugc-admin-delete-content' \
    '8oIYKC4b' \
    'EQcSbCnh' \
    'cvvlyBCy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminDeleteContent' test.out

#- 42 AdminGetContent
$PYTHON -m $MODULE 'ugc-admin-get-content' \
    'J2Lh62b0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetContent' test.out

#- 43 AdminDeleteAllUserContents
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-contents' \
    'VFNyDIeN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminDeleteAllUserContents' test.out

#- 44 AdminHideUserContent
$PYTHON -m $MODULE 'ugc-admin-hide-user-content' \
    '{"isHidden": true}' \
    'GsbPnHQl' \
    '7KtMmxoC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminHideUserContent' test.out

#- 45 AdminGetAllGroups
$PYTHON -m $MODULE 'ugc-admin-get-all-groups' \
    'no12r9Yz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminGetAllGroups' test.out

#- 46 AdminDeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-group' \
    'lRpZKMmp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminDeleteAllUserGroup' test.out

#- 47 AdminGetGroup
$PYTHON -m $MODULE 'ugc-admin-get-group' \
    'QdfmvlJi' \
    'KgYB0hyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetGroup' test.out

#- 48 AdminUpdateGroup
$PYTHON -m $MODULE 'ugc-admin-update-group' \
    '{"contents": ["Y3cPPVdh", "m6A2fxyn", "ew76YKw4"], "name": "jIPSbmie"}' \
    'YmfXKmR4' \
    'L7mUrpia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminUpdateGroup' test.out

#- 49 AdminDeleteGroup
$PYTHON -m $MODULE 'ugc-admin-delete-group' \
    'XYO2ehUn' \
    'wpm50KFk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminDeleteGroup' test.out

#- 50 AdminGetGroupContents
$PYTHON -m $MODULE 'ugc-admin-get-group-contents' \
    '9q3cewAk' \
    'da5s7x2u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AdminGetGroupContents' test.out

#- 51 AdminDeleteAllUserStates
$PYTHON -m $MODULE 'ugc-admin-delete-all-user-states' \
    'juzVdyUC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AdminDeleteAllUserStates' test.out

#- 52 SearchChannelSpecificContent
$PYTHON -m $MODULE 'ugc-search-channel-specific-content' \
    'LkrnmQTf' \
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
    '{"contentIds": ["i9eimFkb", "DcElJiTE", "4bPQ7rDu"]}' \
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
    'bXeJOa6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicDownloadContentByShareCode' test.out

#- 58 PublicDownloadContentByContentID
$PYTHON -m $MODULE 'ugc-public-download-content-by-content-id' \
    'h6dyJbBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicDownloadContentByContentID' test.out

#- 59 AddDownloadCount
$PYTHON -m $MODULE 'ugc-add-download-count' \
    'Ei5n9blf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AddDownloadCount' test.out

#- 60 UpdateContentLikeStatus
$PYTHON -m $MODULE 'ugc-update-content-like-status' \
    '{"likeStatus": true}' \
    'tICicK7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateContentLikeStatus' test.out

#- 61 PublicDownloadContentPreview
$PYTHON -m $MODULE 'ugc-public-download-content-preview' \
    'bCfBqQXk' \
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
    '5PPUKaYc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetCreator' test.out

#- 67 GetChannels
$PYTHON -m $MODULE 'ugc-get-channels' \
    'e0AOuKrB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetChannels' test.out

#- 68 CreateChannel
$PYTHON -m $MODULE 'ugc-create-channel' \
    '{"name": "mI5clkRE"}' \
    '4Hz2Gh4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CreateChannel' test.out

#- 69 DeleteAllUserChannel
$PYTHON -m $MODULE 'ugc-delete-all-user-channel' \
    'HFDBeByI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'DeleteAllUserChannel' test.out

#- 70 UpdateChannel
$PYTHON -m $MODULE 'ugc-update-channel' \
    '{"name": "wtP0ZwTf"}' \
    'iMSYZ6cn' \
    'HAdQFWbT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'UpdateChannel' test.out

#- 71 DeleteChannel
$PYTHON -m $MODULE 'ugc-delete-channel' \
    'etBMGCmN' \
    'yCduxMFF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'DeleteChannel' test.out

#- 72 CreateContentDirect
eval_tap 0 72 'CreateContentDirect # SKIP deprecated' test.out

#- 73 CreateContentS3
$PYTHON -m $MODULE 'ugc-create-content-s3' \
    '{"contentType": "P0bdFcld", "customAttributes": {"p0FqlKav": {}, "Ccmn6grX": {}, "NNDqofny": {}}, "fileExtension": "q53nUQOm", "name": "0VHFpPI2", "preview": "fwji8yMB", "previewMetadata": {"previewContentType": "pziM0eTQ", "previewFileExtension": "kbU9jt70"}, "subType": "wbZnaOAu", "tags": ["LEfXRvOB", "SJVTwCt2", "XlBknqmC"], "type": "6nvh5pHl"}' \
    '2TYs1bDG' \
    '7mHYFRr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'CreateContentS3' test.out

#- 74 UpdateContentS3
$PYTHON -m $MODULE 'ugc-update-content-s3' \
    '{"contentType": "Qk6lxl3o", "customAttributes": {"L7kDH0fk": {}, "wyzYE8AN": {}, "h0Y1QIBE": {}}, "fileExtension": "onuwafAS", "name": "POsVzbGF", "payload": "U8ipNjqL", "preview": "eMhj9t4W", "previewMetadata": {"previewContentType": "wbDK4LBK", "previewFileExtension": "xy41lebR"}, "subType": "Okq4gTER", "tags": ["sU7HX7s4", "lTJro3Pg", "ysTHAA44"], "type": "mCoTpp2k", "updateContentFile": false}' \
    'wfWYQsEG' \
    'JYtmClG0' \
    'Eh1lqtpc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateContentS3' test.out

#- 75 UpdateContentDirect
eval_tap 0 75 'UpdateContentDirect # SKIP deprecated' test.out

#- 76 DeleteContent
$PYTHON -m $MODULE 'ugc-delete-content' \
    '5q1BlZji' \
    'Obc3MAzM' \
    'j1IWIOXo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteContent' test.out

#- 77 PublicGetUserContent
$PYTHON -m $MODULE 'ugc-public-get-user-content' \
    '70E1lC7l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetUserContent' test.out

#- 78 DeleteAllUserContents
$PYTHON -m $MODULE 'ugc-delete-all-user-contents' \
    'mB53WcI3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'DeleteAllUserContents' test.out

#- 79 UpdateScreenshots
$PYTHON -m $MODULE 'ugc-update-screenshots' \
    '{"screenshots": [{"description": "EvgD4eOW", "screenshotId": "z1u53cra"}, {"description": "YwHGGQjI", "screenshotId": "64nf38DW"}, {"description": "XcTm7QjO", "screenshotId": "jGk4bPRt"}]}' \
    'xNidvcYt' \
    'U5KGoIoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'UpdateScreenshots' test.out

#- 80 UploadContentScreenshot
$PYTHON -m $MODULE 'ugc-upload-content-screenshot' \
    '{"screenshots": [{"contentType": "OfGtL8G0", "description": "MNVgQYZT", "fileExtension": "jfif"}, {"contentType": "95JNv2dj", "description": "7EPwwgy4", "fileExtension": "jpg"}, {"contentType": "buZszbqm", "description": "ngD2Sgj6", "fileExtension": "jpeg"}]}' \
    'TvjLPu8u' \
    'pNiDuIN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'UploadContentScreenshot' test.out

#- 81 DeleteContentScreenshot
$PYTHON -m $MODULE 'ugc-delete-content-screenshot' \
    'BEQe9hEc' \
    'ZoXUQ1E9' \
    'fvIHS64f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteContentScreenshot' test.out

#- 82 UpdateUserFollowStatus
$PYTHON -m $MODULE 'ugc-update-user-follow-status' \
    '{"followStatus": true}' \
    'mBBMdE9o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserFollowStatus' test.out

#- 83 GetPublicFollowers
$PYTHON -m $MODULE 'ugc-get-public-followers' \
    'S7tlNLXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetPublicFollowers' test.out

#- 84 GetPublicFollowing
$PYTHON -m $MODULE 'ugc-get-public-following' \
    'CMlItEBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'GetPublicFollowing' test.out

#- 85 GetGroups
$PYTHON -m $MODULE 'ugc-get-groups' \
    '04CxvOcX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'GetGroups' test.out

#- 86 CreateGroup
$PYTHON -m $MODULE 'ugc-create-group' \
    '{"contents": ["zMvUOLWN", "zf6GKws8", "wvWoDmd3"], "name": "p1qmk4kr"}' \
    '7GqRmATp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'CreateGroup' test.out

#- 87 DeleteAllUserGroup
$PYTHON -m $MODULE 'ugc-delete-all-user-group' \
    'bWmdXVBD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'DeleteAllUserGroup' test.out

#- 88 GetGroup
$PYTHON -m $MODULE 'ugc-get-group' \
    'LJA5TtuY' \
    'jW7xMBH1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'GetGroup' test.out

#- 89 UpdateGroup
$PYTHON -m $MODULE 'ugc-update-group' \
    '{"contents": ["g04khkQp", "XIGXCSGh", "oDTA43bD"], "name": "Z3cOnOQX"}' \
    'cnRDlX9L' \
    'YmLBvVDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateGroup' test.out

#- 90 DeleteGroup
$PYTHON -m $MODULE 'ugc-delete-group' \
    'bp92eLaE' \
    'd5V7HERJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteGroup' test.out

#- 91 GetGroupContent
$PYTHON -m $MODULE 'ugc-get-group-content' \
    'ePHzCJMN' \
    'ES3CXbfM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'GetGroupContent' test.out

#- 92 DeleteAllUserStates
$PYTHON -m $MODULE 'ugc-delete-all-user-states' \
    'YEpSB9ZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'DeleteAllUserStates' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
